package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class d {

    public static final a f6053a = new a(null);

    private static final int f6054b = d(1);

    private static final int f6055c = d(2);

    private static final int f6056d = d(Integer.MIN_VALUE);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return d.f6055c;
        }

        public final int b() {
            return d.f6054b;
        }

        public final int c() {
            return d.f6056d;
        }

        private a() {
        }
    }

    public static final boolean e(int i10, int i11) {
        return i10 == i11;
    }

    public static String g(int i10) {
        if (e(i10, f6054b)) {
            return "Hyphens.None";
        }
        if (e(i10, f6055c)) {
            return "Hyphens.Auto";
        }
        return e(i10, f6056d) ? "Hyphens.Unspecified" : "Invalid";
    }

    private static int d(int i10) {
        return i10;
    }

    public static int f(int i10) {
        return i10;
    }
}
