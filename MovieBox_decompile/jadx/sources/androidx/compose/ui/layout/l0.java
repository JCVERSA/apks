package androidx.compose.ui.layout;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class l0 {

    public static final a f4884a = new a(null);

    private static final long f4885b = m0.a(Float.NaN, Float.NaN);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final float b(long j10) {
        if (!(j10 != f4885b)) {
            g0.a.b("ScaleFactor is unspecified");
        }
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    public static final float c(long j10) {
        if (!(j10 != f4885b)) {
            g0.a.b("ScaleFactor is unspecified");
        }
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    public static long a(long j10) {
        return j10;
    }
}
