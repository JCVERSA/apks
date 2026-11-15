package defpackage;

import kotlinx.serialization.descriptors.a;

public final class di9 implements ef5 {
    public static final di9 a = new di9();
    public static final a b = new gf8("kotlin.Short", ef8.h.a);

    @Override
    public Short deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return Short.valueOf(hu1Var.l());
    }

    public void b(ca3 ca3Var, short s) {
        y45.j(ca3Var, "encoder");
        ca3Var.k(s);
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((Number) obj).shortValue());
    }
}
