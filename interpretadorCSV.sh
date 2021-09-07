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
