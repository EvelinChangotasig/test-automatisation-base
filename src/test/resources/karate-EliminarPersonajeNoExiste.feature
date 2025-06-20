@id:12 @EliminarPersonajeNoExiste
Feature: Prueba para eliminar personaje que no existe

  Background:
    * def base_url = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    * configure ssl = true

  Scenario: T-API-BTFAC-123-CA12- Eliminar personaje no existente
    * def personajeId = 99999
    Given url base_url + '/' + personajeId
    When method DELETE
    Then status 404
    And print response