package defpackage;

import kotlinx.serialization.descriptors.a;

public final class ueb implements ef5 {
    public static final ueb a = new ueb();
    public static final a b = e05.a("kotlin.ULong", qn0.B(cr5.a));

    public long a(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return qeb.b(hu1Var.w(getDescriptor()).h());
    }

    public void b(ca3 ca3Var, long j) {
        y45.j(ca3Var, "encoder");
        ca3Var.g(getDescriptor()).z(j);
    }

    @Override
    public Object deserialize(hu1 hu1Var) {
        return qeb.a(a(hu1Var));
    }

    @Override
    public a getDescriptor() {
        return b;
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        b(ca3Var, ((qeb) obj).g());
    }
}
