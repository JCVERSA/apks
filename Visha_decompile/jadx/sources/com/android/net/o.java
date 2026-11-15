package com.android.net;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class o {
    private final AtomicInteger a;
    private final Set<n<?>> b;
    private final PriorityBlockingQueue<n<?>> c;
    private final PriorityBlockingQueue<n<?>> d;
    private final b e;
    private final h f;
    private final q g;
    private final i[] h;
    private c i;
    private final List<Object> j;

    private o(b bVar, h hVar) {
        this(bVar, hVar, new f(new Handler(Looper.getMainLooper())));
    }

    public final <T> n<T> a(n<T> nVar) {
        nVar.g = this;
        synchronized (this.b) {
            this.b.add(nVar);
        }
        nVar.f = Integer.valueOf(this.a.incrementAndGet());
        nVar.a("add-to-queue");
        (!nVar.h ? this.d : this.c).add(nVar);
        return nVar;
    }

    public final <T> void b(n<T> nVar) {
        synchronized (this.b) {
            this.b.remove(nVar);
        }
        synchronized (this.j) {
            try {
                Iterator<Object> it = this.j.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public o(b bVar, h hVar, byte b) {
        this(bVar, hVar);
    }

    public final void a() {
        c cVar = this.i;
        if (cVar != null) {
            cVar.a();
        }
        for (i iVar : this.h) {
            if (iVar != null) {
                iVar.a = true;
                iVar.interrupt();
            }
        }
        c cVar2 = new c(this.c, this.d, this.e, this.g);
        this.i = cVar2;
        cVar2.start();
        for (int i = 0; i < this.h.length; i++) {
            i iVar2 = new i(this.d, this.f, this.e, this.g);
            this.h[i] = iVar2;
            iVar2.start();
        }
    }

    private o(b bVar, h hVar, q qVar) {
        this.a = new AtomicInteger();
        this.b = new HashSet();
        this.c = new PriorityBlockingQueue<>();
        this.d = new PriorityBlockingQueue<>();
        this.j = new ArrayList();
        this.e = bVar;
        this.f = hVar;
        this.h = new i[4];
        this.g = qVar;
    }
}
