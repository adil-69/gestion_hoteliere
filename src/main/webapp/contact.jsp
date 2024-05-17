<%-- 
    Document   : contact
    Created on : Jan 9, 2022, 1:48:17 AM
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
        <title>Contact</title>
        <meta content="Contact" property="og:title" />
        <meta content="Contact" property="twitter:title" />
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
        
    <div class="section-6 wf-section"><h1 class="heading">Contact us</h1></div>
    <div class="contact-form-section wf-section">
    <div class="subscribe-content-wrapper">
        <div class="contact-form-wrap">
            <div class="form-wrap">
                <div class="contact-form-headline">
                    Laissez-nous votre message et nous vous répondrons dès que possible.
                </div>
                <div class="message-form w-form">
                    <form
                        id="wf-form-Contact-Form"
                        name="wf-form-Contact-Form"
                        data-name="Wf Form Contact Form"
                        method="post"
                        action="contactform"
                        class="contact-form"
                        aria-label="Wf Form Contact Form"
                    >
                        <label for="name" class="field-label-16">Nom</label
                        ><input
                            type="text"
                            class="text-field w-input"
                            maxlength="20"
                            name="name"
                            placeholder="VOTRE NOM"
                            id="name"
                        /><label for="email" class="field-label-16">Adresse Email</label
                        ><input
                            type="email"
                            class="text-field w-input"
                            maxlength="50"
                            name="email"
                            placeholder="VOTRE EMAIL"
                            id="email"
                            required=""
                        /><label for="message" class="field-label-16"
                        >Votre Message</label
                        ><textarea
                            id="message"
                            name="message"
                            placeholder="VOTRE MESSAGE"
                            maxlength="500"
                            class="text-field cc-textarea w-input"
                        ></textarea
                        ><input
                            type="submit"
                            value="Envoyer le Message"
                            data-wait="Veuillez patienter..."
                            class="dark-button w-button"
                        />
                    </form>
                    <div
                        class="contact-form-success-message w-form-done"
                        tabindex="-1"
                        role="region"
                        aria-label="Wf Form Contact Form success"
                    >
                        <img
                            src="Contact_files/6144b7d1552a1920ac2c9a38_Success%2520Icon%2520Dark.xml"
                            alt=""
                            class="contact-form-success-icon"
                            width="30"
                        />
                        <div>Merci ! Votre soumission a été reçue !</div>
                    </div>
                    <div
                        class="error-message w-form-fail"
                        tabindex="-1"
                        role="region"
                        aria-label="Wf Form Contact Form failure"
                    >
                        <div>Oups ! Une erreur s'est produite lors de l'envoi du formulaire.</div>
                    </div>
                </div>
            </div>
            <div class="contact-details-wrap">
                <div class="contact-form-info">
                    <p
                        id="w-node-d492d141-e4f9-e285-9c4b-35324bd4552e-b6702645"
                        class="contact-form-paragraph"
                    >
                        012 Avenue Allal Elfassi, <br />El Manara <br />Marrakech
                    </p>
                </div>
                <div class="feature-box-2">
                    <img
                        src="./images/insta.png"
                        alt=""
                        class="feature-icon-2"
                    />
                    <div class="feature-text-2">@contact_hsKech</div>
                </div>
                <div class="feature-box-2">
                    <img
                        src="./images/facebook.png"
                        sizes="50.000003814697266px"
                        alt=""
                        class="feature-icon-2"
                    />
                    <div class="feature-text-2">@contact_hsKech</div>
                </div>
                <div class="contact-form-info">
                    <div class="feature-box-2">
                        <img
                            src="./images/google.png"
                            alt=""
                            class="feature-icon-2"
                        />
                        <div class="feature-text-2">Système de gestion hôtelière</div>
                    </div>
                    <div
                        class="subscribe-form-label cc-contact-form-label w-inline-block"
                    >
                        Appelez-nous
                    </div>
                    <a href="tel:+212112258258" class="contact-form-link"
                       >+(212) 112 258 258</a
                    >
                </div>
            </div>
        </div>
    </div>
</div>
    
    <jsp:include page="footer.jsp" />

