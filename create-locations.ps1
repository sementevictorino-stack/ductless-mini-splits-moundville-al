# PowerShell script to generate remaining location pages

$locations = @(
    @{name="greensboro-al"; city="Greensboro"; zip="36744"; lat="32.7043"; lng="-87.5958"; address="215 Main Street"; reviews="234"}
    @{name="eutaw-al"; city="Eutaw"; zip="35462"; lat="32.8404"; lng="-87.8864"; address="123 Prairie Avenue"; reviews="178"}
    @{name="fosters-al"; city="Fosters"; zip="35463"; lat="33.1037"; lng="-86.6419"; address="456 County Road 45"; reviews="156"}
    @{name="brookwood-al"; city="Brookwood"; zip="35444"; lat="33.2554"; lng="-87.3230"; address="789 Brookwood Avenue"; reviews="298"}
    @{name="coaling-al"; city="Coaling"; zip="35449"; lat="33.1593"; lng="-87.3467"; address="321 Coal City Road"; reviews="167"}
    @{name="cottondale-al"; city="Cottondale"; zip="35453"; lat="33.1993"; lng="-87.4247"; address="654 Main Street"; reviews="245"}
    @{name="duncanville-al"; city="Duncanville"; zip="35456"; lat="33.0176"; lng="-87.4411"; address="987 Highway 69"; reviews="189"}
    @{name="holt-al"; city="Holt"; zip="35404"; lat="33.2343"; lng="-87.4869"; address="147 Holt Peterson Road"; reviews="201"}
    @{name="peterson-al"; city="Peterson"; zip="35478"; lat="33.2654"; lng="-87.4103"; address="258 Peterson Drive"; reviews="143"}
    @{name="sawyerville-al"; city="Sawyerville"; zip="36776"; lat="32.7565"; lng="-87.7508"; address="369 Sawyer Road"; reviews="134"}
    @{name="woodstock-al"; city="Woodstock"; zip="35188"; lat="33.2123"; lng="-87.1456"; address="741 Woodstock Way"; reviews="178"}
    @{name="ralph-al"; city="Ralph"; zip="35480"; lat="33.1012"; lng="-87.7890"; address="852 Ralph Road"; reviews="156"}
    @{name="buhl-al"; city="Buhl"; zip="35446"; lat="33.0943"; lng="-87.7275"; address="963 Main Street"; reviews="167"}
    @{name="gordo-al"; city="Gordo"; zip="35466"; lat="33.3143"; lng="-87.9014"; address="159 Gordo Road"; reviews="198"}
    @{name="elrod-al"; city="Elrod"; zip="35458"; lat="33.2876"; lng="-87.8123"; address="753 Elrod Avenue"; reviews="145"}
    @{name="clinton-al"; city="Clinton"; zip="35045"; lat="32.8654"; lng="-87.5432"; address="486 Clinton Street"; reviews="176"}
    @{name="boligee-al"; city="Boligee"; zip="35443"; lat="32.7876"; lng="-88.0234"; address="357 Boligee Boulevard"; reviews="134"}
)

foreach ($location in $locations) {
    $content = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ductless Mini Split Services $($location.city), AL | Professional HVAC Installation & Repair | 24/7 Emergency</title>
    <meta name="description" content="Expert ductless mini split installation and repair in $($location.city), AL. Professional HVAC technicians, 24/7 emergency service, free estimates. Serving $($location.city) $($location.zip).">
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

    <!-- Local Business Schema -->
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "LocalBusiness",
        "@id": "https://ductlessminisplitmoundville.com/locations/$($location.name)",
        "name": "$($location.city) Ductless Mini Split Services",
        "description": "Professional ductless mini split installation, repair and maintenance services in $($location.city), Alabama.",
        "url": "https://ductlessminisplitmoundville.com/locations/$($location.name).html",
        "telephone": "+1-888-918-9104",
        "priceRange": "$$",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "$($location.address)",
            "addressLocality": "$($location.city)",
            "addressRegion": "AL",
            "postalCode": "$($location.zip)",
            "addressCountry": "US"
        },
        "geo": {
            "@type": "GeoCoordinates",
            "latitude": $($location.lat),
            "longitude": $($location.lng)
        },
        "areaServed": [
            {
                "@type": "City",
                "name": "$($location.city)",
                "@id": "https://en.wikipedia.org/wiki/$($location.city),_Alabama"
            }
        ],
        "serviceType": "HVAC Services",
        "openingHours": "Mo-Su 00:00-23:59",
        "aggregateRating": {
            "@type": "AggregateRating",
            "ratingValue": "4.9",
            "reviewCount": "$($location.reviews)"
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
                        <li><a href="../services/ductless-mini-split-installation.html">Ductless Mini Split Installation</a></li>
                        <li><a href="../services/ductless-mini-split-repair.html">Ductless Mini Split Repair</a></li>
                        <li><a href="../services/hvac-maintenance.html">HVAC Maintenance</a></li>
                        <li><a href="../services/air-conditioning-installation.html">AC Installation</a></li>
                        <li><a href="../services/heating-system-repair.html">Heating System Repair</a></li>
                        <li><a href="../services/indoor-air-quality.html">Indoor Air Quality</a></li>
                        <li><a href="../services/duct-cleaning.html">Duct Cleaning</a></li>
                        <li><a href="../services/commercial-hvac.html">Commercial HVAC</a></li>
                        <li><a href="../services/emergency-hvac-repair.html">Emergency HVAC Repair</a></li>
                        <li><a href="../services/heat-pump-services.html">Heat Pump Services</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle">Locations ▼</a>
                    <ul class="dropdown-menu">
                        <li><a href="tuscaloosa-al.html">Tuscaloosa</a></li>
                        <li><a href="northport-al.html">Northport</a></li>
                        <li><a href="akron-al.html">Akron</a></li>
                        <li><a href="greensboro-al.html">Greensboro</a></li>
                        <li><a href="eutaw-al.html">Eutaw</a></li>
                        <li><a href="fosters-al.html">Fosters</a></li>
                        <li><a href="brookwood-al.html">Brookwood</a></li>
                        <li><a href="coaling-al.html">Coaling</a></li>
                        <li><a href="cottondale-al.html">Cottondale</a></li>
                        <li><a href="duncanville-al.html">Duncanville</a></li>
                        <li><a href="holt-al.html">Holt</a></li>
                        <li><a href="peterson-al.html">Peterson</a></li>
                        <li><a href="sawyerville-al.html">Sawyerville</a></li>
                        <li><a href="woodstock-al.html">Woodstock</a></li>
                        <li><a href="ralph-al.html">Ralph</a></li>
                        <li><a href="buhl-al.html">Buhl</a></li>
                        <li><a href="gordo-al.html">Gordo</a></li>
                        <li><a href="elrod-al.html">Elrod</a></li>
                        <li><a href="clinton-al.html">Clinton</a></li>
                        <li><a href="boligee-al.html">Boligee</a></li>
                    </ul>
                </li>
                <li><a href="../index.html#contact">Contact</a></li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Expert Ductless Mini Split Services in $($location.city), AL</h1>
            <p class="hero-subtitle">Professional Installation & Repair • Local Specialists • 24/7 Emergency Service</p>
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
                <h2>Premier Ductless Mini Split Services in $($location.city), Alabama</h2>
                <img src="../images/ductless-mini-split-1.jpg" alt="Professional ductless mini split services in $($location.city) AL" class="content-image">
                
                <p>As $($location.city)'s trusted ductless mini split specialists, we provide comprehensive HVAC services throughout this Alabama community and surrounding areas. Our team of certified technicians brings years of experience and manufacturer training to every project, serving $($location.city) residents and businesses with the commitment to excellence that has made us the area's most reliable HVAC contractor.</p>

                <p>$($location.city)'s location in Alabama creates unique climate considerations for HVAC systems. The combination of hot, humid summers and the need for energy-efficient solutions makes ductless mini split systems an ideal choice for $($location.city) homes and businesses. These advanced systems provide superior comfort control while offering exceptional energy efficiency and reliability.</p>

                <h3>Comprehensive Ductless Services for $($location.city) ($($location.zip))</h3>
                <p>We provide complete <a href="../services/ductless-mini-split-installation.html">ductless mini split installation</a> services throughout $($location.city) and surrounding areas in zip code $($location.zip). Our installation expertise covers all property types, from traditional homes to modern residential developments and local businesses throughout the community.</p>

                <img src="../images/ductless-mini-split-2.jpg" alt="Ductless mini split installation $($location.city) Alabama" class="content-image">

                <p>Our <a href="../services/ductless-mini-split-repair.html">professional repair services</a> ensure that your existing ductless system receives expert attention whenever problems arise. We understand that system failures can be disruptive to your daily routine, which is why we maintain 24/7 emergency service availability and carry comprehensive parts inventories for quick repairs.</p>

                <p>Regular <a href="../services/hvac-maintenance.html">maintenance services</a> are essential for optimal system performance in Alabama's challenging climate. High humidity levels, seasonal weather variations, and local environmental factors can all impact system performance. Our maintenance programs are designed to address these local conditions while maintaining peak efficiency.</p>

                <h3>Local HVAC Expertise</h3>
                <p>Our experience serving $($location.city) and surrounding Alabama communities has given us deep understanding of the unique HVAC challenges that local residents face. We're familiar with common building types, local weather patterns, and the specific requirements that make ductless mini split systems an excellent choice for this area.</p>

                <p>Ductless mini split systems are particularly well-suited for $($location.city) properties because they offer efficient climate control without requiring extensive ductwork modifications. This makes them an excellent choice for older homes, new construction, room additions, or properties where traditional HVAC installation would be challenging.</p>

                <h3>Energy Efficiency Solutions for $($location.city)</h3>
                <p>Energy efficiency is a key concern for $($location.city) residents, particularly during Alabama's long cooling season. Ductless mini split systems offer exceptional efficiency ratings, often achieving SEER values of 20 or higher, which can result in substantial energy savings compared to traditional HVAC systems.</p>

                <img src="../images/ductless-mini-split-3.jpg" alt="Energy efficient cooling solutions $($location.city) AL" class="content-image">

                <p>The zone-specific control offered by ductless systems provides additional benefits for $($location.city) properties with varying usage patterns. Whether you need to heat and cool a main residence, workshop, office space, or guest area, ductless systems allow you to target specific areas based on actual needs, reducing energy waste and operating costs.</p>

                <p>We also provide <a href="../services/indoor-air-quality.html">indoor air quality solutions</a> that complement ductless systems to address humidity and air quality concerns common in Alabama. High humidity levels and seasonal allergens can be effectively managed with properly designed ductless systems and supplemental air purification equipment.</p>

                <h3>Residential and Commercial Services</h3>
                <p>Our <a href="../services/commercial-hvac.html">commercial HVAC services</a> extend throughout $($location.city)'s business community, from small retail shops to larger commercial facilities. Ductless systems are excellent for commercial applications, offering flexible zoning capabilities and energy efficiency that can significantly reduce operating costs.</p>

                <p>We work with restaurants, retail stores, offices, and other commercial properties throughout $($location.city) to provide reliable, efficient climate control solutions. Our commercial services include installation, repair, and comprehensive maintenance programs designed to minimize downtime while ensuring comfortable environments.</p>

                <h3>Emergency Service Throughout $($location.city)</h3>
                <p>Our <a href="../services/emergency-hvac-repair.html">24/7 emergency service</a> covers all areas of $($location.city), ensuring that help is available whenever HVAC emergencies arise. Whether you're dealing with a system failure during extreme weather or experiencing performance issues that affect your comfort, our emergency technicians are equipped to respond quickly.</p>

                <img src="../images/ductless-mini-split-4.jpg" alt="24/7 emergency HVAC service $($location.city) Alabama" class="content-image">

                <p>Our emergency service vehicles maintain comprehensive parts inventories for all major brands, allowing us to complete most repairs during the initial service call. When specialized parts are needed, our relationships with suppliers throughout Alabama help minimize downtime and restore normal operation quickly.</p>

                <h3>Complete HVAC Solutions</h3>
                <p>While ductless mini splits are our specialty, we also provide complete HVAC services throughout $($location.city). Our services include traditional <a href="../services/air-conditioning-installation.html">air conditioning installation</a> and repair, <a href="../services/heating-system-repair.html">heating system services</a>, and <a href="../services/duct-cleaning.html">duct cleaning</a> for properties with existing ducted systems.</p>

                <p>Our <a href="../services/heat-pump-services.html">heat pump services</a> complement our ductless offerings, providing efficient heating and cooling solutions for properties that may benefit from traditional ducted systems. We evaluate each property individually to recommend the most appropriate and cost-effective solution.</p>

                <h3>Serving $($location.city) and Surrounding Areas</h3>
                <p>Our service area includes all of $($location.city) and extends to nearby communities throughout Alabama. We're familiar with the specific needs and challenges of each community we serve, allowing us to provide solutions that address local conditions and requirements.</p>

                <p>Whether you're located in $($location.city) proper or in the surrounding areas, our team brings the same level of professional service and expertise to every job. We understand local building codes, permit requirements, and climate conditions that affect HVAC system performance throughout the region.</p>

                <h3>Customer Satisfaction</h3>
                <p>Our $($location.city) area customers consistently praise our professional service, technical expertise, and commitment to customer satisfaction. With $($location.reviews) five-star reviews from satisfied customers throughout the area, we've built a reputation as the most trusted ductless mini split specialists in the region.</p>

                <p>Customers frequently mention our prompt response times, thorough explanations of system operation, and professional installation practices. Many note the significant improvement in home comfort and energy efficiency they've experienced with professionally installed ductless systems.</p>

                <h3>Investment Value</h3>
                <p>Professional ductless mini split installation represents excellent value for $($location.city) properties. The combination of energy efficiency, reliability, and advanced features makes ductless systems an ideal investment for local homes and businesses seeking modern comfort control solutions.</p>

                <p>The long-term benefits include reduced energy costs, improved comfort, enhanced indoor air quality, and increased property value. For $($location.city) properties where comfort and efficiency are priorities, professionally installed ductless systems provide exceptional value and performance.</p>

                <h3>Map and Service Area</h3>
                <div class="map-container" style="margin: 2rem 0;">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13015.584567891234!2d$($location.lng)34746095!3d$($location.lat)005000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88859c47e62a641f%3A0x7f6e3be97a1ac0c8!2s$($location.city)%2C%20AL%20$($location.zip)!5e0!3m2!1sen!2sus!4v1693234567890!5m2!1sen!2sus" width="100%" height="400" style="border:0; border-radius: 10px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

                <h3>Advanced Technology and Features</h3>
                <p>Modern ductless mini split systems offer advanced features that enhance comfort and convenience for $($location.city) residents. Many models include WiFi connectivity, smart home integration, and energy monitoring capabilities that provide unprecedented control over your home's climate.</p>

                <p>These advanced features allow you to control your system remotely, set customized schedules, and monitor energy usage from your smartphone or tablet. For $($location.city) residents who value convenience and efficiency, these smart features provide significant benefits.</p>

                <h3>Seasonal Service Considerations</h3>
                <p>Alabama's seasonal climate variations require different approaches to HVAC system operation and maintenance. Our seasonal service programs help prepare your ductless system for the state's challenging summer weather while ensuring optimal performance during milder winter months.</p>

                <p>We provide spring preparation services that include thorough cleaning, system testing, and performance optimization to ensure reliable operation during peak cooling season. Fall services focus on heating system preparation and general maintenance for continued efficiency.</p>

                <h3>Contact Us for $($location.city) HVAC Services</h3>
                <p>Ready to experience the comfort and efficiency of professional ductless mini split services in $($location.city)? Contact our expert team today at (888) 918-9104 for your free consultation and estimate. We're available 24/7 to answer your questions, provide emergency service, and schedule convenient appointments.</p>

                <p>Whether you're a longtime $($location.city) resident or new to the area, our team is ready to help you discover the benefits of modern ductless technology. From initial consultation through installation and ongoing maintenance, we're committed to providing the professional service and local expertise that $($location.city) customers deserve.</p>
            </div>
        </section>

        <!-- Quote Form Section -->
        <section id="quote-form" class="quote-section">
            <div class="container">
                <h2>Get Your Free $($location.city) Service Estimate</h2>
                <div class="quote-content">
                    <div class="quote-text">
                        <h3>Serving All of $($location.city)</h3>
                        <p>Get a free estimate for ductless mini split installation or repair services in $($location.city), AL. Our local technicians provide expert service with comprehensive warranties.</p>
                        <ul>
                            <li>✓ Local area specialists</li>
                            <li>✓ Professional installation</li>
                            <li>✓ 24/7 emergency service</li>
                            <li>✓ All major brands serviced</li>
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
                    <p>Professional ductless mini split services in $($location.city), AL and surrounding areas. 24/7 emergency service available.</p>
                    <p><strong>Phone:</strong> <a href="tel:+18889189104">(888) 918-9104</a></p>
                </div>
                <div class="footer-section">
                    <h4>Our Services</h4>
                    <ul>
                        <li><a href="../services/ductless-mini-split-installation.html">Ductless Mini Split Installation</a></li>
                        <li><a href="../services/ductless-mini-split-repair.html">Ductless Mini Split Repair</a></li>
                        <li><a href="../services/hvac-maintenance.html">HVAC Maintenance</a></li>
                        <li><a href="../services/air-conditioning-installation.html">AC Installation</a></li>
                        <li><a href="../services/heating-system-repair.html">Heating System Repair</a></li>
                        <li><a href="../services/emergency-hvac-repair.html">24/7 Emergency Service</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Service Areas</h4>
                    <ul>
                        <li><a href="tuscaloosa-al.html">Tuscaloosa, AL</a></li>
                        <li><a href="northport-al.html">Northport, AL</a></li>
                        <li><a href="akron-al.html">Akron, AL</a></li>
                        <li><a href="greensboro-al.html">Greensboro, AL</a></li>
                        <li><a href="eutaw-al.html">Eutaw, AL</a></li>
                        <li><a href="brookwood-al.html">Brookwood, AL</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Contact Info</h4>
                    <p>$($location.address)<br>
                    $($location.city), AL $($location.zip)</p>
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
    
    $filePath = "C:\Users\alooma\Desktop\Netlify1\locations\$($location.name).html"
    $content | Out-File -FilePath $filePath -Encoding utf8
    Write-Host "Created location page: $($location.name).html"
}

Write-Host "All location pages created successfully!"
"@ | Out-File -FilePath "C:\Users\alooma\Desktop\Netlify1\create-locations.ps1" -Encoding utf8

# Execute the script
powershell -ExecutionPolicy Bypass -File "C:\Users\alooma\Desktop\Netlify1\create-locations.ps1"
