package com.cloud.hisavana.sdk.common.tranmeasure;

import android.os.Handler;
import android.os.Looper;
import defpackage.ikd;
import defpackage.ja1;

public class b extends Monitor {
    public volatile Handler a = null;
    public boolean b = false;
    public final f c;
    public final f.a d;
    public final Runnable e;
    public final Runnable f;

    public class a implements f.a {
        public a() {
        }

        @Override
        public void a(boolean z) {
            if (z) {
                b.this.a();
            } else {
                b.this.c();
            }
        }
    }

    public class RunnableC0044b implements Runnable {
        public RunnableC0044b() {
        }

        @Override
        public void run() {
            if (b.this.b) {
                e.c().i();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            if (!b.this.b || b.this.a == null) {
                return;
            }
            b.this.a.post(b.this.e);
            b.this.a.postDelayed(b.this.f, 200L);
        }
    }

    public b() {
        a aVar = new a();
        this.d = aVar;
        this.e = new RunnableC0044b();
        this.f = new c();
        f fVar = new f();
        this.c = fVar;
        fVar.c(aVar);
    }

    public final void a() {
        try {
            if (Looper.myLooper() == null) {
                return;
            }
            this.b = true;
            if (this.a == null) {
                this.a = new Handler(Looper.myLooper());
            }
            if (this.a != null) {
                this.a.post(this.e);
                this.a.postDelayed(this.f, 200L);
            }
        } catch (Throwable unused) {
        }
    }

    public final void c() {
        this.b = false;
        if (this.a != null) {
            this.a.removeCallbacks(this.f);
            this.a = null;
        }
    }

    @Override
    public void end() {
        try {
            ikd.b().d(ja1.MEASURE_TAG, "stop monitor");
            this.b = false;
            f fVar = this.c;
            if (fVar != null) {
                fVar.b();
            }
            c();
        } catch (Throwable unused) {
        }
    }

    @Override
    public void start() {
        if (this.b && this.a != null && this.a.hasMessages(0)) {
            ikd.b().d(ja1.MEASURE_TAG, "monitor is running");
            return;
        }
        ikd.b().d(ja1.MEASURE_TAG, "start monitor");
        a();
        this.c.c(this.d);
        this.c.h();
    }
}
