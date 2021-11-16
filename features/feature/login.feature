Feature: Log in into Next Avaliador

  Background:
    Given go to Login Page: <http://192.168.201.15:86/login>

    Scenario: User tries to go to dashboard without logging in
      When go to Dashboard Page: <http://192.168.201.15:86/empresas>
      Then show message <Não foi possível efetuar o login, senha ou usuário incorretos> on <toast-message>

    Scenario: User type invalid credentials
      When choose <Connect Group> from <empresa_id>
      And type login: <joao.vitor>
      And type senha: <senhas@123>
      And click on <entrar-button>
      Then show message <Não foi possível efetuar o login, senha ou usuário incorretos> on <toast-message>
      When choose <Connect Group> from <empresa_id>
      When type login: <joaovitor>
      And type senha: <senhas@12345>
      And click on <entrar-button>
      Then show message <Não foi possível efetuar o login, senha ou usuário incorretos> on <toast-message>

    Scenario: User type valid credentials
      When choose <Connect Group> from <empresa_id>
      And type login: <joaovitor>
      And type senha: <senhas@123>
      And click on <entrar-button>
      Then redirect to Dashboard Page: <http://192.168.201.15:86/dashboard?success=Login%20Efetuado%20com%20sucesso.> on window <1>
