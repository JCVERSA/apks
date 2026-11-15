package defpackage;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

public class vd3 implements e2a, kk8 {
    public final Map a = new HashMap();
    public Queue b = new ArrayDeque();
    public final Executor c;

    public vd3(Executor executor) {
        this.c = executor;
    }

    public static void f(Map.Entry entry, sd3 sd3Var) {
        ((wd3) entry.getKey()).a(sd3Var);
    }

    @Override
    public synchronized void a(Class cls, Executor executor, wd3 wd3Var) {
        try {
            yd8.b(cls);
            yd8.b(wd3Var);
            yd8.b(executor);
            if (!this.a.containsKey(cls)) {
                this.a.put(cls, new ConcurrentHashMap());
            }
            ((ConcurrentHashMap) this.a.get(cls)).put(wd3Var, executor);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public void b(Class cls, wd3 wd3Var) {
        a(cls, this.c, wd3Var);
    }

    public void d() {
        Queue queue;
        synchronized (this) {
            try {
                queue = this.b;
                if (queue != null) {
                    this.b = null;
                } else {
                    queue = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (queue != null) {
            Iterator it = queue.iterator();
            while (it.hasNext()) {
                ubc.a(it.next());
                g(null);
            }
        }
    }

    public final synchronized Set e(sd3 sd3Var) {
        throw null;
    }

    public void g(final sd3 sd3Var) {
        yd8.b(sd3Var);
        synchronized (this) {
            try {
                Queue queue = this.b;
                if (queue != null) {
                    queue.add(sd3Var);
                    return;
                }
                for (final Map.Entry entry : e(sd3Var)) {
                    ((Executor) entry.getValue()).execute(new Runnable(entry, sd3Var) {
                        public final Map.Entry b;

                        @Override
                        public final void run() {
                            vd3.f(this.b, null);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
