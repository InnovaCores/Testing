Feature: US08 - Contactar vía correo

  Scenario: Acceso a la sección "Contáctanos"
    Given que el usuario está en la página principal
    When hace clic en el enlace "Contáctanos"
    Then puede ver un formulario o dirección de correo electrónico para establecer contacto con soporte
