package defpackage;

import kotlinx.serialization.descriptors.a;

public final class deb implements ef5 {
    public static final deb a = new deb();
    public static final a b = e05.a("kotlin.UByte", qn0.v(ko0.a));

    public byte a(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return zdb.b(hu1Var.w(getDescriptor()).H());
    }

    public void b(ca3 ca3Var, byte b2) {
        y45.j(ca3Var, "encoder");
        ca3Var.g(getDescriptor()).e(b2);
    }

    @Override
    public Object deserialize(hu1 hu1Var) {
        return zdb.a(a(hu1Var));
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((zdb) obj).g());
    }
}
