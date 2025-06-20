@id:10 @ActualizarPersonajeNoExiste
Feature: Prueba para actualizar personaje que no existe

  Background:
    * def base_url = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    * configure ssl = true

  Scenario: T-API-BTFAC-123-CA10- Actualizar personaje no existente
    * def personajeId = 99999
    Given url base_url + '/' + personajeId
    And request
      """
      {
        "name": "Iron Man",
        "alterego": "Tony Stark M",
        "description": "Updated description",
        "powers": ["Armor", "Flight"]
      }
      """
    When method PUT
    Then status 404
    And print response