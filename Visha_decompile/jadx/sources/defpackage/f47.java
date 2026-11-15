package defpackage;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.mozilla.javascript.ES6Iterator;

public final class f47 extends zy3 {
    public static final f47 a = new f47();

    public f47() {
        super(ES6Iterator.VALUE_PROPERTY);
    }

    @Override
    public Float get(qnb.e eVar) {
        y45.j(eVar, TypedValues.AttributesType.S_TARGET);
        Object objC = eVar.c();
        y45.h(objC, "null cannot be cast to non-null type kotlin.Double");
        return Float.valueOf((float) ((Double) objC).doubleValue());
    }

    @Override
    public void b(qnb.e eVar, float f) {
        y45.j(eVar, TypedValues.AttributesType.S_TARGET);
        Log.i("NumberValueProperty", "set variable value: " + f);
        eVar.p(Double.valueOf((double) f));
    }
}
