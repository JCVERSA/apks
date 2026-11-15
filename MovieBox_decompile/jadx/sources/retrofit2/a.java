package retrofit2;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

final class a implements Executor {

    private final Handler f70984a = new Handler(Looper.getMainLooper());

    a() {
    }

    @Override
    public void execute(Runnable runnable) {
        this.f70984a.post(runnable);
    }
}
