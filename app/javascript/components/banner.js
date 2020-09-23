// app/javascript/components/banner.js
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Sign up", "or log in", "and take my site for a spin"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
