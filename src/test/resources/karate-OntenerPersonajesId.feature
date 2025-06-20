@Prueba
Feature: Prueba para Obtener Personajes por ID

  Background:
    * def base_url = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
	* configure ssl = true

    @id:2 @ObtenerPersonajePorId
    Scenario: T-API-BTFAC-123-CA02- Obtener Personaje por ID
        Given url base_url + '/1'
        When method GET
        Then status 200
        And match response.id == 1
        And print response

