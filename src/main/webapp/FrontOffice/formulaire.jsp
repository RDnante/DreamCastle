<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>

    <meta charset="utf-8">
	<title>The Dream Castel</title>

    <meta name="description" content="Description">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2">
        
    <link rel="icon" href="assets/img/logo.png" type="image/x-icon"> 
	<link rel="stylesheet" href="assets/css/bulma.min.css">
	<link rel="stylesheet" href="assets/css/bulma.css">
    <link rel="stylesheet" href="assets/css/bootstrap-grid.css">
<link rel="stylesheet" href="assets/css/style.css">
    <link rel="preload" href="assets/fonts/source-sans-pro-v21-latin/source-sans-pro-v21-latin-regular.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="assets/fonts/source-sans-pro-v21-latin/source-sans-pro-v21-latin-700.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="assets/fonts/montserrat-v25-latin/montserrat-v25-latin-700.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="assets/fonts/montserrat-v25-latin/montserrat-v25-latin-600.woff2" as="font" type="font/woff2" crossorigin>

<link rel="preload" href="assets/fonts/material-icons/material-icons.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="assets/fonts/material-icons/material-icons-outlined.woff2" as="font" type="font/woff2" crossorigin>

</head>

<body>

	<main class="main">
		
		<div class="main-inner">

			<!-- Begin mobile main menu -->
<nav class="mmm">
    <div class="mmm-content">
        <ul class="mmm-list">
            <li>
                <a href="index.jsp">Accueil</a>
			</li>
            <li>
                <a href="offre.jsp">Offres</a>
            </li>
            <li>
                <a href="profil.jsp">Profil</a>
            </li>
        </ul>
    </div>
</nav><!-- End mobile main menu -->
<header class="header header-minimal">
    <nav class="header-fixed">
        <div class="container">
            <div class="row flex-nowrap align-items-center justify-content-between">
                <div class="col-auto header-fixed-col logo-wrapper">
                    <a href="index.jsp" class="logo" title="PathSoft">
                        <img src="assets/img/logo1.png" width="115" height="36" alt="PathSoft">
                    </a>
                </div> 
                <div class="col-auto col-xl col-static header-fixed-col d-none d-xl-block">
                    <div class="row flex-nowrap align-items-center justify-content-end">
                        <div class="col header-fixed-col d-none d-xl-block col-static">
                            <!-- Begin main menu -->
<nav class="main-mnu">
    <ul class="main-mnu-list">
        <li>
            <a href="index.jsp" data-title="Accueil">
                <span>Accueil</span>
            </a>
        </li>
        <li>
            <a href="offre.jsp" data-title="Offres">
                <span>Offres</span>
            </a>
        </li>
        <li>
            <a href="profil.jsp" data-title="Profil">
                <span>Profil</span>
            </a>
        </li>
    </ul>
</nav><!-- End main menu -->
                        </div>
                    </div>
                </div>
                <div class="col-auto d-block d-xl-none header-fixed-col">
                    <div class="main-mnu-btn">
                        <span class="bar bar-1"></span>
                        <span class="bar bar-2"></span>
                        <span class="bar bar-3"></span>
                        <span class="bar bar-4"></span>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>

			<!-- Begin bread crumbs -->
			<nav class="bread-crumbs">
				<div class="container">
					<div class="row">
						<div>
							<ul class="bread-crumbs-list">
								<li>
									<a href="index.jsp">Home</a>
									<i class="material-icons md-18">chevron_right</i>
								</li>
								<li>Besoins par Service</li>
							</ul>
						</div>
					</div>
				</div>
			</nav><!-- End bread crumbs -->

			<div class="section">
				<div class="container">
					<div class="row content-items">
						<div>
							<div class="section-heading">
								<div class="section-subheading">We are always in touch</div>
								<h1>CV</h1>
							</div>
						</div>
				
						<div>
							<form action="question.jsp" method="get" >
								<input type="hidden" name="Subject" value="Contact form">

								<div class="row gutters-default" style="text-align: center;">
									<div>
										<h3>Offre d'emploi</h3>
									</div>
									<div>
										<div class="field has-addons has-addons-centered" style="justify-content: flex-start;">
											<label class="label" style="padding-top: 5px; margin-right:10px;">Nom</label>
											<p class="control">
												<input class="input" type="text" placeholder="RAKOTO">
											</p>			
										</div>
									</div>
									<div>
										<div class="field has-addons has-addons-centered" style="justify-content: flex-start;">
											<label class="label" style="padding-top: 5px; margin-right:10px;">Prenom</label>
											<p class="control">
												<input class="input" type="text" placeholder="Sosisy">
											</p>			
										</div>
									</div>
                                    <div>
										<div class="field has-addons has-addons-centered" style="justify-content: flex-start;">
											<label class="label" style="padding-top: 5px; margin-right:10px;">Email</label>
											<p class="control">
												<input class="input" type="email" placeholder="rakoto@gmail.com">
											</p>			
										</div>
									</div>
									<div>
										<div class="field has-addons has-addons-centered" style="justify-content: flex-start;">
											<label class="label" style="padding-top: 5px; margin-right:10px;">Filiere</label>
											<p class="control">
											  <span class="select">
												<select>
												  <option>Mpanasa trano</option>
												  <option>Gardien</option>
												  <option>Mpivarotra ronono</option>
												</select>
											  </span>
											</p>
											
										  </div>
									</div>
									<div>
										<div class="field has-addons has-addons-centered" style="justify-content: flex-start;">
											<label class="label" style="padding-top: 5px; margin-right:10px;">Diplome</label>
											<p class="control">
											  <span class="select">
												<select>
												  <option>Mpanasa trano</option>
												  <option>Gardien</option>
												  <option>Mpivarotra ronono</option>
												</select>
											  </span>
											</p>
											
										  </div>
									</div>
									<div>
										<div class="field has-addons has-addons-centered" style="justify-content: flex-start;">
											<label class="label" style="padding-top: 5px; margin-right:10px;">Experience</label>
											<p class="control">
												<input class="input" type="number" placeholder="exemple: 2ans" min="0">
											</p>
											
										  </div>
									</div>
									<div>
										<div class="field has-addons has-addons-centered" style="justify-content: flex-start;">
											<label class="label" style="padding-top: 5px; margin-right:10px;">Lieu</label>
											<p class="control">
											  <span class="select">
												<select>
												  <option>Mpanasa trano</option>
												  <option>Gardien</option>
												  <option>Mpivarotra ronono</option>
												</select>
											  </span>
											</p>
											
										  </div>
									</div>
									<div>
										<div class="field has-addons has-addons-centered" style="justify-content: flex-start;">
											<label class="label" style="padding-top: 5px; margin-right:10px;">Age</label>
											<p class="control">
												<input class="input" type="number" placeholder="ans">
											</p>
											
										  </div>
									</div>
									<div>
										<div class="field has-addons has-addons-centered" style="justify-content: flex-start;">
											<label class="label" style="padding-top: 5px; margin-right:10px;">Sexe</label>
											
												<label class="checkbox" style="padding-top: 10px; margin-right:10px;">
													<input type="checkbox">
													Femme
												</label>
												<label class="checkbox" style="padding-top: 11px; margin-right:10px;">
													<input type="checkbox">
													Homme
												</label>
										  </div>
									</div>
						
										<div class="form-btn" style="justify-content: flex-start;">
											<button type="submit" class="btn btn-w240 ripple"><span>Envoyer la demande</span></button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Begin map -->
			<!-- End map -->

		</div>


<!-- Begin footer -->
<footer class="footer footer-minimal">
    <div class="footer-main">
        <div class="container">
            <div class="row items align-items-center">
                <div class="col-lg-3 col-md-4 col-12 item">
                    <div class="widget-brand-info">
                        <div class="widget-brand-info-main">
                            <a href="index.jsp" class="logo" title="PathSoft">
                                <img data-src="assets/img/logo.png" class="lazy" width="133" height="36" src="assets/img/logo.png" alt="PathSoft" data-loaded="true" style="opacity: 1;">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md item">
                    <div class="footer-item">
                        <nav class="footer-nav">
                            <ul class="footer-mnu footer-mnu-line">
                                <li><a href="index.jsp" class="hover-link" data-title="Accueil"><span>Accueil</span></a></li>
                                <li><a href="offre.jsp" class="hover-link" data-title="Offres"><span>Offres</span></a></li>
                                <li><a href="besoin.html" class="hover-link" data-title="Besoins"><span>Besoins</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row justify-content-between items">
                <div class="col-md-auto col-12 item">
                    <nav class="footer-links">
                        <ul>
                            <li><a href="terms-and-conditions.html">Terms and Conditions</a></li>
                            <li><a href="privacy-policy.html">Privacy Policy</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-auto col-12 item">
                    <div class="copyright">© 2022 psFree. All rights reserved.</div>
                </div>
            </div>
        </div>
    </div>
</footer><!-- End footer -->

	</main><!-- End main -->

	<script src="assets/libs/jquery/jquery.min.js"></script>
<script src="assets/libs/lozad/lozad.min.js"></script>
<script src="assets/libs/device/device.js"></script>
<script src="assets/libs/spincrement/jquery.spincrement.min.js"></script>
<script src="assets/libs/pristine/pristine.min.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/forms.js"></script>

</body>
</html>
