package defpackage;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.items.b;
import com.yandex.div2.DivActionScrollBy;
import com.yandex.div2.DivActionScrollDestination;
import com.yandex.div2.DivActionScrollTo;
import com.yandex.div2.DivActionTyped;

public final class yf2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (divActionTyped instanceof DivActionTyped.m) {
            b(((DivActionTyped.m) divActionTyped).c(), div2View, oj3Var);
            return true;
        }
        if (!(divActionTyped instanceof DivActionTyped.n)) {
            return false;
        }
        c(((DivActionTyped.n) divActionTyped).c(), div2View, oj3Var);
        return true;
    }

    public final void b(DivActionScrollBy divActionScrollBy, Div2View div2View, oj3 oj3Var) {
        String str = (String) divActionScrollBy.b.b(oj3Var);
        int iLongValue = (int) ((Number) divActionScrollBy.d.b(oj3Var)).longValue();
        int iLongValue2 = (int) ((Number) divActionScrollBy.c.b(oj3Var)).longValue();
        String strB = DivActionScrollBy.Overflow.INSTANCE.b((DivActionScrollBy.Overflow) divActionScrollBy.e.b(oj3Var));
        boolean zBooleanValue = ((Boolean) divActionScrollBy.a.b(oj3Var)).booleanValue();
        b bVarB = b.a.b(b.b, str, div2View, oj3Var, null, 8, null);
        if (bVarB == null) {
            return;
        }
        bVarB.a(strB, iLongValue2, zBooleanValue);
        bVarB.c(strB, iLongValue, zBooleanValue);
    }

    public final void c(DivActionScrollTo divActionScrollTo, Div2View div2View, oj3 oj3Var) {
        String str = (String) divActionScrollTo.c.b(oj3Var);
        boolean zBooleanValue = ((Boolean) divActionScrollTo.a.b(oj3Var)).booleanValue();
        b bVarB = b.a.b(b.b, str, div2View, oj3Var, null, 8, null);
        if (bVarB == null) {
            return;
        }
        DivActionScrollDestination divActionScrollDestination = divActionScrollTo.b;
        if (divActionScrollDestination instanceof DivActionScrollDestination.d) {
            bVarB.d((int) ((Number) ((DivActionScrollDestination.d) divActionScrollDestination).c().a.b(oj3Var)).longValue(), zBooleanValue);
            return;
        }
        if (divActionScrollDestination instanceof DivActionScrollDestination.c) {
            bVarB.g((int) ((Number) ((DivActionScrollDestination.c) divActionScrollDestination).c().a.b(oj3Var)).longValue(), zBooleanValue);
        } else if (divActionScrollDestination instanceof DivActionScrollDestination.b) {
            bVarB.e(zBooleanValue);
        } else if (divActionScrollDestination instanceof DivActionScrollDestination.e) {
            bVarB.f(zBooleanValue);
        }
    }
}
