Feature: US30 - Conocer Información del Perfil de un Miembro

  Scenario: Acceso al perfil de un miembro
    Given que el usuario ya creó su proyecto Y se encuentra en la sección lista de miembros del proyecto
    When ponga el nombre o el correo electrónico de un usuario en el campo de entrada que diga “Enter name or email address”
    And presione el botón “Show details”
    Then se debe abrir su perfil personal, mostrando su foto, ubicación, intereses y pasatiempos

    Examples:
      | Scrum Master | Acción           |
      | SM1          | Ver perfil       |

  Scenario: Miembro sin información compartida
    Given que el usuario ya creó su proyecto Y se encuentra en la sección lista de miembros del proyecto
    When ponga el nombre o el correo electrónico de un usuario en el campo de entrada que diga “Enter name or email address”
    And presione el botón “Show details”
    Then debo ver un mensaje que indique que no hay información disponible para ese miembro

    Examples:
      | Scrum Master | Acción               |
      | SM1          | Ver info no disponible |

  Scenario: Navegación entre perfiles
    Given que estoy en un perfil personal a través de una ventana emergente
    When apriete el botón “X”
    Then estaré en la lista de miembros del proyecto donde puedo buscar y ver otro perfil de usuario