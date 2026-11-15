package com.yandex.mobile.ads.impl;

import android.os.Handler;
import java.util.concurrent.Executor;
import org.mozilla.javascript.ES6Iterator;

public final class h60 implements fr1 {
    private final Executor a;

    public class a implements Executor {
        final Handler a;

        public a(Handler handler) {
            this.a = handler;
        }

        @Override
        public final void execute(Runnable runnable) {
            this.a.post(runnable);
        }
    }

    public static class b implements Runnable {
        private final up1 b;
        private final xq1 c;
        private final Runnable d;

        public b(up1 up1Var, xq1 xq1Var, Runnable runnable) {
            this.b = up1Var;
            this.c = xq1Var;
            this.d = runnable;
        }

        @Override
        public final void run() {
            if (this.b.n()) {
                this.b.c("canceled-at-delivery");
                return;
            }
            xq1 xq1Var = this.c;
            si2 si2Var = xq1Var.c;
            if (si2Var == null) {
                this.b.a(xq1Var.a);
            } else {
                this.b.a(si2Var);
            }
            if (this.c.d) {
                this.b.a("intermediate-response");
            } else {
                this.b.c(ES6Iterator.DONE_PROPERTY);
            }
            Runnable runnable = this.d;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public h60(Handler handler) {
        this.a = new a(handler);
    }

    public final void a(up1<?> up1Var, si2 si2Var) {
        up1Var.a("post-error");
        xq1 xq1VarA = xq1.a(si2Var);
        Executor executor = this.a;
        ((a) executor).a.post(new b(up1Var, xq1VarA, null));
    }

    public final void a(up1<?> up1Var, xq1<?> xq1Var, Runnable runnable) {
        up1Var.o();
        up1Var.a("post-response");
        Executor executor = this.a;
        ((a) executor).a.post(new b(up1Var, xq1Var, runnable));
    }
}
