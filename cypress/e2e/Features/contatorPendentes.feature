Feature: Contador de tarefas pendentes

    Scenario: Ver o número de tarefas pendentes

        Given que o usuário tem uma lista de tarefas
        When o usuário visualiza a lista
        Then o contador de tarefas pendentes deve mostrar o número correto de tarefas não concluídas