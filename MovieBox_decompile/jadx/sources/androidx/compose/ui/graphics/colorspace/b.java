package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class b {

    public static final a f4035a = new a(null);

    private static final long f4036b;

    private static final long f4037c;

    private static final long f4038d;

    private static final long f4039e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return b.f4038d;
        }

        public final long b() {
            return b.f4036b;
        }

        public final long c() {
            return b.f4037c;
        }

        private a() {
        }
    }

    static {
        long j10 = 3;
        long j11 = j10 << 32;
        f4036b = d((((long) 0) & 4294967295L) | j11);
        f4037c = d((((long) 1) & 4294967295L) | j11);
        f4038d = d(j11 | (((long) 2) & 4294967295L));
        f4039e = d((j10 & 4294967295L) | (((long) 4) << 32));
    }

    public static final boolean e(long j10, long j11) {
        return j10 == j11;
    }

    public static final int f(long j10) {
        return (int) (j10 >> 32);
    }

    public static int g(long j10) {
        return androidx.collection.s.a(j10);
    }

    public static String h(long j10) {
        if (e(j10, f4036b)) {
            return "Rgb";
        }
        if (e(j10, f4037c)) {
            return "Xyz";
        }
        if (e(j10, f4038d)) {
            return "Lab";
        }
        return e(j10, f4039e) ? "Cmyk" : "Unknown";
    }

    public static long d(long j10) {
        return j10;
    }
}
