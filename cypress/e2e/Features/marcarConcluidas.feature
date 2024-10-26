Feature: Marcar como concluidas

    Scenario: Marcar uma tarefa como concluída

        Given que o usuário tem uma tarefa pendente na lista
        When o usuário clicar na caixa de seleção ao lado da tarefa
        Then a tarefa deve ser marcada como concluída
        And o texto da tarefa deve ser exibido com uma linha riscada
    
    Scenario: Desmarcar uma tarefa concluída

        Given que o usuário tem uma tarefa marcada como concluída
        When o usuário clicar na caixa de seleção novamente
        Then a tarefa deve ser desmarcada
        And o texto riscado deve ser removido