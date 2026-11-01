package w0;

import android.content.Context;
import android.os.Handler;
import h1.i;
import java.io.InvalidObjectException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import ru.zdevs.zarchiver.ZApp;

public final class a {

    public volatile boolean f2205a = true;

    public final ConcurrentLinkedQueue<b> f2206b = new ConcurrentLinkedQueue<>();

    public final i<c> f2207c = new i<>();

    public final ArrayList f2208d = new ArrayList(4);

    public class RunnableC0040a implements Runnable {

        public final c f2209a;

        public final b f2210b;

        public RunnableC0040a(c cVar, b bVar) {
            this.f2209a = cVar;
            this.f2210b = bVar;
        }

        @Override
        public final void run() {
            this.f2209a.b(this.f2210b);
        }
    }

    public interface b {
        int a();
    }

    public interface c {
        void b(b bVar);
    }

    public final void a(c cVar, Context context) {
        if (this.f2207c.add(cVar) && this.f2205a) {
            this.f2205a = false;
            while (!this.f2206b.isEmpty()) {
                c(this.f2206b.poll(), context);
            }
        }
    }

    public final void b(b bVar, boolean z2) {
        if (!this.f2205a) {
            c(bVar, null);
            this.f2205a = this.f2207c.isEmpty();
        }
        if (!this.f2205a || z2) {
            return;
        }
        this.f2206b.offer(bVar);
    }

    public final void c(b bVar, Context context) {
        Handler handler;
        if (bVar == null) {
            return;
        }
        try {
            handler = ZApp.f();
        } catch (InvalidObjectException unused) {
            if (context == null) {
                return;
            } else {
                handler = new Handler(context.getMainLooper());
            }
        }
        Iterator<c> it = this.f2207c.iterator();
        while (it.hasNext()) {
            handler.post(new RunnableC0040a(it.next(), bVar));
        }
    }

    public final void d(c cVar) {
        this.f2207c.remove(cVar);
        this.f2205a = this.f2207c.isEmpty();
    }

    public final void e(w0.c cVar) {
        if (cVar.j() != -1) {
            synchronized (this.f2208d) {
                this.f2208d.add(cVar);
            }
        }
    }

    public final void f(int i2, int i3, int i4) {
        synchronized (this.f2208d) {
            if (this.f2208d.size() == 0) {
                return;
            }
            for (w0.c cVar : (w0.c[]) this.f2208d.toArray(new w0.c[0])) {
                if (cVar != null && (((i3 == 0 && cVar.j() == i2) || (i3 == 1 && cVar.j() < i2)) && (i4 == -1 || i4 == cVar.i()))) {
                    cVar.e();
                }
            }
        }
    }

    public final void g(w0.c cVar) {
        synchronized (this.f2208d) {
            this.f2208d.remove(cVar);
        }
    }
}
