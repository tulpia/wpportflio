var grosNomAbout = document.getElementsByClassName('nom_gros_about');
var profil = document.getElementsByClassName('profil_text');
var experience = document.getElementsByClassName('experience_text');
var phrasedefin = document.getElementsByClassName('phrase_de_fin_about');
var maillabel = document.getElementsByClassName('mail_label');
var mailfull = document.getElementsByClassName('mailto');
var reseauxlabel = document.getElementsByClassName('reseaux_label');
var reseauxfull = document.getElementsByClassName('red_underline');
var locationlabel = document.getElementsByClassName('location_label');
var locationfull = document.getElementsByClassName('location_full');
var contactphrase = document.getElementsByClassName('contact_titre');
var experimentationsGrandTexte = document.getElementsByClassName('PageExperimentationsContainer__grandTexteContainer__grandTexte');
var experimentationsPetitTexte = document.getElementsByClassName('PageExperimentations__petitTexteContainer__petitTexte');

$(document).ready(function () {
    $('.project-container').animate({
        opacity: 1
    }, 800);
    $('.work_class').delay(300).animate({
        opacity: 1
    }, 400);

    $('.type-travail, .travaux_date').delay(500).animate({
        opacity: 1
    }, 400);

    $('.no_underline').mouseover(function () {
        $('.block_accueil_image').animate({
            opacity: 1
        }, 100);
    });
    $('.no_underline').mouseleave(function () {
        $('.block_accueil_image').animate({
            opacity: 0
        }, 100);
    });

    $(grosNomAbout).animate({
        opacity: 1
    }, 800);

    $(contactphrase).animate({
        opacity: 1
    }, 800);

    $(maillabel).delay(100).animate({
        opacity: 0.2
    }, 400);

    $(mailfull).delay(200).animate({
        opacity: 1
    }, 400);

    //page expérimentations
    $(experimentationsGrandTexte).animate({
        opacity: 1
    }, 400);

    $(experimentationsPetitTexte).delay(200).animate({
        opacity: 1
    }, 400);

    //pour le responsive (version grand écran)
    if ($(window).width() > 960) {
        //page about
        $(profil).delay(200).animate({
            opacity: 1
        }, 400);

        $(reseauxlabel).delay(300).animate({
            opacity: 0.2
        }, 400);

        $(reseauxfull).delay(400).animate({
            opacity: 1
        }, 400);

        $(locationlabel).delay(500).animate({
            opacity: 0.2
        }, 400);

        $(locationfull).delay(600).animate({
            opacity: 1
        }, 400);

        $(window).scroll(function () {
            //page accueil
            if ($(this).scrollTop() > 400) {
                $('.image_travaux1').animate({
                    opacity: 1
                }, 800);
            };
            if ($(this).scrollTop() > 1200) {
                $('.container_description').animate({
                    opacity: 1
                }, 400);
            };
            if ($(this).scrollTop() > 1600) {
                $('.imagedetail').animate({
                    opacity: 1
                }, 800);
            };
            if ($(this).scrollTop() > 2000) {
                $('.detail_child1, .detail_child2').animate({
                    opacity: 1
                }, 400);
            };
            //page about
            if ($(this).scrollTop() > 300) {
                $(experience).animate({
                    opacity: 1
                }, 400);
            };
            if ($(this).scrollTop() > 400) {
                $(phrasedefin).animate({
                    opacity: 1
                }, 400);
            };
        });
    }
    //pour le responsive (version mobile)
    else if ($(this).width() < 960) {
        $(window).scroll(function () {
            //page about
            if ($(this).scrollTop() > 200) {
                $('.image_travaux1').animate({
                    opacity: 1
                }, 800);
            };
            if ($(this).scrollTop() > 800) {
                $('.container_description').animate({
                    opacity: 1
                }, 400);
            };
            if ($(this).scrollTop() > 12000) {
                $('.imagedetail').animate({
                    opacity: 1
                }, 800);
            };
            if ($(this).scrollTop() > 1500) {
                $('.detail_child1, .detail_child2').animate({
                    opacity: 1
                }, 400);
            };
            if ($(this).scrollTop() > 200) {
                $(profil).animate({
                    opacity: 1
                }, 400);
            }
            if ($(this).scrollTop() > 500) {
                $(experience).animate({
                    opacity: 1
                }, 400);
            };
            if ($(this).scrollTop() > 800) {
                $(phrasedefin).animate({
                    opacity: 1
                }, 400);
            };

            //page contact
            if ($(this).scrollTop() > 200) {
                $(reseauxlabel).animate({
                    opacity: 0.2
                }, 400);
            };
            if ($(this).scrollTop() > 300) {
                $(reseauxfull).animate({
                    opacity: 1
                }, 400);
            };
            if ($(this).scrollTop() > 400) {
                $(locationlabel).animate({
                    opacity: 0.2
                }, 400);
            };
            if ($(this).scrollTop() > 500) {
                $(locationfull).animate({
                    opacity: 1
                }, 400);
            }
        });
    };
});
