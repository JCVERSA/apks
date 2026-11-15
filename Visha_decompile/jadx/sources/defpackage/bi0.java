package defpackage;

import kotlinx.serialization.descriptors.a;

public final class bi0 implements ef5 {
    public static final bi0 a = new bi0();
    public static final a b = new gf8("kotlin.Boolean", ef8.a.a);

    @Override
    public Boolean deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return Boolean.valueOf(hu1Var.z());
    }

    public void b(ca3 ca3Var, boolean z) {
        y45.j(ca3Var, "encoder");
        ca3Var.l(z);
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((Boolean) obj).booleanValue());
    }
}
