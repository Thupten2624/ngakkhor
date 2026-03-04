const CACHE = 'vajrayana-v2';
const ASSETS = ['./', './index.html', './manifest.json', './icons/icon-192x192.png', './icons/icon-512x512.png'];

self.addEventListener('install', e => {
  e.waitUntil(caches.open(CACHE).then(c => c.addAll(ASSETS)).then(() => self.skipWaiting()));
});

self.addEventListener('activate', e => {
  e.waitUntil(caches.keys().then(keys =>
    Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k)))
  ).then(() => self.clients.claim()));
});

self.addEventListener('fetch', e => {
  e.respondWith(
    caches.match(e.request).then(cached => {
      if (cached) return cached;
      return fetch(e.request).then(res => {
        if (!res || res.status !== 200 || res.type === 'opaque') return res;
        const clone = res.clone();
        caches.open(CACHE).then(c => c.put(e.request, clone));
        return res;
      }).catch(() => caches.match('./index.html'));
    })
  );
});

// Push notifications
self.addEventListener('push', e => {
  const data = e.data ? e.data.json() : { title: 'Vajrayana', body: 'Momento de practicar' };
  e.waitUntil(self.registration.showNotification(data.title, {
    body: data.body,
    icon: './icons/icon-192x192.png',
    badge: './icons/icon-72x72.png',
    tag: data.tag || 'reminder',
    renotify: true,
    requireInteraction: false,
  }));
});

// Scheduled reminders via setTimeout trick (only while SW alive)
self.addEventListener('message', e => {
  if (e.data?.type === 'SCHEDULE_REMINDER') {
    const { delay, title, body, tag } = e.data;
    setTimeout(() => {
      self.registration.showNotification(title, { body, icon: './icons/icon-192x192.png', tag });
    }, delay);
  }
});
