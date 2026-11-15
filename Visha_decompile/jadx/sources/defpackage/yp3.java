package defpackage;

public abstract class yp3 {
    public static final tp3 a(tp3 tp3Var, boolean z) {
        if (tp3Var == null || y45.e(tp3Var, tp3.b.d) || y45.e(tp3Var, tp3.c.d)) {
            return tp3.c.a(z);
        }
        if (tp3Var instanceof tp3.e) {
            return new tp3.e(z, ((tp3.e) tp3Var).d);
        }
        if (tp3Var instanceof tp3.d) {
            return new tp3.d(z, ((tp3.d) tp3Var).d);
        }
        throw new IllegalStateException("Unknown field type");
    }
}
