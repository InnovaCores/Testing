Feature: US29 - Asignar roles a los miembros del equipo

  Scenario: Agregar rol a un miembro
    Given que el usuario ya creó su proyecto Y se encuentra en la sección “Members/Users”
    And al menos un usuario aceptó su invitación para unirse al proyecto
    When ponga el nombre o el correo electrónico de un usuario que no tiene rol en el campo de entrada que diga “Enter name or email address”
    And presiona el botón de color verde “Edit”
    And presiono el botón con el signo de suma, aparece un campo de entrada para agregar un rol específico (Product Owner, Scrum Master, Development Team) o más
    And después de agregar los roles presiono el botón “Apply” en el cuadro de diálogo emergente
    Then el rol del usuario se guarda Y tiene los accesos que el rol le otorga

    Examples:
      | Scrum Master | Acción           |
      | SM1          | Agregar Rol      |

  Scenario: Cambiar el rol de un miembro
    Given que el usuario ya creó su proyecto Y se encuentra en la sección “Members/Users”
    And al menos un usuario aceptó su invitación para unirse al proyecto
    When ponga el nombre o el correo electrónico de un usuario que tiene un rol en el campo de entrada que diga “Enter name or email address”
    And presiona el botón de color verde “Edit”
    And presiono el botón con el signo de suma para agregar un rol o presiono el botón con un aspa al costado de cada rol para eliminar el rol
    And después de cambiar los roles presiono el botón “Apply” en el cuadro de diálogo emergente
    Then el rol del usuario se guarda Y tiene los accesos que el rol le otorga

    Examples:
      | Scrum Master | Acción          |
      | SM1          | Cambiar Rol     |