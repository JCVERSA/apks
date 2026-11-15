package defpackage;

import com.yandex.div.evaluable.EvaluableException;
import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.Function;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public abstract class o84 {
    public static final Exception a(String str, List list, boolean z) {
        y45.j(str, "name");
        y45.j(list, "args");
        if (z) {
            return c(str, list);
        }
        if (list.isEmpty()) {
            return new EvaluableException("Function requires non empty argument list.", null, 2, null);
        }
        return new EvaluableException("Function has no matching overload for given argument types: " + EvaluableExceptionKt.j(list) + '.', null, 2, null);
    }

    public static Exception b(String str, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return a(str, list, z);
    }

    public static final Exception c(String str, List list) {
        y45.j(str, "name");
        y45.j(list, "args");
        if (list.size() == 1) {
            return new EvaluableException("Method requires non empty argument list.", null, 2, null);
        }
        return new EvaluableException("Method has no matching overload for given argument types: " + EvaluableExceptionKt.j(list.subList(1, list.size())) + '.', null, 2, null);
    }

    public static final Function d(Function function, List list) {
        y45.j(function, "<this>");
        y45.j(list, "args");
        Function.c cVarK = function.k(list);
        if (cVarK instanceof Function.c.C0295c) {
            return function;
        }
        if (cVarK instanceof Function.c.a) {
            StringBuilder sb = new StringBuilder();
            sb.append(function.e() ? "At least" : "Exactly");
            sb.append(' ');
            sb.append(((Function.c.a) cVarK).a());
            sb.append(" argument(s) expected.");
            throw new EvaluableException(sb.toString(), null, 2, null);
        }
        if (!(cVarK instanceof Function.c.b)) {
            throw new NoWhenBranchMatchedException();
        }
        if (y45.e(function.l(list), Function.c.C0295c.a)) {
            return function;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Invalid argument type: expected ");
        Function.c.b bVar = (Function.c.b) cVarK;
        sb2.append(bVar.b());
        sb2.append(", got ");
        sb2.append(bVar.a());
        sb2.append('.');
        throw new EvaluableException(sb2.toString(), null, 2, null);
    }
}
