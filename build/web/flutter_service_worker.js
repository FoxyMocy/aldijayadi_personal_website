'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "5a2e2452e0fe5a285d4382b66dc6108b",
"assets/assets/icons/dribbble.png": "e3447fca54407a9ada1837bf7fd3ce9d",
"assets/assets/icons/instagram.png": "7f42ad42ccc043d066d39d7f9d6c169d",
"assets/assets/icons/linkedin.png": "599d2aa4c8d3e4e20c584fab5c84ab48",
"assets/assets/icons/twitter.png": "9d9d3417c62471d14bc00375e7167fab",
"assets/assets/images/illu_construction.png": "35150cd8dc678d5972f63cfff5234459",
"assets/assets/images/illu_project_alfa.png": "814ae576a347957c94fd517310807a9c",
"assets/assets/images/illu_project_beelajar.png": "181a3c19974b6c8fb5e56647096b40bf",
"assets/assets/images/illu_project_left.png": "ae2fe92ceee5fc215a0d33fb2291060f",
"assets/assets/images/illu_project_right.png": "84030a1ea426b390f5d69b502081abd0",
"assets/assets/images/personal_logo.png": "5c5c4bd70b9c0ffeddbc00a786b1ce0c",
"assets/assets/images/personal_photo.png": "be3f969574033a51a6258b0b76ecb4c3",
"assets/assets/images/profile_photo.png": "31c3f892d3aa8454a343a10d655c9c7e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/icons/dribbble.png": "e3447fca54407a9ada1837bf7fd3ce9d",
"assets/icons/instagram.png": "7f42ad42ccc043d066d39d7f9d6c169d",
"assets/icons/linkedin.png": "599d2aa4c8d3e4e20c584fab5c84ab48",
"assets/icons/twitter.png": "9d9d3417c62471d14bc00375e7167fab",
"assets/images/illu_construction.png": "35150cd8dc678d5972f63cfff5234459",
"assets/images/illu_project_left.png": "387c5105603949c7b05f3bec28feec33",
"assets/images/illu_project_right.png": "84030a1ea426b390f5d69b502081abd0",
"assets/images/personal_logo.png": "5c5c4bd70b9c0ffeddbc00a786b1ce0c",
"assets/images/personal_photo.png": "be3f969574033a51a6258b0b76ecb4c3",
"assets/images/profile_photo.png": "31c3f892d3aa8454a343a10d655c9c7e",
"assets/NOTICES": "0e6101b76e3d3b7410b2a5bf7b2da3a8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.ico": "d65fa41ebe1dce2400c509a371cfce26",
"favicon.png": "e5514d62c7af7e860e34bc559cf31de8",
"icons/apple-touch-icon.png": "ae9f4a15c68ceee40c6e67da65cf4328",
"icons/Icon-192.png": "f5cb94ba680645232ff52c9ebfe922be",
"icons/Icon-1921.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "b620a85a046ab556cd52f1fa5ceb47c0",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "3d0c042f78c8c8567add550a90ba3918",
"/": "3d0c042f78c8c8567add550a90ba3918",
"main.dart.js": "87390885f1efe1dd5f46157b66936c6f",
"manifest.json": "834b4eb7f67ef9ba19bdd12c27aa61b1",
"version.json": "2080530d33bcb9f6c60f9a1514fd3be8"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
