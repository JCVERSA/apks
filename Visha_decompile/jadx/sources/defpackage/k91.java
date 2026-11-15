package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class k91 extends Function {
    public final m81 c;
    public final List d;
    public final EvaluableType e;
    public final boolean f;

    public k91(m81 m81Var) {
        y45.j(m81Var, "componentGetter");
        this.c = m81Var;
        this.d = x71.e(new f84(EvaluableType.STRING, false, 2, null));
        this.e = EvaluableType.NUMBER;
        this.f = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.String");
        try {
            return this.c.h(pd3Var, aVar, x71.e(k81.c(k81.b.b((String) objO0))));
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
