package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;
import androidx.media3.common.C;

public final class h7e implements Choreographer.FrameCallback, Handler.Callback {
    public static final h7e g = new h7e();
    public volatile long b = C.TIME_UNSET;
    public final Handler c;
    public final HandlerThread d;
    public Choreographer e;
    public int f;

    public h7e() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        this.d = handlerThread;
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        int i = kfh.a;
        Handler handler = new Handler(looper, this);
        this.c = handler;
        handler.sendEmptyMessage(1);
    }

    public static h7e a() {
        return g;
    }

    public final void b() {
        this.c.sendEmptyMessage(2);
    }

    public final void c() {
        this.c.sendEmptyMessage(3);
    }

    @Override
    public final void doFrame(long j) {
        this.b = j;
        Choreographer choreographer = this.e;
        choreographer.getClass();
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            try {
                this.e = Choreographer.getInstance();
            } catch (RuntimeException e) {
                zrg.g("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e);
            }
            return true;
        }
        if (i == 2) {
            Choreographer choreographer = this.e;
            if (choreographer != null) {
                int i2 = this.f + 1;
                this.f = i2;
                if (i2 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
            return true;
        }
        if (i != 3) {
            return false;
        }
        Choreographer choreographer2 = this.e;
        if (choreographer2 != null) {
            int i3 = this.f - 1;
            this.f = i3;
            if (i3 == 0) {
                choreographer2.removeFrameCallback(this);
                this.b = C.TIME_UNSET;
            }
        }
        return true;
    }
}
