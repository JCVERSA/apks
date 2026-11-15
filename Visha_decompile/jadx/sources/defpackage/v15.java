package defpackage;

import kotlinx.serialization.descriptors.a;

public final class v15 implements ef5 {
    public static final v15 a = new v15();
    public static final a b = new gf8("kotlin.Int", ef8.f.a);

    @Override
    public Integer deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return Integer.valueOf(hu1Var.t());
    }

    public void b(ca3 ca3Var, int i) {
        y45.j(ca3Var, "encoder");
        ca3Var.s(i);
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((Number) obj).intValue());
    }
}
