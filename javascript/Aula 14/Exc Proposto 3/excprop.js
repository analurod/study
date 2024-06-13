function contar(){
    let inicio = document.getElementById('inicio')
    let fim = document.getElementById('fim')
    let passos = document.getElementById('pular')
    var res = document.querySelector('div#res')

    if(inicio.value.length == 0 || fim.value.length == 0|| passos.value.length ==0) {
        res.innerHTML = 'Impossível contar. Preencha todos os campos e tente novamente!'
        return;
    }

    else{
        var de = Number(inicio.value)
        var ate= Number(fim.value)
        var cont= Number(passos.value)
        var resultado= ''
        
        if(cont <=0){
            alert('Passo inválido! Consideramos passo 1.')
            cont = 1
        }

        if(de<ate){ //contagem crescente
            for(let c=de; c<=ate; c+=cont){
                resultado += ` ${c} &#128073;&#127996`;
            }
        }

        else{ //contagem decrescente
            for(let c=de; c>=ate; c-=cont){
                resultado += ` ${c} &#128073;&#127996`;
            }
        }
        
        
        resultado += `&#127881`;
        
        // Define o resultado no elemento res
        res.innerHTML = resultado;
        
    }
}