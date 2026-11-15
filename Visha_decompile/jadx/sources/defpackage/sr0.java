package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public final class sr0 implements hcb {
    public final hcb b;
    public final xt1 c;
    public final int d;

    public sr0(hcb hcbVar, xt1 xt1Var, int i) {
        y45.j(hcbVar, "originalDescriptor");
        y45.j(xt1Var, "declarationDescriptor");
        this.b = hcbVar;
        this.c = xt1Var;
        this.d = i;
    }

    @Override
    public boolean A() {
        return true;
    }

    @Override
    public vx9 a0() {
        return this.b.a0();
    }

    @Override
    public xt1 b() {
        return this.c;
    }

    @Override
    public md getAnnotations() {
        return this.b.getAnnotations();
    }

    @Override
    public int getIndex() {
        return this.d + this.b.getIndex();
    }

    @Override
    public by6 getName() {
        return this.b.getName();
    }

    @Override
    public yt9 getSource() {
        return this.b.getSource();
    }

    @Override
    public List getUpperBounds() {
        return this.b.getUpperBounds();
    }

    @Override
    public Variance h() {
        return this.b.h();
    }

    @Override
    public sbb m() {
        return this.b.m();
    }

    @Override
    public sm9 q() {
        return this.b.q();
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return this.b.q0(bu1Var, obj);
    }

    public String toString() {
        return this.b + "[inner-copy]";
    }

    @Override
    public boolean u() {
        return this.b.u();
    }

    @Override
    public hcb a() {
        hcb hcbVarA = this.b.a();
        y45.i(hcbVarA, "originalDescriptor.original");
        return hcbVarA;
    }
}
