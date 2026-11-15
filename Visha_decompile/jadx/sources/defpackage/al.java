package defpackage;

public class al extends j1 implements v0 {
    public x0 b;
    public p1 c;

    public al(ld4 ld4Var) {
        this.b = ld4Var;
        this.c = ld4Var.j();
    }

    public static al m(Object obj) {
        if (obj == null || (obj instanceof al)) {
            return (al) obj;
        }
        if (obj instanceof mmb) {
            return new al(mmb.n(obj));
        }
        if (obj instanceof ld4) {
            return new al((ld4) obj);
        }
        if (obj instanceof y1) {
            return new al(mmb.m((y1) obj, false));
        }
        if (obj instanceof s1) {
            return new al(ld4.o(obj));
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    @Override
    public p1 j() {
        return this.c;
    }

    public x0 n() {
        return this.b;
    }

    public al(mmb mmbVar) {
        this.b = mmbVar;
        this.c = new dq1(false, 0, mmbVar);
    }
}
