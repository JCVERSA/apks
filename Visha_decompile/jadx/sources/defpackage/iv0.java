package defpackage;

import kotlinx.serialization.descriptors.a;

public final class iv0 implements ef5 {
    public static final iv0 a = new iv0();
    public static final a b = new gf8("kotlin.Char", ef8.c.a);

    @Override
    public Character deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return Character.valueOf(hu1Var.n());
    }

    public void b(ca3 ca3Var, char c) {
        y45.j(ca3Var, "encoder");
        ca3Var.D(c);
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((Character) obj).charValue());
    }
}
