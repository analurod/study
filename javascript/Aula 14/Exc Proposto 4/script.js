function contar(){
    var num = document.getElementById('num')
    var mult = document.getElementById('tabuada')
    var res = document.getElementById('seltab')

    if(num.value.length == 0 || mult.value.length == 0){
        res.innerHTML = 'Preencha todos os campos!'
    }

    var n = num.value
    var m = mult.value

   if(m <= 0){
        alert('Erro! Consideramos como 10, tente novamente!')
        m=10
    }

    res.innerHTML =''
    for(c=1; c<=m; c++){
        let item =  document.createElement('option')
        item.text = `${n}x${c} = ${n*c}`
        res.appendChild(item)
    }
   
}