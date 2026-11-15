package y;

import androidx.collection.s;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class a {

    public static final C0944a f75993a = new C0944a(null);

    private static final long f75994b = b.b(0.0f, 0.0f, 2, null);

    public static final class C0944a {
        public C0944a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return a.f75994b;
        }

        private C0944a() {
        }
    }

    public static final boolean c(long j10, long j11) {
        return j10 == j11;
    }

    public static final float d(long j10) {
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    public static final float e(long j10) {
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    public static int f(long j10) {
        return s.a(j10);
    }

    public static String g(long j10) {
        if (d(j10) == e(j10)) {
            return "CornerRadius.circular(" + c.a(d(j10), 1) + ')';
        }
        return "CornerRadius.elliptical(" + c.a(d(j10), 1) + ", " + c.a(e(j10), 1) + ')';
    }

    public static long b(long j10) {
        return j10;
    }
}
