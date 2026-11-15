package defpackage;

import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import java.util.Objects;
import java.util.concurrent.Executor;

public final class vij {
    public final Handler a = new Handler(Looper.myLooper());
    public final AudioTrack.StreamEventCallback b = new uij(this);
    public final xij c;

    public vij(xij xijVar) {
        this.c = xijVar;
    }

    public final void a(AudioTrack audioTrack) {
        final Handler handler = this.a;
        Objects.requireNonNull(handler);
        audioTrack.registerStreamEventCallback(new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, this.b);
    }

    public final void b(AudioTrack audioTrack) {
        audioTrack.unregisterStreamEventCallback(this.b);
        this.a.removeCallbacksAndMessages(null);
    }
}
