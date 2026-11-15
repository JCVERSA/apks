package me;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class c implements b.a {

    private final BlockingQueue f66398a;

    private final ThreadPoolExecutor f66399b;

    private final ArrayDeque f66400c = new ArrayDeque();

    private b f66401d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f66398a = linkedBlockingQueue;
        this.f66399b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b bVar = (b) this.f66400c.poll();
        this.f66401d = bVar;
        if (bVar != null) {
            bVar.b(this.f66399b);
        }
    }

    @Override
    public void a(b bVar) {
        this.f66401d = null;
        b();
    }

    public void c(b bVar) {
        bVar.c(this);
        this.f66400c.add(bVar);
        if (this.f66401d == null) {
            b();
        }
    }
}
