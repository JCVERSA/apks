package defpackage;

public abstract class vn8 {
    public static final void a(boolean z, Number number) {
        y45.j(number, "step");
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + number + '.');
    }

    public static oy0 b(float f, float f2) {
        return new ny0(f, f2);
    }
}
