package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {

    public static final C0049a f6045b = new C0049a(null);

    private static final float f6046c = c(0.5f);

    private static final float f6047d = c(-0.5f);

    private static final float f6048e = c(0.0f);

    private final float f6049a;

    public static final class C0049a {
        public C0049a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float a() {
            return a.f6048e;
        }

        private C0049a() {
        }
    }

    private a(float f10) {
        this.f6049a = f10;
    }

    public static final a b(float f10) {
        return new a(f10);
    }

    public static boolean d(float f10, Object obj) {
        return (obj instanceof a) && Float.compare(f10, ((a) obj).h()) == 0;
    }

    public static final boolean e(float f10, float f11) {
        return Float.compare(f10, f11) == 0;
    }

    public static int f(float f10) {
        return Float.floatToIntBits(f10);
    }

    public static String g(float f10) {
        return "BaselineShift(multiplier=" + f10 + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f6049a, obj);
    }

    public final float h() {
        return this.f6049a;
    }

    public int hashCode() {
        return f(this.f6049a);
    }

    public String toString() {
        return g(this.f6049a);
    }

    public static float c(float f10) {
        return f10;
    }
}
