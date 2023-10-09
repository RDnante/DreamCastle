<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>

    <meta charset="utf-8">

    <title>The Dream Castel</title>

    <meta name="description" content="Description">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2">
        
    <link rel="icon" href="assets/img/logo.png" type="image/x-icon"> 

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
									<img src="assets/img/logo.png" width="115" height="36" alt="PathSoft">
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
						<div class="col-12">
							<ul class="bread-crumbs-list">
								<li>
									<a href="index.jsp">Accueil</a>
									<i class="material-icons md-18">chevron_right</i>
								</li>
								<li>News</li>
							</ul>
						</div>
					</div>
				</div>
			</nav><!-- End bread crumbs -->

			<div class="section">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="section-heading heading-center section-heading-animate">
								<div class="section-subheading">blablabla</div>
								<h1>Offres</h1>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-12 item">
							<!-- Begin news item -->
							<article class="news-item item-style">
								<a href="news-post.html" class="news-item-img el">
									<img data-src="assets/img/news-img-1.jpg" class="lazy" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="">
								</a>
								<div class="news-item-info">
									<div class="news-item-date">07/01/2021</div>
									<h2 class="news-item-heading item-heading">
										<a href="news-post.html" title="Benefits Of Async/Await">Benefits Of Async/Await</a>
									</h2>
									<div class="news-item-desc">
										<p>Asynchronous functions are a good and bad thing in JavaScript.</p>
										<form action="formulaire.jsp" method="get">
											<input type="submit" value="Postuler" class="btn btn-border btn-with-icon btn-small ripple" style="background-color: #186adc;margin: auto; margin: auto; margin-top: 10px; ">
										</form>
									</div>
								</div>
							</article><!-- End news item -->
						</div>
						<div class="col-lg-4 col-md-6 col-12 item">
							<!-- Begin news item -->
							<article class="news-item item-style">
								<a href="news-post.html" class="news-item-img el">
									<img data-src="assets/img/news-img-2.jpg" class="lazy" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="">
								</a>
								<div class="news-item-info">
									<div class="news-item-date">05/01/2021</div>
									<h2 class="news-item-heading item-heading">
										<a href="news-post.html" title="Key Considerations Of IPaaS">Key Considerations Of IPaaS</a>
									</h2>
									<div class="news-item-desc">
										<p>Digital transformation requires cloud appropriate adoption</p>
										<input type="submit" value="Postuler" class="btn btn-border btn-with-icon btn-small ripple" style="background-color: #186adc;margin: auto; margin: auto; margin-top: 10px;">
									</div>
								</div>
							</article><!-- End news item -->
						</div>
						<div class="col-lg-4 col-md-6 col-12 item">
							<!-- Begin news item -->
							<article class="news-item item-style">
								<a href="news-post.html" class="news-item-img el">
									<img data-src="assets/img/news-img-3.jpg" class="lazy" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="">
								</a>
								<div class="news-item-info">
									<div class="news-item-date">01/01/2021</div>
									<h2 class="news-item-heading item-heading">
										<a href="news-post.html" title="Hibernate Query Language">Hibernate Query Language</a>
									</h2>
									<div class="news-item-desc">
										<p>In this tutorial, we will discuss the Hibernate Query Language. </p>
										<input type="submit" value="Postuler" class="btn btn-border btn-with-icon btn-small ripple" style="background-color: #186adc; margin: auto; margin-top: 10px;">
									</div>
								</div>
							</article><!-- End news item -->
						</div>
						<div class="col-lg-4 col-md-6 col-12 item">
							<!-- Begin news item -->
							<article class="news-item item-style">
								<a href="news-post.html" class="news-item-img el">
									<img data-src="assets/img/news-img-1.jpg" class="lazy" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="">
								</a>
								<div class="news-item-info">
									<div class="news-item-date">07/01/2021</div>
									<h2 class="news-item-heading item-heading">
										<a href="news-post.html" title="Benefits Of Async/Await">Benefits Of Async/Await</a>
									</h2>
									<div class="news-item-desc">
										<p>Asynchronous functions are a good and bad thing in JavaScript.</p>
										<input type="submit" value="Postuler" class="btn btn-border btn-with-icon btn-small ripple" style="background-color: #186adc; margin: auto; margin-top: 10px;">
									</div>
								</div>
							</article><!-- End news item -->
						</div>
						<div class="col-lg-4 col-md-6 col-12 item">
							<!-- Begin news item -->
							<article class="news-item item-style">
								<a href="news-post.html" class="news-item-img el">
									<img data-src="assets/img/news-img-2.jpg" class="lazy" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="">
								</a>
								<div class="news-item-info">
									<div class="news-item-date">05/01/2021</div>
									<h2 class="news-item-heading item-heading">
										<a href="news-post.html" title="Key Considerations Of IPaaS">Key Considerations Of IPaaS</a>
									</h2>
									<div class="news-item-desc">
										<p>Digital transformation requires cloud appropriate adoption</p>
										<input type="submit" value="Postuler" class="btn btn-border btn-with-icon btn-small ripple" style="background-color: #186adc; margin: auto; margin-top: 10px;">
									</div>
								</div>
							</article><!-- End news item -->
						</div>
						<div class="col-lg-4 col-md-6 col-12 item">
							<!-- Begin news item -->
							<article class="news-item item-style">
								<a href="news-post.html" class="news-item-img el">
									<img data-src="assets/img/news-img-3.jpg" class="lazy" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="">
								</a>
								<div class="news-item-info">
									<div class="news-item-date">01/01/2021</div>
									<h2 class="news-item-heading item-heading">
										<a href="news-post.html" title="Hibernate Query Language">Hibernate Query Language</a>
									</h2>
									<div class="news-item-desc">
										<p>In this tutorial, we will discuss the Hibernate Query Language. </p>
										<input type="submit" value="Postuler" class="btn btn-border btn-with-icon btn-small ripple" style="background-color: #186adc; margin: auto; margin-top: 10px;">
									</div>
								</div>
							</article><!-- End news item -->
						</div>
						<div class="col-lg-4 col-md-6 col-12 item">
							<!-- Begin news item -->
							<article class="news-item item-style">
								<a href="news-post.html" class="news-item-img el">
									<img data-src="assets/img/news-img-1.jpg" class="lazy" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="">
								</a>
								<div class="news-item-info">
									<div class="news-item-date">07/01/2021</div>
									<h2 class="news-item-heading item-heading">
										<a href="news-post.html" title="Benefits Of Async/Await">Benefits Of Async/Await</a>
									</h2>
									<div class="news-item-desc">
										<p>Asynchronous functions are a good and bad thing in JavaScript.</p>
										<input type="submit" value="Postuler" class="btn btn-border btn-with-icon btn-small ripple" style="background-color: #186adc; margin: auto; margin-top: 10px;">
									</div>
								</div>
							</article><!-- End news item -->
						</div>
						<div class="col-lg-4 col-md-6 col-12 item">
							<!-- Begin news item -->
							<article class="news-item item-style">
								<a href="news-post.html" class="news-item-img el">
									<img data-src="assets/img/news-img-2.jpg" class="lazy" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="">
								</a>
								<div class="news-item-info">
									<div class="news-item-date">05/01/2021</div>
									<h2 class="news-item-heading item-heading">
										<a href="news-post.html" title="Key Considerations Of IPaaS">Key Considerations Of IPaaS</a>
									</h2>
									<div class="news-item-desc">
										<p>Digital transformation requires cloud appropriate adoption</p>
										<input type="submit" value="Postuler" class="btn btn-border btn-with-icon btn-small ripple" style="background-color: #186adc; margin: auto; margin-top: 10px;">
									</div>
								</div>
							</article><!-- End news item -->
						</div>
						<div class="col-lg-4 col-md-6 col-12 item">
							<!-- Begin news item -->
							<article class="news-item item-style">
								<a href="news-post.html" class="news-item-img el">
									<img data-src="assets/img/news-img-3.jpg" class="lazy" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="">
								</a>
								<div class="news-item-info">
									<div class="news-item-date">01/01/2021</div>
									<h2 class="news-item-heading item-heading">
										<a href="news-post.html" title="Hibernate Query Language">Hibernate Query Language</a>
									</h2>
									<div class="news-item-desc">
										<p>In this tutorial, we will discuss the Hibernate Query Language. </p>
										<input type="submit" value="Postuler" class="btn btn-border btn-with-icon btn-small ripple" style="background-color: #186adc; margin: auto; margin-top: 10px;">
									</div>
								</div>
							</article><!-- End news item -->
						</div>
						<div class="col-12">
							<!-- Begin pagination -->
<nav class="pagination">
    <ul class="pagination-list">
        <li class="pagination-item-arrow pagination-item-arrow-prev pagination-item-disabled"><a href="#!"><i class="material-icons md-24">chevron_left</i></a></li>
        <li class="active"><a href="#!">1</a></li>
        <li><a href="#!">2</a></li>
        <li><a href="#!">3</a></li>
        <li><a href="#!">4</a></li>
        <li class="pagination-item-arrow pagination-item-arrow-next"><a href="#!"><i class="material-icons md-24">chevron_right</i></a></li>
    </ul>
</nav><!-- End pagination -->
						</div>
					</div>
				</div>
			</div>

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
