package com.android.volley;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

class m implements Request.a {

    private final j f18648b;

    private final CacheDispatcher f18650d;

    private final BlockingQueue f18651e;

    private final Map f18647a = new HashMap();

    private final h f18649c = null;

    m(CacheDispatcher cacheDispatcher, BlockingQueue blockingQueue, j jVar) {
        this.f18648b = jVar;
        this.f18650d = cacheDispatcher;
        this.f18651e = blockingQueue;
    }

    @Override
    public void a(Request request, i iVar) {
        List list;
        c.a aVar = iVar.f18635b;
        if (aVar == null || aVar.a()) {
            b(request);
            return;
        }
        String cacheKey = request.getCacheKey();
        synchronized (this) {
            list = (List) this.f18647a.remove(cacheKey);
        }
        if (list != null) {
            if (l.f18639b) {
                l.e("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), cacheKey);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f18648b.a((Request) it.next(), iVar);
            }
        }
    }

    @Override
    public synchronized void b(Request request) {
        BlockingQueue blockingQueue;
        try {
            String cacheKey = request.getCacheKey();
            List list = (List) this.f18647a.remove(cacheKey);
            if (list != null && !list.isEmpty()) {
                if (l.f18639b) {
                    l.e("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), cacheKey);
                }
                Request request2 = (Request) list.remove(0);
                this.f18647a.put(cacheKey, list);
                request2.setNetworkRequestCompleteListener(this);
                h hVar = this.f18649c;
                if (hVar != null) {
                    hVar.f(request2);
                } else if (this.f18650d != null && (blockingQueue = this.f18651e) != null) {
                    try {
                        blockingQueue.put(request2);
                    } catch (InterruptedException e10) {
                        l.c("Couldn't add request to queue. %s", e10.toString());
                        Thread.currentThread().interrupt();
                        this.f18650d.quit();
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    synchronized boolean c(Request request) {
        try {
            String cacheKey = request.getCacheKey();
            if (!this.f18647a.containsKey(cacheKey)) {
                this.f18647a.put(cacheKey, null);
                request.setNetworkRequestCompleteListener(this);
                if (l.f18639b) {
                    l.b("new request, sending to network %s", cacheKey);
                }
                return false;
            }
            List arrayList = (List) this.f18647a.get(cacheKey);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            request.addMarker("waiting-for-response");
            arrayList.add(request);
            this.f18647a.put(cacheKey, arrayList);
            if (l.f18639b) {
                l.b("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
