package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class bmj implements Executor {
    public final Handler b = new h5e(Looper.getMainLooper());

    @Override
    public final void execute(Runnable runnable) {
        this.b.post(runnable);
    }
}
