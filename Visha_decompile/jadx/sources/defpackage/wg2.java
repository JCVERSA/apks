package defpackage;

import android.view.View;
import android.view.ViewOutlineProvider;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.widgets.DivBorderDrawer;
import com.yandex.div2.DivBorder;

public final class wg2 implements vg2 {
    public DivBorderDrawer b;
    public boolean c = true;

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.b;
    }

    @Override
    public boolean getNeedClipping() {
        return this.c;
    }

    @Override
    public void setBorder(a aVar, DivBorder divBorder, View view) {
        y45.j(aVar, "bindingContext");
        y45.j(view, "view");
        if (this.b == null && divBorder != null) {
            this.b = new DivBorderDrawer(aVar.a(), view);
        }
        DivBorderDrawer divBorderDrawer = this.b;
        if (divBorderDrawer != null) {
            divBorderDrawer.r(divBorder, aVar.b());
        }
        DivBorderDrawer divBorderDrawer2 = this.b;
        if (divBorderDrawer2 != null) {
            divBorderDrawer2.s(getNeedClipping());
        }
        if (divBorder == null) {
            view.setElevation(0.0f);
            view.setClipToOutline(false);
            view.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
            releaseBorderDrawer();
            this.b = null;
        }
        view.invalidate();
    }

    @Override
    public void setNeedClipping(boolean z) {
        DivBorderDrawer divBorderDrawer = this.b;
        if (divBorderDrawer != null) {
            divBorderDrawer.s(z);
        }
        this.c = z;
    }
}
