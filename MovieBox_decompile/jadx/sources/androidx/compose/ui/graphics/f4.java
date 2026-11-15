package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class f4 {

    public static final a f4130b = new a(null);

    private static final int f4131c = g(0);

    private static final int f4132d = g(1);

    private static final int f4133e = g(2);

    private static final int f4134f = g(3);

    private static final int f4135g = g(4);

    private final int f4136a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return f4.f4132d;
        }

        public final int b() {
            return f4.f4131c;
        }

        public final int c() {
            return f4.f4134f;
        }

        public final int d() {
            return f4.f4135g;
        }

        public final int e() {
            return f4.f4133e;
        }

        private a() {
        }
    }

    private f4(int i10) {
        this.f4136a = i10;
    }

    public static final f4 f(int i10) {
        return new f4(i10);
    }

    public static boolean h(int i10, Object obj) {
        return (obj instanceof f4) && i10 == ((f4) obj).l();
    }

    public static final boolean i(int i10, int i11) {
        return i10 == i11;
    }

    public static String k(int i10) {
        if (i(i10, f4131c)) {
            return "Argb8888";
        }
        if (i(i10, f4132d)) {
            return "Alpha8";
        }
        if (i(i10, f4133e)) {
            return "Rgb565";
        }
        if (i(i10, f4134f)) {
            return "F16";
        }
        return i(i10, f4135g) ? "Gpu" : "Unknown";
    }

    public boolean equals(Object obj) {
        return h(this.f4136a, obj);
    }

    public int hashCode() {
        return j(this.f4136a);
    }

    public final int l() {
        return this.f4136a;
    }

    public String toString() {
        return k(this.f4136a);
    }

    public static int g(int i10) {
        return i10;
    }

    public static int j(int i10) {
        return i10;
    }
}
