package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class i implements Comparable {

    public static final a f67404b = new a(null);

    private static final float f67405c = g(0.0f);

    private static final float f67406d = g(Float.POSITIVE_INFINITY);

    private static final float f67407e = g(Float.NaN);

    private final float f67408a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float a() {
            return i.f67405c;
        }

        public final float b() {
            return i.f67407e;
        }

        private a() {
        }
    }

    private i(float f10) {
        this.f67408a = f10;
    }

    public static final i d(float f10) {
        return new i(f10);
    }

    public static int f(float f10, float f11) {
        return Float.compare(f10, f11);
    }

    public static boolean h(float f10, Object obj) {
        return (obj instanceof i) && Float.compare(f10, ((i) obj).l()) == 0;
    }

    public static final boolean i(float f10, float f11) {
        return Float.compare(f10, f11) == 0;
    }

    public static int j(float f10) {
        return Float.floatToIntBits(f10);
    }

    public static String k(float f10) {
        if (Float.isNaN(f10)) {
            return "Dp.Unspecified";
        }
        return f10 + ".dp";
    }

    @Override
    public int compareTo(Object obj) {
        return e(((i) obj).l());
    }

    public int e(float f10) {
        return f(this.f67408a, f10);
    }

    public boolean equals(Object obj) {
        return h(this.f67408a, obj);
    }

    public int hashCode() {
        return j(this.f67408a);
    }

    public final float l() {
        return this.f67408a;
    }

    public String toString() {
        return k(this.f67408a);
    }

    public static float g(float f10) {
        return f10;
    }
}
