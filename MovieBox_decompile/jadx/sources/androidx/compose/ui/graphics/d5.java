package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class d5 {

    public static final a f4121a = new a(null);

    private static final int f4122b = d(0);

    private static final int f4123c = d(1);

    private static final int f4124d = d(2);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return d5.f4124d;
        }

        public final int b() {
            return d5.f4122b;
        }

        public final int c() {
            return d5.f4123c;
        }

        private a() {
        }
    }

    public static final boolean e(int i10, int i11) {
        return i10 == i11;
    }

    public static String g(int i10) {
        if (e(i10, f4122b)) {
            return "Miter";
        }
        if (e(i10, f4123c)) {
            return "Round";
        }
        return e(i10, f4124d) ? "Bevel" : "Unknown";
    }

    public static int d(int i10) {
        return i10;
    }

    public static int f(int i10) {
        return i10;
    }
}
