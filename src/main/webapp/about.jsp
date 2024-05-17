<%-- 
    Document   : about
    Created on : Jan 9, 2022, 1:21:40 AM
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
    <title>About</title>
    <meta content="About" property="og:title" />
    <meta content="About" property="twitter:title" />
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
        <%
            String att = "check";
            if (request.getSession().getAttribute("LoggedInRole")!=null){
            att = (String)request.getSession().getAttribute("LoggedInRole");
        %>
        <%
            }if (att.equals("customer")) {
        %>    
        <jsp:include page="user-header.jsp" />
        <%
            }else if (att.equals("admin")){
        %>        
        <jsp:include page="admin-header.jsp" />
        <%
            }else{
        %> 
        <jsp:include page="common-header.jsp" />
        <%
            }
        %>
    <div class="section-6 wf-section"><h1 class="heading">About US</h1></div>
    <div class="div-block-43">
    
        <div class="paragraph-3">
        <h1>À Propos de Notre Système de Gestion Hôtelière</h1>
        <p>Bienvenue dans l'univers de la gestion hôtelière simplifiée et efficace grâce à notre Système de Gestion Hôtelière (HMS). Nous comprenons que l'industrie hôtelière est en perpétuelle évolution et que la gestion d'un hôtel nécessite des outils robustes et intuitifs pour répondre aux besoins des clients tout en optimisant les opérations internes. C'est pourquoi nous avons développé un système de gestion complet, moderne et adaptable, conçu pour améliorer chaque aspect de votre activité hôtelière.</p>

        <h2>Pourquoi Choisir Notre HMS ?</h2>
        <ul>
            <li><strong>Gestion Intégrale :</strong> Notre HMS couvre tous les aspects de la gestion hôtelière, de la réservation des chambres à la facturation, en passant par la gestion des stocks et la planification du personnel. Chaque module est conçu pour interagir de manière transparente, permettant une vue d'ensemble cohérente et une prise de décision éclairée.</li>
            <li><strong>Interface Intuitive :</strong> Nous savons que votre temps est précieux. C'est pourquoi notre interface est conçue pour être intuitive et facile à utiliser, même pour ceux qui ne sont pas férus de technologie. Vous pouvez accéder rapidement à toutes les fonctionnalités et obtenir les informations dont vous avez besoin en quelques clics seulement.</li>
            <li><strong>Optimisation des Ressources :</strong> Grâce à notre système, vous pouvez optimiser l'utilisation de vos ressources. Suivez l'occupation des chambres en temps réel, gérez efficacement les tâches de maintenance, et assurez-vous que votre équipe est toujours bien coordonnée. Notre HMS vous aide à maximiser votre rentabilité tout en améliorant l'expérience client.</li>
            <li><strong>Sécurité et Fiabilité :</strong> La sécurité de vos données est notre priorité. Notre HMS utilise des technologies de pointe pour garantir que vos informations sont protégées contre toute intrusion ou perte. De plus, notre système est hébergé sur des serveurs fiables, assurant une disponibilité constante et des sauvegardes régulières.</li>
            <li><strong>Personnalisation et Évolutivité :</strong> Chaque hôtel a ses spécificités. C'est pourquoi notre HMS est hautement personnalisable pour s'adapter à vos besoins uniques. Que vous gériez un petit bed and breakfast ou une chaîne hôtelière internationale, notre système peut évoluer avec vous et s'adapter à la croissance de votre entreprise.</li>
            <li><strong>Support et Formation :</strong> Nous offrons un support client de premier ordre et des formations complètes pour vous et votre équipe. Notre objectif est de vous aider à tirer le meilleur parti de notre HMS, en vous offrant des solutions rapides à vos questions et en vous guidant à chaque étape.</li>
        </ul>

        <h2>Fonctionnalités Clés</h2>
        <ul>
            <li><strong>Réservations en Ligne :</strong> Intégration facile avec votre site web pour permettre des réservations en ligne sans effort.</li>
            <li><strong>Gestion des Tarifs et Disponibilités :</strong> Ajustez vos tarifs et gérez vos disponibilités en temps réel pour maximiser vos revenus.</li>
            <li><strong>Facturation et Comptabilité :</strong> Automatisez vos processus de facturation et maintenez des registres comptables précis.</li>
            <li><strong>Rapports et Analyses :</strong> Accédez à des rapports détaillés et à des analyses approfondies pour une gestion stratégique de votre établissement.</li>
            <li><strong>Application Mobile :</strong> Gérez votre hôtel où que vous soyez grâce à notre application mobile dédiée.</li>
        </ul>

        <p>Nous sommes fiers de fournir un système de gestion hôtelière qui non seulement simplifie vos opérations quotidiennes mais également enrichit l'expérience de vos clients. Rejoignez la communauté de nos utilisateurs satisfaits et découvrez comment notre HMS peut transformer la gestion de votre hôtel.</p>

        <p>Pour plus d'informations ou pour demander une démonstration, n'hésitez pas à nous contacter. Nous sommes impatients de collaborer avec vous pour faire de votre hôtel un modèle d'efficacité et de satisfaction client.</p>
    </div>
    </div>
    
    
    <jsp:include page="footer.jsp" />
    <!--
    <script
      src="About_files/jquery-3.js"
      type="text/javascript"
      integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
      crossorigin="anonymous"
    ></script>
    <script src="About_files/webflow.js" type="text/javascript"></script>
    !--->
    </body>
</html>
