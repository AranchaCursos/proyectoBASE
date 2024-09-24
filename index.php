<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Materiales de construcción con la mejor relación calidad-precio para baños: Azulejos, sanitarios, griferías y más.">
  <title>Materiales de Ensueño</title>
  
  <!-- Estilos CSS -->
  <link rel="stylesheet" href="css/normalize.css" type="text/css">
  <link rel="stylesheet" href="css/webflow.css" type="text/css">
  <link rel="stylesheet" href="css/paes-c1fe1c.webflow.css" type="text/css">

  <!-- Fuentes -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
  
  <!-- Iconos -->
  <link rel="shortcut icon" href="images/favicon.jpg" type="image/x-icon">
  <link rel="apple-touch-icon" href="images/webclip.jpg">
</head>
<body>

<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root"; // Cambia por tu usuario de MySQL
$password = ""; // Cambia por tu contraseña de MySQL
$dbname = "MaterialesConstruccionBanos"; // Nombre de la base de datos

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>

<div class="navbar-no-shadow">
  <div class="navbar-no-shadow-container w-nav" role="banner">
    <div class="container-regular">
      <div class="navbar-wrapper">
        <a href="#" class="navbar-brand w-nav-brand">
          <img src="images/LogoMat01.png" alt="Materiales de Ensueño" width="200">
        </a>
        <nav class="nav-menu-wrapper w-nav-menu" role="navigation">
          <ul class="nav-menu w-list-unstyled">
            <li><a href="#materiales" class="nav-link">Materiales</a></li>
            <li><a href="#sobre-nosotros" class="nav-link">Sobre nosotros</a></li>
            <li><a href="#contact" class="nav-link">Contacto</a></li>
            <li><a href="tel:+34918907515" class="button-primary menu w-button">Llama al 91 911 91 91</a></li>
          </ul>
        </nav>
        <div class="menu-button w-nav-button">
          <div class="w-icon-nav-menu"></div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Sección Materiales -->
<section id="materiales" class="materiales">
  <div class="container">
    <div class="w-layout-grid grid">

      <?php
      // Consulta SQL para obtener materiales de construcción
      $sql = "SELECT nombre, color, material, dimensiones, precio, proveedor, stock FROM Azulejos";
      $result = $conn->query($sql);

      // Mostrar materiales si existen registros
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc()) {
              echo '
              <div class="servicios_div">
                <div class="div_titulo_servicios">
                  <img src="images/AZULEJOS.png" width="110" alt="' . $row["nombre"] . '" class="imagenes_servicios">
                  <h3 class="titulo-servicios">' . $row["nombre"] . '</h3>
                </div>
                <div class="fondo-marcas">
                  <div class="text-block">
                    <p>Color: ' . $row["color"] . '</p>
                    <p>Material: ' . $row["material"] . '</p>
                    <p>Dimensiones: ' . $row["dimensiones"] . '</p>
                    <p>Precio: ' . $row["precio"] . '€</p>
                    <p>Proveedor: ' . $row["proveedor"] . '</p>
                    <p>Stock disponible: ' . $row["stock"] . '</p>
                  </div>
                </div>
              </div>';
          }
      } else {
          echo "<p>No hay materiales disponibles.</p>";
      }
      ?>

    </div>
  </div>
</section>

<!-- Sección Sobre Nosotros -->
<section id="sobre-nosotros" class="sobre-nosotros">
  <div class="container">
    <div class="hero-wrapper">
      <div class="hero-split">
        <h1 class="titulos-seccion blanco">Queremos ayudarte con tu proyecto</h1>
        <p class="parrafo_azul">Damos el mejor servicio con atención personalizada y profundo conocimiento de los materiales.</p>
        <a href="tel:+34918907515" class="button-primary-copy color-invertido w-button">Resuelve todas tus dudas</a>
      </div>
      <div class="hero-split">
        <img src="images/eligiendo_materiales.jpg" alt="Eligiendo materiales" class="shadow-two">
      </div>
    </div>
  </div>
</section>

<!-- Sección Contacto -->
<section id="contact" class="footer-light">
  <div class="container">
    <div class="footer-wrapper-two">
      <a href="#" class="footer-brand w-inline-block">
        <img src="images/logo_leyenda_azul.png" alt="Materiales de Ensueño" width="330">
      </a>
      <div class="footer-block-two">
        <div class="footer-title">Servicios</div>
        <a href="#materiales" class="footer-link-two">Materiales</a>
        <a href="#sobre-nosotros" class="footer-link-two">Sobre nosotros</a>
        <a href="#contact" class="footer-link-two">Contacto</a>
      </div>
      <div class="footer-block-two">
        <div class="footer-title">Textos legales</div>
        <a href="politica-de-privacidad.html" class="footer-link-two">Política de Privacidad</a>
        <a href="aviso-legal.html" class="footer-link-two">Aviso legal</a>
        <a href="politica-de-cookies.html" class="footer-link-two">Política de Cookies</a>
      </div>
      <div class="footer-block-two">
        <div class="footer-title">Contacto</div>
        <a href="https://maps.app.goo.gl/YRW2cHfAg6SRnZeEA" class="footer-link-two">C/ Vía Maria, s/n Madrid</a>
        <a href="mailto:info@materialesdeensueno.com" class="footer-link-two">info@materialesdeensueno.com</a>
        <a href="tel:+34918907515" class="button-primary w-button">Llama al 91 911 91 91</a>
      </div>
    </div>
  </div>
</section>

<?php
// Cerrar la conexión a la base de datos
$conn->close();
?>

<!-- Scripts -->
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js"></script>
<script src="js/webflow.js"></script>

</body>
</html>
