package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import kotlin.KotlinNothingValueException;
import org.json.JSONException;

public abstract class ug extends lg {
    public ug() {
        super(EvaluableType.INTEGER);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) throws JSONException {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objC = ArrayFunctionsKt.c(f(), list, m());
        if (objC instanceof Integer) {
            return Long.valueOf(((Number) objC).intValue());
        }
        if (objC instanceof Long) {
            return objC;
        }
        if (objC instanceof BigInteger) {
            ArrayFunctionsKt.i(f(), list, "Integer overflow.", false, 8, null);
            throw new KotlinNothingValueException();
        }
        if (objC instanceof BigDecimal) {
            ArrayFunctionsKt.i(f(), list, "Cannot convert value to integer.", false, 8, null);
            throw new KotlinNothingValueException();
        }
        if (!(objC instanceof Double)) {
            ArrayFunctionsKt.j(f(), list, g(), objC, m());
            return zfb.a;
        }
        Number number = (Number) objC;
        if (number.doubleValue() < -9.223372036854776E18d || number.doubleValue() > 9.223372036854776E18d) {
            ArrayFunctionsKt.i(f(), list, "Integer overflow.", false, 8, null);
            throw new KotlinNothingValueException();
        }
        long jD = s86.d(number.doubleValue());
        if (number.doubleValue() - jD == 0.0d) {
            return Long.valueOf(jD);
        }
        ArrayFunctionsKt.i(f(), list, "Cannot convert value to integer.", false, 8, null);
        throw new KotlinNothingValueException();
    }
}
