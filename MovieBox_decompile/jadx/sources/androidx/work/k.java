package androidx.work;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class k extends r {

    public static final b f15405e = new b(null);

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final k a(Class workerClass) {
            Intrinsics.h(workerClass, "workerClass");
            return (k) new a(workerClass).b();
        }

        private b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(a builder) {
        super(builder.e(), builder.h(), builder.f());
        Intrinsics.h(builder, "builder");
    }

    public static final k e(Class cls) {
        return f15405e.a(cls);
    }

    public static final class a extends r.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Class workerClass) {
            super(workerClass);
            Intrinsics.h(workerClass, "workerClass");
            h().f62990d = OverwritingInputMerger.class.getName();
        }

        @Override
        public k c() {
            if (d() && h().f62996j.h()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            }
            return new k(this);
        }

        @Override
        public a g() {
            return this;
        }
    }
}
