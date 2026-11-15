package com.cloud.hisavana.sdk.common.tranmeasure;

import android.os.Handler;
import android.os.Looper;
import com.cloud.hisavana.sdk.b4;

public class b extends Monitor {

    private volatile Handler f21508a = null;

    private boolean f21509b = false;

    private final f f21510c;

    private final f.a f21511d;

    private final Runnable f21512e;

    private final Runnable f21513f;

    class a implements f.a {
        a() {
        }

        @Override
        public void a(boolean z10) {
            if (z10) {
                b.this.a();
            } else {
                b.this.c();
            }
        }
    }

    class RunnableC0279b implements Runnable {
        RunnableC0279b() {
        }

        @Override
        public void run() {
            if (b.this.f21509b) {
                e.c().i();
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override
        public void run() {
            if (!b.this.f21509b || b.this.f21508a == null) {
                return;
            }
            b.this.f21508a.post(b.this.f21512e);
            b.this.f21508a.postDelayed(b.this.f21513f, 200L);
        }
    }

    protected b() {
        a aVar = new a();
        this.f21511d = aVar;
        this.f21512e = new RunnableC0279b();
        this.f21513f = new c();
        f fVar = new f();
        this.f21510c = fVar;
        fVar.c(aVar);
    }

    public void a() {
        try {
            if (Looper.myLooper() == null) {
                return;
            }
            this.f21509b = true;
            if (this.f21508a == null) {
                this.f21508a = new Handler(Looper.myLooper());
            }
            if (this.f21508a != null) {
                this.f21508a.post(this.f21512e);
                this.f21508a.postDelayed(this.f21513f, 200L);
            }
        } catch (Throwable unused) {
        }
    }

    public void c() {
        this.f21509b = false;
        if (this.f21508a != null) {
            this.f21508a.removeCallbacks(this.f21513f);
            this.f21508a = null;
        }
    }

    @Override
    public void end() {
        try {
            b4.b().d("ssp_measure", "stop monitor");
            this.f21509b = false;
            f fVar = this.f21510c;
            if (fVar != null) {
                fVar.b();
            }
            c();
        } catch (Throwable unused) {
        }
    }

    @Override
    public void start() {
        if (this.f21509b && this.f21508a != null && this.f21508a.hasMessages(0)) {
            b4.b().d("ssp_measure", "monitor is running");
            return;
        }
        b4.b().d("ssp_measure", "start monitor");
        a();
        this.f21510c.c(this.f21511d);
        this.f21510c.h();
    }
}
