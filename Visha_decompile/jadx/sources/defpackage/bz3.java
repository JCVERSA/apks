package defpackage;

import kotlinx.serialization.descriptors.a;

public final class bz3 implements ef5 {
    public static final bz3 a = new bz3();
    public static final a b = new gf8("kotlin.Float", ef8.e.a);

    @Override
    public Float deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return Float.valueOf(hu1Var.x());
    }

    public void b(ca3 ca3Var, float f) {
        y45.j(ca3Var, "encoder");
        ca3Var.m(f);
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((Number) obj).floatValue());
    }
}
