const cart=document.querySelector('.carts');

const shop=document.querySelector('#hero button');
shop.addEventListener('click',e=>{
  e.preventDefault();
  const products=document.querySelector('#featured-products');
  products.scrollIntoView();
});

//add to cart
let expTime=(new Date().getTime()+(1000*60*60)); // 1hr from now
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
    //
  let cartData={
    items:carts,
    expiration:expTime
  };

    cart.innerHTML=`
    <i class="fa fa-shopping-cart"></i><span>${count}</span>
    `;
    localStorage.setItem('cart',JSON.stringify(cartData));
  })
});
let cartData = JSON.parse(localStorage.getItem('cart')) ||{};
if(cartData && cartData.expiration < new Date().getTime()){
  localStorage.removeItem('cart');
  cartData = {};
}
console.log(cartData);
count = 0;
if(cartData && cartData.items){
  count = cartData.items.reduce((acc,item)=>acc+item.qty,0);
  cart.innerHTML=`
    <i class="fa fa-shopping-cart"></i><span>${count}</span>
  `;
}