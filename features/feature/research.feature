Feature: Add, edit and delete researches for that specific business
  
  Background: 
    Given user is logged in <Next Avaliador> on <Connect Group 12.367.969/0001-84>
    And click on </pesquisas>

    Scenario: Add test research for Connect Group
      When click on <cadastrar-btn>
      And type cadastrar-titulo: <Pesquisa Teste>
      And type cadastrar-subtitulo: <Testando perguntas>
      And choose <Geral> from <cadastrar-tipo>
      And choose <Ativo> from <cadastrar-ativo>
      And change <cadastrar-dh-inicial> attribute <type> to < >
      And change <cadastrar-dh-final> attribute <type> to < >
      And type cadastrar-dh-inicial: <2030-10-12>
      And type cadastrar-dh-final: <2030-10-12>
      And click on <cadastrar-button>
      Then show message <Pesquisa cadastrado com sucesso> on <toast-message>

    Scenario: Edit test research
      When find <Pesquisa Teste> [type: <class>, name: <editar-btn>] in <table> (FOR LISTS)
      And clear and type <editar-titulo>: <Pesquisa Teste Editada>
      And clear and type <editar-subtitulo>: <Subtítulo editado>
      And choose <Geral> from <editar-tipo>
      And choose <Inativo> from <editar-ativo>
      And change <{input}> attribute <{attr_name}> to <{attr_value}> change type of element <editar-dh-inicial>
      And change <{input}> attribute <{attr_name}> to <{attr_value}> change type of element <editar-dh-final>
      And type editar-dh-inicial: <2035-10-12>
      And type editar-dh-final: <2035-10-12>
      And click on <editar-button>
      Then show message <Pesquisa editada com sucesso> on <toast-message>

    Scenario: Add new binary question
      When click on </perguntas>
      And click on <cadastrar-btn>
      And choose <Binário> from <cadastrar-tipo-pergunta>
      And type cadastrar-binario-titulo: <Binário Teste>
      And type cadastrar-binario-subtitulo: <Subtítulo Teste>
      And type cadastrar-binario-texto: <Pergunta Binária>
      And choose <Sim> from <cadastrar-binario-obrigatoria>
      And choose <Ativo> from <cadastrar-binario-status>
      And choose <Sim> from <cadastrar-binario-valorpadrao>
      And click on <cadastrar-button>
      Then show message <Pesquisa editada com sucesso> on <toast-message>

    Scenario: Add new dropdown question
      When click on </perguntas>
      And click on <cadastrar-btn>
      And choose <Dropdown> from <cadastrar-tipo-pergunta>
      And type cadastrar-dropdown-titulo: <Dropdown Teste>
      And type cadastrar-dropdown-subtitulo: <Subtítulo Teste>
      And type cadastrar-dropdown-texto: <Pergunta Dropdown>
      And choose <Sim> from <cadastrar-dropdown-obrigatoria>
      And choose <Ativo> from <cadastrar-dropdown-status>
      And click on <cadastrar-button>
      Then show message <Pergunta cadastrada com sucesso> on <toast-message>

    Scenario: Add questions to the research
      When find <Pesquisa Teste> [type: <class>, name: <quest-btn>] in <table> (FOR LISTS)
      And click on <cadastrar-btn>
      And choose <Binário Teste> from <cadastrar-pergunta>
      And click on <cadastrar-button>
      And wait for <0.3> seconds
      And click on <cadastrar-btn>
      And choose <Dropdown Teste> from <cadastrar-pergunta>
      And click on <cadastrar-button>
      Then find <1> in <table>

    Scenario: Delete research questions
      When find <Pesquisa Teste> [type: <class>, name: <quest-btn>] in <table> (FOR LISTS)
      And find <1> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      And find <2> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      Then dont find <1> in <table>
      And dont find <2> in <table>

    Scenario: Delete questions
      When click on </perguntas>
      And find <Binário Teste> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      And find <Dropdown Teste> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      Then dont find <Binário Teste> in <table>
      And dont find <Dropdown Teste> in <table>

    Scenario: Delete research
      When find <Pesquisa Teste> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      Then dont find <Pesquisa Teste> in <table>
