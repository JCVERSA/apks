package defpackage;

public class fb extends j1 {
    public final oa b;

    public fb(oa oaVar) {
        this.b = oaVar;
    }

    public static fb m(gk3 gk3Var) {
        return n(gk3.r(gk3Var, bk3.L));
    }

    public static fb n(Object obj) {
        if (obj instanceof fb) {
            return (fb) obj;
        }
        if (obj != null) {
            return new fb(oa.o(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        return this.b.j();
    }
}
