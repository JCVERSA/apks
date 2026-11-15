package defpackage;

import android.view.View;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivActionTyped;
import java.util.List;

public final class lg2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.a)) {
            if (!(divActionTyped instanceof DivActionTyped.b)) {
                return false;
            }
            if (str == null) {
                return true;
            }
            div2View.getViewComponent().j().f(str, ((DivActionTyped.b) divActionTyped).c().a);
            return true;
        }
        if (str == null) {
            return true;
        }
        List listC = occ.c(div2View, str);
        if (listC.size() != 1) {
            return true;
        }
        div2View.getViewComponent().j().e(str, (View) i81.o0(listC), ((DivActionTyped.a) divActionTyped).c(), oj3Var);
        return true;
    }
}
