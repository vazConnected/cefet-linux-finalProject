BEGIN {
    FS=",";
    contadorMatch=0;
    dddCopia = "+55 " ddd " "
}

{
    if($2 ~ dddCopia){
        print "\tNome: " $1 "\n\tTelefone: " $2 "\n\tEmail: " $3 "\n\tAniversário: " $4 "\n";
        contadorMatch++; 
    }
}

END {
    if(contadorMatch==0){
        print "\nNenhum contato encontrado com o DDD " ddd ".\n";
    } 
    
    if (contadorMatch > 1) {
        print "Foram encontrados " contadorMatch " contatos com o DDD " ddd ".\n";
    }

    if (contadorMatch == 1) {
        print "Foi encontrado apenas " contadorMatch " com o DDD " ddd ".\n";
    }
}