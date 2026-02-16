/* ═══════════════════════════════════════════════
   KOMEI JUKU ARGENTINA — Main JavaScript
   ═══════════════════════════════════════════════ */

document.addEventListener('DOMContentLoaded', () => {

  // ─── Navigation scroll effect ───
  const nav = document.querySelector('.nav');
  const handleNavScroll = () => {
    nav.classList.toggle('nav--scrolled', window.scrollY > 60);
  };
  window.addEventListener('scroll', handleNavScroll, { passive: true });
  handleNavScroll();

  // ─── Mobile hamburger menu ───
  const hamburger = document.querySelector('.nav__hamburger');
  const navLinks = document.querySelector('.nav__links');
  const overlay = document.querySelector('.nav-overlay');

  const toggleMenu = (open) => {
    const isOpen = open ?? !navLinks.classList.contains('nav__links--open');
    navLinks.classList.toggle('nav__links--open', isOpen);
    hamburger.classList.toggle('nav__hamburger--active', isOpen);
    overlay.classList.toggle('nav-overlay--visible', isOpen);
    document.body.style.overflow = isOpen ? 'hidden' : '';
  };

  hamburger?.addEventListener('click', () => toggleMenu());
  overlay?.addEventListener('click', () => toggleMenu(false));

  // ─── Mobile dropdown toggles ───
  document.querySelectorAll('.nav__item--has-dropdown > .nav__link').forEach(link => {
    link.addEventListener('click', (e) => {
      if (window.innerWidth <= 960) {
        e.preventDefault();
        const item = link.closest('.nav__item');
        item.classList.toggle('nav__item--open');
      }
    });
  });

  // Close menu on link click (mobile)
  document.querySelectorAll('.nav__dropdown-link, .nav__links > .nav__item:not(.nav__item--has-dropdown) > .nav__link').forEach(link => {
    link.addEventListener('click', () => {
      if (window.innerWidth <= 960) {
        toggleMenu(false);
      }
    });
  });

  // ─── Scroll Reveal ───
  const revealElements = document.querySelectorAll('.reveal, .stagger-children');

  const revealObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        if (entry.target.classList.contains('stagger-children')) {
          entry.target.classList.add('stagger-children--visible');
        } else {
          entry.target.classList.add('reveal--visible');
        }
        revealObserver.unobserve(entry.target);
      }
    });
  }, {
    threshold: 0.1,
    rootMargin: '0px 0px -60px 0px'
  });

  revealElements.forEach(el => revealObserver.observe(el));

  // ─── Active navigation highlighting ───
  const currentPage = window.location.pathname.split('/').pop() || 'index.html';
  document.querySelectorAll('.nav__link, .nav__dropdown-link').forEach(link => {
    const href = link.getAttribute('href');
    if (href === currentPage || (currentPage === '' && href === 'index.html')) {
      link.classList.add('nav__link--active');
      // Also highlight parent dropdown if it's a sub-item
      const parentItem = link.closest('.nav__item--has-dropdown');
      if (parentItem) {
        parentItem.querySelector('.nav__link').classList.add('nav__link--active');
      }
    }
  });

  // ─── Contact form handling ───
  const contactForm = document.querySelector('.contact-form');
  if (contactForm) {
    contactForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const formData = new FormData(contactForm);
      const nombre = formData.get('nombre');
      const email = formData.get('email');
      const mensaje = formData.get('mensaje');

      // Build WhatsApp message
      const text = `Hola, soy ${nombre} (${email}). ${mensaje}`;
      const waUrl = `https://wa.me/5491130571014?text=${encodeURIComponent(text)}`;
      window.open(waUrl, '_blank');
    });
  }

  // ─── Blog category filters ───
  const filterBtns = document.querySelectorAll('.blog-filter');
  const blogCards = document.querySelectorAll('.blog-card[data-category]');

  if (filterBtns.length > 0) {
    filterBtns.forEach(btn => {
      btn.addEventListener('click', () => {
        const filter = btn.dataset.filter;

        filterBtns.forEach(b => b.classList.remove('blog-filter--active'));
        btn.classList.add('blog-filter--active');

        blogCards.forEach(card => {
          if (filter === 'all' || card.dataset.category.includes(filter)) {
            card.classList.remove('blog-card--hidden');
          } else {
            card.classList.add('blog-card--hidden');
          }
        });
      });
    });
  }

  // ─── Smooth scroll for anchor links ───
  document.querySelectorAll('a[href^="#"]').forEach(link => {
    link.addEventListener('click', (e) => {
      const target = document.querySelector(link.getAttribute('href'));
      if (target) {
        e.preventDefault();
        target.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }
    });
  });

});
