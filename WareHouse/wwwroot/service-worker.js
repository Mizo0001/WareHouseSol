self.addEventListener('install', event => {
    event.waitUntil(
        caches.open('my-cache').then(cache => {
            return cache.addAll([
                '/',
                '/css/bootstrap/bootstrap.min.css',
                '/css/site.css',
                '/WareHouse.styles.css',
                '/_content/Syncfusion.Blazor/styles/bootstrap5.css',
                '/assets/img/favicon.png',
                '/assets/img/apple-touch-icon.png',
                '/assets/css/main.css',
                '/_framework/blazor.server.js',
                '/_content/Syncfusion.Blazor/scripts/syncfusion-blazor.min.js',
                'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js'
            ]);
        })
    );
});

self.addEventListener('fetch', event => {
    event.respondWith(
        caches.match(event.request).then(response => {
            return response || fetch(event.request);
        })
    );
});
