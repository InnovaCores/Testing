// backlog.steps.js
const { When, Then } = require('@cucumber/cucumber');

// US09 - Creación User Story
When('selecciona la opción {string}', function (opcion) {
    // Implementar lógica de selección
});

Then('puede ingresar el título, descripción, prioridad y criterios de aceptación de la historia', function () {
    // Implementar lógica de entrada de datos
});

Then('al guardar, la nueva user story aparece en la vista user stories y backlog', function () {
    // Implementar verificación de creación
});

// US10 - Edición User Story
When('selecciona una user story para editarla', function () {
    // Implementar lógica de edición
});

Then('puede modificar su título, descripción, prioridad y criterios de aceptación', function () {
    // Implementar lógica de modificación
});

Then('al guardar, los cambios se reflejan en la vista user stories y el backlog con un mensaje de éxito', function () {
    // Implementar verificación de cambios
});

// US11 - Eliminación User Story
When('selecciona una user story para eliminarla', function () {
    // Implementar lógica de eliminación
});

Then('al confirmar, la user story es eliminada del backlog y la vista user stories, mostrándose un mensaje de éxito', function () {
    // Implementar verificación de eliminación
});

// US12-US15 - Épicas
Then('puede ingresar el título, descripción y criterios de éxito de la epic', function () {
    // Implementar lógica de entrada de datos épica
});

Then('al guardar, la nueva epic aparece listada en la vista epics con un mensaje de éxito', function () {
    // Implementar verificación de creación épica
});

When('selecciona una epic para editarla', function () {
    // Implementar lógica de edición épica
});

Then('puede modificar el título, descripción y criterios de éxito', function () {
    // Implementar lógica de modificación épica
});

Then('al guardar, los cambios se reflejan en la vista epics con un mensaje de éxito', function () {
    // Implementar verificación de cambios épica
});

When('selecciona una epic para eliminarla', function () {
    // Implementar lógica de eliminación épica
});

Then('al confirmar, la epic es eliminada y se muestra un mensaje de éxito', function () {
    // Implementar verificación de eliminación épica
});