package defpackage;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivActionTyped;
import com.yandex.div2.DivActionVideo;

public final class fg2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.u)) {
            return false;
        }
        b(((DivActionTyped.u) divActionTyped).c(), div2View, oj3Var);
        return true;
    }

    public final void b(DivActionVideo divActionVideo, Div2View div2View, oj3 oj3Var) {
        div2View.applyVideoCommand((String) divActionVideo.b.b(oj3Var), DivActionVideo.Action.INSTANCE.b((DivActionVideo.Action) divActionVideo.a.b(oj3Var)), oj3Var);
    }
}
