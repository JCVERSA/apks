package defpackage;

import android.view.View;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.core.state.DivPathUtils;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.state.StateConflictException;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.widgets.DivStateLayout;
import com.yandex.div2.Div;
import com.yandex.div2.DivData;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;

public final class am2 implements vq2 {
    public final Div2View a;
    public final rg2 b;

    public am2(Div2View div2View, rg2 rg2Var) {
        y45.j(div2View, "divView");
        y45.j(rg2Var, "divBinder");
        this.a = div2View;
        this.b = rg2Var;
    }

    @Override
    public void a(DivData.State state, List list, oj3 oj3Var) throws StateConflictException {
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        y45.j(list, "paths");
        y45.j(oj3Var, "resolver");
        View childAt = this.a.getChildAt(0);
        Div div = state.a;
        DivStatePath divStatePathJ = DivStatePath.f.j(state);
        DivStatePath divStatePathB = b(list, divStatePathJ);
        if (!divStatePathB.m()) {
            DivPathUtils divPathUtils = DivPathUtils.a;
            y45.i(childAt, "rootView");
            Pair pairJ = divPathUtils.j(childAt, state, divStatePathB, oj3Var);
            if (pairJ == null) {
                return;
            }
            DivStateLayout divStateLayout = (DivStateLayout) pairJ.component1();
            Div.n nVar = (Div.n) pairJ.component2();
            if (divStateLayout != null) {
                DivStatePath path = divStateLayout.getPath();
                divStatePathJ = path == null ? divStatePathB : path;
                div = nVar;
                childAt = divStateLayout;
            }
        }
        y45.i(childAt, "view");
        a aVarZ = BaseDivViewExtensionsKt.Z(childAt);
        if (aVarZ == null) {
            aVarZ = this.a.getBindingContext();
        }
        rg2 rg2Var = this.b;
        y45.i(childAt, "view");
        rg2Var.b(aVarZ, childAt, div, divStatePathJ.n());
        this.b.a();
    }

    public final DivStatePath b(List list, DivStatePath divStatePath) {
        int size = list.size();
        if (size == 0) {
            return divStatePath;
        }
        if (size == 1) {
            return (DivStatePath) i81.o0(list);
        }
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        Object next = it.next();
        while (it.hasNext()) {
            DivStatePath divStatePath2 = (DivStatePath) it.next();
            next = DivStatePath.f.k((DivStatePath) next, divStatePath2);
            if (next == null) {
                next = divStatePath;
            }
        }
        return (DivStatePath) next;
    }
}
