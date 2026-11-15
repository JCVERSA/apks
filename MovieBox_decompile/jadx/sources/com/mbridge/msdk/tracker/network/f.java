package com.mbridge.msdk.tracker.network;

import android.os.Handler;
import java.util.concurrent.Executor;

public class f implements w {

    private final Executor f37738a;

    class a implements Executor {

        final Handler f37739a;

        a(Handler handler) {
            this.f37739a = handler;
        }

        @Override
        public void execute(Runnable runnable) {
            this.f37739a.post(runnable);
        }
    }

    private static class b implements Runnable {

        private final t f37741a;

        private final v f37742b;

        private final Runnable f37743c;

        public b(t tVar, v vVar, Runnable runnable) {
            this.f37741a = tVar;
            this.f37742b = vVar;
            this.f37743c = runnable;
        }

        @Override
        public void run() {
            if (this.f37741a.v()) {
                this.f37741a.c("canceled-at-delivery");
                return;
            }
            if (this.f37742b.a()) {
                this.f37741a.a(this.f37742b.f37859a);
            } else {
                this.f37741a.b(this.f37742b.f37861c);
            }
            if (this.f37742b.f37862d) {
                this.f37741a.a("intermediate-response");
            } else {
                this.f37741a.c("done");
            }
            Runnable runnable = this.f37743c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public f(Handler handler) {
        this.f37738a = new a(handler);
    }

    @Override
    public void a(t<?> tVar, v<?> vVar) {
        a(tVar, vVar, null);
    }

    public void a(t<?> tVar, v<?> vVar, Runnable runnable) {
        tVar.w();
        tVar.a("post-response");
        this.f37738a.execute(new b(tVar, vVar, runnable));
    }

    public f(Executor executor) {
        this.f37738a = executor;
    }

    @Override
    public void a(t<?> tVar, b0 b0Var) {
        tVar.a("post-error");
        this.f37738a.execute(new b(tVar, v.a(b0Var), null));
    }
}
