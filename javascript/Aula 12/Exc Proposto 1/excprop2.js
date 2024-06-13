setTimeout(function() {
    location.reload();
  }, 60000);

function carregar(){
    var msg = document.getElementById('msg')
    var img = document.getElementById('imagem')
    var data = new Date()
    var hora = data.getHours()
    var min = data.getMinutes()
    //var seg = data.getSeconds() // mostra os segundos

    //var hora = 6 //Usei para testar

    msg.innerHTML = `Agora são ${hora}:${min}!`

    if(hora >= 0 && hora < 12){
        img.src = 'manha.png'
        document.body.style.background = '#4b9bfe'
    }
    else if(hora>=12 && hora < 18){
        img.src = 'tarde.png'
        document.body.style.background = '#de3700'
    }
    else{
        img.src = 'noite.png'
        document.body.style.background = '#00284f'
    }
}

