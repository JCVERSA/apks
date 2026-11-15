package com.transsion.postdetail.layer;

import android.os.Handler;
import android.os.HandlerThread;

public final class SystemTimeManager {

    private Handler f46877a;

    private a f46878b;

    private boolean f46879c;

    private final HandlerThread f46880d;

    private final Runnable f46881e;

    public interface a {
        long a();
    }

    public SystemTimeManager(a aVar) {
        HandlerThread handlerThread = new HandlerThread("SystemTimeManager");
        this.f46880d = handlerThread;
        this.f46881e = new Runnable() {
            @Override
            public void run() {
                if (this.this$0.f46878b == null) {
                    this.this$0.e();
                    return;
                }
                SystemTimeManager.a aVar2 = this.this$0.f46878b;
                Long lValueOf = aVar2 != null ? Long.valueOf(aVar2.a()) : null;
                if (lValueOf != null) {
                    if (lValueOf.longValue() <= 0) {
                        this.this$0.e();
                        return;
                    }
                    Handler handler = this.this$0.f46877a;
                    if (handler != null) {
                        handler.postDelayed(this, lValueOf.longValue());
                    }
                }
            }
        };
        handlerThread.start();
        this.f46877a = new Handler(handlerThread.getLooper());
        this.f46878b = aVar;
    }

    public final void c() {
        e();
        this.f46879c = false;
        Handler handler = this.f46877a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f46877a = null;
        this.f46878b = null;
        this.f46880d.quitSafely();
    }

    public final void d() {
        if (this.f46879c) {
            return;
        }
        this.f46879c = true;
        Handler handler = this.f46877a;
        if (handler != null) {
            handler.removeCallbacks(this.f46881e);
        }
        Handler handler2 = this.f46877a;
        if (handler2 != null) {
            handler2.post(this.f46881e);
        }
    }

    public final void e() {
        if (this.f46879c) {
            this.f46879c = false;
            Handler handler = this.f46877a;
            if (handler != null) {
                handler.removeCallbacks(this.f46881e);
            }
        }
    }
}
