// JavaScript
// Add a smooth scrolling effect when clicking on the navigation links
document.querySelectorAll("nav a").forEach(link => {
  link.addEventListener("click", event => {
    event.preventDefault();
    document.querySelector(event.target.getAttribute("href")).scrollIntoView({
      behavior: "smooth"
    });
  });
});

// Add a "active" class to the current navigation link
document.querySelectorAll("nav a").forEach(link => {
  link.addEventListener("click", event => {
    document.querySelectorAll("nav a").forEach(link => {
      link.classList.remove("active");
    });
    event.target.classList.add("active");
  });
});
