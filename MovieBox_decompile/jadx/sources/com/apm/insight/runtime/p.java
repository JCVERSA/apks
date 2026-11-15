package com.apm.insight.runtime;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class p {

    private final HandlerThread f19227a;

    private volatile Handler f19230d;

    private final Queue<c> f19228b = new ConcurrentLinkedQueue();

    private final Queue<Message> f19229c = new ConcurrentLinkedQueue();

    private final Object f19231e = new Object();

    class a implements Runnable {
        a() {
        }

        @Override
        public final void run() {
            while (!p.this.f19229c.isEmpty()) {
                if (p.this.f19230d != null) {
                    try {
                        p.this.f19230d.sendMessageAtFrontOfQueue((Message) p.this.f19229c.poll());
                    } catch (Throwable unused) {
                    }
                }
            }
            while (!p.this.f19228b.isEmpty()) {
                c cVar = (c) p.this.f19228b.poll();
                if (p.this.f19230d != null) {
                    try {
                        p.this.f19230d.sendMessageAtTime(cVar.f19236a, cVar.f19237b);
                    } catch (Throwable unused2) {
                    }
                }
            }
        }
    }

    class b extends HandlerThread {

        private volatile int f19233a;

        private volatile boolean f19234b;

        b(String str) {
            super(str);
            this.f19233a = 0;
            this.f19234b = false;
        }

        @Override
        protected final void onLooperPrepared() {
            super.onLooperPrepared();
            synchronized (p.this.f19231e) {
                try {
                    p.this.f19230d = new Handler();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            p.this.f19230d.post(p.this.new a());
            while (true) {
                try {
                    Looper.loop();
                } catch (Throwable th3) {
                    try {
                        com.apm.insight.b.f.a(com.apm.insight.e.g()).a().c();
                        if (this.f19233a < 5) {
                            com.apm.insight.c.a();
                            j.a(th3, "NPTH_CATCH");
                        } else if (!this.f19234b) {
                            this.f19234b = true;
                            com.apm.insight.c.a();
                            j.a(new RuntimeException(), "NPTH_ERR_MAX");
                        }
                        this.f19233a++;
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    static class c {

        Message f19236a;

        long f19237b;

        c(Message message, long j10) {
            this.f19236a = message;
            this.f19237b = j10;
        }
    }

    static {
        new Object() {
        };
        new Object() {
        };
    }

    public p(String str) {
        this.f19227a = new b(str);
    }

    public final void b() {
        this.f19227a.start();
    }

    public final HandlerThread c() {
        return this.f19227a;
    }

    private Message b(Runnable runnable) {
        return Message.obtain(this.f19230d, runnable);
    }

    @Nullable
    public final Handler a() {
        return this.f19230d;
    }

    private boolean b(Message message, long j10) {
        if (this.f19230d == null) {
            synchronized (this.f19231e) {
                try {
                    if (this.f19230d == null) {
                        this.f19228b.add(new c(message, j10));
                        return true;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        try {
            return this.f19230d.sendMessageAtTime(message, j10);
        } catch (Throwable unused) {
            return true;
        }
    }

    public final boolean a(Runnable runnable) {
        return a(b(runnable), 0L);
    }

    public final boolean a(Runnable runnable, long j10) {
        return a(b(runnable), j10);
    }

    private boolean a(Message message, long j10) {
        if (j10 < 0) {
            j10 = 0;
        }
        return b(message, SystemClock.uptimeMillis() + j10);
    }
}
