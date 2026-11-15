package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.mozilla.javascript.ES6Iterator;

public final class w81 extends l25 {
    public static final w81 a = new w81();

    public w81() {
        super(ES6Iterator.VALUE_PROPERTY);
    }

    @Override
    public Integer get(qnb.c cVar) {
        y45.j(cVar, TypedValues.AttributesType.S_TARGET);
        Object objC = cVar.c();
        y45.h(objC, "null cannot be cast to non-null type com.yandex.div.evaluable.types.Color");
        return Integer.valueOf(((k81) objC).k());
    }

    @Override
    public void b(qnb.c cVar, int i) {
        y45.j(cVar, TypedValues.AttributesType.S_TARGET);
        cVar.p(k81.c(k81.d(i)));
    }
}
