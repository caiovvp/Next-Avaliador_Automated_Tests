Feature: show all dashboard elements
  
  Background:
    Given user is logged in <Next Avaliador> on <Connect Group 12.367.969/0001-84>
    And go to Researches Page: <http://192.168.201.15:86/pesquisas>

    Scenario: Researches were already created
      When create a test research
      And click on </dashboard>
      Then show a list of researches created so far
      And find <Pesquisa Teste> in <tr>
      
    Scenario: No Researches were created yet
      Given check researches and delete them
      When click on </dashboard>
      Then show message <Você ainda não tem pesquisas criadas. Comece agora.> on <header-title>
      When click on <pesquisas-btn>
      Then redirect to Researches Page: <http://192.168.201.15:86/pesquisas> on window <1>

