Feature: US47 - Validar código de acceso único para reunión privada

  Scenario: Validación exitosa del código de acceso
Given que recibí un código de acceso válido para una reunión privada
When ingreso el código en la plataforma
Then obtengo acceso inmediato a la reunión

Scenario: Código de acceso inválido
Given que ingreso un código de acceso inválido o caducado
When intento acceder a la reunión privada
Then se muestra un mensaje indicando que el código es incorrecto o inválido
