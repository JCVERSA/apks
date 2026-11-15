package androidx.compose.foundation.text.modifiers;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class a {

    public static final C0028a f2964a = new C0028a(null);

    private static final long f2965b = b(Float.NaN, Float.NaN);

    public static final class C0028a {
        public C0028a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return a.f2965b;
        }

        private C0028a() {
        }
    }

    public static long b(float f10, float f11) {
        return c((((long) Float.floatToRawIntBits(f11)) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32));
    }

    public static long d(o0.e eVar) {
        return b(eVar.getDensity(), eVar.B0());
    }

    public static final boolean e(long j10, long j11) {
        return j10 == j11;
    }

    public static final float f(long j10) {
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    public static final float g(long j10) {
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    public static String h(long j10) {
        return "InlineDensity(density=" + f(j10) + ", fontScale=" + g(j10) + ')';
    }

    private static long c(long j10) {
        return j10;
    }
}
