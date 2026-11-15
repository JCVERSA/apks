package ye;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class c implements b.a {

    private final BlockingQueue f76238a;

    private final ThreadPoolExecutor f76239b;

    private final ArrayDeque f76240c = new ArrayDeque();

    private b f76241d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f76238a = linkedBlockingQueue;
        this.f76239b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b bVar = (b) this.f76240c.poll();
        this.f76241d = bVar;
        if (bVar != null) {
            bVar.b(this.f76239b);
        }
    }

    @Override
    public void a(b bVar) {
        this.f76241d = null;
        b();
    }

    public void c(b bVar) {
        bVar.c(this);
        this.f76240c.add(bVar);
        if (this.f76241d == null) {
            b();
        }
    }
}
