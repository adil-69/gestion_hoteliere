<%-- 
    Document   : sign-up
    Created on : Jan 9, 2022, 10:31:14 AM
    Author     : sayur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <style>
      .wf-force-outline-none[tabindex="-1"]:focus {
        outline: none;
      }
    </style>
    <meta charset="utf-8" />
    <title>Sign Up</title>
    <meta content="Sign Up" property="og:title" />
    <meta content="Sign Up" property="twitter:title" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <link rel="stylesheet" href="css/main.css" media="all" />
    <script type="text/javascript">
      WebFont.load({
        google: {
          families: [
            "Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic",
          ],
        },
      });
    </script>
    <script type="text/javascript">
      !(function (o, c) {
        var n = c.documentElement,
          t = " w-mod-";
        (n.className += t + "js"),
          ("ontouchstart" in o ||
            (o.DocumentTouch && c instanceof DocumentTouch)) &&
            (n.className += t + "touch");
      })(window, document);
    </script>
    <link
      href="#"
      rel="shortcut icon"
      type="image/x-icon"
    />
    <link
      href="#"
      rel="apple-touch-icon"
    />
    </head>
    <body>
            <section class="section-9 wf-section">
  <div class="block-1">
    <div class="content-wrapper">
      <div class="content-box">
        <img
          src="images/Logo 1.png"
          alt="logo"
          class="image-7"
          height="75"
        />
        <h1 class="heading-1">Le choix de la nouvelle génération<br /></h1>
        <div class="feature-box">
          <img
            src="images/tag.svg"
            alt=""
            class="feature-icon"
          />
          <div class="feature-text">Offres imbattables.</div>
        </div>
        <div class="feature-box">
          <img
            src="images/dismiss.svg"
            alt=""
            class="feature-icon"
          />
          <div class="feature-text">Service de confiance.</div>
        </div>
        <div class="feature-box">
          <img
            src="images/close.svg"
            alt=""
            class="feature-icon"
          />
          <div class="feature-text">Annulation à tout moment.</div>
        </div>
      </div>
      <div class="legal-box _2">
        <div class="legal-text">
          © 2024 HR&nbsp;Hotel and Resort. Tous droits réservés.
        </div>
      </div>
    </div>
  </div>
  <div class="block-2">
    <a href="./index.html" class="button-3 w-button">Retour à l'accueil</a>
    <div class="form-wrapper">
      <h2 class="heading-2">Inscription</h2>
      <div class="form-box">
        <div class="w-form">
          <form
            id="email-form"
            name="email-form"
            action="registeruser"
            method="post"
            aria-label="Formulaire d'inscription"
          >
            <div class="form-field-wrapper">
              <div class="text-field-box">
                <label for="fname" class="field-label-15">Prénom</label
                ><input
                  type="text"
                  class="text-field-2 w-input"
                  maxlength="20"
                  name="fname"
                  placeholder="Prénom"
                  id="fname"
                  required=""
                />
              </div>
              <div class="text-field-box">
                <label for="lname" class="field-label-15">Nom</label
                ><input
                  type="text"
                  class="text-field-2 w-input"
                  maxlength="20"
                  name="lname"
                  placeholder="Nom"
                  id="lname"
                  required=""
                />
              </div>
              <div class="text-field-box _2">
                <label for="mobile">Téléphone</label
                ><input
                  type="text"
                  class="w-input"
                  maxlength="20"
                  name="mobile"
                  placeholder="Numéro de téléphone"
                  id="mobile"
                  required=""
                /><label for="email" class="field-label-15">E-mail</label
                ><input
                  type="email"
                  class="text-field-2 w-input"
                  maxlength="50"
                  name="email"
                  placeholder="votre@email.com"
                  id="email"
                  required=""
                />
              </div>
              <div class="text-field-box _2">
                <label for="password" class="field-label-15">Mot de passe</label
                ><input
                  type="password"
                  class="text-field-2 w-input"
                  maxlength="20"
                  name="password"
                  placeholder="Mot de passe"
                  id="password"
                  required=""
                />
              </div>
            </div>
            
            <input
              type="submit"
              value="S'inscrire"
              data-wait="Veuillez patienter..."
              class="button-2 registration w-button"
            />
          </form>
          <div
            class="success-message w-form-done"
            tabindex="-1"
            role="region"
            aria-label="Formulaire d'inscription réussi"
          >
            <div>Merci ! Votre soumission a été reçue !</div>
          </div>
          <div
            class="w-form-fail"
            tabindex="-1"
            role="region"
            aria-label="Échec de soumission du formulaire"
          >
            <div>Oups ! Une erreur s'est produite lors de la soumission du formulaire.</div>
          </div>
        </div>
        <div class="div-block-41">
          <div class="text-block-8">Vous avez déjà un compte ?</div>
          <a href="./sign-in.jsp" class="link-3">Connectez-vous ici</a>
        </div>
      </div>
    </div>
    <div class="legal-box _2-copy">
      <div class="legal-text _3">
        © 2020 HR Hotels. Tous droits réservés.
      </div>
    </div>
  </div>
</section>
            
    <div class="footer-wrapper wf-section">
  <div class="wrap">
    <div class="w-layout-grid footer">
      <img
        src="images/Logo 1.png"
        id="w-node-_444ce646-8dcd-2991-8bcd-33bd0617fc27-7f760a4a"
        alt="logo"
        height="70"
      />
      <p
        id="w-node-_444ce646-8dcd-2991-8bcd-33bd0617fc28-7f760a4a"
        class="small-paragraph"
      >
        L'unique hôtel dont vous aurez besoin pour profiter de vos vacances.
      </p>
      <p
        id="w-node-_444ce646-8dcd-2991-8bcd-33bd0617fc2a-7f760a4a"
        class="small-paragraph cc-copyright-footer"
      >
        HR&nbsp;Hotel and Resort © 2024
      </p>
      <div
        id="w-node-_444ce646-8dcd-2991-8bcd-33bd0617fc2c-7f760a4a"
        class="label cc-footer-section-headline w-inline-block"
      >
        Menu
      </div>
      <div
        id="w-node-_10f5453d-df0e-9a6e-797f-8700de66fdd8-32e85472"
        class="footer-grid-column"
      >
        <a href="./" class="footer-link">Accueil</a
        ><a href="./about.jsp" class="footer-link">À propos</a
        ><a href="./contact.jsp" class="footer-link">Contact</a
        ><a href="./privacy-policy.jsp" class="footer-link">Politique de confidentialité</a>
      </div>
      <div
        id="w-node-_444ce646-8dcd-2991-8bcd-33bd0617fc37-7f760a4a"
        class="label cc-footer-section-headline w-inline-block"
      >
        Suivez-nous
      </div>
      <div
        id="w-node-_444ce646-8dcd-2991-8bcd-33bd0617fc39-7f760a4a"
        class="footer-grid-column"
      >
        <a href="https://fb.com/" target="_blank" class="footer-link"
          >Facebook</a
        ><a
          href="https://instagram.com/"
          target="_blank"
          class="footer-link"
          >Instagram</a
        ><a href="https://twitter.com/" target="_blank" class="footer-link"
          >Twitter</a
        >
      </div>
      <div
        id="w-node-_444ce646-8dcd-2991-8bcd-33bd0617fc40-7f760a4a"
        class="label cc-footer-section-headline w-inline-block"
      >
        Contactez-nous
      </div>
      <div
        id="w-node-_444ce646-8dcd-2991-8bcd-33bd0617fc42-7f760a4a"
        class="footer-grid-column"
      >
        <a href="mailto:hi@rajapaksha.hotels" class="footer-email-link"
          >hi@rajapaksha.hotels</a
        >
      </div>
    </div>
  </div>
</div>
    
        <!--
    <script
      src="Sign%20Up_files/jquery-3.js"
      type="text/javascript"
      integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
      crossorigin="anonymous"
    ></script>
    <script src="Sign%20Up_files/webflow.js" type="text/javascript"></script>
        !--->
    </body>
</html>
