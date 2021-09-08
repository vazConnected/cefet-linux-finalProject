BEGIN {
    FS=",";
    contadorMatch=0;
}

{
    if ($1 ~ nome){
        print "\tNome: " $1 "\n\tTelefone: " $2 "\n\tEmail: " $3 "\n\tAniversário: " $4 "\n";
        contadorMatch++;
    }
}

END {
    if(contadorMatch==0){
        print "\nNão há contatos com o nome \"" nome "\" na agenda selecionada.\n";
    } 
    
    if (contadorMatch > 1) {
        print "Foram encontrados " contadorMatch " resultados durante a busca pelo nome \"" nome "\".\n";
    }

    if (contadorMatch == 1) {
        print "Foi encontrado " contadorMatch " resultado durante a busca pelo nome \"" nome "\".\n";
    }
}