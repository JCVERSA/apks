package defpackage;

import android.view.View;
import com.yandex.div.core.a;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.widgets.DivCustomWrapper;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.core.view2.divs.widgets.DivRecyclerView;
import com.yandex.div2.Div;
import java.util.Iterator;

public class zr8 extends vv2 {
    public final Div2View a;
    public final a b;
    public final vi2 c;

    public zr8(Div2View div2View, a aVar, vi2 vi2Var) {
        y45.j(div2View, "divView");
        y45.j(aVar, "divCustomContainerViewAdapter");
        y45.j(vi2Var, "divExtensionController");
        this.a = div2View;
        this.b = aVar;
        this.c = vi2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(mk2 mk2Var) {
        y45.j(mk2Var, "view");
        View view = (View) mk2Var;
        Div div = mk2Var.getDiv();
        og2 og2VarB = div != null ? div.b() : null;
        com.yandex.div.core.view2.a bindingContext = mk2Var.getBindingContext();
        v(view, og2VarB, bindingContext != null ? bindingContext.b() : null);
    }

    @Override
    public void b(View view) {
        y45.j(view, "view");
        u(view);
    }

    @Override
    public void c(DivCustomWrapper divCustomWrapper) {
        com.yandex.div.core.view2.a bindingContext;
        oj3 oj3VarB;
        y45.j(divCustomWrapper, "view");
        Div.c div = divCustomWrapper.getDiv();
        if (div == null || (bindingContext = divCustomWrapper.getBindingContext()) == null || (oj3VarB = bindingContext.b()) == null) {
            return;
        }
        u(divCustomWrapper);
        View customView = divCustomWrapper.getCustomView();
        if (customView != null) {
            this.c.e(this.a, oj3VarB, customView, div.c());
            this.b.release(customView, div.c());
        }
    }

    @Override
    public void k(DivPagerView divPagerView) {
        y45.j(divPagerView, "view");
        super.k(divPagerView);
        divPagerView.getViewPager().setAdapter(null);
    }

    @Override
    public void l(DivRecyclerView divRecyclerView) {
        y45.j(divRecyclerView, "view");
        super.l(divRecyclerView);
        divRecyclerView.setAdapter(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void u(View view) {
        y45.j(view, "view");
        if (view instanceof tr8) {
            ((tr8) view).release();
        }
        Iterable iterableB = vr8.b(view);
        if (iterableB != null) {
            Iterator it = iterableB.iterator();
            while (it.hasNext()) {
                ((tr8) it.next()).release();
            }
        }
    }

    public final void v(View view, og2 og2Var, oj3 oj3Var) {
        if (og2Var != null && oj3Var != null) {
            this.c.e(this.a, oj3Var, view, og2Var);
        }
        u(view);
    }
}
