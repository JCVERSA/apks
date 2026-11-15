package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class w3 {

    public static final a f4565a = new a(null);

    private static final int f4566b = d(0);

    private static final int f4567c = d(1);

    private static final int f4568d = d(2);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return w3.f4566b;
        }

        public final int b() {
            return w3.f4568d;
        }

        public final int c() {
            return w3.f4567c;
        }

        private a() {
        }
    }

    public static final boolean e(int i10, int i11) {
        return i10 == i11;
    }

    public static String g(int i10) {
        return "CompositingStrategy(value=" + i10 + ')';
    }

    public static int d(int i10) {
        return i10;
    }

    public static int f(int i10) {
        return i10;
    }
}
