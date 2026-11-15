package defpackage;

import kotlinx.serialization.descriptors.a;

public final class p37 implements ef5 {
    public final ef5 a;
    public final a b;

    public p37(ef5 ef5Var) {
        y45.j(ef5Var, "serializer");
        this.a = ef5Var;
        this.b = new fd9(ef5Var.getDescriptor());
    }

    @Override
    public Object deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return hu1Var.E() ? hu1Var.B(this.a) : hu1Var.g();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && p37.class == obj.getClass() && y45.e(this.a, ((p37) obj).a);
    }

    @Override
    public a getDescriptor() {
        return this.b;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        y45.j(ca3Var, "encoder");
        if (obj == null) {
            ca3Var.A();
        } else {
            ca3Var.E();
            ca3Var.C(this.a, obj);
        }
    }
}
