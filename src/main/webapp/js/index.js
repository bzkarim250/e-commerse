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
let qty=0;
const cartButton=document.querySelectorAll('.add-to-cart');
cartButton.forEach((button)=>{
  button.addEventListener('click',e=>{
    e.preventDefault();
    let button = e.target;
    let title = button.previousElementSibling.previousElementSibling.textContent;
    let price = button.previousElementSibling.textContent;
    let image = button.parentNode.firstChild.src;
    let qty=1;
    

    let product = {
      title: title,
      price: price,
      image: image,
      qty:qty
    };
    let index=carts.findIndex(p=>p.title===title);
    if(index===-1){
      carts.push(product);
      count++;
    }else{
      carts[index].qty+=1;
      count++;
    }

    cart.innerHTML=`
    <i class="fa fa-shopping-cart"></i><span>${count}</span>
    `;
    console.log(carts);


  })
});


