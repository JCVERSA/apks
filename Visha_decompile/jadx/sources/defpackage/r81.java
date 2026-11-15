package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.c;

public abstract class r81 extends Function {
    public final boolean c;
    public final List d = y71.n(new f84(EvaluableType.DICT, false, 2, null), new f84(EvaluableType.STRING, true));
    public final EvaluableType e = EvaluableType.COLOR;
    public final boolean f;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        Object objM279constructorimpl;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objA = DictFunctionsKt.a(f(), list, m());
        if (!(objA instanceof String)) {
            DictFunctionsKt.g(f(), list, g(), objA, m());
            throw new KotlinNothingValueException();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(k81.c(k81.b.b((String) objA)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) == null) {
            return objM279constructorimpl;
        }
        DictFunctionsKt.d(f(), list, "Unable to convert value to Color, expected format #AARRGGBB.");
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
