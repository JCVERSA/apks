package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class sh4 extends Function {
    public static final sh4 c = new sh4();
    public static final String d = "getStoredUrlValue";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g = false;

    static {
        EvaluableType evaluableType = EvaluableType.STRING;
        e = y71.n(new f84(evaluableType, false, 2, null), new f84(evaluableType, false, 2, null));
        f = EvaluableType.URL;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj2;
        Object obj3 = pd3Var.b().get((String) obj);
        String strG = obj3 instanceof vib ? ((vib) obj3).g() : null;
        if (strG != null || (strG = ArrayFunctionsKt.g(str)) != null) {
            return vib.a(strG);
        }
        EvaluableExceptionKt.g(f(), list, "Unable to convert value to Url.", null, 8, null);
        throw new KotlinNothingValueException();
    }

    @Override
    public List d() {
        return e;
    }

    @Override
    public String f() {
        return d;
    }

    @Override
    public EvaluableType g() {
        return f;
    }

    @Override
    public boolean i() {
        return g;
    }
}
