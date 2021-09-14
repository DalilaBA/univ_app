// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "tailwindcss/tailwind.css"
// require('stylesheets/application.scss')

Rails.start()
Turbolinks.start()
ActiveStorage.start()

window.addEventListener('DOMContentLoaded', ()=> {
  const menuBtn = document.querySelector('#menu-btn')
  const dropdown = document.querySelector('#dropdown')
  

  
  menuBtn.addEventListener('click', () => {
      dropdown.classList.toggle('hidden');
      dropdown.classList.toggle('flex');
      TriggerDropkick();
  });

  //dropdown in mobile menu
  const btn = document.querySelector('.hasSubMenu')
  const down = document.querySelector('.subMenu')

  const mobbtn = document.querySelector('.mob-btn')
  const mobmenu = document.querySelector('.mob-menu')
  
  mobbtn.addEventListener('click', () => {
    mobmenu.classList.toggle('hidden');
    // mobmenu.classList.toggle('flex');
    TriggerDropkick();
});

  
 btn.addEventListener('click', () => {
      down.classList.toggle('hidden');
      down.classList.toggle('flex');
      TriggerDropkick();
  });
 

})