package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class xib extends Function {
    public final boolean c;
    public final List d = y71.n(new f84(EvaluableType.DICT, false, 2, null), new f84(EvaluableType.STRING, true));
    public final EvaluableType e = EvaluableType.URL;
    public final boolean f;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        String strG;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objA = DictFunctionsKt.a(f(), list, m());
        String str = objA instanceof String ? (String) objA : null;
        if (str != null && (strG = ArrayFunctionsKt.g(str)) != null) {
            return vib.a(strG);
        }
        DictFunctionsKt.g(f(), list, g(), objA, m());
        throw new KotlinNothingValueException();
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

    public boolean m() {
        return this.c;
    }
}
