package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class h0 {

    public static final a f4689a = new a(null);

    private static final int f4690b = f(0);

    private static final int f4691c = f(1);

    private static final int f4692d = f(2);

    private static final int f4693e = f(3);

    private static final int f4694f = f(4);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return h0.f4694f;
        }

        public final int b() {
            return h0.f4692d;
        }

        public final int c() {
            return h0.f4693e;
        }

        public final int d() {
            return h0.f4691c;
        }

        public final int e() {
            return h0.f4690b;
        }

        private a() {
        }
    }

    public static final boolean g(int i10, int i11) {
        return i10 == i11;
    }

    public static String i(int i10) {
        if (i10 == 1) {
            return "Touch";
        }
        if (i10 == 2) {
            return "Mouse";
        }
        if (i10 != 3) {
            return i10 != 4 ? "Unknown" : "Eraser";
        }
        return "Stylus";
    }

    private static int f(int i10) {
        return i10;
    }

    public static int h(int i10) {
        return i10;
    }
}
