let navbar = document.querySelector('.cabecalho .navbar')

document.querySelector('#menu-btn').onclick = () => {
  navbar.classList.add('active')
}

document.querySelector('#fecha-navbar').onclick = () => {
  navbar.classList.remove('active')
}

let registroBtn = document.querySelector('.conta-form .registro-btn')
let loginBtn = document.querySelector('.conta-form .login-btn')

registroBtn.onclick = () => {
  registroBtn.classList.add('active')
  loginBtn.classList.remove('active')
  document.querySelector('.conta-form .login-form').classList.remove('active')
  document.querySelector('.conta-form .registro-form').classList.add('active')
}
loginBtn.onclick = () => {
  registroBtn.classList.remove('active')
  loginBtn.classList.add('active')
  document.querySelector('.conta-form .login-form').classList.add('active')
  document
    .querySelector('.conta-form .registro-form')
    .classList.remove('active')
}

let contaForm = document.querySelector('.conta-form')

document.querySelector('#btn-conta').onclick = () => {
  contaForm.classList.add('active')
}

document.querySelector('#fecha-form').onclick = () => {
  contaForm.classList.remove('active')
}

var swiper = new Swiper('.home-slider', {
  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },
  autoplay: {
    delay: 5000,
  },
  loop: true,
  grabCursor: true,
})

var swiper = new Swiper('.servicos-slider', {
  loop: true,
  grabCursor: true,
  spaceBetween: 20,
  autoplay: {
    delay: 5000,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    991: {
      slidesPerView: 3,
    },
  },
})

/*const article = document.querySelector('.content2')

function showMore() {
  if (article.className == 'open') {
    // ler menos
    article.className = ''
    button.innerHTML = 'Mostrar Mais' // Mostrar mais
  } else {
    // ler mais
    article.className = 'open'
    button.innerHTML = 'Mostrar Menos' // Mostrar menos
  }
}*/

/*const article = document.querySelector('#conteudo')
function showMore() {
  if (article.className == 'open') {
    // Ler menos
    article.className = ''
    button.innerHTML = 'Mostrar mais' // Mostrar mais
  } else {
    article.className = 'open'
    button.innerHTML = 'Mostrar menos' // Mostrar menos
  }
}*/

const article = document.querySelector('#conteudo')
const button = document.querySelector('#show-more')

button.addEventListener('click', showMore)

function showMore() {
  if (article.className == 'open') {
    // Ler menos
    article.className = ''
    button.innerHTML = 'Leia mais' // Mostrar mais
  } else {
    article.className = 'open'
    button.innerHTML = 'Mostrar menos' // Mostrar menos
  }
}

/*function leiaMais() {
  const tresPontos = document.getElementById('tresPontos')
  const mostrarMais = document.getElementById('mostrarMais')
  const btnLeiaMais = document.getElementById('btnLeiaMais')

  if (tresPontos.style.display === 'none') {
    tresPontos.style.display = 'inline'
    mostrarMais.style.display = 'none'
    btnLeiaMais.innerHTML = 'Leia Mais'
  } else {
    tresPontos.style.display = 'none'
    mostrarMais.style.display = 'inline'
    btnLeiaMais.innerHTML = 'Leia Menos'
  }
}*/
/*let loadMoreBtn = document.querySelector('#load-more')
let currentItem = 1

loadMoreBtn.onclick = () => {
  let boxes = [...document.querySelectorAll('.home-courses .slide .content ')]
  for (var i = currentItem; i < currentItem; i++) {
    boxes[i].style.display = 'inline-block'
  }
  currentItem += 1

  if (currentItem >= boxes.length) {
    loadMoreBtn.style.display = 'none'
  }
}
*/

/*function count() {
  var counter = { var: 0 }
  TweenMax.to(counter, 3, {
    var: 100,
    onUpdate: function () {
      var number = Math.ceil(counter.var)
      $('.counter').html(number)
      if (number === counter.var) {
        count.kill()
      }
    },
    onComplete: function () {
      count()
    },
    ease: Circ.easeOut,
  })
}

count()
*/
