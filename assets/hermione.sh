#!/bin/bash

# Bem-vindo à Hermione, sua assistente no Linux!
while true; do
    echo "Olá, sou Hermione! ~* Lembre-se, estas dicas não substituem sua ida para a biblioteca. *~"
    echo "Escolha uma opção abaixo:"
    echo "1 - Linux, Livro de Funções Básicas"
    echo "2 - Dicas Git"
    echo "3 - Dicas Alias"
    echo "4 - Dicas Podman"
    echo "5 - Dicas Postgres"
    echo "6 - Dicas SQL"
    echo "7 - Dicas Linux"
    echo "0 - Sair"

    # Solicitar a entrada do usuário
    read -p "Digite sua escolha (0-7): " opcao

    # Função para perguntar se o usuário quer continuar
    perguntar_continuar() {
        while true; do
            read -p "Sim (s) ou Não (n)? " resposta
            case $resposta in
                [Ss]*)
                    return 0 # Volta ao menu
                    ;;
                [Nn]*)
                    echo "Lembre-se: é leviÔsa e não leviosÁ..."
                    exit 0 # Encerra o programa
                    ;;
                *)
                    echo "Isso é bastante simples, não acha? Por favor, escolha 's' para sim ou 'n' para não.";
                    ;;
            esac
        done
    }

    # Processar a escolha do usuário
    case $opcao in
        1)
        # echo "1 - Dica Linux"
                    echo "~*"
            echo "Você acessou o 7: Livro de Funções para o Fedora:"
            echo "1 - Accio Upgrade para Atualizar o Sistema Fedora(dnf upgrade --refresh -y)"
            echo "2 - Estupefaça (Reiniciar o sistema)"
            echo "3 - Avada Kedavra (Desligar o sistema)"
            echo "0 - Voltar ao menu principal"
            read -p "Escolha sua magia (0-3): " magia
            case $magia in
                1)
                    read -p "Tem certeza que deseja atualizar o sistema? (s/n): " certeza
                    if [[ "$certeza" == [sS]* ]]; then
                        echo "Você lançou: Accio Upgrade!"
                        echo "Executando o comando 'sudo dnf upgrade --refresh'..."
                        sudo dnf upgrade --refresh -y
                        echo ""
                        echo "Atualização finalizada com sucesso!"
                    else
                        echo "Feitiço cancelado."
                    fi
                    ;;
                2)
                    read -p "Tem certeza que deseja reiniciar o sistema? (s/n): " certeza
                    if [[ "$certeza" == [sS]* ]]; then
                        echo "Você lançou: Estupefaça!"
                        echo "Reiniciando o sistema com 'shutdown -r now'..."
                        sudo shutdown -r now
                    else
                        echo "Feitiço cancelado."
                    fi
                    ;;
                3)
                    read -p "Tem certeza que deseja desligar o sistema? (s/n): " certeza
                    if [[ "$certeza" == [sS]* ]]; then
                        echo "Você lançou: Avada Kedavra!"
                        echo "Desligando o sistema com 'shutdown -h now'..."
                        sudo shutdown -h now
                    else
                        echo "Feitiço cancelado."
                    fi
                    ;;
                0)
                    echo "Voltando ao menu principal..."
                    ;;
                *)
                    echo "Magia desconhecida! Tente novamente."
                    ;;
            esac
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;

        2)
        # echo "2 - Dica Git"
            echo "~*"        
            echo "Dica Git: Use 'git log --oneline --graph' para visualizar o histórico de commits."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        3)
        # echo "3 - Dica Alias"
            echo "~*"        
            echo "Dica Alias: Use 'alias ll=\"ls -lah\"' para criar um atalho para listar arquivos."
            echo ""
            echo "Meus Alias estão em um site chamado alias.meuweb.site"
            echo "1 - Abrir o site"
            echo "2 - Copiar o link"
            echo "0 - Continuar"
            read -p "Opção: " site_opt
            link="https://alias.meuweb.site"
            case $site_opt in
                1)
                    if command -v xdg-open &> /dev/null; then
                        xdg-open "$link"
                        echo "Site aberto!"
                    else
                        echo "Navegador não detectado. Link: $link"
                    fi
                    ;;
                2)
                    if command -v wl-copy &> /dev/null; then
                        echo -n "$link" | wl-copy
                        echo "Link copiado!"
                    elif command -v xclip &> /dev/null; then
                        echo -n "$link" | xclip -selection clipboard
                        echo "Link copiado!"
                    else
                        echo "Ferramenta de clipboard não encontrada. Link: $link"
                    fi
                    ;;
            esac

            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        4)
        # echo "4 - Dica Podman"
            echo "~*"
            echo "Dica Podman: Use 'podman ps -a' para listar todos os contêineres, incluindo os parados."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        5)
        # echo "5 - Dica Postgres"
            echo "~*"
            echo "Dica Postgres: Use 'psql -U usuario -d banco' para acessar o banco de dados pelo terminal."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        6)
        # echo "6 - Dica SQL"
            echo "~*"
            echo "Dica SQL: Use 'SELECT * FROM tabela LIMIT 10;' para visualizar os primeiros 10 registros."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        7)
            echo "~*"        
            echo "Estas dicas serão uteis para navegar no mundo Linux."
            echo ""
            echo "[comando] --help --- Ajuda. Lista as opções do comando pretendido"
            echo "ls -a            --- Lista todos os arquivos ocultos"
            echo "ls -lh           --- Lista arquivos com seu tamanho em formato legível"
            echo "rm -rf           --- Remove pasta recursivamente e forçadamente"
            echo "cp               --- Copia um arquivo para o local desejado"
            echo "cat [nome].txt   --- Concatena criando um novo arquivo"

            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;

        0)
            echo "~*"            
            echo "Saindo..."
            echo "Lembre-se: é leviÔsa e não leviosÁ..."
            exit 0
            ;;
        *)
            echo "Algo deu errado, Harry! Espero que não sejamos mortos, ou pior, expulsos."
            ;;
    esac
    echo "" # Linha em branco para melhor legibilidade
done