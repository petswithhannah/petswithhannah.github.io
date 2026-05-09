---
layout: default
title: About Hannah
permalink: /about/
---

<section class="hero" id="about">
    <div class="hero-content">
        <h2>Loving care for your pets while you’re away.</h2>
        <p style="font-size: 1.2rem; margin-bottom: 25px;">In-home pet sitting from a sitter who treats every pet like family.</p>
        <div style="margin: 15px 0 25px; font-weight: 800; color: var(--poster-orange); font-size: 1.1rem; display: flex; align-items: center; gap: 8px;">
            <i class="fas fa-shield-alt"></i> 
            <span>
                <a href="{{ '/assets/images/license.png' | relative_url }}" target="_blank" style="text-decoration: underline; color: var(--neon-pink);">Licensed</a>, <a href="{{ '/assets/images/insurance.png' | relative_url }}" target="_blank" style="text-decoration: underline; color: var(--neon-pink);">Bonded, and Insured</a>
            </span>
        </div>
        
        <button class="testimonial-btn" onclick="document.getElementById('philosophy').scrollIntoView({behavior: 'smooth'})"><i class="fas fa-star"></i>What I offer</button>

    </div>
    <div class="hero-image">
        <img src="{{ '/assets/images/dog8.jpg' | relative_url }}" alt="Hannah grooming">
    </div>
</section>


{% include philosophy.html %}
{% include qualifications.html %}

{% include poster-services.html %} 

<section class="final-cta" style="text-align: center; padding: 40px 5%; background: var(--soft-pink);">
    <div style="display: flex; gap: 15px; justify-content: center; flex-wrap: wrap;">
        <button class="testimonial-btn" onclick="document.getElementById('qualifications').scrollIntoView({behavior: 'smooth'})">
            <i class="fas fa-award"></i> See Qualifications
        </button>
        <a href="{{ '/pricing/' | relative_url }}" class="testimonial-btn" style="text-decoration: none;">
            <i class="fas fa-tags"></i> See Services & Pricing
        </a>
    </div>
</section>
