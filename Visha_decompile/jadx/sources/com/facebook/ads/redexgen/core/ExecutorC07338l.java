package com.facebook.ads.redexgen.core;

import android.os.Handler;
import java.util.concurrent.Executor;

public final class ExecutorC07338l implements Executor {
    public final Handler A00;

    @Override
    public final void execute(Runnable runnable) {
        this.A00.post(runnable);
    }
}
