<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · Premium Experience</title>
  
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

  <style>
    *, *::before, *::after {
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
      --shadow-sm: 0 10px 25px -5px rgba(15, 23, 42, 0.05);
      --shadow-lg: 0 25px 50px -12px rgba(15, 23, 42, 0.12);
      --gradient-primary: linear-gradient(135deg, #0ea5e9, #8b5cf6);
      --gradient-warm: linear-gradient(135deg, #ec4899, #f59e0b);
      --radius-lg: 24px;
      --radius-sm: 12px;
    }

    body {
      font-family: 'Plus Jakarta Sans', sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.6;
      overflow-x: hidden;
    }

    /* Scroll progress bar */
    #progress-bar {
      position: fixed;
      top: 0;
      left: 0;
      height: 3px;
      background: var(--gradient-primary);
      width: 0%;
      z-index: 1000;
      transition: width 0.1s linear;
    }

    /* Navigation */
    .navbar {
      position: sticky;
      top: 0;
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(16px);
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 1.1rem 4rem;
      border-bottom: 1px solid var(--border);
      z-index: 100;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 0.6rem;
      font-weight: 800;
      font-size: 1.4rem;
      color: var(--primary);
      text-decoration: none;
    }

    .logo i {
      background: var(--gradient-primary);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    .search-box {
      display: flex;
      align-items: center;
      background: #f1f5f9;
      border-radius: 999px;
      padding: 0.5rem 1.2rem;
      width: 320px;
      gap: 0.6rem;
    }

    .search-box input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      font-family: inherit;
      font-size: 0.9rem;
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 1.2rem;
    }

    .cart-trigger {
      position: relative;
      cursor: pointer;
      padding: 0.6rem;
      border-radius: 50%;
      background: #f1f5f9;
      transition: transform 0.2s ease;
    }

    .cart-trigger:hover {
      transform: translateY(-2px);
    }

    .cart-counter {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #ef4444;
      color: #fff;
      font-size: 0.7rem;
      font-weight: 700;
      border-radius: 50%;
      width: 20px;
      height: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    /* Hero Section */
    .hero {
      max-width: 1300px;
      margin: 2rem auto;
      padding: 4rem 2rem;
      display: grid;
      grid-template-columns: 1.2fr 1fr;
      align-items: center;
      gap: 3rem;
    }

    .badge {
      display: inline-block;
      padding: 0.4rem 1rem;
      border-radius: 999px;
      background: rgba(14, 165, 233, 0.1);
      color: var(--secondary);
      font-weight: 700;
      font-size: 0.8rem;
      text-transform: uppercase;
      letter-spacing: 0.05em;
      margin-bottom: 1.2rem;
    }

    .hero h1 {
      font-size: 3.5rem;
      line-height: 1.15;
      font-weight: 800;
      letter-spacing: -0.03em;
      margin-bottom: 1.5rem;
    }

    .hero h1 span {
      background: var(--gradient-primary);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    .hero p {
      color: var(--muted);
      font-size: 1.1rem;
      margin-bottom: 2rem;
    }

    .hero-banner {
      width: 100%;
      height: 420px;
      border-radius: var(--radius-lg);
      background: radial-gradient(circle at center, #ede9fe 0%, #e0f2fe 100%);
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: var(--shadow-lg);
      position: relative;
      overflow: hidden;
    }

    .hero-banner img {
      width: 75%;
      height: 75%;
      object-fit: contain;
      filter: drop-shadow(0 20px 25px rgba(0,0,0,0.15));
      transition: transform 0.4s ease;
    }

    .hero-banner:hover img {
      transform: scale(1.05) rotate(-2deg);
    }

    /* Catalog Section */
    .catalog-section {
      max-width: 1300px;
      margin: 0 auto;
      padding: 2rem 2rem 5rem;
    }

    .filters-bar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 2.5rem;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .category-chips {
      display: flex;
      gap: 0.6rem;
      flex-wrap: wrap;
    }

    .chip {
      border: 1px solid var(--border);
      background: var(--surface);
      padding: 0.5rem 1.2rem;
      border-radius: 999px;
      cursor: pointer;
      font-size: 0.9rem;
      font-weight: 600;
      color: var(--muted);
      transition: all 0.2s ease;
    }

    .chip.active, .chip:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 2rem;
    }

    .card {
      background: var(--surface);
      border-radius: var(--radius-lg);
      padding: 1.2rem;
      border: 1px solid var(--border);
      box-shadow: var(--shadow-sm);
      display: flex;
      flex-direction: column;
      position: relative;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-lg);
    }

    .card-thumb {
      height: 200px;
      border-radius: var(--radius-sm);
      background: #f8fafc;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      overflow: hidden;
      margin-bottom: 1rem;
    }

    .card-thumb img {
      width: 70%;
      height: 70%;
      object-fit: contain;
      transition: transform 0.3s ease;
    }

    .card:hover .card-thumb img {
      transform: scale(1.08);
    }

    .btn-wishlist {
      position: absolute;
      top: 10px;
      right: 10px;
      background: #fff;
      border: none;
      width: 34px;
      height: 34px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      box-shadow: 0 4px 10px rgba(0,0,0,0.08);
      color: var(--muted);
      transition: color 0.2s ease;
    }

    .btn-wishlist.active {
      color: #ef4444;
    }

    .card-category {
      font-size: 0.75rem;
      text-transform: uppercase;
      letter-spacing: 0.05em;
      color: var(--muted);
      font-weight: 700;
    }

    .card-title {
      font-size: 1.05rem;
      font-weight: 700;
      margin: 0.3rem 0;
    }

    .card-rating {
      color: #f59e0b;
      font-size: 0.8rem;
      display: flex;
      align-items: center;
      gap: 0.3rem;
      margin-bottom: 1rem;
    }

    .card-footer {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: auto;
    }

    .price {
      font-size: 1.25rem;
      font-weight: 800;
    }

    .btn-add {
      background: var(--primary);
      color: #fff;
      border: none;
      padding: 0.6rem 1rem;
      border-radius: 999px;
      cursor: pointer;
      font-weight: 600;
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      gap: 0.4rem;
      transition: background 0.2s ease;
    }

    .btn-add:hover {
      background: var(--secondary);
    }

    /* Slide-out Cart */
    .cart-drawer-backdrop {
      position: fixed;
      inset: 0;
      background: rgba(15, 23, 42, 0.4);
      backdrop-filter: blur(4px);
      z-index: 500;
      opacity: 0;
      pointer-events: none;
      transition: opacity 0.3s ease;
    }

    .cart-drawer-backdrop.active {
      opacity: 1;
      pointer-events: auto;
    }

    .cart-drawer {
      position: fixed;
      top: 0;
      right: 0;
      width: 100%;
      max-width: 420px;
      height: 100vh;
      background: #fff;
      z-index: 501;
      transform: translateX(100%);
      transition: transform 0.3s cubic-bezier(0.16, 1, 0.3, 1);
      display: flex;
      flex-direction: column;
    }

    .cart-drawer.active {
      transform: translateX(0);
    }

    .cart-header {
      padding: 1.5rem;
      border-bottom: 1px solid var(--border);
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .cart-items {
      flex: 1;
      overflow-y: auto;
      padding: 1.5rem;
      display: flex;
      flex-direction: column;
      gap: 1rem;
    }

    .cart-item {
      display: flex;
      gap: 1rem;
      border-bottom: 1px solid var(--border);
      padding-bottom: 1rem;
      align-items: center;
    }

    .cart-item-thumb {
      width: 60px;
      height: 60px;
      background: #f8fafc;
      border-radius: var(--radius-sm);
      display: flex;
      align-items: center;
      justify-content: center;
      flex-shrink: 0;
    }

    .cart-item-thumb img {
      width: 80%;
      height: 80%;
      object-fit: contain;
    }

    .cart-item-info {
      flex: 1;
    }

    .cart-item-title {
      font-size: 0.95rem;
      font-weight: 700;
    }

    .cart-item-price {
      font-size: 0.85rem;
      color: var(--muted);
    }

    .cart-item-qty {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      margin-top: 0.4rem;
    }

    .qty-btn {
      width: 24px;
      height: 24px;
      border: 1px solid var(--border);
      background: transparent;
      border-radius: 4px;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
    }

    .cart-footer {
      padding: 1.5rem;
      border-top: 1px solid var(--border);
      background: #fafafa;
    }

    .cart-total-row {
      display: flex;
      justify-content: space-between;
      font-size: 1.1rem;
      font-weight: 800;
      margin-bottom: 1rem;
    }

    .btn-checkout {
      width: 100%;
      padding: 0.9rem;
      background: var(--primary);
      color: #fff;
      border: none;
      border-radius: 999px;
      font-weight: 700;
      font-size: 1rem;
      cursor: pointer;
      transition: background 0.2s ease;
    }

    .btn-checkout:hover {
      background: var(--secondary);
    }

    /* Toast Notification */
    .toast {
      position: fixed;
      bottom: 2rem;
      right: 2rem;
      background: var(--primary);
      color: #fff;
      padding: 0.8rem 1.4rem;
      border-radius: 999px;
      display: flex;
      align-items: center;
      gap: 0.6rem;
      box-shadow: var(--shadow-lg);
      transform: translateY(120%);
      opacity: 0;
      transition: all 0.3s ease;
      z-index: 1000;
    }

    .toast.show {
      transform: translateY(0);
      opacity: 1;
    }

    /* Responsive */
    @media (max-width: 900px) {
      .navbar { padding: 1rem 1.5rem; }
      .search-box { display: none; }
      .hero { grid-template-columns: 1fr; text-align: center; }
      .hero-banner { height: 300px; }
      .filters-bar { flex-direction: column; align-items: flex-start; }
    }
  </style>
</head>
<body>

  <div id="progress-bar"></div>

  <!-- Navbar -->
  <nav class="navbar">
    <a href="#" class="logo">
      <i class="fa-solid fa-cube"></i> NexusShop
    </a>
    <div class="search-box">
      <i class="fa-solid fa-magnifying-glass" style="color: var(--muted)"></i>
      <input type="text" id="searchInput" placeholder="Search gear, audio, gadgets..." oninput="handleSearch()">
    </div>
    <div class="nav-actions">
      <div class="cart-trigger" onclick="toggleCart(true)">
        <i class="fa-solid fa-bag-shopping"></i>
        <div class="cart-counter" id="cartCount">0</div>
      </div>
    </div>
  </nav>

  <!-- Hero Section -->
  <header class="hero">
    <div>
      <span class="badge">Next Generation Devices</span>
      <h1>Engineered for <span>Peak Utility</span></h1>
      <p>Precision acoustics, seamless connectivity, and high-performance tactile interfaces built for discerning daily use.</p>
    </div>
    <div class="hero-banner">
      <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=80" alt="Hero Product" />
    </div>
  </header>

  <!-- Catalog Section -->
  <main class="catalog-section">
    <div class="filters-bar">
      <div class="category-chips">
        <button class="chip active" onclick="filterCategory('All', this)">All</button>
        <button class="chip" onclick="filterCategory('Audio', this)">Audio</button>
        <button class="chip" onclick="filterCategory('Wearables', this)">Wearables</button>
        <button class="chip" onclick="filterCategory('Peripherals', this)">Peripherals</button>
      </div>
      <div style="font-size: 0.9rem; color: var(--muted);" id="resultsCount">Showing 6 products</div>
    </div>

    <div class="product-grid" id="productGrid"></div>
  </main>

  <!-- Cart Slide-Over -->
  <div class="cart-drawer-backdrop" id="cartBackdrop" onclick="toggleCart(false)"></div>
  <aside class="cart-drawer" id="cartDrawer">
    <div class="cart-header">
      <h3>Your Bag</h3>
      <button onclick="toggleCart(false)" style="background: none; border: none; font-size: 1.4rem; cursor: pointer;">&times;</button>
    </div>
    <div class="cart-items" id="cartItemList">
      <!-- Items dynamically populated via JS -->
    </div>
    <div class="cart-footer">
      <div class="cart-total-row">
        <span>Subtotal</span>
        <span id="cartSubtotal">$0.00</span>
      </div>
      <button class="btn-checkout" onclick="handleCheckout()">Checkout Now</button>
    </div>
  </aside>

  <!-- Toast -->
  <div class="toast" id="toast">
    <i class="fa-solid fa-circle-check" style="color: #10b981;"></i>
    <span id="toastMsg">Item added to cart</span>
  </div>

  <script>
    const products = [
      { id: 1, title: 'Studio One Wireless', category: 'Audio', price: 299.00, rating: 4.9, img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&auto=format&fit=crop&q=80' },
      { id: 2, title: 'Apex Chrono Series 5', category: 'Wearables', price: 449.00, rating: 4.8, img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&auto=format&fit=crop&q=80' },
      { id: 3, title: 'Tactile Mechanical Deck', category: 'Peripherals', price: 179.00, rating: 4.7, img: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=400&auto=format&fit=crop&q=80' },
      { id: 4, title: 'Aero Ergonomic Pointer', category: 'Peripherals', price: 89.00, rating: 4.6, img: 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=400&auto=format&fit=crop&q=80' },
      { id: 5, title: 'Spatial Sound Capsule', category: 'Audio', price: 129.00, rating: 4.8, img: 'https://images.unsplash.com/photo-1545454675-3531b543be5d?w=400&auto=format&fit=crop&q=80' },
      { id: 6, title: 'Pulse Health Band', category: 'Wearables', price: 119.00, rating: 4.5, img: 'https://images.unsplash.com/photo-1575311373937-040b8e1fd5b6?w=400&auto=format&fit=crop&q=80' }
    ];

    let cart = [];
    let currentCategory = 'All';

    // Scroll progress tracker
    window.addEventListener('scroll', () => {
      const winScroll = document.documentElement.scrollTop;
      const height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
      const scrolled = (winScroll / height) * 100;
      document.getElementById('progress-bar').style.width = scrolled + '%';
    });

    // Product Grid Renderer
    function renderProducts(items) {
      const grid = document.getElementById('productGrid');
      grid.innerHTML = '';
      
      items.forEach(product => {
        const card = document.createElement('div');
        card.className = 'card';
        card.innerHTML = `
          <div class="card-thumb">
            <button class="btn-wishlist" onclick="toggleWishlist(this)"><i class="fa-solid fa-heart"></i></button>
            <img src="${product.img}" alt="${product.title}">
          </div>
          <span class="card-category">${product.category}</span>
          <div class="card-title">${product.title}</div>
          <div class="card-rating">
            <i class="fa-solid fa-star"></i>
            <span>${product.rating}</span>
          </div>
          <div class="card-footer">
            <div class="price">$${product.price.toFixed(2)}</div>
            <button class="btn-add" onclick="addToCart(${product.id})">
              <i class="fa-solid fa-plus"></i> Add
            </button>
          </div>
        `;
        grid.appendChild(card);
      });
      document.getElementById('resultsCount').innerText = `Showing ${items.length} products`;
    }

    // Category Filtering
    function filterCategory(category, el) {
      document.querySelectorAll('.chip').forEach(btn => btn.classList.remove('active'));
      el.classList.add('active');
      currentCategory = category;
      applyFilters();
    }

    // Live search
    function handleSearch() {
      applyFilters();
    }

    function applyFilters() {
      const query = document.getElementById('searchInput').value.toLowerCase();
      const filtered = products.filter(p => {
        const matchesCat = currentCategory === 'All' || p.category === currentCategory;
        const matchesQuery = p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query);
        return matchesCat && matchesQuery;
      });
      renderProducts(filtered);
    }

    // Toggle Wishlist Heart
    function toggleWishlist(btn) {
      btn.classList.toggle('active');
    }

    // Cart Management
    function addToCart(id) {
      const product = products.find(p => p.id === id);
      const existing = cart.find(item => item.id === id);
      if (existing) {
        existing.qty += 1;
      } else {
        cart.push({ ...product, qty: 1 });
      }
      updateCartUI();
      showToast(`Added ${product.title} to bag`);
    }

    function updateCartUI() {
      const counter = document.getElementById('cartCount');
      const list = document.getElementById('cartItemList');
      const subtotalEl = document.getElementById('cartSubtotal');
      
      const totalQty = cart.reduce((sum, item) => sum + item.qty, 0);
      counter.innerText = totalQty;

      list.innerHTML = '';
      let subtotal = 0;

      cart.forEach(item => {
        subtotal += item.price * item.qty;
        const itemEl = document.createElement('div');
        itemEl.className = 'cart-item';
        itemEl.innerHTML = `
          <div class="cart-item-thumb"><img src="${item.img}" alt="${item.title}"></div>
          <div class="cart-item-info">
            <div class="cart-item-title">${item.title}</div>
            <div class="cart-item-price">$${item.price.toFixed(2)}</div>
            <div class="cart-item-qty">
              <button class="qty-btn" onclick="changeQty(${item.id}, -1)">-</button>
              <span>${item.qty}</span>
              <button class="qty-btn" onclick="changeQty(${item.id}, 1)">+</button>
            </div>
          </div>
        `;
        list.appendChild(itemEl);
      });

      subtotalEl.innerText = `$${subtotal.toFixed(2)}`;
    }

    function changeQty(id, delta) {
      const index = cart.findIndex(i => i.id === id);
      if (index === -1) return;
      cart[index].qty += delta;
      if (cart[index].qty <= 0) {
        cart.splice(index, 1);
      }
      updateCartUI();
    }

    function toggleCart(open) {
      const drawer = document.getElementById('cartDrawer');
      const backdrop = document.getElementById('cartBackdrop');
      if (open) {
        drawer.classList.add('active');
        backdrop.classList.add('active');
      } else {
        drawer.classList.remove('active');
        backdrop.classList.remove('active');
      }
    }

    // Toast
    function showToast(message) {
      const toast = document.getElementById('toast');
      document.getElementById('toastMsg').innerText = message;
      toast.classList.add('show');
      setTimeout(() => toast.classList.remove('show'), 2500);
    }

    // Checkout
    function handleCheckout() {
      if (cart.length === 0) {
        showToast('Your bag is empty');
        return;
      }
      alert('Proceeding to checkout with ' + cart.length + ' unique item(s).');
    }

    // Initial run
    renderProducts(products);
  </script>
</body>
</html>
