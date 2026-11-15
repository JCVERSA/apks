package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;

public abstract class jb2 extends Function {
    public final List c;
    public final EvaluableType d;
    public final boolean e;

    public jb2() {
        EvaluableType evaluableType = EvaluableType.URL;
        this.c = y71.n(new f84(evaluableType, false, 2, null), new f84(EvaluableType.DICT, false, 2, null), new f84(EvaluableType.STRING, true));
        this.d = evaluableType;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        String strG;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type com.yandex.div.evaluable.types.Url");
        String strG2 = ((vib) obj).g();
        Object objC = DictFunctionsKt.c(list, vib.a(strG2), false, 4, null);
        String str = objC instanceof String ? (String) objC : null;
        return (str == null || (strG = ArrayFunctionsKt.g(str)) == null) ? vib.a(strG2) : vib.a(strG);
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
