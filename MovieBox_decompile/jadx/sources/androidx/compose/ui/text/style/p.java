package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class p {

    public static final a f6133a = new a(null);

    private static final int f6134b = d(1);

    private static final int f6135c = d(2);

    private static final int f6136d = d(3);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return p.f6134b;
        }

        public final int b() {
            return p.f6135c;
        }

        public final int c() {
            return p.f6136d;
        }

        private a() {
        }
    }

    public static final boolean e(int i10, int i11) {
        return i10 == i11;
    }

    public static String g(int i10) {
        if (e(i10, f6134b)) {
            return "Clip";
        }
        if (e(i10, f6135c)) {
            return "Ellipsis";
        }
        return e(i10, f6136d) ? "Visible" : "Invalid";
    }

    public static int d(int i10) {
        return i10;
    }

    public static int f(int i10) {
        return i10;
    }
}
