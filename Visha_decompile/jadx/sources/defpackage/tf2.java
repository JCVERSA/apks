package defpackage;

import android.view.View;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.widgets.DivInputView;
import com.yandex.div2.DivActionFocusElement;
import com.yandex.div2.DivActionTyped;

public final class tf2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.k)) {
            return false;
        }
        b(((DivActionTyped.k) divActionTyped).c(), div2View, oj3Var);
        return true;
    }

    public final void b(DivActionFocusElement divActionFocusElement, Div2View div2View, oj3 oj3Var) {
        String str = (String) divActionFocusElement.a.b(oj3Var);
        View viewFindViewWithTag = div2View.findViewWithTag(str);
        if (viewFindViewWithTag == null && (viewFindViewWithTag = div2View.getViewComponent().b().m(str)) == null) {
            return;
        }
        viewFindViewWithTag.requestFocus();
        BaseDivViewExtensionsKt.V(viewFindViewWithTag);
        if (viewFindViewWithTag instanceof DivInputView) {
            eg2.h((DivInputView) viewFindViewWithTag);
        }
    }
}
