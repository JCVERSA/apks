package defpackage;

public class gb extends j1 {
    public final s0 b;

    public gb(s0 s0Var) {
        this.b = s0Var;
    }

    public static gb m(gk3 gk3Var) {
        return n(gk3.r(gk3Var, bk3.M));
    }

    public static gb n(Object obj) {
        if (obj instanceof gb) {
            return (gb) obj;
        }
        if (obj != null) {
            return new gb(s0.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        return this.b;
    }
}
