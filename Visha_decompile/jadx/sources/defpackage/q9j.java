package defpackage;

import android.os.HandlerThread;
import android.os.Looper;

public final class q9j {
    public final Object a = new Object();
    public Looper b = null;
    public HandlerThread c = null;
    public int d = 0;

    public q9j(Looper looper) {
    }

    public final Looper a() {
        Looper looper;
        synchronized (this.a) {
            try {
                if (this.b == null) {
                    boolean z = false;
                    if (this.d == 0 && this.c == null) {
                        z = true;
                    }
                    n7g.f(z);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    this.c = handlerThread;
                    handlerThread.start();
                    this.b = this.c.getLooper();
                }
                this.d++;
                looper = this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }

    public final void b() {
        HandlerThread handlerThread;
        synchronized (this.a) {
            try {
                n7g.f(this.d > 0);
                int i = this.d - 1;
                this.d = i;
                if (i == 0 && (handlerThread = this.c) != null) {
                    handlerThread.quit();
                    this.c = null;
                    this.b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
