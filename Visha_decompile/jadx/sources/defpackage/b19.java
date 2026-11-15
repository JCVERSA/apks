package defpackage;

import android.view.View;
import android.widget.PopupWindow;

public abstract class b19 extends PopupWindow {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b19(View view, int i, int i2, boolean z) {
        super(view, i, i2, z);
        y45.j(view, "contentView");
    }

    @Override
    public void setContentView(View view) {
        if (view != null) {
            view.setFilterTouchesWhenObscured(true);
        }
        super.setContentView(view);
    }
}
