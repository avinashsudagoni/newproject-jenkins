<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop · Premium</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #f8fafc;
            --surface: #ffffff;
            --primary: #0f172a;
            --secondary: #0ea5e9;
            --accent: #8b5cf6;
            --muted: #64748b;
            --border: rgba(15, 23, 42, 0.08);
            --shadow: 0 20px 35px -8px rgba(15, 23, 42, 0.08);
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* ---------- HEADER ---------- */
        .navbar {
            padding: 1.5rem 3rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-weight: 800;
            font-size: 1.6rem;
            letter-spacing: -0.03em;
            color: var(--primary);
            text-decoration: none;
        }

        .logo i {
            color: var(--secondary);
            font-size: 1.8rem;
        }

        .nav-links {
            display: flex;
            gap: 2.5rem;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--primary);
            font-weight: 500;
            font-size: 0.95rem;
            transition: color 0.2s;
            letter-spacing: -0.01em;
        }

        .nav-links a:hover {
            color: var(--secondary);
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 1.5rem;
        }

        .nav-actions i {
            font-size: 1.2rem;
            color: var(--primary);
            cursor: pointer;
            transition: color 0.2s;
        }

        .nav-actions i:hover {
            color: var(--secondary);
        }

        .cart-badge {
            position: relative;
        }

        .cart-badge span {
            position: absolute;
            top: -8px;
            right: -10px;
            background: var(--accent);
            color: white;
            font-size: 0.65rem;
            font-weight: 700;
            width: 18px;
            height: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
        }

        /* ---------- HERO ---------- */
        .hero {
            padding: 4rem 3rem 5rem;
            display: flex;
            align-items: center;
            gap: 3rem;
            max-width: 1400px;
            margin: 0 auto;
            width: 100%;
        }

        .hero-content {
            flex: 1;
        }

        .hero-tag {
            display: inline-block;
            background: rgba(14, 165, 233, 0.1);
            color: var(--secondary);
            font-weight: 600;
            font-size: 0.8rem;
            letter-spacing: 0.05em;
            text-transform: uppercase;
            padding: 0.4rem 1rem;
            border-radius: 100px;
            margin-bottom: 1.5rem;
        }

        .hero-content h1 {
            font-size: 4rem;
            font-weight: 800;
            line-height: 1.1;
            letter-spacing: -0.04em;
            margin-bottom: 1.5rem;
        }

        .hero-content h1 span {
            background: linear-gradient(135deg, var(--secondary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-content p {
            font-size: 1.2rem;
            color: var(--muted);
            max-width: 550px;
            margin-bottom: 2.5rem;
            font-weight: 400;
        }

        .hero-buttons {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .btn {
            padding: 0.9rem 2.2rem;
            border-radius: 60px;
            font-weight: 600;
            font-size: 1rem;
            border: none;
            cursor: pointer;
            transition: all 0.25s ease;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 0.6rem;
            letter-spacing: -0.01em;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
            box-shadow: 0 12px 20px -8px rgba(15, 23, 42, 0.25);
        }

        .btn-primary:hover {
            background: #1e293b;
            transform: translateY(-2px);
            box-shadow: 0 20px 28px -10px rgba(15, 23, 42, 0.35);
        }

        .btn-outline {
            background: transparent;
            color: var(--primary);
            border: 1.5px solid var(--border);
        }

        .btn-outline:hover {
            border-color: var(--primary);
            background: var(--surface);
            transform: translateY(-2px);
        }

        /* ---------- HERO VISUAL ---------- */
        .hero-visual {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        .hero-visual .glow {
            position: absolute;
            width: 450px;
            height: 450px;
            background: radial-gradient(circle, rgba(139, 92, 246, 0.2) 0%, rgba(14, 165, 233, 0.1) 60%, transparent 80%);
            border-radius: 50%;
            filter: blur(60px);
            z-index: 0;
        }

        .product-card {
            background: var(--surface);
            border-radius: 40px;
            padding: 1.8rem;
            box-shadow: var(--shadow);
            border: 1px solid var(--border);
            position: relative;
            z-index: 1;
            width: 100%;
            max-width: 380px;
            transition: transform 0.4s ease;
        }

        .product-card:hover {
            transform: translateY(-8px);
        }

        .product-image {
            background: linear-gradient(145deg, #eef2f6, #ffffff);
            border-radius: 28px;
            height: 260px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            position: relative;
            overflow: hidden;
        }

        .product-image i {
            font-size: 6rem;
            color: var(--secondary);
            opacity: 0.85;
            transition: transform 0.3s;
        }

        .product-card:hover .product-image i {
            transform: scale(1.05);
        }

        .badge-new {
            position: absolute;
            top: 1rem;
            left: 1rem;
            background: var(--accent);
            color: white;
            font-size: 0.7rem;
            font-weight: 700;
            padding: 0.3rem 0.9rem;
            border-radius: 100px;
            letter-spacing: 0.03em;
            text-transform: uppercase;
        }

        .product-info h3 {
            font-size: 1.3rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 0.25rem;
        }

        .product-info .category {
            color: var(--muted);
            font-size: 0.9rem;
            font-weight: 400;
        }

        .product-meta {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 1rem;
        }

        .price {
            font-size: 1.6rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            color: var(--primary);
        }

        .price small {
            font-size: 0.9rem;
            font-weight: 400;
            color: var(--muted);
            text-decoration: line-through;
            margin-left: 0.5rem;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 0.3rem;
            color: #fbbf24;
            font-size: 0.9rem;
        }

        .rating span {
            color: var(--muted);
            font-size: 0.85rem;
            margin-left: 0.2rem;
        }

        .btn-add {
            width: 100%;
            margin-top: 1.2rem;
            padding: 0.9rem;
            border-radius: 60px;
            background: var(--primary);
            color: white;
            border: none;
            font-weight: 600;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.6rem;
            cursor: pointer;
            transition: background 0.2s;
        }

        .btn-add:hover {
            background: #1e293b;
        }

        /* ---------- STATS ---------- */
        .stats {
            display: flex;
            justify-content: center;
            gap: 5rem;
            padding: 3rem 3rem;
            background: var(--surface);
            border-top: 1px solid var(--border);
            border-bottom: 1px solid var(--border);
            flex-wrap: wrap;
        }

        .stat-item {
            text-align: center;
        }

        .stat-item .number {
            font-size: 2.5rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            color: var(--primary);
        }

        .stat-item .label {
            color: var(--muted);
            font-size: 0.95rem;
            font-weight: 500;
        }

        /* ---------- FEATURES ---------- */
        .features {
            padding: 5rem 3rem;
            max-width: 1400px;
            margin: 0 auto;
            width: 100%;
        }

        .section-header {
            text-align: center;
            margin-bottom: 4rem;
        }

        .section-header h2 {
            font-size: 2.8rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            margin-bottom: 0.8rem;
        }

        .section-header p {
            color: var(--muted);
            font-size: 1.1rem;
            max-width: 600px;
            margin: 0 auto;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .feature-card {
            background: var(--surface);
            border-radius: 28px;
            padding: 2.5rem 2rem;
            border: 1px solid var(--border);
            transition: all 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow);
            border-color: transparent;
        }

        .feature-icon {
            width: 56px;
            height: 56px;
            border-radius: 18px;
            background: rgba(14, 165, 233, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
        }

        .feature-icon i {
            font-size: 1.8rem;
            color: var(--secondary);
        }

        .feature-card:nth-child(2) .feature-icon {
            background: rgba(139, 92, 246, 0.1);
        }

        .feature-card:nth-child(2) .feature-icon i {
            color: var(--accent);
        }

        .feature-card:nth-child(3) .feature-icon {
            background: rgba(16, 185, 129, 0.1);
        }

        .feature-card:nth-child(3) .feature-icon i {
            color: #10b981;
        }

        .feature-card:nth-child(4) .feature-icon {
            background: rgba(245, 158, 11, 0.1);
        }

        .feature-card:nth-child(4) .feature-icon i {
            color: #f59e0b;
        }

        .feature-card h3 {
            font-size: 1.25rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 0.6rem;
        }

        .feature-card p {
            color: var(--muted);
            font-size: 0.95rem;
            line-height: 1.7;
        }

        /* ---------- CTA ---------- */
        .cta-section {
            padding: 3rem 3rem 6rem;
            max-width: 1400px;
            margin: 0 auto;
            width: 100%;
        }

        .cta-box {
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            border-radius: 48px;
            padding: 4rem 3rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 3rem;
            flex-wrap: wrap;
            position: relative;
            overflow: hidden;
        }

        .cta-box::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -10%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(14, 165, 233, 0.2) 0%, transparent 70%);
            border-radius: 50%;
        }

        .cta-content {
            position: relative;
            z-index: 1;
            flex: 2;
        }

        .cta-content h2 {
            font-size: 2.4rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            color: white;
            margin-bottom: 0.8rem;
        }

        .cta-content p {
            color: #94a3b8;
            font-size: 1.1rem;
            max-width: 500px;
        }

        .cta-form {
            position: relative;
            z-index: 1;
            flex: 1;
            min-width: 300px;
            display: flex;
            gap: 0.8rem;
            background: rgba(255, 255, 255, 0.08);
            padding: 0.5rem;
            border-radius: 60px;
            backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .cta-form input {
            flex: 1;
            padding: 0.9rem 1.5rem;
            border-radius: 60px;
            border: none;
            background: transparent;
            color: white;
            font-family: 'Inter', sans-serif;
            font-size: 0.95rem;
            outline: none;
        }

        .cta-form input::placeholder {
            color: #94a3b8;
        }

        .cta-form button {
            padding: 0.9rem 2rem;
            border-radius: 60px;
            border: none;
            background: var(--secondary);
            color: white;
            font-weight: 600;
            font-size: 0.95rem;
            cursor: pointer;
            transition: background 0.2s;
            white-space: nowrap;
            font-family: 'Inter', sans-serif;
        }

        .cta-form button:hover {
            background: #0284c7;
        }

        /* ---------- FOOTER ---------- */
        footer {
            background: var(--surface);
            border-top: 1px solid var(--border);
            padding: 3rem 3rem 2rem;
            margin-top: auto;
        }

        .footer-content {
            max-width: 1400px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 2rem;
        }

        .footer-content p {
            color: var(--muted);
            font-size: 0.9rem;
        }

        .social-icons {
            display: flex;
            gap: 1.2rem;
        }

        .social-icons a {
            color: var(--muted);
            font-size: 1.2rem;
            transition: color 0.2s;
        }

        .social-icons a:hover {
            color: var(--primary);
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 1024px) {
            .hero {
                flex-direction: column;
                text-align: center;
                padding: 2.5rem 1.5rem 3rem;
            }

            .hero-content h1 {
                font-size: 3rem;
            }

            .hero-content p {
                margin-left: auto;
                margin-right: auto;
            }

            .hero-buttons {
                justify-content: center;
            }

            .hero-visual {
                width: 100%;
            }

            .stats {
                gap: 2.5rem;
            }
        }

        @media (max-width: 768px) {
            .navbar {
                padding: 1rem 1.5rem;
                flex-wrap: wrap;
                gap: 1rem;
            }

            .nav-links {
                display: none;
            }

            .hero-content h1 {
                font-size: 2.4rem;
            }

            .hero-content p {
                font-size: 1rem;
            }

            .features {
                padding: 3rem 1.5rem;
            }

            .section-header h2 {
                font-size: 2rem;
            }

            .cta-box {
                padding: 2.5rem 1.5rem;
                border-radius: 32px;
            }

            .cta-content h2 {
                font-size: 1.8rem;
            }

            .cta-form {
                flex-direction: column;
                background: transparent;
                padding: 0;
                border: none;
                backdrop-filter: none;
            }

            .cta-form input {
                background: rgba(255, 255, 255, 0.08);
                border: 1px solid rgba(255, 255, 255, 0.1);
                border-radius: 60px;
            }

            .stats {
                padding: 2rem 1.5rem;
                gap: 2rem;
            }

            .stat-item .number {
                font-size: 2rem;
            }

            footer {
                padding: 2rem 1.5rem;
            }

            .footer-content {
                flex-direction: column;
                text-align: center;
            }
        }

        @media (max-width: 480px) {
            .hero-content h1 {
                font-size: 2rem;
            }

            .product-card {
                padding: 1.2rem;
            }

            .product-image {
                height: 200px;
            }

            .product-image i {
                font-size: 4.5rem;
            }

            .btn {
                padding: 0.8rem 1.6rem;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

    <!-- ========== NAVBAR ========== -->
    <nav class="navbar">
        <a href="#" class="logo">
            <i class="fas fa-cube"></i>
            NexusShop
        </a>
        <div class="nav-links">
            <a href="#">Shop</a>
            <a href="#">Collections</a>
            <a href="#">New Arrivals</a>
            <a href="#">About</a>
        </div>
        <div class="nav-actions">
            <i class="fas fa-search"></i>
            <div class="cart-badge">
                <i class="fas fa-shopping-bag"></i>
                <span>3</span>
            </div>
        </div>
    </nav>

    <!-- ========== HERO ========== -->
    <section class="hero">
        <div class="hero-content">
            <div class="hero-tag">Premium tech essentials</div>
            <h1>Elevate your <span>everyday</span> carry.</h1>
            <p>
                Discover meticulously crafted accessories that blend minimalist design
                with uncompromising performance. Curated for the modern connoisseur.
            </p>
            <div class="hero-buttons">
                <a href="#" class="btn btn-primary">
                    <i class="fas fa-bag-shopping"></i> Shop collection
                </a>
                <a href="#" class="btn btn-outline">
                    <i class="fas fa-play"></i> Watch story
                </a>
            </div>
        </div>

        <div class="hero-visual">
            <div class="glow"></div>
            <div class="product-card">
                <div class="product-image">
                    <i class="fas fa-headphones-simple"></i>
                    <span class="badge-new">New</span>
                </div>
                <div class="product-info">
                    <h3>AeroPods Max</h3>
                    <p class="category">Wireless · Noise cancelling</p>
                </div>
                <div class="product-meta">
                    <div class="price">$549 <small>$699</small></div>
                    <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <span>(2.4k)</span>
                    </div>
                </div>
                <button class="btn-add">
                    <i class="fas fa-plus"></i> Add to cart
                </button>
            </div>
        </div>
    </section>

    <!-- ========== STATS ========== -->
    <section class="stats">
        <div class="stat-item">
            <div class="number">12k+</div>
            <div class="label">Happy customers</div>
        </div>
        <div class="stat-item">
            <div class="number">4.9</div>
            <div class="label">Average rating</div>
        </div>
        <div class="stat-item">
            <div class="number">98%</div>
            <div class="label">Would recommend</div>
        </div>
        <div class="stat-item">
            <div class="number">24/7</div>
            <div class="label">Premium support</div>
        </div>
    </section>

    <!-- ========== FEATURES ========== -->
    <section class="features">
        <div class="section-header">
            <h2>Why NexusShop</h2>
            <p>We obsess over the details so you can focus on what matters — enjoying exceptional products.</p>
        </div>

        <div class="feature-grid">
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-truck-fast"></i>
                </div>
                <h3>Free express shipping</h3>
                <p>Complimentary carbon-neutral delivery on all orders over $99, worldwide.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-shield-halved"></i>
                </div>
                <h3>2-year warranty</h3>
                <p>Every product is backed by our comprehensive two-year global warranty.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-rotate-left"></i>
                </div>
                <h3>30-day returns</h3>
                <p>Not in love? Return it within 30 days for a full, hassle-free refund.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-headset"></i>
                </div>
                <h3>Human support</h3>
                <p>Real people, ready to help 24/7 via chat, email, or phone.</p>
            </div>
        </div>
    </section>

    <!-- ========== CTA ========== -->
    <section class="cta-section">
        <div class="cta-box">
            <div class="cta-content">
                <h2>Join the inner circle.</h2>
                <p>Get early access to drops, exclusive offers, and 10% off your first order.</p>
            </div>
            <form class="cta-form" onsubmit="event.preventDefault();">
                <input type="email" placeholder="Enter your email" required />
                <button type="submit">Subscribe</button>
            </form>
        </div>
    </section>

    <!-- ========== FOOTER ========== -->
    <footer>
        <div class="footer-content">
            <p>&copy; 2026 NexusShop. All rights reserved.</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-x-twitter"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
                <a href="#"><i class="fab fa-tiktok"></i></a>
            </div>
        </div>
    </footer>

</body>
</html>
