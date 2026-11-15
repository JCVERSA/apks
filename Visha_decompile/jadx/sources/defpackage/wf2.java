package defpackage;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivActionTyped;
import com.yandex.div2.DivDownloadCallbacks;

public final class wf2 {
    public static final wf2 a = new wf2();

    public static final boolean a(DivAction divAction, sv2 sv2Var, oj3 oj3Var) {
        y45.j(divAction, "action");
        y45.j(sv2Var, "view");
        y45.j(oj3Var, "resolver");
        return a.b(divAction.h, divAction.j, sv2Var, oj3Var, divAction.a);
    }

    public static final boolean c(wp2 wp2Var, sv2 sv2Var, oj3 oj3Var) {
        y45.j(wp2Var, "action");
        y45.j(sv2Var, "view");
        y45.j(oj3Var, "resolver");
        return a.b(wp2Var.e(), wp2Var.d(), sv2Var, oj3Var, wp2Var.a());
    }

    public final boolean b(String str, DivActionTyped divActionTyped, sv2 sv2Var, oj3 oj3Var, DivDownloadCallbacks divDownloadCallbacks) {
        if (divActionTyped == null) {
            return false;
        }
        if (!(sv2Var instanceof Div2View)) {
            xi.i("Div2View should be used!");
            return false;
        }
        if (divActionTyped instanceof DivActionTyped.j) {
            return ji2.a.e(((DivActionTyped.j) divActionTyped).c(), divDownloadCallbacks, (Div2View) sv2Var, oj3Var);
        }
        Div2View div2View = (Div2View) sv2Var;
        return div2View.getDiv2Component().m().a(str, divActionTyped, div2View, oj3Var);
    }
}
