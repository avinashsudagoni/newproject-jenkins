<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop · Premium</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
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
            --pink: #ec4899;
            --amber: #f59e0b;
            --emerald: #10b981;
            --muted: #64748b;
            --border: rgba(15, 23, 42, 0.08);
            --shadow: 0 20px 35px -8px rgba(15, 23, 42, 0.08);
            --shadow-lg: 0 30px 60px -12px rgba(15, 23, 42, 0.15);
            --gradient-primary: linear-gradient(135deg, #0ea5e9, #8b5cf6);
            --gradient-warm: linear-gradient(135deg, #ec4899, #f59e0b);
            --gradient-cool: linear-gradient(135deg, #10b981, #0ea5e9);
        }

        html {
            scroll-behavior: smooth;
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
            overflow-x: hidden;
        }

        /* ========== SCROLL PROGRESS BAR ========== */
        .scroll-progress {
            position: fixed;
            top: 0;
            left: 0;
            height: 3px;
            background: var(--gradient-primary);
            width: 0%;
            z-index: 1000;
            transition: width 0.1s linear;
            box-shadow: 0 0 10px rgba(14, 165, 233, 0.6);
        }

        /* ========== NAVBAR ========== */
        .navbar {
            padding: 1.2rem 3rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border);
            position: sticky;
            top: 0;
            z-index: 100;
            transition: padding 0.3s ease, box-shadow 0.3s ease;
        }

        .navbar.scrolled {
            padding: 0.8rem 3rem;
            box-shadow: 0 10px 30px -10px rgba(15, 23, 42, 0.1);
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
            cursor: pointer;
        }

        .logo i {
            color: var(--secondary);
            font-size: 1.8rem;
            transition: transform 0.6s cubic-bezier(0.34, 1.56, 0.64, 1);
        }

        .logo:hover i {
            transform: rotate(180deg) scale(1.1);
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
            position: relative;
            padding: 0.3rem 0;
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--gradient-primary);
            transition: width 0.3s ease;
            border-radius: 2px;
        }

        .nav-links a:hover {
            color: var(--secondary);
        }

        .nav-links a:hover::after {
            width: 100%;
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
            transition: all 0.3s ease;
            padding: 0.5rem;
            border-radius: 50%;
        }

        .nav-actions i:hover {
            color: var(--secondary);
            background: rgba(14, 165, 233, 0.1);
            transform: translateY(-2px);
        }

        .cart-badge {
            position: relative;
            cursor: pointer;
        }

        .cart-badge span {
            position: absolute;
            top: -2px;
            right: -4px;
            background: var(--gradient-warm);
            color: white;
            font-size: 0.65rem;
            font-weight: 700;
            width: 20px;
            height: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            box-shadow: 0 4px 10px rgba(236, 72, 153, 0.4);
            animation: pulse-badge 2s infinite;
        }

        @keyframes pulse-badge {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.15); }
        }

        /* ========== HERO ========== */
        .hero {
            padding: 3rem 3rem 5rem;
            display: flex;
            align-items: center;
            gap: 3rem;
            max-width: 1400px;
            margin: 0 auto;
            width: 100%;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            flex: 1;
            animation: slideInLeft 1s cubic-bezier(0.16, 1, 0.3, 1) forwards;
            opacity: 0;
        }

        @keyframes slideInLeft {
            from { opacity: 0; transform: translateX(-60px); }
            to { opacity: 1; transform: translateX(0); }
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            background: rgba(14, 165, 233, 0.1);
            color: var(--secondary);
            font-weight: 600;
            font-size: 0.8rem;
            letter-spacing: 0.05em;
            text-transform: uppercase;
            padding: 0.5rem 1.2rem;
            border-radius: 100px;
            margin-bottom: 1.5rem;
            animation: float 3s ease-in-out infinite;
        }

        .hero-tag i {
            font-size: 0.7rem;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-6px); }
        }

        .hero-content h1 {
            font-size: 4rem;
            font-weight: 900;
            line-height: 1.1;
            letter-spacing: -0.04em;
            margin-bottom: 1.5rem;
        }

        .hero-content h1 span {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            background-size: 200% 200%;
            animation: gradientShift 4s ease infinite;
        }

        @keyframes gradientShift {
            0%, 100% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
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
            transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 0.6rem;
            letter-spacing: -0.01em;
            position: relative;
            overflow: hidden;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
            box-shadow: 0 12px 20px -8px rgba(15, 23, 42, 0.25);
        }

        .btn-primary::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: var(--gradient-primary);
            transition: left 0.4s ease;
            z-index: -1;
        }

        .btn-primary:hover {
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 20px 30px -10px rgba(14, 165, 233, 0.4);
        }

        .btn-primary:hover::before {
            left: 0;
        }

        .btn-outline {
            background: transparent;
            color: var(--primary);
            border: 1.5px solid var(--border);
        }

        .btn-outline:hover {
            border-color: var(--secondary);
            color: var(--secondary);
            background: rgba(14, 165, 233, 0.05);
            transform: translateY(-3px);
        }

        /* ========== HERO VISUAL ========== */
        .hero-visual {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            animation: slideInRight 1s cubic-bezier(0.16, 1, 0.3, 1) 0.2s forwards;
            opacity: 0;
        }

        @keyframes slideInRight {
            from { opacity: 0; transform: translateX(60px); }
            to { opacity: 1; transform: translateX(0); }
        }

        .hero-visual .glow {
            position: absolute;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(139, 92, 246, 0.25) 0%, rgba(14, 165, 233, 0.15) 50%, transparent 75%);
            border-radius: 50%;
            filter: blur(70px);
            z-index: 0;
            animation: glowPulse 5s ease-in-out infinite;
        }

        @keyframes glowPulse {
            0%, 100% { transform: scale(1); opacity: 0.8; }
            50% { transform: scale(1.2); opacity: 1; }
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
            max-width: 400px;
            transition: all 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
            animation: cardFloat 6s ease-in-out infinite;
        }

        @keyframes cardFloat {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-12px); }
        }

        .product-card:hover {
            animation-play-state: paused;
            transform: translateY(-15px) scale(1.02);
            box-shadow: var(--shadow-lg);
        }

        .product-image {
            border-radius: 28px;
            height: 280px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            position: relative;
            overflow: hidden;
            background: #f1f5f9;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.34, 1.56, 0.64, 1);
        }

        .product-card:hover .product-image img {
            transform: scale(1.1) rotate(2deg);
        }

        .badge-new {
            position: absolute;
            top: 1rem;
            left: 1rem;
            background: var(--gradient-warm);
            color: white;
            font-size: 0.7rem;
            font-weight: 700;
            padding: 0.4rem 1rem;
            border-radius: 100px;
            letter-spacing: 0.03em;
            text-transform: uppercase;
            box-shadow: 0 8px 20px rgba(236, 72, 153, 0.35);
            z-index: 2;
            animation: badgePulse 2.5s infinite;
        }

        @keyframes badgePulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.08); }
        }

        .wishlist-btn {
            position: absolute;
            top: 1rem;
            right: 1rem;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.95);
            border: none;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            z-index: 2;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(15, 23, 42, 0.1);
        }

        .wishlist-btn i {
            font-size: 1rem;
            color: var(--muted);
            transition: all 0.3s ease;
        }

        .wishlist-btn:hover {
            transform: scale(1.15);
            background: white;
        }

        .wishlist-btn.active i {
            color: #ef4444;
            animation: heartBeat 0.6s ease;
        }

        @keyframes heartBeat {
            0%, 100% { transform: scale(1); }
            25% { transform: scale(1.3); }
            50% { transform: scale(1); }
            75% { transform: scale(1.2); }
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
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .btn-add::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: var(--gradient-primary);
            transition: left 0.4s ease;
            z-index: 0;
        }

        .btn-add span, .btn-add i {
            position: relative;
            z-index: 1;
        }

        .btn-add:hover::before {
            left: 0;
        }

        .btn-add:active {
            transform: scale(0.97);
        }

        /* ========== STATS ========== */
        .stats {
            display: flex;
            justify-content: center;
            gap: 5rem;
            padding: 3rem 3rem;
            background: var(--surface);
            border-top: 1px solid var(--border);
            border-bottom: 1px solid var(--border);
            flex-wrap: wrap;
            position: relative;
            overflow: hidden;
        }

        .stats::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(14, 165, 233, 0.05), transparent);
            animation: shimmer 4s infinite;
        }

        @keyframes shimmer {
            0% { left: -100%; }
            100% { left: 100%; }
        }

        .stat-item {
            text-align: center;
            position: relative;
            z-index: 1;
            transition: transform 0.3s ease;
        }

        .stat-item:hover {
            transform: translateY(-5px);
        }

        .stat-item .number {
            font-size: 2.5rem;
            font-weight: 900;
            letter-spacing: -0.03em;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .stat-item .label {
            color: var(--muted);
            font-size: 0.95rem;
            font-weight: 500;
        }

        /* ========== FEATURES ========== */
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
            font-weight: 900;
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
            transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
            position: relative;
            overflow: hidden;
            cursor: pointer;
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: var(--gradient-primary);
            transform: scaleX(0);
            transform-origin: left;
            transition: transform 0.4s ease;
        }

        .feature-card:hover::before {
            transform: scaleX(1);
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-lg);
            border-color: transparent;
        }

        .feature-icon {
            width: 64px;
            height: 64px;
            border-radius: 20px;
            background: rgba(14, 165, 233, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            transition: all 0.4s ease;
        }

        .feature-card:hover .feature-icon {
            transform: rotate(-8deg) scale(1.1);
        }

        .feature-icon i {
            font-size: 1.8rem;
            color: var(--secondary);
            transition: transform 0.4s ease;
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
            color: var(--emerald);
        }

        .feature-card:nth-child(4) .feature-icon {
            background: rgba(245, 158, 11, 0.1);
        }

        .feature-card:nth-child(4) .feature-icon i {
            color: var(--amber);
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

        /* ========== PRODUCTS GRID ========== */
        .products-section {
            padding: 5rem 3rem;
            background: var(--surface);
            border-top: 1px solid var(--border);
            border-bottom: 1px solid var(--border);
        }

        .products-container {
            max-width: 1400px;
            margin: 0 auto;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .product-item {
            background: var(--bg);
            border-radius: 32px;
            padding: 1.5rem;
            border: 1px solid var(--border);
            transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
            cursor: pointer;
            position: relative;
            overflow: hidden;
        }

        .product-item:hover {
            transform: translateY(-12px);
            box-shadow: var(--shadow-lg);
            border-color: transparent;
        }

        .product-item-image {
            border-radius: 24px;
            height: 220px;
            overflow: hidden;
            margin-bottom: 1.2rem;
            position: relative;
            background: #f1f5f9;
        }

        .product-item-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.34, 1.56, 0.64, 1);
        }

        .product-item:hover .product-item-image img {
            transform: scale(1.15);
        }

        .product-item-image .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(15, 23, 42, 0.5);
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0;
            transition: opacity 0.4s ease;
        }

        .product-item:hover .product-item-image .overlay {
            opacity: 1;
        }

        .overlay-btn {
            padding: 0.7rem 1.5rem;
            border-radius: 60px;
            background: white;
            color: var(--primary);
            border: none;
            font-weight: 600;
            font-size: 0.85rem;
            cursor: pointer;
            transform: translateY(20px);
            transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
            display: flex;
            align-items: center;
            gap: 0.4rem;
        }

        .product-item:hover .overlay-btn {
            transform: translateY(0);
        }

        .overlay-btn:hover {
            background: var(--secondary);
            color: white;
        }

        .product-item h4 {
            font-size: 1.1rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 0.3rem;
        }

        .product-item .item-category {
            color: var(--muted);
            font-size: 0.85rem;
            margin-bottom: 0.8rem;
        }

        .product-item .item-footer {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .product-item .item-price {
            font-size: 1.3rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .product-item .item-rating {
            display: flex;
            align-items: center;
            gap: 0.2rem;
            color: #fbbf24;
            font-size: 0.8rem;
        }

        .product-item .item-rating span {
            color: var(--muted);
            margin-left: 0.2rem;
        }

        /* ========== CTA ========== */
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
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(14, 165, 233, 0.25) 0%, transparent 70%);
            border-radius: 50%;
            animation: ctaGlow 6s ease-in-out infinite;
        }

        @keyframes ctaGlow {
            0%, 100% { transform: scale(1) translate(0, 0); }
            50% { transform: scale(1.2) translate(-20px, 20px); }
        }

        .cta-content {
            position: relative;
            z-index: 1;
            flex: 2;
        }

        .cta-content h2 {
            font-size: 2.4rem;
            font-weight: 900;
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
            transition: all 0.3s ease;
            white-space: nowrap;
            font-family: 'Inter', sans-serif;
        }

        .cta-form button:hover {
            background: #0284c7;
            transform: scale(1.05);
        }

        /* ========== TOAST NOTIFICATION ========== */
        .toast {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: var(--surface);
            padding: 1rem 1.5rem;
            border-radius: 16px;
            box-shadow: var(--shadow-lg);
            border-left: 4px solid var(--emerald);
            display: flex;
            align-items: center;
            gap: 0.8rem;
            transform: translateX(400px);
            transition: transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
            z-index: 2000;
            font-weight: 500;
            font-size: 0.9rem;
        }

        .toast.show {
            transform: translateX(0);
        }

        .toast i {
            color: var(--emerald);
            font-size: 1.2rem;
        }

        /* ========== FOOTER ========== */
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
            transition: all 0.3s ease;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: var(--bg);
        }

        .social-icons a:hover {
            color: white;
            background: var(--gradient-primary);
            transform: translateY(-4px);
        }

        /* ========== SCROLL REVEAL ========== */
        .reveal {
            opacity: 0;
            transform: translateY(40px);
            transition: all 0.8s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .reveal.visible {
            opacity: 1;
            transform: translateY(0);
        }

        /* ========== RESPONSIVE ========== */
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

            .features, .products-section {
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

            .toast {
                right: 15px;
                left: 15px;
                bottom: 15px;
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
                height
