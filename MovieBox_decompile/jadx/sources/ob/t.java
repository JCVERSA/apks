package ob;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

class t implements hc.d, hc.c {

    private final Map f67786a = new HashMap();

    private Queue f67787b = new ArrayDeque();

    private final Executor f67788c;

    t(Executor executor) {
        this.f67788c = executor;
    }

    private synchronized Set e(hc.a aVar) {
        throw null;
    }

    public static void f(Map.Entry entry, hc.a aVar) {
        ((hc.b) entry.getKey()).a(aVar);
    }

    @Override
    public void a(Class cls, hc.b bVar) {
        b(cls, this.f67788c, bVar);
    }

    @Override
    public synchronized void b(Class cls, Executor executor, hc.b bVar) {
        try {
            a0.b(cls);
            a0.b(bVar);
            a0.b(executor);
            if (!this.f67786a.containsKey(cls)) {
                this.f67786a.put(cls, new ConcurrentHashMap());
            }
            ((ConcurrentHashMap) this.f67786a.get(cls)).put(bVar, executor);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    void d() {
        Queue queue;
        synchronized (this) {
            try {
                queue = this.f67787b;
                if (queue != null) {
                    this.f67787b = null;
                } else {
                    queue = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (queue != null) {
            Iterator it = queue.iterator();
            while (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                g(null);
            }
        }
    }

    public void g(final hc.a aVar) {
        a0.b(aVar);
        synchronized (this) {
            try {
                Queue queue = this.f67787b;
                if (queue != null) {
                    queue.add(aVar);
                    return;
                }
                for (final Map.Entry entry : e(aVar)) {
                    ((Executor) entry.getValue()).execute(new Runnable(entry, aVar) {

                        public final Map.Entry f67785a;

                        @Override
                        public final void run() {
                            t.f(this.f67785a, null);
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
