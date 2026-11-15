package androidx.compose.ui.focus;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b {

    public static final a f3928b = new a(null);

    private static final int f3929c = j(1);

    private static final int f3930d = j(2);

    private static final int f3931e = j(3);

    private static final int f3932f = j(4);

    private static final int f3933g = j(5);

    private static final int f3934h = j(6);

    private static final int f3935i = j(7);

    private static final int f3936j = j(8);

    private final int f3937a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return b.f3934h;
        }

        public final int b() {
            return b.f3935i;
        }

        public final int c() {
            return b.f3936j;
        }

        public final int d() {
            return b.f3931e;
        }

        public final int e() {
            return b.f3929c;
        }

        public final int f() {
            return b.f3930d;
        }

        public final int g() {
            return b.f3932f;
        }

        public final int h() {
            return b.f3933g;
        }

        private a() {
        }
    }

    private b(int i10) {
        this.f3937a = i10;
    }

    public static final b i(int i10) {
        return new b(i10);
    }

    public static boolean k(int i10, Object obj) {
        return (obj instanceof b) && i10 == ((b) obj).o();
    }

    public static final boolean l(int i10, int i11) {
        return i10 == i11;
    }

    public static String n(int i10) {
        if (l(i10, f3929c)) {
            return "Next";
        }
        if (l(i10, f3930d)) {
            return "Previous";
        }
        if (l(i10, f3931e)) {
            return "Left";
        }
        if (l(i10, f3932f)) {
            return "Right";
        }
        if (l(i10, f3933g)) {
            return "Up";
        }
        if (l(i10, f3934h)) {
            return "Down";
        }
        if (l(i10, f3935i)) {
            return "Enter";
        }
        return l(i10, f3936j) ? "Exit" : "Invalid FocusDirection";
    }

    public boolean equals(Object obj) {
        return k(this.f3937a, obj);
    }

    public int hashCode() {
        return m(this.f3937a);
    }

    public final int o() {
        return this.f3937a;
    }

    public String toString() {
        return n(this.f3937a);
    }

    public static int j(int i10) {
        return i10;
    }

    public static int m(int i10) {
        return i10;
    }
}
