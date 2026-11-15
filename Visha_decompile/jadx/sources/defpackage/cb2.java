package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;

public abstract class cb2 extends Function {
    public final List c;
    public final EvaluableType d;
    public final boolean e;

    public cb2() {
        EvaluableType evaluableType = EvaluableType.BOOLEAN;
        this.c = y71.n(new f84(evaluableType, false, 2, null), new f84(EvaluableType.DICT, false, 2, null), new f84(EvaluableType.STRING, true));
        this.d = evaluableType;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.Boolean");
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        Object objC = DictFunctionsKt.c(list, bool, false, 4, null);
        Boolean bool2 = objC instanceof Boolean ? (Boolean) objC : null;
        return bool2 == null ? bool : bool2;
    }

    @Override
    public List d() {
        return this.c;
    }

    @Override
    public EvaluableType g() {
        return this.d;
    }

    @Override
    public boolean i() {
        return this.e;
    }
}
