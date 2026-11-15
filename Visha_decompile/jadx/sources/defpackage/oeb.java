package defpackage;

import kotlinx.serialization.descriptors.a;

public final class oeb implements ef5 {
    public static final oeb a = new oeb();
    public static final a b = e05.a("kotlin.UInt", qn0.A(p15.a));

    public int a(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return keb.b(hu1Var.w(getDescriptor()).t());
    }

    public void b(ca3 ca3Var, int i) {
        y45.j(ca3Var, "encoder");
        ca3Var.g(getDescriptor()).s(i);
    }

    @Override
    public Object deserialize(hu1 hu1Var) {
        return keb.a(a(hu1Var));
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((keb) obj).g());
    }
}
