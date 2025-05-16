// members.steps.js
const { Given, When, Then } = require('@cucumber/cucumber');

// US28 - Ver información de usuario
Given('que el usuario ya creó su proyecto Y se encuentra en la sección {string}', function (seccion) {
    // Navegar a sección
});

When('ponga el nombre o el correo electrónico del usuario que busco en el campo de entrada que diga {string}', function (campo) {
    // Implementar búsqueda
});

When('cuando aparezca en el formato tabular que contiene a los usuarios, apretar el botón {string}', function (boton) {
    // Implementar click en botón
});

Then('aparecerá un cuadro de diálogo emergente que contiene toda la información de su perfil profesional, formación académica, experiencia, habilidades, entre otros', function () {
    // Verificar diálogo
});

// US29 - Asignación de roles
When('ponga el nombre o el correo electrónico de un usuario que no tiene rol en el campo de entrada que diga {string}', function (campo) {
    // Buscar usuario sin rol
});

When('presiona el botón de color verde {string}', function (boton) {
    // Click en botón verde
});

When('presiono el botón con el signo de suma, aparece un campo de entrada para agregar un rol específico', function () {
    // Agregar campo de rol
});

When('después de agregar los roles presiono el botón {string} en el cuadro de diálogo emergente', function (boton) {
    // Aplicar cambios
});

Then('el rol del usuario se guarda Y tiene los accesos que el rol le otorga', function () {
    // Verificar roles
});

// US30 - Perfiles
When('presione el botón {string}', function (boton) {
    // Click genérico en botón
});

Then('se debe abrir su perfil personal, mostrando su foto, ubicación, intereses y pasatiempos', function () {
    // Verificar perfil
});

Then('debo ver un mensaje que indique que no hay información disponible para ese miembro', function () {
    // Verificar mensaje de error
});

// US31 - Habilidades
Then('debo ver una lista de habilidades que el miembro ha registrado', function () {
    // Verificar habilidades
});

Then('debo ver un mensaje que indique que no hay habilidades disponibles', function () {
    // Verificar mensaje sin habilidades
});