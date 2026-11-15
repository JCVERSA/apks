package defpackage;

import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.b;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class jy3 extends fy3 implements cdb {
    public final fy3 e;
    public final eh5 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jy3(fy3 fy3Var, eh5 eh5Var) {
        super(fy3Var.Q0(), fy3Var.R0());
        y45.j(fy3Var, "origin");
        y45.j(eh5Var, "enhancement");
        this.e = fy3Var;
        this.f = eh5Var;
    }

    @Override
    public mgb M0(boolean z) {
        return ddb.d(Q().M0(z), l0().L0().M0(z));
    }

    @Override
    public mgb O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return ddb.d(Q().O0(jVar), l0());
    }

    @Override
    public sm9 P0() {
        return Q().P0();
    }

    @Override
    public String S0(DescriptorRenderer descriptorRenderer, b bVar) {
        y45.j(descriptorRenderer, "renderer");
        y45.j(bVar, "options");
        return bVar.b() ? descriptorRenderer.y(l0()) : Q().S0(descriptorRenderer, bVar);
    }

    @Override
    public fy3 Q() {
        return this.e;
    }

    @Override
    public jy3 S0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        eh5 eh5VarA = cVar.a(Q());
        y45.h(eh5VarA, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType");
        return new jy3((fy3) eh5VarA, cVar.a(l0()));
    }

    @Override
    public eh5 l0() {
        return this.f;
    }

    @Override
    public String toString() {
        return "[@EnhancedForWarnings(" + l0() + ")] " + Q();
    }
}
