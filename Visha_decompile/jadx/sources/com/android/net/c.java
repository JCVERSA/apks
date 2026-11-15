package com.android.net;

import android.os.Process;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

public final class c extends Thread {
    private static final boolean a = v.b;
    private final BlockingQueue<n<?>> b;
    private final BlockingQueue<n<?>> c;
    private final b d;
    private final q e;
    private volatile boolean f = false;
    private final a g = new a(this);

    public static class a implements n.a {
        private final Map<String, List<n<?>>> a = new HashMap();
        private final c b;

        public a(c cVar) {
            this.b = cVar;
        }

        @Override
        public final synchronized void a(n<?> nVar) {
            try {
                String str = nVar.b;
                List<n<?>> listRemove = this.a.remove(str);
                if (listRemove != null && !listRemove.isEmpty()) {
                    if (v.b) {
                        v.a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(listRemove.size()), str);
                    }
                    n<?> nVarRemove = listRemove.remove(0);
                    this.a.put(str, listRemove);
                    nVarRemove.a((n.a) this);
                    try {
                        this.b.c.put(nVarRemove);
                    } catch (InterruptedException e) {
                        v.c("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.b.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public final synchronized boolean b(n<?> nVar) {
            try {
                String str = nVar.b;
                if (!this.a.containsKey(str)) {
                    this.a.put(str, null);
                    nVar.a((n.a) this);
                    if (v.b) {
                        v.b("new request, sending to network %s", str);
                    }
                    return false;
                }
                List<n<?>> arrayList = this.a.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                nVar.a("waiting-for-response");
                arrayList.add(nVar);
                this.a.put(str, arrayList);
                if (v.b) {
                    v.b("Request for cacheKey=%s is in flight, putting on hold.", str);
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override
        public final void a(n<?> nVar, p<?> pVar) {
            List<n<?>> listRemove;
            b.a aVar = pVar.b;
            if (aVar == null || aVar.a()) {
                a(nVar);
                return;
            }
            String str = nVar.b;
            synchronized (this) {
                listRemove = this.a.remove(str);
            }
            if (listRemove != null) {
                if (v.b) {
                    v.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(listRemove.size()), str);
                }
                Iterator<n<?>> it = listRemove.iterator();
                while (it.hasNext()) {
                    this.b.e.a(it.next(), pVar);
                }
            }
        }
    }

    public c(BlockingQueue<n<?>> blockingQueue, BlockingQueue<n<?>> blockingQueue2, b bVar, q qVar) {
        this.b = blockingQueue;
        this.c = blockingQueue2;
        this.d = bVar;
        this.e = qVar;
    }

    @Override
    public final void run() {
        if (a) {
            v.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.d.a();
        while (true) {
            try {
                final n<?> nVarTake = this.b.take();
                nVarTake.a("cache-queue-take");
                if (nVarTake.b()) {
                    nVarTake.b("cache-discard-canceled");
                } else {
                    b.a aVarA = this.d.a(nVarTake.b);
                    if (aVarA == null) {
                        nVarTake.a("cache-miss");
                        if (!this.g.b(nVarTake)) {
                            this.c.put(nVarTake);
                        }
                    } else if (aVarA.a()) {
                        nVarTake.a("cache-hit-expired");
                        nVarTake.k = aVarA;
                        if (!this.g.b(nVarTake)) {
                            this.c.put(nVarTake);
                        }
                    } else {
                        nVarTake.a("cache-hit");
                        p<?> pVarA = nVarTake.a(new k(aVarA.a, aVarA.g, (byte) 0));
                        nVarTake.a("cache-hit-parsed");
                        if (aVarA.f < System.currentTimeMillis()) {
                            nVarTake.a("cache-hit-refresh-needed");
                            nVarTake.k = aVarA;
                            pVarA.d = true;
                            if (!this.g.b(nVarTake)) {
                                this.e.a(nVarTake, pVarA, new Runnable() {
                                    @Override
                                    public final void run() {
                                        try {
                                            c.this.c.put(nVarTake);
                                        } catch (InterruptedException unused) {
                                            Thread.currentThread().interrupt();
                                        }
                                    }
                                });
                            }
                        }
                        this.e.a(nVarTake, pVarA);
                    }
                }
            } catch (InterruptedException unused) {
                if (this.f) {
                    return;
                }
            }
        }
    }

    public final void a() {
        this.f = true;
        interrupt();
    }
}
