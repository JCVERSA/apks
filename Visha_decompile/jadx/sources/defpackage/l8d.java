package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class l8d implements c7d.a {
    public final BlockingQueue a;
    public final ThreadPoolExecutor b;
    public final ArrayDeque c = new ArrayDeque();
    public c7d d = null;

    public l8d() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.a = linkedBlockingQueue;
        this.b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    @Override
    public void a(c7d c7dVar) {
        this.d = null;
        b();
    }

    public final void b() {
        c7d c7dVar = (c7d) this.c.poll();
        this.d = c7dVar;
        if (c7dVar != null) {
            c7dVar.c(this.b);
        }
    }

    public void c(c7d c7dVar) {
        c7dVar.a(this);
        this.c.add(c7dVar);
        if (this.d == null) {
            b();
        }
    }
}
