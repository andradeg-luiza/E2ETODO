Feature: Editar tarefas
    
    Scenario: Editar uma tarefa ativa

        Given que o usuário tem uma tarefa ativa na lista
        When o usuário clicar duas vezes no texto da tarefa
        Then o campo de entrada deve aparecer para edição
        And o usuário deve poder modificar o texto da tarefa

    Scenario: Editar uma tarefa concluída

        Given que o usuário tem uma tarefa concluída na lista
        When o usuário clicar duas vezes no texto da tarefa
        Then o campo de entrada deve aparecer para edição
        And  o usuário deve poder modificar o texto da tarefa

    Scenario: Salvar a edição da tarefa

        Given que o usuário está editando uma tarefa
        When o usuário pressionar "Enter" após fazer alterações
        Then a tarefa deve ser atualizada com o novo texto
        And  o campo de entrada deve ser ocultado

    Scenario: Cancelar edição de uma tarefa

        Given que o usuário está editando uma tarefa
        When o usuário pressionar "Esc"
        Then a edição deve ser cancelada
        And o texto original da tarefa deve ser mantido