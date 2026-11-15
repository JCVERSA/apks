package androidx.work;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class m extends r {

    public static final b f15409e = new b(null);

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(a builder) {
        super(builder.e(), builder.h(), builder.f());
        Intrinsics.h(builder, "builder");
    }

    public static final class a extends r.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Class workerClass, long j10, TimeUnit repeatIntervalTimeUnit) {
            super(workerClass);
            Intrinsics.h(workerClass, "workerClass");
            Intrinsics.h(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
            h().k(repeatIntervalTimeUnit.toMillis(j10));
        }

        @Override
        public m c() {
            if (d() && h().f62996j.h()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            }
            if (h().f63003q) {
                throw new IllegalArgumentException("PeriodicWorkRequests cannot be expedited");
            }
            return new m(this);
        }

        @Override
        public a g() {
            return this;
        }
    }
}
