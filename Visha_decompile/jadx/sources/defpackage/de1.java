package defpackage;

import android.os.Handler;
import java.util.concurrent.Executor;

public final class de1 implements Executor {
    public final Handler b;

    @Override
    public final void execute(Runnable runnable) {
        this.b.post(runnable);
    }
}
