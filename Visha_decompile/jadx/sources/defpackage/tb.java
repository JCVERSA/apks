package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class tb implements Executor {
    public final Handler b = new Handler(Looper.getMainLooper());

    @Override
    public void execute(Runnable runnable) {
        this.b.post(runnable);
    }
}
