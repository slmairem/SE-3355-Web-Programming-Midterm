from flask import Flask, render_template, redirect, url_for,request

import mysql.connector

mydb = mysql.connector.connect(
    host ="localhost",
    user="root",
    passwd ="*iblockedit*",
    database="hepsiburada"
)

mycursor = mydb.cursor()

app = Flask(__name__)

@app.route("/")
def home():
    # Slider resimlerini veritabanından al
    mycursor.execute("SELECT image_url FROM slider")
    slider_images = mycursor.fetchall()
    return render_template("homepage.html", slider_images=slider_images)

@app.route("/search")
def search():
    search_query = request.args.get("aranan_kelime")

    # Arama sorgusu
    if search_query:
        # Arama sorgusu içeren ürünleri getir
        mycursor.execute("SELECT * FROM Products WHERE description LIKE %s", ("%" + search_query + "%",))
        search_results = mycursor.fetchall()
    else:
        # Arama yapılmamışsa tüm ürünleri getir
        mycursor.execute("SELECT * FROM Products")
        search_results = mycursor.fetchall()

    # Kategorileri ve ürünleri al
    mycursor.execute("SELECT * FROM Categories")
    categories = mycursor.fetchall()

     #Yarın Kapımda
    selected_location = request.args.get('location')
    # Konuma göre ürünleri filtrelemek için veritabanı sorgusu
    if selected_location:
        mycursor.execute("SELECT * FROM Products WHERE location = %s", (selected_location,))
        products = mycursor.fetchall()
    else:
        mycursor.execute("SELECT * FROM Products")
        products = mycursor.fetchall()


    return render_template("search.html", search_results=search_results, categories=categories, products=products, selected_location=selected_location)

@app.route("/product/<int:product_id>")
def product_details(product_id):
    # Ürün detaylarını al
    mycursor.execute("SELECT * FROM Products WHERE product_id = %s", (product_id,))
    product_details = mycursor.fetchone()

    # Ürünün kategorisini al
    category_id = product_details[5]
    mycursor.execute("SELECT category_name FROM Categories WHERE category_id = %s", (category_id,))
    category_name = mycursor.fetchone()[0]

    return render_template("details.html", product_details=product_details, category_name=category_name)



@app.route("/search_page")
def search_page():
    return render_template("search.html")

if __name__ == "__main__":
    app.run(debug=True)
    

