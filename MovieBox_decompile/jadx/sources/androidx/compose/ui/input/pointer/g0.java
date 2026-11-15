package androidx.compose.ui.input.pointer;

public final class g0 {

    private final int f4682a;

    private g0(int i10) {
        this.f4682a = i10;
    }

    public static final g0 a(int i10) {
        return new g0(i10);
    }

    public static boolean c(int i10, Object obj) {
        return (obj instanceof g0) && i10 == ((g0) obj).f();
    }

    public static String e(int i10) {
        return "PointerKeyboardModifiers(packedValue=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f4682a, obj);
    }

    public final int f() {
        return this.f4682a;
    }

    public int hashCode() {
        return d(this.f4682a);
    }

    public String toString() {
        return e(this.f4682a);
    }

    public static int b(int i10) {
        return i10;
    }

    public static int d(int i10) {
        return i10;
    }
}
