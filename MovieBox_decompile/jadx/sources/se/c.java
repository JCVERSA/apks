package se;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class c implements b.a {

    private final BlockingQueue f72053a;

    private final ThreadPoolExecutor f72054b;

    private final ArrayDeque f72055c = new ArrayDeque();

    private b f72056d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f72053a = linkedBlockingQueue;
        this.f72054b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b bVar = (b) this.f72055c.poll();
        this.f72056d = bVar;
        if (bVar != null) {
            bVar.b(this.f72054b);
        }
    }

    @Override
    public void a(b bVar) {
        this.f72056d = null;
        b();
    }

    public void c(b bVar) {
        bVar.c(this);
        this.f72055c.add(bVar);
        if (this.f72056d == null) {
            b();
        }
    }
}
