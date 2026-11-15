package defpackage;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivActionHideTooltip;
import com.yandex.div2.DivActionTyped;

public final class xf2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.l)) {
            return false;
        }
        b(((DivActionTyped.l) divActionTyped).c(), div2View, oj3Var);
        return true;
    }

    public final void b(DivActionHideTooltip divActionHideTooltip, Div2View div2View, oj3 oj3Var) {
        div2View.hideTooltip((String) divActionHideTooltip.a.b(oj3Var));
    }
}
