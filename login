<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El diario del programador</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <header class="header">
        <img src="../static/img/logo.svg" alt="logo" width="30" height="30">
        <ul class="main-list">

        </ul>
      </header>
      <main class="main-login">
        {% block content %}
        <form action="{{ url_for('login') }}" method="POST" class="login">
            <p class="error">{{error}}</p>

            <!-- Asignación #2 Crear campos de acceso -->
            <label for="email">
              <input class="form__input" type="email" name="email" id="email" placeholder="Introduzca su e-mail" required>
            </label>
            <label for="password">
              <input class="form__input" type="password" name="password" id="password" placeholder="Introduzca su contraseña" required>
            </label>
               <!--  -->
               <button class="form__button">Iniciar sesión</button>
               <a href="/reg" class="form__button reg__link">Registrarse</a>
        </form>
        {% endblock %}
      </main>
</body>
</html>
