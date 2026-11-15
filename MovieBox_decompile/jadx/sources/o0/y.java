package o0;

import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class y {

    public static final a f67433b = new a(null);

    private static final long f67434c = e(0);

    private static final long f67435d = e(TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE);

    private static final long f67436e = e(8589934592L);

    private final long f67437a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return y.f67436e;
        }

        public final long b() {
            return y.f67435d;
        }

        public final long c() {
            return y.f67434c;
        }

        private a() {
        }
    }

    private y(long j10) {
        this.f67437a = j10;
    }

    public static final y d(long j10) {
        return new y(j10);
    }

    public static boolean f(long j10, Object obj) {
        return (obj instanceof y) && j10 == ((y) obj).j();
    }

    public static final boolean g(long j10, long j11) {
        return j10 == j11;
    }

    public static int h(long j10) {
        return androidx.collection.s.a(j10);
    }

    public static String i(long j10) {
        if (g(j10, f67434c)) {
            return "Unspecified";
        }
        if (g(j10, f67435d)) {
            return "Sp";
        }
        return g(j10, f67436e) ? "Em" : "Invalid";
    }

    public boolean equals(Object obj) {
        return f(this.f67437a, obj);
    }

    public int hashCode() {
        return h(this.f67437a);
    }

    public final long j() {
        return this.f67437a;
    }

    public String toString() {
        return i(this.f67437a);
    }

    public static long e(long j10) {
        return j10;
    }
}
