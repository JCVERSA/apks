package defpackage;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public final class pr0 implements or0 {
    public final mcb a;
    public NewCapturedTypeConstructor b;

    public pr0(mcb mcbVar) {
        y45.j(mcbVar, "projection");
        this.a = mcbVar;
        b().c();
        Variance variance = Variance.INVARIANT;
    }

    @Override
    public mcb b() {
        return this.a;
    }

    @Override
    public px0 c() {
        return (px0) e();
    }

    @Override
    public boolean d() {
        return false;
    }

    public Void e() {
        return null;
    }

    public final NewCapturedTypeConstructor f() {
        return this.b;
    }

    @Override
    public pr0 a(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        mcb mcbVarA = b().a(cVar);
        y45.i(mcbVarA, "projection.refine(kotlinTypeRefiner)");
        return new pr0(mcbVarA);
    }

    @Override
    public List getParameters() {
        return y71.k();
    }

    public final void h(NewCapturedTypeConstructor newCapturedTypeConstructor) {
        this.b = newCapturedTypeConstructor;
    }

    @Override
    public Collection k() {
        eh5 type = b().c() == Variance.OUT_VARIANCE ? b().getType() : o().I();
        y45.i(type, "if (projection.projectio… builtIns.nullableAnyType");
        return x71.e(type);
    }

    @Override
    public d o() {
        d dVarO = b().getType().I0().o();
        y45.i(dVarO, "projection.type.constructor.builtIns");
        return dVarO;
    }

    public String toString() {
        return "CapturedTypeConstructor(" + b() + ')';
    }
}
