package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.b;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class fy3 extends mgb implements iy3 {
    public final sm9 c;
    public final sm9 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fy3(sm9 sm9Var, sm9 sm9Var2) {
        super(null);
        y45.j(sm9Var, "lowerBound");
        y45.j(sm9Var2, "upperBound");
        this.c = sm9Var;
        this.d = sm9Var2;
    }

    @Override
    public List G0() {
        return P0().G0();
    }

    @Override
    public j H0() {
        return P0().H0();
    }

    @Override
    public sbb I0() {
        return P0().I0();
    }

    @Override
    public boolean J0() {
        return P0().J0();
    }

    public abstract sm9 P0();

    public final sm9 Q0() {
        return this.c;
    }

    public final sm9 R0() {
        return this.d;
    }

    public abstract String S0(DescriptorRenderer descriptorRenderer, b bVar);

    @Override
    public MemberScope p() {
        return P0().p();
    }

    public String toString() {
        return DescriptorRenderer.j.y(this);
    }
}
