package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

public abstract class r1 extends w {

    private final kotlinx.serialization.descriptors.f f65225b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r1(kotlinx.serialization.b primitiveSerializer) {
        super(primitiveSerializer, null);
        Intrinsics.h(primitiveSerializer, "primitiveSerializer");
        this.f65225b = new q1(primitiveSerializer.getDescriptor());
    }

    @Override
    protected final Iterator d(Object obj) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override
    public final Object deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return f(decoder, null);
    }

    @Override
    public final kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65225b;
    }

    @Override
    public final p1 a() {
        return (p1) k(r());
    }

    @Override
    public final int b(p1 p1Var) {
        Intrinsics.h(p1Var, "<this>");
        return p1Var.d();
    }

    @Override
    public final void c(p1 p1Var, int i10) {
        Intrinsics.h(p1Var, "<this>");
        p1Var.b(i10);
    }

    protected abstract Object r();

    @Override
    public final void n(p1 p1Var, int i10, Object obj) {
        Intrinsics.h(p1Var, "<this>");
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    @Override
    public final void serialize(sy.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        int iE = e(obj);
        kotlinx.serialization.descriptors.f fVar = this.f65225b;
        sy.d dVarJ = encoder.j(fVar, iE);
        u(dVarJ, obj, iE);
        dVarJ.c(fVar);
    }

    @Override
    public final Object l(p1 p1Var) {
        Intrinsics.h(p1Var, "<this>");
        return p1Var.a();
    }

    protected abstract void u(sy.d dVar, Object obj, int i10);
}
