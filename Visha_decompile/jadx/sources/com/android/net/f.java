package com.android.net;

import android.os.Handler;
import java.util.concurrent.Executor;
import org.mozilla.javascript.ES6Iterator;

public final class f implements q {
    private final Executor a;

    public class a implements Runnable {
        private final n b;
        private final p c;
        private final Runnable d;

        public a(n nVar, p pVar, Runnable runnable) {
            this.b = nVar;
            this.c = pVar;
            this.d = runnable;
        }

        @Override
        public final void run() {
            p.a aVar;
            if (this.b.b()) {
                this.b.b("canceled-at-delivery");
                return;
            }
            p pVar = this.c;
            u uVar = pVar.c;
            if (uVar == null) {
                this.b.a(pVar.a);
            } else {
                n nVar = this.b;
                synchronized (nVar.d) {
                    aVar = nVar.e;
                }
                if (aVar != null) {
                    aVar.a(uVar);
                }
            }
            if (this.c.d) {
                this.b.a("intermediate-response");
            } else {
                this.b.b(ES6Iterator.DONE_PROPERTY);
            }
            Runnable runnable = this.d;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public f(final Handler handler) {
        this.a = new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    @Override
    public final void a(n<?> nVar, p<?> pVar) {
        a(nVar, pVar, null);
    }

    @Override
    public final void a(n<?> nVar, p<?> pVar, Runnable runnable) {
        nVar.k();
        nVar.a("post-response");
        this.a.execute(new a(nVar, pVar, runnable));
    }

    @Override
    public final void a(n<?> nVar, u uVar) {
        nVar.a("post-error");
        this.a.execute(new a(nVar, p.a(uVar), null));
    }
}
