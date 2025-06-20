@id:9 @ActualizarPersonaje
 Background:
    * def base_url = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
	* configure ssl = true
    
Scenario: T-API-BTFAC-123-CA09- Actualizar personaje existente
  * def personajeId = 1
  Given url base_url + '/' + personajeId
  And request
    """
    {
      "name": "Iron Man",
      "alterego": "Tony Stark R",
      "description": "Updated description",
      "powers": ["Armor", "Flight2"]
    }
    """
  When method PUT
  Then status 200
  And match response.name == "Iron Man"
  And match response.alterego == "Tony Stark R"
  And match response.description == "Updated description"
  And match response.powers contains "Armor"
  And match response.powers contains "Flight2"
  And print response