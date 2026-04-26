<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Modern E‑Commerce Experience</title>
    
    <!-- Google Fonts + Font Awesome 6 -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-primary: #ffffff;
            --bg-secondary: #fafcff;
            --surface: #f5f7fb;
            --surface-elevated: #ffffff;
            --text-primary: #0b1e32;
            --text-secondary: #5b6e8c;
            --text-muted: #8a99b0;
            --accent: #6366f1;
            --accent-soft: #eef2ff;
            --accent-gradient: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
            --danger: #ef4444;
            --success: #10b981;
            --warning: #f59e0b;
            --border-light: rgba(0, 0, 0, 0.05);
            --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.03), 0 1px 2px rgba(0, 0, 0, 0.05);
            --shadow-md: 0 8px 28px rgba(0, 0, 0, 0.06), 0 2px 4px rgba(0, 0, 0, 0.02);
            --shadow-lg: 0 20px 40px -12px rgba(0, 0, 0, 0.12);
            --radius-sm: 12px;
            --radius-md: 20px;
            --radius-full: 9999px;
            --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            overflow-x: hidden;
            scroll-behavior: smooth;
        }

        /* Custom scrollbar */
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }
        ::-webkit-scrollbar-track {
            background: var(--surface);
        }
        ::-webkit-scrollbar-thumb {
            background: var(--accent);
            border-radius: 8px;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Glassmorphic Header */
        .glass-header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.82);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-light);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .logo {
            font-family: 'Space Grotesk', monospace;
            font-size: 1.7rem;
            font-weight: 700;
            background: var(--accent-gradient);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .logo span {
            background: none;
            color: var(--text-primary);
        }

        .nav-links {
            display: flex;
            gap: 8px;
            background: var(--surface);
            padding: 4px;
            border-radius: 60px;
        }
        .nav-links a {
            padding: 8px 20px;
            border-radius: 60px;
            font-weight: 500;
            font-size: 0.9rem;
            transition: var(--transition);
            color: var(--text-secondary);
        }
        .nav-links a:hover, .nav-links a.active {
            background: white;
            color: var(--accent);
            box-shadow: var(--shadow-sm);
        }

        /* search bar modern */
        .search-wrapper {
            background: white;
            border-radius: 48px;
            padding: 4px 8px 4px 18px;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-light);
            transition: var(--transition);
        }
        .search-wrapper:focus-within {
            box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.2);
            border-color: var(--accent);
        }
        .search-wrapper input {
            border: none;
            background: transparent;
            font-size: 0.9rem;
            width: 220px;
            outline: none;
        }

        .cart-icon {
            position: relative;
            background: white;
            width: 44px;
            height: 44px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 44px;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* hero section enhanced */
        .hero-modern {
            background: linear-gradient(110deg, #f8faff 0%, #ffffff 100%);
            border-radius: 0 0 40px 40px;
            padding: 64px 0 72px;
            position: relative;
            overflow: hidden;
        }
        .hero-modern::before {
            content: '';
            position: absolute;
            top: -30%;
            right: -10%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(99,102,241,0.12) 0%, rgba(99,102,241,0) 70%);
            border-radius: 50%;
        }
        .hero-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
        }
        .hero-text h1 {
            font-size: 3.5rem;
            font-weight: 700;
            line-height: 1.2;
            letter-spacing: -0.03em;
            background: linear-gradient(to right, #0b1e32, #4f46e5);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .badge-new {
            background: var(--accent-soft);
            color: var(--accent);
            padding: 6px 14px;
            border-radius: 60px;
            font-size: 0.8rem;
            font-weight: 600;
            display: inline-block;
            margin-bottom: 20px;
        }
        .btn-gradient {
            background: var(--accent-gradient);
            border: none;
            color: white;
            padding: 12px 32px;
            border-radius: 48px;
            font-weight: 600;
            transition: transform 0.2s, box-shadow 0.2s;
            box-shadow: 0 8px 18px rgba(99,102,241,0.3);
        }
        .btn-gradient:hover {
            transform: translateY(-2px);
            box-shadow: 0 15px 28px rgba(99,102,241,0.35);
        }
        .hero-stat {
            display: flex;
            gap: 24px;
            margin-top: 28px;
        }
        .hero-stat p { font-weight: 500; color: var(--text-secondary);}
        .hero-stat strong { font-size: 1.5rem; color: var(--text-primary); display: block;}

        /* category cards 3d-ish */
        .section-title {
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 12px;
        }
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
            gap: 24px;
        }
        .category-card {
            background: var(--surface-elevated);
            padding: 28px 16px;
            text-align: center;
            border-radius: 28px;
            transition: all 0.2s ease;
            cursor: pointer;
            border: 1px solid var(--border-light);
            backdrop-filter: blur(2px);
        }
        .category-card:hover {
            transform: translateY(-6px);
            border-color: var(--accent);
            box-shadow: var(--shadow-lg);
        }
        .category-icon {
            font-size: 2.4rem;
            background: var(--accent-soft);
            width: 70px;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 30px;
            margin: 0 auto 16px;
            color: var(--accent);
        }

        /* product grid modern */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            transition: all 0.3s ease;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-light);
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-lg);
        }
        .product-img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: transform 0.4s;
        }
        .product-card:hover .product-img {
            transform: scale(1.02);
        }
        .product-info {
            padding: 18px 20px 20px;
        }
        .price {
            font-size: 1.5rem;
            font-weight: 700;
        }
        .add-to-cart {
            background: var(--accent);
            border: none;
            padding: 10px;
            border-radius: 60px;
            font-weight: 600;
            color: white;
            width: 100%;
            transition: var(--transition);
        }

        /* flash sale premium */
        .flash-sale {
            background: linear-gradient(125deg, #0b1e32 0%, #1a2a44 100%);
            border-radius: 40px;
            padding: 0;
            overflow: hidden;
            display: flex;
            flex-wrap: wrap;
        }
        .sale-content {
            flex: 1;
            padding: 48px 44px;
            color: white;
        }
        .timer-group {
            display: flex;
            gap: 16px;
            margin: 28px 0;
        }
        .time-card {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(8px);
            padding: 16px 14px;
            border-radius: 20px;
            text-align: center;
            min-width: 80px;
        }
        /* testimonials */
        .testimonial-slider {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding-bottom: 12px;
        }
        .testimonial-card {
            background: white;
            border-radius: 28px;
            padding: 28px;
            min-width: 320px;
            box-shadow: var(--shadow-md);
            border: 1px solid var(--border-light);
        }

        /* newsletter modern */
        .newsletter-modern {
            background: var(--accent-soft);
            border-radius: 48px;
            padding: 56px 40px;
            text-align: center;
        }

        footer {
            margin-top: 64px;
            padding: 48px 0 32px;
            background: #0b1e32;
            color: #cdd9ff;
        }
        @media (max-width: 900px) {
            .hero-content { flex-direction: column; text-align: center; }
            .nav-links { display: none; }
            .container { padding: 0 20px; }
            .hero-text h1 { font-size: 2.3rem; }
        }
        .toast-notif {
            position: fixed;
            bottom: 24px;
            right: 24px;
            background: #1f2937;
            color: white;
            padding: 12px 24px;
            border-radius: 60px;
            font-weight: 500;
            z-index: 1000;
            backdrop-filter: blur(8px);
            animation: fadeUp 0.3s ease;
        }
        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        button { cursor: pointer; }
        .mobile-menu-btn { display: none; background: none; border: none; font-size: 1.8rem; }
        @media (max-width: 900px) {
            .mobile-menu-btn { display: block; }
            .search-wrapper input { width: 140px; }
        }
    </style>
</head>
<body>

<header class="glass-header">
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 18px;">
            <button class="mobile-menu-btn" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            <div class="logo">Nexus<span>Shop</span></div>
        </div>
        <div class="nav-links" id="desktopNav">
            <a href="#" class="active">Home</a>
            <a href="#products">Shop</a>
            <a href="#deals">Flash Sale</a>
            <a href="#">Collections</a>
            <a href="#">Insights</a>
        </div>
        <div style="display: flex; gap: 12px; align-items: center;">
            <div class="search-wrapper">
                <i class="fas fa-search" style="color: var(--text-muted);"></i>
                <input type="text" id="searchInput" placeholder="Search products...">
            </div>
            <div class="cart-icon" id="cartBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>
    <!-- mobile nav drawer -->
    <div id="mobileDrawer" style="display: none; background: white; border-top: 1px solid var(--border-light); padding: 18px 24px;">
        <div style="display: flex; flex-direction: column; gap: 16px;">
            <a href="#">Home</a><a href="#products">Shop</a><a href="#deals">Flash Sale</a><a href="#">Collections</a>
        </div>
    </div>
</header>

<main>
    <!-- Hero revamped -->
    <section class="hero-modern">
        <div class="container hero-content">
            <div class="hero-text">
                <div class="badge-new"><i class="fas fa-bolt"></i> Limited Edition Drops</div>
                <h1>Style meets <br>innovation.</h1>
                <p style="font-size: 1.2rem; color: var(--text-secondary); max-width: 500px; margin: 20px 0;">Discover curated tech, fashion & lifestyle — powered by next‑gen commerce.</p>
                <button class="btn-gradient" id="exploreBtn"><i class="fas fa-arrow-right"></i> Explore collections</button>
                <div class="hero-stat">
                    <div><strong>2k+</strong><p>Products</p></div>
                    <div><strong>98%</strong><p>Customer joy</p></div>
                    <div><strong>24/7</strong><p>Support</p></div>
                </div>
            </div>
            <div style="flex:1; display: flex; justify-content: center;">
                <div style="background: var(--accent-gradient); width: 280px; height: 280px; border-radius: 50%; filter: blur(60px); opacity: 0.3; position: absolute; right: 5%;"></div>
                <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=800&q=80" alt="hero visual" style="max-width: 100%; border-radius: 40px; box-shadow: var(--shadow-lg); width: 380px; object-fit: cover;">
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section class="container" style="margin: 60px auto;">
        <div style="text-align: center; margin-bottom: 32px;">
            <h2 class="section-title">Shop by Category</h2>
            <p style="color: var(--text-muted)">Curated selections for every passion</p>
        </div>
        <div class="categories-grid" id="categoriesContainer"></div>
    </section>

    <!-- Products Section -->
    <section id="products" class="container" style="margin: 60px auto;">
        <div style="display: flex; justify-content: space-between; align-items: baseline; margin-bottom: 32px;">
            <div><h2 class="section-title">Trending Now 🔥</h2></div>
            <div><span style="color: var(--accent); font-weight: 500;">View all <i class="fas fa-arrow-right"></i></span></div>
        </div>
        <div class="products-grid" id="productsGrid"></div>
    </section>

    <!-- Flash Sale Premium -->
    <section id="deals" class="container" style="margin: 70px auto;">
        <div class="flash-sale">
            <div class="sale-content">
                <span style="background: #ef4444; padding: 4px 12px; border-radius: 30px; font-size: 0.8rem;">🔥 FLASH SALE</span>
                <h2 style="font-size: 2.5rem; margin: 16px 0;">MacBook Air M2</h2>
                <p>Lightning‑fast, next‑gen performance.</p>
                <div class="timer-group">
                    <div class="time-card"><span style="font-size: 2rem; font-weight: 700;" id="days">00</span><br>Days</div>
                    <div class="time-card"><span style="font-size: 2rem; font-weight: 700;" id="hours">00</span><br>Hours</div>
                    <div class="time-card"><span style="font-size: 2rem; font-weight: 700;" id="minutes">00</span><br>Mins</div>
                    <div class="time-card"><span style="font-size: 2rem; font-weight: 700;" id="seconds">00</span><br>Secs</div>
                </div>
                <div style="display: flex; gap: 12px; align-items: baseline;">
                    <span class="price" style="font-size: 2rem;">$999</span>
                    <span style="text-decoration: line-through; opacity: 0.7;">$1,299</span>
                    <span style="background: #ef4444; padding: 4px 14px; border-radius: 60px;">-23%</span>
                </div>
                <button class="btn-gradient" id="flashDealBtn" style="margin-top: 24px;"><i class="fas fa-bolt"></i> Add to cart</button>
            </div>
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80" style="width: 45%; object-fit: cover;" alt="macbook">
        </div>
    </section>

    <!-- Testimonials -->
    <section class="container" style="margin: 70px auto;">
        <div style="text-align: center;"><h2 class="section-title">Loved by shoppers</h2><p>Real feedback from our community</p></div>
        <div class="testimonial-slider" id="testimonialsContainer">
            <div class="testimonial-card"><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p style="margin: 12px 0;">"Incredible quality and fast shipping! Will order again."</p><strong>- Emma W.</strong></div>
            <div class="testimonial-card"><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p>"The UI and experience is next-level. Best purchase."</p><strong>- Daniel K.</strong></div>
            <div class="testimonial-card"><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p>"Flash sale deals are insane. 10/10 recommend NexusShop"</p><strong>- Sophia L.</strong></div>
        </div>
    </section>

    <!-- Newsletter Modern -->
    <section class="container" style="margin: 40px auto 60px;">
        <div class="newsletter-modern">
            <h3 style="font-size: 1.8rem;">Exclusive offers ✨</h3>
            <p>Subscribe and get 15% off your first order + early access.</p>
            <div style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; margin-top: 24px;">
                <input type="email" id="newsEmail" placeholder="Your email address" style="padding: 14px 24px; border-radius: 80px; border: none; width: 320px;">
                <button class="btn-gradient" id="subscribeAction">Subscribe <i class="fas fa-paper-plane"></i></button>
            </div>
            <div id="newsMsg" style="margin-top: 16px;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div><div class="logo" style="color: white;">Nexus<span style="color: var(--accent);">Shop</span></div><p style="margin-top: 12px;">The future of digital commerce.</p></div>
        <div><h4>Support</h4><p>Help Center<br>Returns<br>Contact</p></div>
        <div><h4>Legal</h4><p>Privacy Policy<br>Terms of Use</p></div>
    </div>
    <div style="text-align: center; margin-top: 48px;">© 2026 NexusShop — Elevating e‑commerce</div>
</footer>

<script>
    // ----------------------------------------------
    // Enhanced Data + Cart + Interactions
    // ----------------------------------------------
    const categories = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen-button' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Fashion', icon: 'fa-vest' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-gem' }
    ];

    const products = [
        { id: 101, title: "iPhone 15 Pro", price: 1099, oldPrice: 1199, rating: 5, img: "https://images.unsplash.com/photo-1696446701796-612f10ff7d4c?auto=format&fit=crop&w=600&q=80", category: "phones" },
        { id: 102, title: "MacBook Pro M3", price: 1899, oldPrice: 1999, rating: 5, img: "https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=600&q=80", category: "laptops" },
        { id: 103, title: "Sony WH-1000XM5", price: 349, rating: 4.9, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "audio" },
        { id: 104, title: "Nike Air Max Pulse", price: 159, oldPrice: 199, rating: 4.8, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80", category: "clothing" },
        { id: 105, title: "PS5 DualSense Edge", price: 199, rating: 4.7, img: "https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?auto=format&fit=crop&w=600&q=80", category: "gaming" },
        { id: 106, title: "Samsung Galaxy Watch6", price: 299, oldPrice: 379, rating: 4.6, img: "https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80", category: "accessories" }
    ];

    let cartItems = [];

    // Render categories
    function renderCategories() {
        const container = document.getElementById('categoriesContainer');
        container.innerHTML = categories.map(cat => `
            <div class="category-card" data-cat="${cat.name}">
                <div class="category-icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <p style="font-size:13px; color:var(--text-muted);">Explore now →</p>
            </div>
        `).join('');
        document.querySelectorAll('.category-card').forEach(card => {
            card.addEventListener('click', () => {
                const catName = card.dataset.cat;
                document.getElementById('searchInput').value = catName;
                filterProducts(catName);
            });
        });
    }

    function renderProducts(list) {
        const grid = document.getElementById('productsGrid');
        grid.innerHTML = list.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.title}">
                <div class="product-info">
                    <div style="display: flex; justify-content: space-between;"><strong>${p.title}</strong> ${p.rating ? '⭐'+p.rating : ''}</div>
                    <div class="price-row" style="margin: 8px 0;"><span class="price">$${p.price}</span> ${p.oldPrice ? `<span style="text-decoration:line-through; color:gray;">$${p.oldPrice}</span>` : ''}</div>
                    <button class="add-to-cart" data-id="${p.id}"><i class="fas fa-shopping-cart"></i> Add to cart</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-to-cart').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCartById(id);
            });
        });
    }

    function addToCartById(id) {
        const product = products.find(p => p.id === id);
        if(product) {
            cartItems.push(product);
            updateCartUI();
            showToast(`✨ ${product.title} added to cart`);
        }
    }

    function updateCartUI() {
        document.getElementById('cartCount').innerText = cartItems.length;
    }

    function showToast(msg) {
        let existing = document.querySelector('.toast-notif');
        if(existing) existing.remove();
        const toast = document.createElement('div');
        toast.className = 'toast-notif';
        toast.innerHTML = `<i class="fas fa-check-circle"></i> ${msg}`;
        document.body.appendChild(toast);
        setTimeout(() => toast.remove(), 2200);
    }

    function filterProducts(query) {
        const q = query.toLowerCase().trim();
        if(!q) return renderProducts(products);
        const filtered = products.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        renderProducts(filtered);
    }

    // Search Events
    const searchInput = document.getElementById('searchInput');
    document.querySelector('.search-wrapper i.fa-search').parentElement?.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keyup', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });

    // Countdown Timer for Flash Sale (ends in 2 days 5 hours)
    function initTimer() {
        const target = new Date();
        target.setDate(target.getDate() + 1);
        target.setHours(target.getHours() + 18);
        function update() {
            const diff = target - new Date();
            if(diff <= 0) { clearInterval(timerInt); return; }
            document.getElementById('days').innerText = Math.floor(diff / (1000*60*60*24));
            document.getElementById('hours').innerText = Math.floor((diff % (86400000)) / 3600000).toString().padStart(2,'0');
            document.getElementById('minutes').innerText = Math.floor((diff % 3600000) / 60000).toString().padStart(2,'0');
            document.getElementById('seconds').innerText = Math.floor((diff % 60000) / 1000).toString().padStart(2,'0');
        }
        update();
        const timerInt = setInterval(update, 1000);
    }
    initTimer();

    // Flash sale add to cart
    document.getElementById('flashDealBtn').addEventListener('click', () => {
        const mac = { id: 202, title: "MacBook Air M2", price: 999 };
        cartItems.push(mac);
        updateCartUI();
        showToast("🔥 MacBook Air added to cart!");
    });

    // Newsletter
    document.getElementById('subscribeAction').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if(email.includes('@') && email.includes('.')) {
            msgDiv.innerHTML = '<span style="color:green;">✔️ Thanks! You’re now on the list.</span>';
            document.getElementById('newsEmail').value = '';
            setTimeout(()=> msgDiv.innerHTML = '', 3000);
        } else {
            msgDiv.innerHTML = '<span style="color:#e11d48;">Please enter a valid email.</span>';
        }
    });

    // Explore button scroll to products
    document.getElementById('exploreBtn').addEventListener('click', () => {
        document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
    });

    // Cart drawer demo
    document.getElementById('cartBtn').addEventListener('click', () => {
        if(cartItems.length === 0) showToast("Your cart is empty 🛍️");
        else showToast(`Cart contains ${cartItems.length} item(s). Checkout soon!`);
    });

    // Mobile menu
    const mobileBtn = document.getElementById('mobileMenuBtn');
    const drawer = document.getElementById('mobileDrawer');
    mobileBtn.addEventListener('click', () => {
        drawer.style.display = drawer.style.display === 'none' || !drawer.style.display ? 'block' : 'none';
    });

    // initial render
    renderCategories();
    renderProducts(products);
    updateCartUI();

    // category filter from product buttons
</script>
</body>
</html>
