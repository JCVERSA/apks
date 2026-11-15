package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class n81 extends Function {
    public final s74 c;
    public final List d;
    public final EvaluableType e;
    public final boolean f;

    public n81(s74 s74Var) {
        y45.j(s74Var, "componentSetter");
        this.c = s74Var;
        EvaluableType evaluableType = EvaluableType.COLOR;
        this.d = y71.n(new f84(evaluableType, false, 2, null), new f84(EvaluableType.NUMBER, false, 2, null));
        this.e = evaluableType;
        this.f = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type com.yandex.div.evaluable.types.Color");
        int iK = ((k81) obj).k();
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Double");
        Double d = (Double) obj2;
        d.doubleValue();
        try {
            return k81.c(((k81) this.c.invoke(k81.c(iK), d)).k());
        } catch (IllegalArgumentException unused) {
            EvaluableExceptionKt.g(f(), y71.n(k81.j(iK), d), "Value out of range 0..1.", null, 8, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public List d() {
        return this.d;
    }

    @Override
    public EvaluableType g() {
        return this.e;
    }

    @Override
    public boolean i() {
        return this.f;
    }
}
