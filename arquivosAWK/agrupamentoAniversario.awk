BEGIN {
    FS=",";
    contadorMatch=0;
    mesAniversarioCopia = "/" mesAniversario "$"
}

{
    if($4 ~ mesAniversarioCopia){
        print "\tNome: " $1 "\n\tTelefone: " $2 "\n\tEmail: " $3 "\n\tAniversário: " $4 "\n";
        contadorMatch++; 
    }
    
}

END {
    if(contadorMatch==0){
        print "\nNenhum contato encontrado com aniversário no mês " mesAniversario ".\n";
    } 
    
    if (contadorMatch > 1) {
        print "Foram encontrados " contadorMatch " contatos com aniversário no mês " mesAniversario ".\n";
    }

    if (contadorMatch == 1) {
        print "Foi encontrado apenas " contadorMatch " com aniversário no mês " mesAniversario ".\n";
    }
}