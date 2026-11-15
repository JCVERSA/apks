package defpackage;

import defpackage.xyg;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

public final class xyg {
    public final WeakReference a;
    public final Executor b;
    public final v2h c;

    public xyg(v2h v2hVar, orj orjVar, Executor executor) {
        this.c = v2hVar;
        this.a = new WeakReference(orjVar);
        this.b = executor;
    }

    public static void a(xyg xygVar) {
        orj orjVar = (orj) xygVar.a.get();
        if (orjVar != null) {
            orjVar.a.h(xygVar.c.a());
        }
    }

    public final void b() {
        this.b.execute(new Runnable() {
            @Override
            public final void run() {
                xyg.a(this.zza);
            }
        });
    }

    public final boolean c() {
        return this.a.get() == null;
    }
}
