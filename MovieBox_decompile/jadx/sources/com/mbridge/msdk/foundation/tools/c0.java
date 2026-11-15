package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.MBridgeConstans;
import java.util.concurrent.Executor;

public class c0 implements Executor {

    private Runnable f34862a;

    private Runnable f34863b;

    class a implements Runnable {

        final Runnable f34864a;

        a(Runnable runnable) {
            this.f34864a = runnable;
        }

        @Override
        public void run() {
            try {
                this.f34864a.run();
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("LimitExecutor", e10.getMessage());
                }
            } finally {
                c0.this.a();
            }
        }
    }

    @Override
    public synchronized void execute(Runnable runnable) {
        try {
            if (this.f34862a == null) {
                this.f34862a = a(runnable);
                a0.a().execute(this.f34862a);
            } else if (this.f34863b == null) {
                this.f34863b = a(runnable);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private Runnable a(Runnable runnable) {
        return new a(runnable);
    }

    public synchronized void a() {
        Runnable runnable = this.f34863b;
        this.f34862a = runnable;
        this.f34863b = null;
        if (runnable != null) {
            a0.a().execute(this.f34862a);
        }
    }
}
