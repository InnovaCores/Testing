Feature: US07 - Acceder a Preguntas Frecuentes

  Scenario: Visualización de la sección de Preguntas Frecuentes
    Given que el usuario está en la página principal
    When navega a la sección de "Preguntas Frecuentes"
    Then puede ver una lista de preguntas con sus respectivas respuestas sobre el uso de la plataforma
