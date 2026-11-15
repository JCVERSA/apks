package defpackage;

import java.util.Iterator;
import kotlinx.serialization.descriptors.a;

public abstract class df8 extends n71 {
    public final a b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public df8(ef5 ef5Var) {
        super(ef5Var, null);
        y45.j(ef5Var, "primitiveSerializer");
        this.b = new cf8(ef5Var.getDescriptor());
    }

    @Override
    public final Iterator d(Object obj) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override
    public final Object deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return f(hu1Var, null);
    }

    @Override
    public final a getDescriptor() {
        return this.b;
    }

    @Override
    public final bf8 a() {
        return (bf8) k(r());
    }

    @Override
    public final int b(bf8 bf8Var) {
        y45.j(bf8Var, "<this>");
        return bf8Var.d();
    }

    @Override
    public final void c(bf8 bf8Var, int i) {
        y45.j(bf8Var, "<this>");
        bf8Var.b(i);
    }

    public abstract Object r();

    @Override
    public final void n(bf8 bf8Var, int i, Object obj) {
        y45.j(bf8Var, "<this>");
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    @Override
    public final void serialize(ca3 ca3Var, Object obj) {
        y45.j(ca3Var, "encoder");
        int iE = e(obj);
        a aVar = this.b;
        id1 id1VarY = ca3Var.y(aVar, iE);
        u(id1VarY, obj, iE);
        id1VarY.c(aVar);
    }

    @Override
    public final Object l(bf8 bf8Var) {
        y45.j(bf8Var, "<this>");
        return bf8Var.a();
    }

    public abstract void u(id1 id1Var, Object obj, int i);
}
