var grosNomAbout = document.getElementsByClassName('nom_gros_about')
var profil = document.getElementsByClassName('profil_text')
var experience = document.getElementsByClassName('experience_text')
var phrasedefin = document.getElementsByClassName('phrase_de_fin_about')
var maillabel = document.getElementsByClassName('mail_label')
var mailfull = document.getElementsByClassName('mailto')
var reseauxlabel = document.getElementsByClassName('reseaux_label')
var reseauxfull = document.getElementsByClassName('red_underline')
var locationlabel = document.getElementsByClassName('location_label')
var locationfull = document.getElementsByClassName('location_full')
var contactphrase = document.getElementsByClassName('contact_titre')
var experimentationsGrandTexte = document.getElementsByClassName('PageExperimentationsContainer__grandTexteContainer__grandTexte');
var experimentationsPetitTexte = document.getElementsByClassName('PageExperimentations__petitTexteContainer__petitTexte');

var Homepage = Barba.BaseView.extend({
    namespace: 'accueil',
    onEnter: function () {
        console.log('enter');
        $('.projet-container').animate({
            opacity: 1
        }, 400);
    },
    onEnterCompleted: function () {
        console.log('enterComplete');
        // The Transition has just finished.
    },
    onLeave: function () {
        console.log('leave');
        // A new Transition toward a new page has just started.
    },
    onLeaveCompleted: function () {
        // The Container has just been removed from the DOM.
    }
});

Homepage.init();

var Travaux = Barba.BaseView.extend({
    namespace: 'travaux',
    onEnter: function () {
        console.log('enter');
        // The new Container is ready and attached to the DOM.
    },
    onEnterCompleted: function () {
        console.log('enterComplete');
        // The Transition has just finished.
    },
    onLeave: function () {
        console.log('leave');
        // A new Transition toward a new page has just started.
    },
    onLeaveCompleted: function () {
        // The Container has just been removed from the DOM.
    }
});

Travaux.init();

var About = Barba.BaseView.extend({
    namespace: 'about',
    onEnter: function () {
        console.log('enter');
        // The new Container is ready and attached to the DOM.
    },
    onEnterCompleted: function () {
        console.log('enterComplete');
        // The Transition has just finished.
    },
    onLeave: function () {
        console.log('leave');
        // A new Transition toward a new page has just started.
    },
    onLeaveCompleted: function () {
        // The Container has just been removed from the DOM.
    }
});

About.init();

var Contact = Barba.BaseView.extend({
    namespace: 'contact',
    onEnter: function () {
        console.log('enter');
        // The new Container is ready and attached to the DOM.
    },
    onEnterCompleted: function () {
        console.log('enterComplete');
        // The Transition has just finished.
    },
    onLeave: function () {
        console.log('leave');
        // A new Transition toward a new page has just started.
    },
    onLeaveCompleted: function () {
        // The Container has just been removed from the DOM.
    }
});

Contact.init();

var Experimentations = Barba.BaseView.extend({
    namespace: 'experimentations',
    onEnter: function () {
        console.log('enter');
        // The new Container is ready and attached to the DOM.
    },
    onEnterCompleted: function () {
        console.log('enterComplete');
        // The Transition has just finished.
    },
    onLeave: function () {
        console.log('leave');
        // A new Transition toward a new page has just started.
    },
    onLeaveCompleted: function () {
        // The Container has just been removed from the DOM.
    }
});

Experimentations.init();

(function ($) {

    $(document).ready(function () {
        Barba.Pjax.start();

        $('.projet-container').animate({
            opacity: 1
        }, 400);

        $('.no_underline').mouseover(function () {
            $(this).parent().parent().find('.block_accueil_image').animate({
                opacity: 0.6
            }, 100);
        });

        $('.no_underline').mouseleave(function () {
            $(this).parent().parent().find('.block_accueil_image').animate({
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
})(jQuery);
