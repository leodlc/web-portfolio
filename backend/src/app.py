from flask import Flask,jsonify
from flaskext.mysql import MySQL

try:
    app = Flask(__name__)
    app.config['MYSQL_DATABASE_USER'] = 'leoDLC'  # Nombre de usuario de MySQL
    app.config['MYSQL_DATABASE_PASSWORD'] = '753951aq.'  # Contraseña de MySQL
    app.config['MYSQL_DATABASE_DB'] = 'portafolio'  # Nombre de la base de datos
    app.config['MYSQL_DATABASE_HOST'] = 'localhost'  # Host de la base de datos (puede ser 'localhost' si es local)

    mysql = MySQL(app)
    print("Conexión creada con éxito")
except Exception as e:
    print(f"Error al crear la conexión: {e}")

# Ruta para los certificados
@app.route('/certificados',methods=['GET'])
def getCertificados():
    try:
        conn = mysql.connect()  # Establecer la conexión a la base de datos
        cursor = conn.cursor()   # Inicializar el cursor
        cursor.execute("SELECT * FROM certificados")  # Ejecutar la consulta
        certificados = cursor.fetchall()  # Obtener todos los certificados
        conn.close()  # Cerrar la conexión
        return jsonify(certificados)  # Devolver los certificados en formato JSON
    except Exception as e:
        return str(e)


@app.route('/')
def index():
    return 'API de mi portafolio --Leonardo De La Cadena'

if __name__ == '__main__':
    app.run(debug=True)