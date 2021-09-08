BEGIN {
    FS=",";
    contadorMatch=0;
}

{
    print "\tNome: " $1 "\n\tTelefone: " $2 "\n\tEmail: " $3 "\n\tAniversário: " $4 "\n";
    contadorMatch++;
}

END {
    if(contadorMatch==0){
        print "\nNenhum contato encontrado. A agenda está vazia.\n";
    } 
    
    if (contadorMatch > 1) {
        print "Foram encontrados " contadorMatch " contatos na agenda.\n";
    }

    if (contadorMatch == 1) {
        print "Foi encontrado apenas " contadorMatch " contato na agenda.\n";
    }
}