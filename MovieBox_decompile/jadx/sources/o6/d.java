package o6;

import androidx.recyclerview.widget.DiffUtil;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final Executor f67627a;

    private final Executor f67628b;

    private final DiffUtil.e f67629c;

    public static final class a {

        public static final C0827a f67630d = new C0827a(null);

        private static final Object f67631e = new Object();

        private static Executor f67632f;

        private final DiffUtil.e f67633a;

        private Executor f67634b;

        private Executor f67635c;

        public static final class C0827a {
            public C0827a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0827a() {
            }
        }

        public a(DiffUtil.e mDiffCallback) {
            Intrinsics.h(mDiffCallback, "mDiffCallback");
            this.f67633a = mDiffCallback;
        }

        public final d a() {
            if (this.f67635c == null) {
                synchronized (f67631e) {
                    try {
                        if (f67632f == null) {
                            f67632f = Executors.newFixedThreadPool(2);
                        }
                        Unit unit = Unit.f64096a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                this.f67635c = f67632f;
            }
            Executor executor = this.f67634b;
            Executor executor2 = this.f67635c;
            Intrinsics.e(executor2);
            return new d(executor, executor2, this.f67633a);
        }
    }

    public d(Executor executor, Executor backgroundThreadExecutor, DiffUtil.e diffCallback) {
        Intrinsics.h(backgroundThreadExecutor, "backgroundThreadExecutor");
        Intrinsics.h(diffCallback, "diffCallback");
        this.f67627a = executor;
        this.f67628b = backgroundThreadExecutor;
        this.f67629c = diffCallback;
    }

    public final Executor a() {
        return this.f67628b;
    }

    public final DiffUtil.e b() {
        return this.f67629c;
    }

    public final Executor c() {
        return this.f67627a;
    }
}
