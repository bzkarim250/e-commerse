const cart=document.querySelector('.carts');
const addToCart=document.querySelectorAll('#featured-products > ul');
let count=0;
addToCart.forEach(button => {
    button.addEventListener('click',e=>{
      e.preventDefault();
      count++;
      cart.innerHTML=`
      ${count}<i class="fa fa-shopping-cart">
      `
    });
});
