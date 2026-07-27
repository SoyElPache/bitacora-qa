Feature: Registro de usuarios de Mercado Libre 

Feature: Registro de usuarios en Mercado Libre

  Scenario: Registro exitoso con datos válidos
    Given que el usuario se encuentra en la página de registro
    When ingresa un nombre válido
    And ingresa un correo electrónico válido
    And ingresa una contraseña válida
    And confirma el registro
    Then el sistema crea la cuenta correctamente
    And muestra un mensaje de bienvenida

  Scenario: Registro fallido con un correo ya existente
    Given que el usuario se encuentra en la página de registro
    When ingresa un correo electrónico ya registrado
    And completa los demás campos correctamente
    Then el sistema muestra un mensaje indicando que el correo ya existe

  Scenario: Registro fallido con campos vacíos
    Given que el usuario se encuentra en la página de registro
    When intenta registrarse sin completar los campos obligatorios
    Then el sistema muestra mensajes de validación
    And no permite completar el registro
