@id:6 @CrearPersonajeDuplicado
Scenario: T-API-BTFAC-123-CA06- Crear personaje duplicado 
  Given url base_url
  And request
    """
    {
      "name": "Iron Man",
      "alterego": "Otro",
      "description": "Otro",
      "powers": ["Armor"]
    }
    """
  When method POST
  Then status 201
  And match response.name == "Iron Man"
  And match response.alterego == "Otro"
  And match response.description == "Otro"
  And match response.powers contains "Armor"
  And print response

@id:7 @CrearPersonajeDuplicadoIntento
Scenario: T-API-BTFAC-123-CA07- Intentar crear personaje duplicado Iron Man
  Given url base_url
  And request
    """
    {
      "name": "Iron Man",
      "alterego": "Otro",
      "description": "Otro",
      "powers": ["Armor"]
    }
    """
  When method POST
  Then status 400
  And print response