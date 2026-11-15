package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class hwh {
    public final BlockingQueue a;
    public final ThreadPoolExecutor b;
    public final ArrayDeque c = new ArrayDeque();
    public gwh d = null;

    public hwh() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.a = linkedBlockingQueue;
        this.b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    public final void a(gwh gwhVar) {
        this.d = null;
        c();
    }

    public final void b(gwh gwhVar) {
        gwhVar.b(this);
        this.c.add(gwhVar);
        if (this.d == null) {
            c();
        }
    }

    public final void c() {
        gwh gwhVar = (gwh) this.c.poll();
        this.d = gwhVar;
        if (gwhVar != null) {
            gwhVar.executeOnExecutor(this.b, new Object[0]);
        }
    }
}
