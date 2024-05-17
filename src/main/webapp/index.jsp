

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style>
      .wf-force-outline-none[tabindex="-1"]:focus {
        outline: none;
      }
    </style>
    <title>Hotel Management system</title>
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <link
      href="./css/main.css"
      rel="stylesheet"
      type="text/css"
    />

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
    <div class="section-2 wf-section">
      <h1 class="heading">Bienvenue dans le système de gestion hôtelière de l'Hôtel</h1>
      <h3 class="heading-5">Le Plus Exquis des Hôtels à Marrakech</h3>
      <div class="form-block-3 w-form">
        <form
          id="wf-form-Booking-Form-Mobile"
          name="wf-form-Booking-Form-Mobile"
          data-name="Booking Form Mobile"
          method="post"
          action="./addbooking"
          aria-label="Booking Form Mobile"
        >
          <label for="adults" class="field-label-14">Adultes</label
          ><input
            type="number"
            class="w-input"
            maxlength="256"
            name="adults"
            placeholder=""
            id="adults"
            required=""
            value="0"
          /><label for="children" class="field-label-13">Enfants</label
          ><input
            type="number"
            class="w-input"
            maxlength="256"
            name="children"
            placeholder=""
            id="children"
            value="0"
            
          /><label for="cidate" class="field-label-12">check-in date</label
          ><input
            type="date"
            class="w-input"
            maxlength="256"
            name="cidate"
            placeholder=""
            id="cidate"
            required=""
          /><label for="codate" class="field-label-11">check-out date</label
          ><input
            type="date"
            class="w-input"
            maxlength="256"
            name="codate"
            placeholder=""
            id="codate"
            required=""
          /><input
            type="submit"
            value="Submit"
            data-wait="Please wait..."
            class="submit-button-3 w-button"
          />
        </form>
        <div
          class="w-form-done"
          tabindex="-1"
          role="region"
          aria-label="Booking Form Mobile success"
        >
          <div>Merci ! Votre soumission a été reçue !</div>
        </div>
        <div
          class="w-form-fail"
          tabindex="-1"
          role="region"
          aria-label="Booking Form Mobile failure"
        >
          <div>Oups ! Une erreur s'est produite lors de la soumission du formulaire.</div>
        </div>
      </div>
      <div class="form-block-2 w-form">
        <form
          id="wf-form-Booking-Form"
          name="wf-form-Booking-Form"
          data-name="Booking Form"
          method="post"
          class="form-2"
          aria-label="Booking Form"
          action="./addbooking"
        >
          <label for="adults" class="field-label-10">Adults</label
          ><label for="children" class="field-label-9">Enfants</label
          ><label for="cidate" class="field-label-8">Check-in date</label
          ><label for="codate" class="field-label-7">check-out date</label
          ><label for="name-2" class="field-label-6">.</label
          ><input
            type="number"
            class="w-input"
            maxlength="256"
            name="adults"
            placeholder=""
            id="adults"
            required=""
            value="0"
          /><input
            type="number"
            class="w-input"
            maxlength="256"
            name="children"
            placeholder=""
            id="children"
            value="0"
          /><input
            type="date"
            class="w-input"
            maxlength="256"
            name="cidate"
            placeholder=""
            id="cidate"
            required=""
          /><input
            type="date"
            class="w-input"
            maxlength="256"
            name="codate"
            placeholder=""
            id="codate"
            required=""
          /><input
            type="submit"
            value="Submit"
            data-wait="Please wait..."
            class="submit-button-2 w-button"
          />
        </form>
        <div
          class="w-form-done"
          tabindex="-1"
          role="region"
          aria-label="Booking Form success"
        >
          <div>Merci ! Votre soumission a été reçue !</div>
        </div>
        <div
          class="w-form-fail"
          tabindex="-1"
          role="region"
          aria-label="Booking Form failure"
        >
          <div>Oups ! Une erreur s'est produite lors de la soumission du formulaire.</div>
        </div>
      </div>
    </div>
    <div class="section-3 wf-section"><h2 class="heading-6">Gallery</h2></div>
    <div class="section-4 wf-section">
      <div class="columns w-row">
        <div class="w-col w-col-4 w-col-small-4 w-col-tiny-tiny-stack">
          <img
            src="images/hotel-inner-4.jpg"
            loading="lazy"
            alt="hotel gallery"
            sizes="(max-width: 479px) 86vw, (max-width: 767px) 27vw, (max-width: 991px) 28vw, 29vw"
            class="image-5"
            width="500"
            height="700"
          />
        </div>
        <div class="w-col w-col-4 w-col-small-4 w-col-tiny-tiny-stack">
          <img
            src="images/hotel-inner-2.jpg"
            loading="lazy"
            alt="hotel gallery"
            sizes="(max-width: 479px) 86vw, (max-width: 767px) 27vw, (max-width: 991px) 28vw, 29vw"
            class="image-4"
            width="500"
            height="700"
          />
        </div>
        <div class="w-col w-col-4 w-col-small-4 w-col-tiny-tiny-stack">
          <img
            src="images/hotel-inner-1.jpg"
            loading="lazy"
            alt="hotel gallery"
            sizes="(max-width: 479px) 86vw, (max-width: 767px) 27vw, (max-width: 991px) 28vw, 29vw"
            class="image-2"
            width="500"
            height="340"
          /><img
            src="images/hotel-inner-3.jpg"
            loading="lazy"
            alt="hotel gallery"
            sizes="(max-width: 479px) 100vw, (max-width: 767px) 27vw, (max-width: 991px) 28vw, 29vw"
            class="image-3"
            width="500"
            height="340"
          />
        </div>
      </div>
    </div>
    <div class="section-3 wf-section">
      <h2 class="heading-8">WHO&nbsp;WE&nbsp;ARE</h2>
    </div>
    <div class="section-5 wf-section">
      <div class="columns-2 w-row">
        <div class="column w-col w-col-6">
          <p class="paragraph" style="text-align:center;">
            "Lancé en 2024, notre Système de Gestion Hôtelière a rapidement acquis une solide réputation pour son service exceptionnel, sa fiabilité, et sa sécurité. Nous offrons une solution innovante qui garantit la gestion efficace et fluide de votre hôtel, tout en assurant le confort et la satisfaction de vos clients. Grâce à notre HMS, vous pouvez optimiser
             la gestion de vos chambres luxueuses et offrir une expérience
              gastronomique raffinée à votre convenance."
          </p>
        </div>
        <div class="column-2 w-col w-col-6">
          <img
            src="images/hotel-hero-image.jpg"
            loading="lazy"
            sizes="(max-width: 767px) 100vw, (max-width: 991px) 43vw, (max-width: 1439px) 44vw, 45vw"
            alt="hotel image front"
            class="image-6"
            width="2880"
          />
        </div>
      </div>
    </div>
<jsp:include page="footer.jsp" />
 
