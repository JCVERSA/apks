package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public abstract class m81 extends Function {
    public final e74 c;
    public final List d;
    public final EvaluableType e;
    public final boolean f;

    public m81(e74 e74Var) {
        y45.j(e74Var, "componentGetter");
        this.c = e74Var;
        this.d = x71.e(new f84(EvaluableType.COLOR, false, 2, null));
        this.e = EvaluableType.NUMBER;
        this.f = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        e74 e74Var = this.c;
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type com.yandex.div.evaluable.types.Color");
        return Double.valueOf(s81.a(((Number) e74Var.invoke((k81) objO0)).intValue()));
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
