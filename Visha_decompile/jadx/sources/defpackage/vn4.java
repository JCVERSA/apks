package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public class vn4 implements Executor {
    public final Handler b;

    public vn4(Looper looper) {
        this.b = new t6i(looper);
    }

    @Override
    public final void execute(Runnable runnable) {
        this.b.post(runnable);
    }
}
