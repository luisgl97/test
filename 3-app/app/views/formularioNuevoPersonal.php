<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ficha Nuevo Personal</title>
</head>
<body>
<h1>Formulario de Datos Personales</h1>
    <form action="" method="POST">
        <label for="nombres">Nombres:</label>
        <input type="text" id="nombres" name="nombres" required>

        <label for="apellidos">Apellidos:</label>
        <input type="text" id="apellidos" name="apellidos" required>

        <label for="fecha_nacimiento">Fecha de Nacimiento:</label>
        <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" required>

        <label for="edad">Edad:</label>
        <input type="number" id="edad" name="edad" required>

        <label for="sexo">Sexo:</label>
        <select id="sexo" name="sexo" required>
            <option value="M">Masculino</option>
            <option value="F">Femenino</option>
        </select>

        <label for="estado_civil">Estado Civil:</label>
        <select id="estado_civil" name="estado_civil" required>
            <option value="Soltero(a)">Soltero(a)</option>
            <option value="Casado(a)">Casado(a)</option>
            <option value="Divorciado(a)">Divorciado(a)</option>
            <option value="Viudo(a)">Viudo(a)</option>
        </select>

        <label for="ciudad_nacimiento">Ciudad de Nacimiento:</label>
        <input type="text" id="ciudad_nacimiento" name="ciudad_nacimiento" required>

        <label for="tipo_documento">Tipo de Documento:</label>
        <select id="tipo_documento" name="tipo_documento" required>
            <option value="DNI">DNI</option>
            <option value="Pasaporte">Pasaporte</option>
            <option value="Carné de Extranjería">Carné de Extranjería</option>
        </select>

        <label for="numero_documento">Número de Documento:</label>
        <input type="text" id="numero_documento" name="numero_documento" required>

        <label for="cantidad_hijos">Cantidad de Hijos:</label>
        <input type="number" id="cantidad_hijos" name="cantidad_hijos" required>

        <label for="discapacidad">¿Tiene Discapacidad?</label>
        <input type="checkbox" id="discapacidad" name="discapacidad" value="1">
        
        <label for="tipo_discapacidad">Tipo de Discapacidad:</label>
        <input type="text" id="tipo_discapacidad" name="tipo_discapacidad">

        <label for="departamento">Departamento:</label>
        <input type="text" id="departamento" name="departamento" required>

        <label for="telefono_casa">Teléfono de Casa:</label>
        <input type="tel" id="telefono_casa" name="telefono_casa">

        <label for="celular">Celular:</label>
        <input type="tel" id="celular" name="celular" required>

        <label for="email">Correo Electrónico:</label>
        <input type="email" id="email" name="email">

        <label for="nombre_contacto">Nombre de Contacto:</label>
        <input type="text" id="nombre_contacto" name="nombre_contacto">

        <label for="parentesco">Parentesco:</label>
        <input type="text" id="parentesco" name="parentesco">

        <label for="telefono_contacto">Teléfono de Contacto:</label>
        <input type="tel" id="telefono_contacto" name="telefono_contacto">

        <label for="grado_academico">Grado Académico:</label>
        <select id="grado_academico" name="grado_academico" required>
            <option value="Primaria">Primaria</option>
            <option value="Secundaria">Secundaria</option>
            <option value="Bachiller">Bachiller</option>
            <option value="Universitario">Universitario</option>
            <option value="Maestría">Maestría</option>
            <option value="Doctorado">Doctorado</option>
        </select>

        <label for="referencia">Referencia:</label>
        <input type="text" id="referencia" name="referencia">

        <label for="ubigeo">Ubigeo:</label>
        <input type="text" id="ubigeo" name="ubigeo" required>

        <label for="id_contrato">ID de Contrato:</label>
        <input type="text" id="id_contrato" name="id_contrato" required>

        <input type="submit" value="Guardar">
    </form>
</body>
</body>
</html>