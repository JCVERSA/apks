package defpackage;

import android.view.View;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.core.state.DivPathUtils;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.state.StateConflictException;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.widgets.DivStateLayout;
import com.yandex.div2.Div;
import com.yandex.div2.DivData;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Pair;

public final class qm2 implements vq2 {
    public final Div2View a;
    public final rg2 b;

    public qm2(Div2View div2View, rg2 rg2Var) {
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
        List listA = DivPathUtils.a.a(list);
        ArrayList<DivStatePath> arrayList = new ArrayList();
        for (Object obj : listA) {
            if (!((DivStatePath) obj).m()) {
                arrayList.add(obj);
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (DivStatePath divStatePath : arrayList) {
            DivPathUtils divPathUtils = DivPathUtils.a;
            y45.i(childAt, "rootView");
            Pair pairJ = divPathUtils.j(childAt, state, divStatePath, oj3Var);
            if (pairJ == null) {
                return;
            }
            DivStateLayout divStateLayout = (DivStateLayout) pairJ.component1();
            Div.n nVar = (Div.n) pairJ.component2();
            if (divStateLayout != null && !linkedHashSet.contains(divStateLayout)) {
                DivStatePath path = divStateLayout.getPath();
                if (path != null) {
                    divStatePath = path;
                }
                a bindingContext = divStateLayout.getBindingContext();
                if (bindingContext == null) {
                    bindingContext = this.a.getBindingContext();
                }
                this.b.b(bindingContext, divStateLayout, nVar, divStatePath.n());
                linkedHashSet.add(divStateLayout);
            }
        }
        if (linkedHashSet.isEmpty()) {
            rg2 rg2Var = this.b;
            a bindingContext2 = this.a.getBindingContext();
            y45.i(childAt, "rootView");
            rg2Var.b(bindingContext2, childAt, div, DivStatePath.f.j(state));
        }
        this.b.a();
    }
}
