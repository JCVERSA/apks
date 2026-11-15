package defpackage;

import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public final class fw9 extends ncb {
    public final eh5 a;

    public fw9(d dVar) {
        y45.j(dVar, "kotlinBuiltIns");
        sm9 sm9VarI = dVar.I();
        y45.i(sm9VarI, "kotlinBuiltIns.nullableAnyType");
        this.a = sm9VarI;
    }

    @Override
    public mcb a(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return this;
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public Variance c() {
        return Variance.OUT_VARIANCE;
    }

    @Override
    public eh5 getType() {
        return this.a;
    }
}
