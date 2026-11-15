package defpackage;

import kotlinx.serialization.descriptors.a;

public final class ffb implements ef5 {
    public static final ffb a = new ffb();
    public static final a b = e05.a("kotlin.UShort", qn0.C(yg9.a));

    public short a(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return bfb.b(hu1Var.w(getDescriptor()).l());
    }

    public void b(ca3 ca3Var, short s) {
        y45.j(ca3Var, "encoder");
        ca3Var.g(getDescriptor()).k(s);
    }

    @Override
    public Object deserialize(hu1 hu1Var) {
        return bfb.a(a(hu1Var));
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((bfb) obj).g());
    }
}
