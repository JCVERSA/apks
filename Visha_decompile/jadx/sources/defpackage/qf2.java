package defpackage;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivActionTyped;

public final class qf2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.f)) {
            return false;
        }
        div2View.clearFocus();
        eg2.a(div2View);
        return true;
    }
}
