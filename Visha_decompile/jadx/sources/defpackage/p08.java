package defpackage;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.DivActionBinder;
import java.util.List;

public final class p08 extends ClickableSpan {
    public final a b;
    public final List c;

    public p08(a aVar, List list) {
        y45.j(aVar, "bindingContext");
        y45.j(list, "actions");
        this.b = aVar;
        this.c = list;
    }

    public final DivActionBinder a() {
        DivActionBinder divActionBinderN = this.b.a().getDiv2Component().n();
        y45.i(divActionBinderN, "bindingContext.divView.div2Component.actionBinder");
        return divActionBinderN;
    }

    public final List b() {
        return this.c;
    }

    @Override
    public void onClick(View view) {
        y45.j(view, "view");
        a().L(this.b, view, this.c);
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        y45.j(textPaint, "paint");
    }
}
