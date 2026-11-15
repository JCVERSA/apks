package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class l91 extends Function {
    public final n81 c;
    public final List d;
    public final EvaluableType e;
    public final boolean f;

    public l91(n81 n81Var) {
        y45.j(n81Var, "componentSetter");
        this.c = n81Var;
        this.d = y71.n(new f84(EvaluableType.STRING, false, 2, null), new f84(EvaluableType.NUMBER, false, 2, null));
        this.e = EvaluableType.COLOR;
        this.f = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        try {
            return this.c.h(pd3Var, aVar, y71.n(k81.c(k81.b.b((String) obj)), list.get(1)));
        } catch (IllegalArgumentException e) {
            EvaluableExceptionKt.f(f(), list, "Unable to convert value to Color, expected format #AARRGGBB.", e);
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
