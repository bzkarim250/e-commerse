const cart=document.querySelector('.carts');

const shop=document.querySelector('#hero button');
shop.addEventListener('click',e=>{
  e.preventDefault();
  const products=document.querySelector('#featured-products');
  products.scrollIntoView();
});

//add to cart
let carts=[];
let count=0;
const cartButton=document.querySelectorAll('.add-to-cart');
cartButton.forEach((button)=>{
  button.addEventListener('click',e=>{
    e.preventDefault();
    count++;
    cart.innerHTML=`
    <i class="fa fa-shopping-cart"></i><span>${count}</span>
    `;
    let button = e.target;
    let title = button.previousElementSibling.previousElementSibling.textContent;
    let price = button.previousElementSibling.textContent;
    let image = button.parentNode.firstChild.src;
    

    let product = {
      title: title,
      price: price,
      image: image
    };

    carts.push(product);
    console.log(carts);


  })
});


