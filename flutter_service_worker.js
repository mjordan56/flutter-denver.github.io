'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets/assets/fonts/Lato-Black.ttf": "e631d2735799aa943d93d301abf423d2",
"/assets/assets/fonts/Lato-Bold.ttf": "85d339d916479f729938d2911b85bf1f",
"/assets/assets/fonts/Lato-Regular.ttf": "2d36b1a925432bae7f3c53a340868c6e",
"/assets/assets/images/logos/flutter_denver_logo_200x100.png": "62a004ef084a43ec8142c7e450e20f3e",
"/assets/assets/images/logos/flutter_denver_logo_400x200.png": "33f3ed9a3ee9990b1cf5e3812a68bada",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/AssetManifest.json": "31a8319192d27e355d5ca77bd5fbe782",
"/assets/LICENSE": "802eef19a3b3ad0f2abde8fa39b392f8",
"/assets/FontManifest.json": "fe6feccf838aad7289deee0492eedf2b",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/index.html": "1c284125d031ce568ee7d720d195f249",
"/main.dart.js": "fbd8d045c2efc72da7814c1febaa1786"
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
