// Attendre que le contenu HTML soit complètement chargé
document.addEventListener('DOMContentLoaded', function() {
    // 1. Récupérer les éléments HTML par leur ID
    const bouton = document.getElementById('monBouton');
    const message = document.getElementById('message');

    // 2. Définir la fonction qui sera exécutée au clic
    function gererClic() {
        // Mettre à jour le contenu du message
        message.textContent = "Le JavaScript a bien fonctionné ! 🎉";

        // Rendre le message visible en retirant la classe 'cache' et ajoutant 'visible'
        message.classList.remove('cache');
        message.classList.add('visible');

        // Changer la couleur du bouton
        bouton.style.backgroundColor = "#ffc107";
        bouton.style.color = "#333";
    }

    // 3. Attacher la fonction 'gererClic' à l'événement 'click' du bouton
    bouton.addEventListener('click', gererClic);

    // Message dans la console pour vérifier que le script est chargé
    console.log("Le script.js est chargé et prêt !");
});