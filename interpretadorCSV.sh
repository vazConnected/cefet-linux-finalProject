# Verifica parametro com .csv da agenda
if [ $# -eq 0 ]; then
    echo -ne "\nErro. Nenhum arquivo vou passado por parametro.\n"
    exit 1
else
    if [[ -f "$1" ]]; then
        echo -ne "Lendo agenda $1\n"
    else
        echo -ne "Erro. O arquivo passado por parametro nao existe.\n"
        exit 1
    fi
fi

# Menu de interacao
declare -i menu=1
while [[ menu -ne 0 ]]; do
    echo -ne "**** Menu ****"
    echo -ne "\n1 - Buscar por nome;"
    echo -ne "\n2 - Buscar por email;"
    echo -ne "\n3 - Agrupar por DDD;"
    echo -ne "\n4 - Agrupar por mês de aniversario;"
    echo -ne "\n0 - Sair.\nOpção de entrada: "

    read menu;

    case $menu in
	1)
		echo -ne "\nRealizando busca por nome:\n\n"
		;;
	2)
		echo -ne "\nRealizando busca por email:\n\n"
		;;
    3)
		echo -ne "\nRealizando agrupamento por DDD:\n\n"
		;;
    4)
		echo -ne "\nRealizando agrupamento mensal de aniversários:\n\n"
		;;
    0)
		echo -ne "\nFim do programa.\n"
		;;
	*)
		echo -ne "\nEntrada inválida. Tente novamente.\n\n"
		;;
  esac

done
