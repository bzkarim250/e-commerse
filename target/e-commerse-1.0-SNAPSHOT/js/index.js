const cart=document.querySelector('.carts');
const addToCart=document.querySelectorAll('#featured-products > ul');
let count=0;
addToCart.forEach(button => {
    button.addEventListener('click',e=>{
      e.preventDefault();
      count++;
      cart.innerHTML=`
      <i class="fa fa-shopping-cart"></i><span>${count}</span>
      `
    });
});

const shop=document.querySelector('#hero button');
shop.addEventListener('click',e=>{
  e.preventDefault();
  const products=document.querySelector('#featured-products');
  products.scrollIntoView();
})
