package androidx.compose.ui.text.font;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class n {

    public static final a f5830b = new a(null);

    private static final int f5831c = d(0);

    private static final int f5832d = d(1);

    private final int f5833a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return n.f5832d;
        }

        public final int b() {
            return n.f5831c;
        }

        private a() {
        }
    }

    private n(int i10) {
        this.f5833a = i10;
    }

    public static final n c(int i10) {
        return new n(i10);
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof n) && i10 == ((n) obj).i();
    }

    public static final boolean f(int i10, int i11) {
        return i10 == i11;
    }

    public static String h(int i10) {
        if (f(i10, f5831c)) {
            return "Normal";
        }
        return f(i10, f5832d) ? "Italic" : "Invalid";
    }

    public boolean equals(Object obj) {
        return e(this.f5833a, obj);
    }

    public int hashCode() {
        return g(this.f5833a);
    }

    public final int i() {
        return this.f5833a;
    }

    public String toString() {
        return h(this.f5833a);
    }

    public static int d(int i10) {
        return i10;
    }

    public static int g(int i10) {
        return i10;
    }
}
