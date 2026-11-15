package pg;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final a f69170a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void c(og.b bVar, String str, Thread thread, Throwable th2) {
            Intrinsics.e(th2);
            bVar.b(str, th2);
        }

        public final void b(Thread thread, final String name, final og.b runnableCallback) {
            Intrinsics.h(thread, "thread");
            Intrinsics.h(name, "name");
            Intrinsics.h(runnableCallback, "runnableCallback");
            thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
                @Override
                public final void uncaughtException(Thread thread2, Throwable th2) {
                    f.a.c(runnableCallback, name, thread2, th2);
                }
            });
            thread.setName(name);
        }

        private a() {
        }
    }
}
