package defpackage;

import kotlinx.serialization.descriptors.a;

public final class w33 implements ef5 {
    public static final w33 a = new w33();
    public static final a b = new gf8("kotlin.time.Duration", ef8.i.a);

    public long a(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return t33.c.c(hu1Var.o());
    }

    public void b(ca3 ca3Var, long j) {
        y45.j(ca3Var, "encoder");
        ca3Var.v(t33.E(j));
    }

    @Override
    public Object deserialize(hu1 hu1Var) {
        return t33.f(a(hu1Var));
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((t33) obj).I());
    }
}
