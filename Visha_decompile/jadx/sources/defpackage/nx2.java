package defpackage;

import kotlinx.serialization.descriptors.a;

public final class nx2 implements ef5 {
    public static final nx2 a = new nx2();
    public static final a b = new gf8("kotlin.Double", ef8.d.a);

    @Override
    public Double deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return Double.valueOf(hu1Var.m());
    }

    public void b(ca3 ca3Var, double d) {
        y45.j(ca3Var, "encoder");
        ca3Var.x(d);
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((Number) obj).doubleValue());
    }
}
