package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivDisappearAction;
import com.yandex.div2.DivVisibilityAction;

public abstract class xp2 {
    public static final Expression a(wp2 wp2Var) {
        y45.j(wp2Var, "<this>");
        if (wp2Var instanceof DivVisibilityAction) {
            return ((DivVisibilityAction) wp2Var).j;
        }
        if (wp2Var instanceof DivDisappearAction) {
            return ((DivDisappearAction) wp2Var).a;
        }
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.i("Trying to get duration field for unsupported DivSightAction class");
        }
        return Expression.a.a(0L);
    }
}
