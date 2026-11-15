package qy;

import java.util.concurrent.Executor;

final class a implements Executor {

    public static final a f70276a = new a();

    private a() {
    }

    @Override
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
