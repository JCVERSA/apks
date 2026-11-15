package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class o {

    public static final a f5931b = new a(null);

    private static final int f5932c = j(-1);

    private static final int f5933d = j(1);

    private static final int f5934e = j(0);

    private static final int f5935f = j(2);

    private static final int f5936g = j(3);

    private static final int f5937h = j(4);

    private static final int f5938i = j(5);

    private static final int f5939j = j(6);

    private static final int f5940k = j(7);

    private final int f5941a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return o.f5933d;
        }

        public final int b() {
            return o.f5940k;
        }

        public final int c() {
            return o.f5935f;
        }

        public final int d() {
            return o.f5939j;
        }

        public final int e() {
            return o.f5934e;
        }

        public final int f() {
            return o.f5938i;
        }

        public final int g() {
            return o.f5936g;
        }

        public final int h() {
            return o.f5937h;
        }

        private a() {
        }
    }

    private o(int i10) {
        this.f5941a = i10;
    }

    public static final o i(int i10) {
        return new o(i10);
    }

    public static boolean k(int i10, Object obj) {
        return (obj instanceof o) && i10 == ((o) obj).o();
    }

    public static final boolean l(int i10, int i11) {
        return i10 == i11;
    }

    public static String n(int i10) {
        if (l(i10, f5932c)) {
            return "Unspecified";
        }
        if (l(i10, f5934e)) {
            return "None";
        }
        if (l(i10, f5933d)) {
            return "Default";
        }
        if (l(i10, f5935f)) {
            return "Go";
        }
        if (l(i10, f5936g)) {
            return "Search";
        }
        if (l(i10, f5937h)) {
            return "Send";
        }
        if (l(i10, f5938i)) {
            return "Previous";
        }
        if (l(i10, f5939j)) {
            return "Next";
        }
        return l(i10, f5940k) ? "Done" : "Invalid";
    }

    public boolean equals(Object obj) {
        return k(this.f5941a, obj);
    }

    public int hashCode() {
        return m(this.f5941a);
    }

    public final int o() {
        return this.f5941a;
    }

    public String toString() {
        return n(this.f5941a);
    }

    private static int j(int i10) {
        return i10;
    }

    public static int m(int i10) {
        return i10;
    }
}
