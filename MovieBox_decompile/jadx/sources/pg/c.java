package pg;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c implements Executor {

    public static final a f69160b = new a(null);

    private static final c f69161c = new c();

    private final Handler f69162a = new Handler(Looper.getMainLooper());

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return c.f69161c;
        }

        private a() {
        }
    }

    public static final void c(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override
    public void execute(final Runnable runnable) {
        if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
            if (runnable != null) {
                runnable.run();
            }
        } else {
            Handler handler = this.f69162a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        c.c(runnable);
                    }
                });
            }
        }
    }
}
