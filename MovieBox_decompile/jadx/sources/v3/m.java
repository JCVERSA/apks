package v3;

import java.util.concurrent.Executor;

public final class m implements Executor {
    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
