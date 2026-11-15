package defpackage;

import kotlinx.serialization.descriptors.a;

public final class kr5 implements ef5 {
    public static final kr5 a = new kr5();
    public static final a b = new gf8("kotlin.Long", ef8.g.a);

    @Override
    public Long deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return Long.valueOf(hu1Var.h());
    }

    public void b(ca3 ca3Var, long j) {
        y45.j(ca3Var, "encoder");
        ca3Var.z(j);
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((Number) obj).longValue());
    }
}
