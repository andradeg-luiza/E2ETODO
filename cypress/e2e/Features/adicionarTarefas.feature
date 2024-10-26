Feature: Adicionar tarefas

    Scenario: Adicionar uma nova tarefa

        Given que o usuário está na página inicial da aplicação
        When o usuário digitar uma nova tarefa no campo de entrada e pressionar "Enter"
        Then a nova tarefa deve aparecer na lista de tarefas
        And o campo de entrada deve ser limpo
    
    Scenario: Adicionar tarefa em branco

        Given que o usuário está na página inicial da aplicação
        When o usuário pressionar "Enter" sem digitar nada no campo de entrada
        Then nenhuma nova tarefa deve ser adicionada à lista