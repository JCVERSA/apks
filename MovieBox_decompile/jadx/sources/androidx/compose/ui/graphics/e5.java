package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class e5 {

    public static final a f4127a = new a(null);

    private static final long f4128b = f5.a(0.5f, 0.5f);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return e5.f4128b;
        }

        private a() {
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
        return androidx.collection.s.a(j10);
    }

    public static String g(long j10) {
        return "TransformOrigin(packedValue=" + j10 + ')';
    }

    public static long b(long j10) {
        return j10;
    }
}
