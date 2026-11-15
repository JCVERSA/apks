package io.appmetrica.analytics.impl;

import android.os.Handler;
import java.util.concurrent.Executor;

public final class Sj implements Executor {
    public final Handler a;

    public Sj(Handler handler) {
        this.a = handler;
    }

    @Override
    public final void execute(Runnable runnable) {
        this.a.post(runnable);
    }
}
