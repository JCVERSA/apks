package defpackage;

import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.state.PathFormatException;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivActionSetState;
import com.yandex.div2.DivActionTyped;

public final class zf2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.o)) {
            return false;
        }
        b(((DivActionTyped.o) divActionTyped).c(), div2View, oj3Var);
        return true;
    }

    public final void b(DivActionSetState divActionSetState, Div2View div2View, oj3 oj3Var) {
        String str = (String) divActionSetState.a.b(oj3Var);
        try {
            div2View.switchToState(DivStatePath.f.l(str), ((Boolean) divActionSetState.b.b(oj3Var)).booleanValue());
        } catch (PathFormatException e) {
            eg2.e(div2View, new IllegalArgumentException("Invalid format of " + str, e));
        }
    }
}
