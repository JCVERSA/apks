package defpackage;

import java.util.concurrent.Executor;

public final class xkj implements Executor {
    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
