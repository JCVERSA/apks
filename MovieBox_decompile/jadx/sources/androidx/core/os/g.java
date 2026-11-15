package androidx.core.os;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

public abstract class g {

    private static class a implements Executor {

        private final Handler f7854a;

        a(Handler handler) {
            this.f7854a = (Handler) androidx.core.util.i.g(handler);
        }

        @Override
        public void execute(Runnable runnable) {
            if (this.f7854a.post((Runnable) androidx.core.util.i.g(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f7854a + " is shutting down");
        }
    }

    public static Executor a(Handler handler) {
        return new a(handler);
    }
}
