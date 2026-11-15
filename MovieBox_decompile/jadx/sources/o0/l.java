package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class l {

    public static final a f67413a = new a(null);

    private static final long f67414b = b(0);

    private static final long f67415c = b(9205357640488583168L);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return l.f67414b;
        }

        private a() {
        }
    }

    public static final float c(long j10) {
        return i.g(Float.intBitsToFloat((int) (j10 & 4294967295L)));
    }

    public static final float d(long j10) {
        return i.g(Float.intBitsToFloat((int) (j10 >> 32)));
    }

    public static long b(long j10) {
        return j10;
    }
}
