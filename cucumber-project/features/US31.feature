Feature: US31 - Ver Habilidades de Cada Miembro

  Scenario: Visualización de habilidades en el perfil
    Given que el usuario ya creó su proyecto Y se encuentra en la sección lista de miembros del proyecto
    When ponga el nombre o el correo electrónico de un usuario en el campo de entrada que diga “Enter name or email address”
    And presione el botón “Show skills”
    Then debo ver una lista de habilidades que el miembro ha registrado

    Examples:
      | Scrum Master | Acción             |
      | SM1          | Ver habilidades    |

  Scenario: Manejo de miembros sin habilidades registradas
    Given que el usuario ya creó su proyecto Y se encuentra en la sección lista de miembros del proyecto
    When ponga el nombre o el correo electrónico de un usuario en el campo de entrada que diga “Enter name or email address”
    And presione el botón “Show skills”
    Then debo ver un mensaje que indique que no hay habilidades disponibles

    Examples:
      | Scrum Master | Acción               |
      | SM1          | Ver sin habilidades  |