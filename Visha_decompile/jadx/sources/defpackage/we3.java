package defpackage;

import java.util.concurrent.Executor;
import java.util.logging.Level;

public final class we3 {
    public static final kj5 c = new kj5(we3.class);
    public a a;
    public boolean b;

    public static final class a {
        public final Runnable a;
        public final Executor b;
        public a c;

        public a(Runnable runnable, Executor executor, a aVar) {
            this.a = runnable;
            this.b = executor;
            this.c = aVar;
        }
    }

    public static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            c.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    public void a(Runnable runnable, Executor executor) {
        xd8.p(runnable, "Runnable was null.");
        xd8.p(executor, "Executor was null.");
        synchronized (this) {
            try {
                if (this.b) {
                    c(runnable, executor);
                } else {
                    this.a = new a(runnable, executor, this.a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b() {
        synchronized (this) {
            try {
                if (this.b) {
                    return;
                }
                this.b = true;
                a aVar = this.a;
                a aVar2 = null;
                this.a = null;
                while (aVar != null) {
                    a aVar3 = aVar.c;
                    aVar.c = aVar2;
                    aVar2 = aVar;
                    aVar = aVar3;
                }
                while (aVar2 != null) {
                    c(aVar2.a, aVar2.b);
                    aVar2 = aVar2.c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
