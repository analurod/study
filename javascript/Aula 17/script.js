var resu = document.getElementById('seltab')
var pega= document.getElementById('num')
var res = document.getElementById('res')
var num = []

function éNum(n){
    if(Number(n) >= 1 && Number(n) <=100){
        return true
    }
    else{
        return false
    }
}

function naLista(n, l){
    if(l.indexOf(Number(n)) != -1){
        return true
    }
    else{
        return false
    }
}

function adicionar(){
    var j = pega.value

    if(éNum(pega.value) && !naLista(pega.value, num)){
        num.push(Number(pega.value))
        let item = document.createElement('option')
        item.text = `Valor adicionado: ${pega.value}`
        resu.appendChild(item)
        res.innerHTML=''

    }
    else{
       alert('Valor inválido ou já adicionado! Tente novamente.')
    }
    pega.value= ''
    pega.focus()

    return(num)
}


function analisar(){
    if(num.length == 0){
        alert('Adicione valores antes de analisar!')
        return
    }
    else{
        let tot = num.length
        let maior = num[0]
        let menor = num[0]
        let soma = 0
        let media = 0

        for(let pos in num){
            soma += num[pos]
            
            if(num[pos]> maior){
                maior = num[pos]
            }
            if(num[pos]< menor){
                menor = num[pos]
            }
        }
        media= soma / tot

        res.innerHTML += `<p>Você digitou ${tot} números</p>`
        res.innerHTML += `<p>O maior número foi ${maior}</p>`
        res.innerHTML += `<p>O menor número foi ${menor}</p>`
        res.innerHTML += `<p>A soma dos números é ${soma}.</p>`
        res.innerHTML += `<p>A média dos números é ${media}.</p>`

        
    }
   
}

