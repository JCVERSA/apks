package defpackage;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class q2d {
    public static final a a = new a(new c74() {
        @Override
        public final Object invoke() {
            return q2d.a();
        }
    });
    public static final AtomicInteger b;
    public static final AtomicInteger c;

    public static final class a {
        public final c74 a;
        public final e74 b;
        public final ConcurrentLinkedQueue c;
        public final AtomicInteger d;

        public a(c74 c74Var) {
            y45.j(c74Var, "factory");
            this.a = c74Var;
            this.b = null;
            this.c = new ConcurrentLinkedQueue();
            this.d = new AtomicInteger(0);
        }
    }

    static {
        y45.j(new c74() {
            @Override
            public final Object invoke() {
                return q2d.c();
            }
        }, "factory");
        new ConcurrentLinkedQueue();
        new AtomicInteger(0);
        b = new AtomicInteger(0);
        c = new AtomicInteger(0);
        new AtomicInteger(0);
        new AtomicInteger(0);
    }

    public static final Bundle a() {
        return new Bundle();
    }

    public static void b(Bundle bundle) {
        y45.j(bundle, "bundle");
        try {
            bundle.clear();
            a aVar = a;
            if (aVar.d.get() < 32) {
                e74 e74Var = aVar.b;
                if (e74Var != null) {
                    e74Var.invoke(bundle);
                }
                aVar.c.offer(bundle);
                aVar.d.incrementAndGet();
            }
        } catch (Exception e) {
            Log.w("NexusFlow.Performance", "Failed to recycle Bundle", e);
        }
    }

    public static final StringBuilder c() {
        return new StringBuilder();
    }
}
