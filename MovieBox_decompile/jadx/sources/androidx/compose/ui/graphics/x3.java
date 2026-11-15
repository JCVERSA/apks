package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class x3 {

    public static final a f4570a = new a(null);

    private static final int f4571b = c(0);

    private static final int f4572c = c(1);

    private static final int f4573d = c(2);

    private static final int f4574e = c(3);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return x3.f4572c;
        }

        public final int b() {
            return x3.f4571b;
        }

        private a() {
        }
    }

    public static final boolean d(int i10, int i11) {
        return i10 == i11;
    }

    public static String f(int i10) {
        if (d(i10, f4571b)) {
            return "None";
        }
        if (d(i10, f4572c)) {
            return "Low";
        }
        if (d(i10, f4573d)) {
            return "Medium";
        }
        return d(i10, f4574e) ? "High" : "Unknown";
    }

    public static int c(int i10) {
        return i10;
    }

    public static int e(int i10) {
        return i10;
    }
}
