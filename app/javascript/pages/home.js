const typedText = () => {
  const typedjs = document.getElementById('typed')
  console.log(typedjs)
  const typedStringsjs = document.getElementById('typed-strings')
  console.log(typedStringsjs)
  if (typedjs && typedStringsjs) {
   var typed = new Typed('#typed', {
      stringsElement: '#typed-strings',
      smartBackspace: true,
      typeSpeed: 80,
      backSpeed: 40,
      loop: true,
    });
   }
 }

const cardAnimation = () => {
  const fiCard = document.querySelectorAll(".fi-card")
    fiCard.forEach(selected => {
      selected.addEventListener('mouseenter', (event) => {
        event.srcElement.lastElementChild.firstChild.nextSibling.classList.add("opacity")
      })


      selected.addEventListener('mouseleave', (event) => {
        event.srcElement.lastElementChild.firstChild.nextSibling.classList.remove("opacity")
      })
  })
}

const revealCards = () => {
  ScrollReveal().reveal('.island-cards', {delay: 300});
}

export { typedText }
export { cardAnimation }
export { revealCards }
