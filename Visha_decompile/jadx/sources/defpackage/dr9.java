package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class dr9 {
    public static final int b = 0;
    public static final a a = new a(null);
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return dr9.d;
        }

        public final int b() {
            return dr9.b;
        }

        public final int c() {
            return dr9.e;
        }

        public final int d() {
            return dr9.c;
        }

        public final boolean e(int i) {
            return i == b() || i == d();
        }

        public a() {
        }
    }

    public static final int e() {
        return a.a();
    }

    public static final int f() {
        return a.c();
    }

    public static final int g() {
        return a.d();
    }
}
