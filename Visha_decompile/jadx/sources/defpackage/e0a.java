package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;
import org.apache.commons.lang3.BooleanUtils;

public final class e0a extends Function {
    public static final e0a c = new e0a();
    public static final String d = "toBoolean";
    public static final List e = x71.e(new f84(EvaluableType.STRING, false, 2, null));
    public static final EvaluableType f = EvaluableType.BOOLEAN;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        boolean z;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.String");
        String str = (String) objO0;
        if (y45.e(str, BooleanUtils.TRUE)) {
            z = true;
        } else {
            if (!y45.e(str, BooleanUtils.FALSE)) {
                EvaluableExceptionKt.g(f(), list, "Unable to convert value to Boolean.", null, 8, null);
                throw new KotlinNothingValueException();
            }
            z = false;
        }
        return Boolean.valueOf(z);
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
