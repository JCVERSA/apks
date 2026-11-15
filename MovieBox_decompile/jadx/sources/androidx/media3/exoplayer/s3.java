package androidx.media3.exoplayer;

import android.os.HandlerThread;
import android.os.Looper;

public final class s3 {

    private final Object f12259a;

    private Looper f12260b;

    private HandlerThread f12261c;

    private int f12262d;

    public s3() {
        this(null);
    }

    public Looper a() {
        Looper looper;
        synchronized (this.f12259a) {
            try {
                if (this.f12260b == null) {
                    androidx.media3.common.util.a.g(this.f12262d == 0 && this.f12261c == null);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    this.f12261c = handlerThread;
                    handlerThread.start();
                    this.f12260b = this.f12261c.getLooper();
                }
                this.f12262d++;
                looper = this.f12260b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return looper;
    }

    public void b() {
        HandlerThread handlerThread;
        synchronized (this.f12259a) {
            try {
                androidx.media3.common.util.a.g(this.f12262d > 0);
                int i10 = this.f12262d - 1;
                this.f12262d = i10;
                if (i10 == 0 && (handlerThread = this.f12261c) != null) {
                    handlerThread.quit();
                    this.f12261c = null;
                    this.f12260b = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public s3(Looper looper) {
        this.f12259a = new Object();
        this.f12260b = looper;
        this.f12261c = null;
        this.f12262d = 0;
    }
}
