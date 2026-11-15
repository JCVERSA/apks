package com.mgtv.thirdsdk.datareport.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.lang.ref.WeakReference;

public abstract class a {
    private final long a;
    private long b;
    private long c;
    private long d;
    private long e;
    private Handler f = new HandlerC0187a(Looper.getMainLooper(), this);

    public static class HandlerC0187a extends Handler {
        private WeakReference<a> a;

        public HandlerC0187a(Looper looper, a aVar) {
            super(looper);
            this.a = new WeakReference<>(aVar);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<a> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            a aVar = this.a.get();
            synchronized (this) {
                try {
                    if (message.what == 1) {
                        long jElapsedRealtime = aVar.c - SystemClock.elapsedRealtime();
                        if (jElapsedRealtime <= 0) {
                            aVar.c();
                        } else if (jElapsedRealtime < aVar.a) {
                            sendMessageDelayed(obtainMessage(1), jElapsedRealtime);
                        } else {
                            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                            aVar.a(jElapsedRealtime);
                            long jElapsedRealtime3 = (jElapsedRealtime2 + aVar.a) - SystemClock.elapsedRealtime();
                            while (jElapsedRealtime3 < 0) {
                                jElapsedRealtime3 += aVar.a;
                            }
                            aVar.d = jElapsedRealtime3;
                            aVar.e = System.currentTimeMillis();
                            sendMessageDelayed(obtainMessage(1), jElapsedRealtime3);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public a(long j, long j2) {
        this.b = j;
        this.a = j2;
    }

    public abstract void a(long j);

    public abstract void c();

    public final void a() {
        this.f.removeMessages(1);
        this.f.removeMessages(2);
    }

    public final synchronized a b() {
        if (this.b <= 0) {
            c();
            return this;
        }
        this.c = SystemClock.elapsedRealtime() + this.b;
        this.f.removeMessages(1);
        Handler handler = this.f;
        handler.sendMessage(handler.obtainMessage(1));
        return this;
    }
}
