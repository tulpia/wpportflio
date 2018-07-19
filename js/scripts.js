var links = document.getElementsByClassName('no_underline');
var image = document.getElementsByClassName('block_accueil_image');

links.onmouseover = function () {
    TweenMax.to(image, 1, {
        css: {
            opacity: 1
        }
    });
}
