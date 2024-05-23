document.querySelector(".search i").onclick = function() {
    this.style.display = "none";
    this.parentElement.querySelector("input").style.display = "block";
    this.parentElement.querySelector("input").focus();
};
document.querySelector(".search input").onkeyup = function(event) {
    if (event.keyCode === 13 && this.value.length > 0) {
        window.location.href = encodeURI("index.php?page=search&query=" + this.value);
    }
};
if (document.querySelector(".product-img-small")) {
    let imgs = document.querySelectorAll(".product-img-small");
    imgs.forEach(function(img) {
        img.onclick = function() {
            document.querySelector(".product-img-large").src = this.src;
            imgs.forEach(i => i.classList.remove("selected"));
            this.classList.add("selected");
        };
    });
}
if (document.querySelector(".products-form")) {
    document.querySelector(".sortby select").onchange = () => document.querySelector(".products-form").submit();
    document.querySelector(".category select").onchange = () => document.querySelector(".products-form").submit();
}
if (document.querySelector(".product #product-form")) {
    document.querySelectorAll(".product #product-form select").forEach(ele => {
        ele.onchange = () => {
            let price = 0.00;
            document.querySelectorAll(".product #product-form select").forEach(e => {
                if (e.value) {
                    price += parseFloat(e.options[e.selectedIndex].dataset.price);
                }
            });
            if (price > 0.00) {
                document.querySelector(".product .price").innerHTML = currency_code + price.toFixed(2);
            }
        };
    });
}
document.querySelector(".responsive-toggle").onclick = function(event) {
    event.preventDefault();
    let nav_display = document.querySelector("header nav").style.display;
    document.querySelector("header nav").style.display = nav_display == "block" ? "none" : "block";
};
