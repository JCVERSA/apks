package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class h {

    public static final a f6091b = new a(null);

    private static final int f6092c = i(1);

    private static final int f6093d = i(2);

    private static final int f6094e = i(3);

    private static final int f6095f = i(4);

    private static final int f6096g = i(5);

    private static final int f6097h = i(6);

    private static final int f6098i = i(Integer.MIN_VALUE);

    private final int f6099a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return h.f6094e;
        }

        public final int b() {
            return h.f6097h;
        }

        public final int c() {
            return h.f6095f;
        }

        public final int d() {
            return h.f6092c;
        }

        public final int e() {
            return h.f6093d;
        }

        public final int f() {
            return h.f6096g;
        }

        public final int g() {
            return h.f6098i;
        }

        private a() {
        }
    }

    private h(int i10) {
        this.f6099a = i10;
    }

    public static final h h(int i10) {
        return new h(i10);
    }

    public static boolean j(int i10, Object obj) {
        return (obj instanceof h) && i10 == ((h) obj).n();
    }

    public static final boolean k(int i10, int i11) {
        return i10 == i11;
    }

    public static String m(int i10) {
        if (k(i10, f6092c)) {
            return "Left";
        }
        if (k(i10, f6093d)) {
            return "Right";
        }
        if (k(i10, f6094e)) {
            return "Center";
        }
        if (k(i10, f6095f)) {
            return "Justify";
        }
        if (k(i10, f6096g)) {
            return "Start";
        }
        if (k(i10, f6097h)) {
            return "End";
        }
        return k(i10, f6098i) ? "Unspecified" : "Invalid";
    }

    public boolean equals(Object obj) {
        return j(this.f6099a, obj);
    }

    public int hashCode() {
        return l(this.f6099a);
    }

    public final int n() {
        return this.f6099a;
    }

    public String toString() {
        return m(this.f6099a);
    }

    public static int i(int i10) {
        return i10;
    }

    public static int l(int i10) {
        return i10;
    }
}
