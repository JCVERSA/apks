package androidx.compose.ui.semantics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class f {

    public static final a f5655b = new a(null);

    private static final int f5656c = i(0);

    private static final int f5657d = i(1);

    private static final int f5658e = i(2);

    private static final int f5659f = i(3);

    private static final int f5660g = i(4);

    private static final int f5661h = i(5);

    private static final int f5662i = i(6);

    private final int f5663a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return f.f5656c;
        }

        public final int b() {
            return f.f5657d;
        }

        public final int c() {
            return f.f5662i;
        }

        public final int d() {
            return f.f5661h;
        }

        public final int e() {
            return f.f5659f;
        }

        public final int f() {
            return f.f5658e;
        }

        public final int g() {
            return f.f5660g;
        }

        private a() {
        }
    }

    private f(int i10) {
        this.f5663a = i10;
    }

    public static final f h(int i10) {
        return new f(i10);
    }

    public static boolean j(int i10, Object obj) {
        return (obj instanceof f) && i10 == ((f) obj).n();
    }

    public static final boolean k(int i10, int i11) {
        return i10 == i11;
    }

    public static String m(int i10) {
        if (k(i10, f5656c)) {
            return "Button";
        }
        if (k(i10, f5657d)) {
            return "Checkbox";
        }
        if (k(i10, f5658e)) {
            return "Switch";
        }
        if (k(i10, f5659f)) {
            return "RadioButton";
        }
        if (k(i10, f5660g)) {
            return "Tab";
        }
        if (k(i10, f5661h)) {
            return "Image";
        }
        return k(i10, f5662i) ? "DropdownList" : "Unknown";
    }

    public boolean equals(Object obj) {
        return j(this.f5663a, obj);
    }

    public int hashCode() {
        return l(this.f5663a);
    }

    public final int n() {
        return this.f5663a;
    }

    public String toString() {
        return m(this.f5663a);
    }

    private static int i(int i10) {
        return i10;
    }

    public static int l(int i10) {
        return i10;
    }
}
