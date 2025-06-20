@id:11 @EliminarPersonaje
Scenario: T-API-BTFAC-123-CA11- Eliminar personaje existente
  * def personajeId = 1
  Given url base_url + '/' + personajeId
  When method DELETE
  Then status 200
  And print response