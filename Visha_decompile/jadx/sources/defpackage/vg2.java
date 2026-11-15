package defpackage;

import android.view.View;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.widgets.DivBorderDrawer;
import com.yandex.div2.DivBorder;

public interface vg2 {
    DivBorderDrawer getDivBorderDrawer();

    boolean getNeedClipping();

    default void invalidateBorder() {
        DivBorderDrawer divBorderDrawer = getDivBorderDrawer();
        if (divBorderDrawer != null) {
            divBorderDrawer.m();
        }
    }

    default void onBoundsChanged(int i, int i2) {
        DivBorderDrawer divBorderDrawer = getDivBorderDrawer();
        if (divBorderDrawer != null) {
            divBorderDrawer.q(i, i2);
        }
    }

    default void releaseBorderDrawer() {
        DivBorderDrawer divBorderDrawer = getDivBorderDrawer();
        if (divBorderDrawer != null) {
            divBorderDrawer.release();
        }
    }

    void setBorder(a aVar, DivBorder divBorder, View view);

    void setNeedClipping(boolean z);
}
