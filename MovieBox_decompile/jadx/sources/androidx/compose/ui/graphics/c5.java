package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class c5 {

    public static final a f4009a = new a(null);

    private static final int f4010b = d(0);

    private static final int f4011c = d(1);

    private static final int f4012d = d(2);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return c5.f4010b;
        }

        public final int b() {
            return c5.f4011c;
        }

        public final int c() {
            return c5.f4012d;
        }

        private a() {
        }
    }

    public static final boolean e(int i10, int i11) {
        return i10 == i11;
    }

    public static String g(int i10) {
        if (e(i10, f4010b)) {
            return "Butt";
        }
        if (e(i10, f4011c)) {
            return "Round";
        }
        return e(i10, f4012d) ? "Square" : "Unknown";
    }

    public static int d(int i10) {
        return i10;
    }

    public static int f(int i10) {
        return i10;
    }
}
