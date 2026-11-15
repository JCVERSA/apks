package defpackage;

import android.view.View;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.widgets.DivBorderDrawer;
import com.yandex.div.internal.widget.TransientViewMixin;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import java.util.ArrayList;
import java.util.List;

public final class nk2 implements mk2, vg2, l7b {
    public Div d;
    public a e;
    public final wg2 b = new wg2();
    public final TransientViewMixin c = new TransientViewMixin();
    public final List f = new ArrayList();

    @Override
    public a getBindingContext() {
        return this.e;
    }

    @Override
    public Div getDiv() {
        return this.d;
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.b.getDivBorderDrawer();
    }

    @Override
    public boolean getNeedClipping() {
        return this.b.getNeedClipping();
    }

    @Override
    public List getSubscriptions() {
        return this.f;
    }

    @Override
    public void invalidateBorder() {
        this.b.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.c.isTransient();
    }

    @Override
    public void onBoundsChanged(int i, int i2) {
        this.b.onBoundsChanged(i, i2);
    }

    @Override
    public void release() {
        super.release();
        setDiv(null);
        setBindingContext(null);
        releaseBorderDrawer();
    }

    @Override
    public void releaseBorderDrawer() {
        this.b.releaseBorderDrawer();
    }

    @Override
    public void setBindingContext(a aVar) {
        this.e = aVar;
    }

    @Override
    public void setBorder(a aVar, DivBorder divBorder, View view) {
        y45.j(aVar, "bindingContext");
        y45.j(view, "view");
        this.b.setBorder(aVar, divBorder, view);
    }

    @Override
    public void setDiv(Div div) {
        this.d = div;
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.b.setNeedClipping(z);
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        this.c.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.c.transitionStarted(view);
    }
}
