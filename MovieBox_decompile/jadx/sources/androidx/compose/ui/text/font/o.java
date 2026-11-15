package androidx.compose.ui.text.font;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class o {

    public static final a f5834b = new a(null);

    private static final int f5835c = f(0);

    private static final int f5836d = f(1);

    private static final int f5837e = f(2);

    private static final int f5838f = f(3);

    private final int f5839a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return o.f5836d;
        }

        public final int b() {
            return o.f5835c;
        }

        public final int c() {
            return o.f5838f;
        }

        public final int d() {
            return o.f5837e;
        }

        private a() {
        }
    }

    private o(int i10) {
        this.f5839a = i10;
    }

    public static final o e(int i10) {
        return new o(i10);
    }

    public static boolean g(int i10, Object obj) {
        return (obj instanceof o) && i10 == ((o) obj).k();
    }

    public static final boolean h(int i10, int i11) {
        return i10 == i11;
    }

    public static String j(int i10) {
        if (h(i10, f5835c)) {
            return "None";
        }
        if (h(i10, f5836d)) {
            return "All";
        }
        if (h(i10, f5837e)) {
            return "Weight";
        }
        return h(i10, f5838f) ? "Style" : "Invalid";
    }

    public boolean equals(Object obj) {
        return g(this.f5839a, obj);
    }

    public int hashCode() {
        return i(this.f5839a);
    }

    public final int k() {
        return this.f5839a;
    }

    public String toString() {
        return j(this.f5839a);
    }

    public static int f(int i10) {
        return i10;
    }

    public static int i(int i10) {
        return i10;
    }
}
