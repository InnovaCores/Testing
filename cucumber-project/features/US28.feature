Feature: US28 - Ver la información de usuario de los miembros

  Scenario: Mostrar la información de usuario específico
    Given que el usuario ya creó su proyecto Y se encuentra en la sección “Members/Users”
    And al menos un usuario aceptó su invitación para unirse al proyecto
    When ponga el nombre o el correo electrónico del usuario que busco en el campo de entrada que diga “Enter name or email address”
    And cuando aparezca en el formato tabular que contiene a los usuarios, apretar el botón “Show details”
    Then aparecerá un cuadro de diálogo emergente que contiene toda la información de su perfil profesional, formación académica, experiencia, habilidades, entre otros

    Examples:
      | Scrum Master | Acción              |
      | SM1          | Ver info de usuario |