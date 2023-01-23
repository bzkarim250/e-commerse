let cartData=JSON.parse(localStorage.getItem('cart'));
let count=0;
if(cartData&&cartData.items){
    count = cartData.items.reduce((acc, item) => acc + item.qty, 0);
}
let cart=document.querySelector('.carts span');
cart.innerHTML=count;
console.log(count)

