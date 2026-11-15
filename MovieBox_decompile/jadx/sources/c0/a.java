package c0;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {

    public static final C0142a f16369b = new C0142a(null);

    private static final int f16370c = d(1);

    private static final int f16371d = d(2);

    private final int f16372a;

    public static final class C0142a {
        public C0142a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return a.f16371d;
        }

        public final int b() {
            return a.f16370c;
        }

        private C0142a() {
        }
    }

    private a(int i10) {
        this.f16372a = i10;
    }

    public static final a c(int i10) {
        return new a(i10);
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof a) && i10 == ((a) obj).i();
    }

    public static final boolean f(int i10, int i11) {
        return i10 == i11;
    }

    public static String h(int i10) {
        if (f(i10, f16370c)) {
            return "Touch";
        }
        return f(i10, f16371d) ? "Keyboard" : "Error";
    }

    public boolean equals(Object obj) {
        return e(this.f16372a, obj);
    }

    public int hashCode() {
        return g(this.f16372a);
    }

    public final int i() {
        return this.f16372a;
    }

    public String toString() {
        return h(this.f16372a);
    }

    public static int d(int i10) {
        return i10;
    }

    public static int g(int i10) {
        return i10;
    }
}
