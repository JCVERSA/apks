package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

public final class cm1 implements b40 {
    private final Executor a;
    private final xv b;
    private final wm c;
    private final hn d;

    @Nullable
    private b40.a e;
    private volatile at1<Void, IOException> f;
    private volatile boolean g;

    public class a extends at1<Void, IOException> {
        public a() {
        }

        @Override
        public final void b() {
            cm1.this.d.b();
        }

        @Override
        public final void c() throws Exception {
            cm1.this.d.a();
        }
    }

    public cm1(jw0 jw0Var, wm.a aVar, Executor executor) {
        this.a = (Executor) hg.a(executor);
        hg.a(jw0Var.c);
        xv xvVarA = new xv.a().a(jw0Var.c.a).a(jw0Var.c.e).a(4).a();
        this.b = xvVarA;
        wm wmVarB = aVar.b();
        this.c = wmVarB;
        this.d = new hn(wmVarB, xvVarA, new hn.a() {
            @Override
            public final void a(long j, long j2, long j3) {
                this.a.a(j, j2, j3);
            }
        });
    }

    @Override
    public final void cancel() {
        this.g = true;
        at1<Void, IOException> at1Var = this.f;
        if (at1Var != null) {
            at1Var.cancel(true);
        }
    }

    @Override
    public final void remove() {
        this.c.f().a(this.c.g().a(this.b));
    }

    @Override
    public final void a(@Nullable b40.a aVar) throws InterruptedException, IOException {
        this.e = aVar;
        this.f = new a();
        boolean z = false;
        while (!z) {
            try {
                if (this.g) {
                    break;
                }
                this.a.execute(this.f);
                try {
                    this.f.get();
                    z = true;
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    cause.getClass();
                    if (!(cause instanceof dl1)) {
                        if (cause instanceof IOException) {
                            throw ((IOException) cause);
                        }
                        int i = f92.a;
                        throw cause;
                    }
                }
            } catch (Throwable th) {
                this.f.a();
                throw th;
            }
        }
        this.f.a();
    }

    public void a(long j, long j2, long j3) {
        b40.a aVar = this.e;
        if (aVar == null) {
            return;
        }
        ((y30.d) aVar).a(j, j2, (j == -1 || j == 0) ? -1.0f : (j2 * 100.0f) / j);
    }
}
