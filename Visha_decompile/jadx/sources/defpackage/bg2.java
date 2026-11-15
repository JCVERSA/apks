package defpackage;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionShowTooltip;
import com.yandex.div2.DivActionTyped;

public final class bg2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.r)) {
            return false;
        }
        b(((DivActionTyped.r) divActionTyped).c(), div2View, oj3Var);
        return true;
    }

    public final void b(DivActionShowTooltip divActionShowTooltip, Div2View div2View, oj3 oj3Var) {
        String str = (String) divActionShowTooltip.a.b(oj3Var);
        Expression expression = divActionShowTooltip.b;
        Boolean bool = expression != null ? (Boolean) expression.b(oj3Var) : null;
        if (bool != null) {
            div2View.showTooltip(str, bool.booleanValue());
        } else {
            div2View.showTooltip(str);
        }
    }
}
