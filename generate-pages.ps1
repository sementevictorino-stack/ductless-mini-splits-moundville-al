# PowerShell script to generate remaining service and location pages

# Service pages data
$services = @(
    @{name="hvac-maintenance"; title="Professional HVAC Maintenance Services"; desc="Preventive maintenance and tune-ups"}
    @{name="air-conditioning-installation"; title="Expert Air Conditioning Installation"; desc="New AC system installation and replacement"}
    @{name="heating-system-repair"; title="Heating System Repair Services"; desc="Furnace and heating system repair"}
    @{name="indoor-air-quality"; title="Indoor Air Quality Solutions"; desc="Air purification and filtration systems"}
    @{name="duct-cleaning"; title="Professional Duct Cleaning Services"; desc="Ductwork cleaning and sanitization"}
    @{name="commercial-hvac"; title="Commercial HVAC Services"; desc="Business heating and cooling solutions"}
    @{name="emergency-hvac-repair"; title="24/7 Emergency HVAC Repair"; desc="Round-the-clock emergency service"}
    @{name="heat-pump-services"; title="Heat Pump Installation & Repair"; desc="Heat pump services and maintenance"}
)

# Location pages data
$locations = @(
    @{name="northport-al"; city="Northport"; zip="35473,35476"; lat="33.2290"; lng="-87.5770"; address="1523 McFarland Boulevard"}
    @{name="akron-al"; city="Akron"; zip="35441"; lat="32.8793"; lng="-87.7411"; address="108 Main Street"}
    @{name="greensboro-al"; city="Greensboro"; zip="36744"; lat="32.7043"; lng="-87.5958"; address="215 Main Street"}
    @{name="eutaw-al"; city="Eutaw"; zip="35462"; lat="32.8404"; lng="-87.8864"; address="123 Prairie Avenue"}
    @{name="fosters-al"; city="Fosters"; zip="35463"; lat="33.1037"; lng="-86.6419"; address="456 County Road 45"}
    @{name="brookwood-al"; city="Brookwood"; zip="35444"; lat="33.2554"; lng="-87.3230"; address="789 Brookwood Avenue"}
    @{name="coaling-al"; city="Coaling"; zip="35449"; lat="33.1593"; lng="-87.3467"; address="321 Coal City Road"}
    @{name="cottondale-al"; city="Cottondale"; zip="35453"; lat="33.1993"; lng="-87.4247"; address="654 Main Street"}
    @{name="duncanville-al"; city="Duncanville"; zip="35456"; lat="33.0176"; lng="-87.4411"; address="987 Highway 69"}
    @{name="holt-al"; city="Holt"; zip="35404"; lat="33.2343"; lng="-87.4869"; address="147 Holt Peterson Road"}
    @{name="peterson-al"; city="Peterson"; zip="35478"; lat="33.2654"; lng="-87.4103"; address="258 Peterson Drive"}
    @{name="sawyerville-al"; city="Sawyerville"; zip="36776"; lat="32.7565"; lng="-87.7508"; address="369 Sawyer Road"}
    @{name="woodstock-al"; city="Woodstock"; zip="35188"; lat="33.2123"; lng="-87.1456"; address="741 Woodstock Way"}
    @{name="ralph-al"; city="Ralph"; zip="35480"; lat="33.1012"; lng="-87.7890"; address="852 Ralph Road"}
    @{name="buhl-al"; city="Buhl"; zip="35446"; lat="33.0943"; lng="-87.7275"; address="963 Main Street"}
    @{name="gordo-al"; city="Gordo"; zip="35466"; lat="33.3143"; lng="-87.9014"; address="159 Gordo Road"}
    @{name="elrod-al"; city="Elrod"; zip="35458"; lat="33.2876"; lng="-87.8123"; address="753 Elrod Avenue"}
    @{name="clinton-al"; city="Clinton"; zip="35045"; lat="32.8654"; lng="-87.5432"; address="486 Clinton Street"}
    @{name="boligee-al"; city="Boligee"; zip="35443"; lat="32.7876"; lng="-88.0234"; address="357 Boligee Boulevard"}
)

Write-Host "Starting to generate service and location pages..."

# Create remaining service pages
foreach ($service in $services) {
    $content = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$($service.title) | Moundville, AL | Professional HVAC Services</title>
    <meta name="description" content="Professional $($service.desc) in Moundville, AL. Expert HVAC technicians, 24/7 emergency service, free estimates.">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
    
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-PZJGBZXWSD"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-PZJGBZXWSD');
    </script>

    <script type="text/javascript">
        var po_host=(("https:"==document.location.protocol)?"https://":"http://");
        var script=document.createElement('script');
        script.setAttribute('type', 'text/javascript');
        script.src = unescape(po_host+"leads.polyares.com/js/embed/embed.js?apikey=b45897227445c105815c9bfc451e92eb6357bedc&buttons=");
        document.head.appendChild(script);
    </script>

    <!-- Service Schema -->
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Service",
        "name": "$($service.title)",
        "description": "Professional $($service.desc) in Moundville, Alabama and surrounding areas.",
        "provider": {
            "@type": "LocalBusiness",
            "name": "Moundville Ductless Mini Split Services",
            "telephone": "+1-888-918-9104",
            "address": {
                "@type": "PostalAddress",
                "streetAddress": "123 Main Street",
                "addressLocality": "Moundville",
                "addressRegion": "AL",
                "postalCode": "35474",
                "addressCountry": "US"
            }
        },
        "areaServed": {
            "@type": "GeoCircle",
            "geoMidpoint": {
                "@type": "GeoCoordinates",
                "latitude": 32.9943,
                "longitude": -87.6414
            },
            "geoRadius": "50000"
        },
        "aggregateRating": {
            "@type": "AggregateRating",
            "ratingValue": "4.9",
            "reviewCount": "189"
        }
    }
    </script>
</head>
<body>
    <!-- Floating Phone CTA -->
    <div class="floating-phone">
        <a href="tel:+18889189104" class="phone-btn">
            📞 (888) 918-9104
        </a>
    </div>

    <!-- Navigation -->
    <nav class="navbar">
        <div class="nav-container">
            <div class="logo">
                <h2>Moundville Mini Split Pro</h2>
            </div>
            <ul class="nav-menu">
                <li><a href="../index.html">Home</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle">Services ▼</a>
                    <ul class="dropdown-menu">
                        <li><a href="ductless-mini-split-installation.html">Ductless Mini Split Installation</a></li>
                        <li><a href="ductless-mini-split-repair.html">Ductless Mini Split Repair</a></li>
                        <li><a href="hvac-maintenance.html">HVAC Maintenance</a></li>
                        <li><a href="air-conditioning-installation.html">AC Installation</a></li>
                        <li><a href="heating-system-repair.html">Heating System Repair</a></li>
                        <li><a href="indoor-air-quality.html">Indoor Air Quality</a></li>
                        <li><a href="duct-cleaning.html">Duct Cleaning</a></li>
                        <li><a href="commercial-hvac.html">Commercial HVAC</a></li>
                        <li><a href="emergency-hvac-repair.html">Emergency HVAC Repair</a></li>
                        <li><a href="heat-pump-services.html">Heat Pump Services</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle">Locations ▼</a>
                    <ul class="dropdown-menu">
                        <li><a href="../locations/tuscaloosa-al.html">Tuscaloosa</a></li>
                        <li><a href="../locations/northport-al.html">Northport</a></li>
                        <li><a href="../locations/akron-al.html">Akron</a></li>
                        <li><a href="../locations/greensboro-al.html">Greensboro</a></li>
                        <li><a href="../locations/eutaw-al.html">Eutaw</a></li>
                        <li><a href="../locations/fosters-al.html">Fosters</a></li>
                        <li><a href="../locations/brookwood-al.html">Brookwood</a></li>
                        <li><a href="../locations/coaling-al.html">Coaling</a></li>
                        <li><a href="../locations/cottondale-al.html">Cottondale</a></li>
                        <li><a href="../locations/duncanville-al.html">Duncanville</a></li>
                        <li><a href="../locations/holt-al.html">Holt</a></li>
                        <li><a href="../locations/peterson-al.html">Peterson</a></li>
                        <li><a href="../locations/sawyerville-al.html">Sawyerville</a></li>
                        <li><a href="../locations/woodstock-al.html">Woodstock</a></li>
                        <li><a href="../locations/ralph-al.html">Ralph</a></li>
                        <li><a href="../locations/buhl-al.html">Buhl</a></li>
                        <li><a href="../locations/gordo-al.html">Gordo</a></li>
                        <li><a href="../locations/elrod-al.html">Elrod</a></li>
                        <li><a href="../locations/clinton-al.html">Clinton</a></li>
                        <li><a href="../locations/boligee-al.html">Boligee</a></li>
                    </ul>
                </li>
                <li><a href="../index.html#contact">Contact</a></li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>$($service.title) in Moundville, AL</h1>
            <p class="hero-subtitle">Professional HVAC Services • Expert Technicians • 24/7 Emergency Service</p>
            <div class="hero-buttons">
                <a href="tel:+18889189104" class="cta-btn">Call Now: (888) 918-9104</a>
                <a href="#quote-form" class="cta-btn secondary">Get Free Quote</a>
            </div>
        </div>
    </section>

    <!-- Main Content -->
    <main class="main-content">
        <section class="intro-section">
            <div class="container">
                <h2>Professional $($service.title) Services</h2>
                <img src="../images/ductless-mini-split-1.jpg" alt="Professional $($service.desc) in Moundville AL" class="content-image">
                
                <p>Our team of certified HVAC technicians provides professional $($service.desc) throughout Moundville, Alabama and surrounding areas. With years of experience and ongoing manufacturer training, we deliver the expertise and quality workmanship that your home or business deserves.</p>

                <!-- Add 1000+ words of content here for each service -->
                <p>Professional $($service.desc) is essential for maintaining optimal comfort, energy efficiency, and indoor air quality in your Moundville home or business. Our comprehensive service approach ensures that your HVAC system operates at peak performance while minimizing energy costs and preventing unexpected breakdowns.</p>

                <h3>Why Choose Professional Services?</h3>
                <p>When it comes to $($service.desc), professional service makes all the difference in performance, reliability, and longevity. Our certified technicians bring specialized knowledge, proper tools, and extensive experience to every project, ensuring that work is completed correctly and safely the first time.</p>

                <img src="../images/ductless-mini-split-2.jpg" alt="Expert HVAC technicians at work" class="content-image">

                <p>We understand the unique challenges that Alabama's climate presents for HVAC systems. High humidity, extreme temperatures, and seasonal weather changes all impact system performance and efficiency. Our local expertise allows us to provide solutions that are specifically tailored to address these regional conditions.</p>

                <h3>Comprehensive Service Coverage</h3>
                <p>Our $($service.desc) cover all aspects of HVAC system operation and maintenance. We work with all major brands and models, providing consistent, reliable service regardless of your system type or age. Our technicians stay current with the latest technologies and best practices through ongoing training and certification programs.</p>

                <p>From initial consultation through project completion and ongoing support, we provide comprehensive service that addresses all your HVAC needs. Our systematic approach ensures that no detail is overlooked and that your system receives the professional attention it deserves.</p>

                <h3>24/7 Emergency Service Available</h3>
                <p>HVAC emergencies can occur at any time, which is why we provide 24/7 emergency service throughout Moundville and surrounding areas. Our emergency technicians are equipped with the tools and parts needed to address urgent problems quickly and effectively.</p>

                <img src="../images/ductless-mini-split-3.jpg" alt="24/7 emergency HVAC service" class="content-image">

                <p>Whether you're dealing with a complete system failure during extreme weather or experiencing performance issues that affect your comfort, our emergency team is ready to respond. We prioritize emergency calls and work efficiently to restore your system to normal operation as quickly as possible.</p>

                <h3>Quality Workmanship and Warranties</h3>
                <p>All our work is backed by comprehensive warranties and our commitment to customer satisfaction. We use only high-quality materials and follow industry best practices to ensure that our service provides lasting value and reliable performance.</p>

                <p>Our technicians take pride in their workmanship and are committed to delivering results that exceed your expectations. We maintain clean work areas, communicate clearly throughout the service process, and ensure that you're completely satisfied with the results.</p>

                <h3>Energy Efficiency Focus</h3>
                <p>Energy efficiency is a key consideration in all our service work. We look for opportunities to improve system efficiency, reduce energy consumption, and lower operating costs while maintaining optimal comfort levels. This approach helps you save money while reducing environmental impact.</p>

                <img src="../images/ductless-mini-split-4.jpg" alt="Energy efficient HVAC solutions" class="content-image">

                <p>Our efficiency improvements can include system upgrades, control adjustments, and maintenance procedures that optimize performance. We'll explain all efficiency opportunities and help you make informed decisions about investments that provide the best return through reduced energy costs.</p>

                <h3>Local Expertise and Community Commitment</h3>
                <p>As a locally owned and operated company serving Moundville and surrounding areas, we understand the specific needs and challenges of our community. Our technicians are familiar with local building codes, climate conditions, and common HVAC issues in the area.</p>

                <p>We're committed to supporting the local community through quality service, local employment, and participation in community events. When you choose our services, you're supporting a local business that reinvests in the community and provides ongoing value to area residents.</p>

                <h3>Customer Satisfaction Guarantee</h3>
                <p>Customer satisfaction is our top priority, and we stand behind all our work with comprehensive guarantees. We're not satisfied unless you're completely happy with our service, and we'll work to address any concerns or issues that may arise.</p>

                <p>Our commitment to excellence has earned us numerous positive reviews and referrals from satisfied customers throughout Moundville and surrounding areas. We build long-term relationships with our customers by consistently delivering the professional service and support they deserve.</p>

                <h3>Contact Us Today</h3>
                <p>Ready to experience the benefits of professional $($service.desc)? Contact our expert team today at (888) 918-9104 for your free consultation and estimate. We're available 24/7 to answer your questions, provide emergency service, and schedule convenient appointments.</p>

                <p>Whether you need immediate attention for an urgent problem or want to schedule routine service, our team is ready to provide the professional expertise and quality service that Moundville customers have come to expect from our company.</p>
            </div>
        </section>

        <!-- Quote Form Section -->
        <section id="quote-form" class="quote-section">
            <div class="container">
                <h2>Get Your Free Service Estimate</h2>
                <div class="quote-content">
                    <div class="quote-text">
                        <h3>Professional HVAC Services</h3>
                        <p>Get a free estimate for $($service.desc) in Moundville, AL. Our certified technicians provide expert service with comprehensive warranties.</p>
                        <ul>
                            <li>✓ Certified professional technicians</li>
                            <li>✓ Comprehensive warranty coverage</li>
                            <li>✓ 24/7 emergency service</li>
                            <li>✓ Transparent, honest pricing</li>
                        </ul>
                    </div>
                    <div class="quote-form">
                        <div id="polyares_form_container" style="margin:0px;padding:0px;">
                            <div id="polyares_form" style="width: 244px; height: 377px;">
                                <iframe src="//leads.polyares.com/?api_key=b45897227445c105815c9bfc451e92eb6357bedc&funnel=5&category=8&buttons=btn-danger" height="100%" width="100%" frameborder="no" scrolling="yes" noresize="true" vspace="0" hspace="0" style="border-radius: 10px; border: 1px solid #333;"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>Moundville Mini Split Pro</h3>
                    <p>Professional HVAC services in Moundville, AL and surrounding areas. 24/7 emergency service available.</p>
                    <p><strong>Phone:</strong> <a href="tel:+18889189104">(888) 918-9104</a></p>
                </div>
                <div class="footer-section">
                    <h4>Our Services</h4>
                    <ul>
                        <li><a href="ductless-mini-split-installation.html">Ductless Mini Split Installation</a></li>
                        <li><a href="ductless-mini-split-repair.html">Ductless Mini Split Repair</a></li>
                        <li><a href="hvac-maintenance.html">HVAC Maintenance</a></li>
                        <li><a href="air-conditioning-installation.html">AC Installation</a></li>
                        <li><a href="heating-system-repair.html">Heating System Repair</a></li>
                        <li><a href="emergency-hvac-repair.html">24/7 Emergency Service</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Service Areas</h4>
                    <ul>
                        <li><a href="../locations/tuscaloosa-al.html">Tuscaloosa, AL</a></li>
                        <li><a href="../locations/northport-al.html">Northport, AL</a></li>
                        <li><a href="../locations/akron-al.html">Akron, AL</a></li>
                        <li><a href="../locations/greensboro-al.html">Greensboro, AL</a></li>
                        <li><a href="../locations/eutaw-al.html">Eutaw, AL</a></li>
                        <li><a href="../locations/brookwood-al.html">Brookwood, AL</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Contact Info</h4>
                    <p>123 Main Street<br>
                    Moundville, AL 35474</p>
                    <p><strong>24/7 Emergency Service</strong></p>
                    <p>Licensed, Bonded & Insured</p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 Moundville Mini Split Pro. All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@
    
    $filePath = "C:\Users\alooma\Desktop\Netlify1\services\$($service.name).html"
    $content | Out-File -FilePath $filePath -Encoding utf8
    Write-Host "Created service page: $($service.name).html"
}

Write-Host "Service pages generation completed!"
