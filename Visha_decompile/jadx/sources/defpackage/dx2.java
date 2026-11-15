package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class dx2 extends Function {
    public static final dx2 c = new dx2();
    public static final String d = TtmlNode.TAG_DIV;
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.NUMBER;
        e = y71.n(new f84(evaluableType, false, 2, null), new f84(evaluableType, false, 2, null));
        f = evaluableType;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.Double");
        double dDoubleValue = ((Double) objO0).doubleValue();
        Object objA0 = i81.A0(list);
        y45.h(objA0, "null cannot be cast to non-null type kotlin.Double");
        double dDoubleValue2 = ((Double) objA0).doubleValue();
        if (dDoubleValue2 != 0.0d) {
            return Double.valueOf(dDoubleValue / dDoubleValue2);
        }
        EvaluableExceptionKt.g(f(), list, "Division by zero is not supported.", null, 8, null);
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
