package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class j {

    public static final a f6105b = new a(null);

    private static final int f6106c = h(1);

    private static final int f6107d = h(2);

    private static final int f6108e = h(3);

    private static final int f6109f = h(4);

    private static final int f6110g = h(5);

    private static final int f6111h = h(Integer.MIN_VALUE);

    private final int f6112a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return j.f6108e;
        }

        public final int b() {
            return j.f6109f;
        }

        public final int c() {
            return j.f6110g;
        }

        public final int d() {
            return j.f6106c;
        }

        public final int e() {
            return j.f6107d;
        }

        public final int f() {
            return j.f6111h;
        }

        private a() {
        }
    }

    private j(int i10) {
        this.f6112a = i10;
    }

    public static final j g(int i10) {
        return new j(i10);
    }

    public static boolean i(int i10, Object obj) {
        return (obj instanceof j) && i10 == ((j) obj).m();
    }

    public static final boolean j(int i10, int i11) {
        return i10 == i11;
    }

    public static String l(int i10) {
        if (j(i10, f6106c)) {
            return "Ltr";
        }
        if (j(i10, f6107d)) {
            return "Rtl";
        }
        if (j(i10, f6108e)) {
            return "Content";
        }
        if (j(i10, f6109f)) {
            return "ContentOrLtr";
        }
        if (j(i10, f6110g)) {
            return "ContentOrRtl";
        }
        return j(i10, f6111h) ? "Unspecified" : "Invalid";
    }

    public boolean equals(Object obj) {
        return i(this.f6112a, obj);
    }

    public int hashCode() {
        return k(this.f6112a);
    }

    public final int m() {
        return this.f6112a;
    }

    public String toString() {
        return l(this.f6112a);
    }

    public static int h(int i10) {
        return i10;
    }

    public static int k(int i10) {
        return i10;
    }
}
