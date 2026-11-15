package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class za2 extends Function {
    public final boolean c;
    public final List d = y71.n(new f84(EvaluableType.DICT, false, 2, null), new f84(EvaluableType.STRING, true));
    public final EvaluableType e = EvaluableType.INTEGER;
    public final boolean f;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        long jLongValue;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objA = DictFunctionsKt.a(f(), list, m());
        if (objA instanceof Integer) {
            jLongValue = ((Number) objA).intValue();
        } else {
            if (!(objA instanceof Long)) {
                if (objA instanceof BigInteger) {
                    DictFunctionsKt.e(f(), list, "Integer overflow.", m());
                    throw new KotlinNothingValueException();
                }
                if (objA instanceof BigDecimal) {
                    DictFunctionsKt.e(f(), list, "Cannot convert value to integer.", m());
                    throw new KotlinNothingValueException();
                }
                if (!(objA instanceof Double)) {
                    DictFunctionsKt.g(f(), list, g(), objA, m());
                    throw new KotlinNothingValueException();
                }
                Number number = (Number) objA;
                if (number.doubleValue() < -9.223372036854776E18d || number.doubleValue() > 9.223372036854776E18d) {
                    DictFunctionsKt.e(f(), list, "Integer overflow.", m());
                    throw new KotlinNothingValueException();
                }
                long jD = s86.d(number.doubleValue());
                if (number.doubleValue() - jD == 0.0d) {
                    return Long.valueOf(jD);
                }
                DictFunctionsKt.e(f(), list, "Cannot convert value to integer.", m());
                throw new KotlinNothingValueException();
            }
            jLongValue = ((Number) objA).longValue();
        }
        return Long.valueOf(jLongValue);
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
