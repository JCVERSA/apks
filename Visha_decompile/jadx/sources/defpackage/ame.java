package defpackage;

import android.os.Handler;
import com.google.android.gms.internal.ads.b;
import java.util.concurrent.Executor;

public final class ame implements Executor {
    public final Handler b;

    public ame(b bVar, Handler handler) {
        this.b = handler;
    }

    @Override
    public final void execute(Runnable runnable) {
        this.b.post(runnable);
    }
}
