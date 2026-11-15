package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.mozilla.javascript.ES6Iterator;

public final class y25 extends l25 {
    public static final y25 a = new y25();

    public y25() {
        super(ES6Iterator.VALUE_PROPERTY);
    }

    @Override
    public Integer get(qnb.f fVar) {
        y45.j(fVar, TypedValues.AttributesType.S_TARGET);
        Object objC = fVar.c();
        y45.h(objC, "null cannot be cast to non-null type kotlin.Long");
        return Integer.valueOf((int) ((Long) objC).longValue());
    }

    @Override
    public void b(qnb.f fVar, int i) {
        y45.j(fVar, TypedValues.AttributesType.S_TARGET);
        fVar.p(Long.valueOf(i));
    }
}
