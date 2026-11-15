package defpackage;

import kotlinx.serialization.descriptors.a;

public final class lo0 implements ef5 {
    public static final lo0 a = new lo0();
    public static final a b = new gf8("kotlin.Byte", ef8.b.a);

    @Override
    public Byte deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return Byte.valueOf(hu1Var.H());
    }

    public void b(ca3 ca3Var, byte b2) {
        y45.j(ca3Var, "encoder");
        ca3Var.e(b2);
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((Number) obj).byteValue());
    }
}
