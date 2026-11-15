package androidx.media3.exoplayer.audio;

import android.os.Handler;
import java.util.concurrent.Executor;

public final class w0 implements Executor {

    public final Handler f10930a;

    @Override
    public final void execute(Runnable runnable) {
        this.f10930a.post(runnable);
    }
}
