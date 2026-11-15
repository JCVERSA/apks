package defpackage;

import androidx.media3.common.util.HandlerWrapper;
import java.util.concurrent.Executor;

public final class e88 implements Executor {
    public final HandlerWrapper b;

    @Override
    public final void execute(Runnable runnable) {
        this.b.post(runnable);
    }
}
