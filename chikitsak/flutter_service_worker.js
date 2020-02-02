'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/manifest.json": "31e80ca21e65fa3fd2ed6c87cdf00cf7",
"/main.dart.js": "fca7714bef8c97a1df501f6cc2222bd9",
"/index.html": "1f13cd34b2674fb92feac26257ff0760",
"/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/assets/FontManifest.json": "18eda8e36dfa64f14878d07846d6e17f",
"/assets/LICENSE": "d5084b7d4dc5371b7b38f24e96e9b20e",
"/assets/AssetManifest.json": "04df380eead90de24d29d716eb108174",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "d21f791b837673851dd14f7c132ef32e",
"/assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "bdd8d75eb9e6832ccd3117e06c51f0d3",
"/assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "3ca122272cfac33efb09d0717efde2fa",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/assets/chikitsak_logo.png": "9e2ba1751dc49250e32015c05db3998c"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
