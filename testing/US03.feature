Feature: Contactar a Chaquitaclla (US03)

  Como usuario que se encuentra en la landing page
  Quiero poder contactar al equipo de Chaquitaclla mediante correo o formulario
  Para comunicar mis consultas.

  @UI
  Scenario: Render de la sección de contacto
    Given que estoy en la landing page
    When navego a "#contact-us"
    Then debo ver los campos "Name", "Email" y "Description"
    And debo ver un botón "Send"

  @Validacion
  Scenario: Validación de campos obligatorios
    When hago clic en "Send" sin completar campos
    Then debo ver mensajes de error para "Name", "Email" y "Description"

  @Envio
  Scenario: Envío exitoso de formulario
    Given que ingreso datos válidos en "Name", "Email" y "Description"
    When hago clic en "Send"
    Then debería enviarse la solicitud a "/submit_form"
    And debería mostrarse un mensaje de confirmación
