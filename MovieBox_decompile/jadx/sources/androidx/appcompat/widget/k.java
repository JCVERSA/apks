package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;

class k extends PopupWindow {

    private static final boolean f1738b = false;

    private boolean f1739a;

    public k(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        a(context, attributeSet, i10, i11);
    }

    private void a(Context context, AttributeSet attributeSet, int i10, int i11) {
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.PopupWindow, i10, i11);
        if (j0VarV.s(R$styleable.PopupWindow_overlapAnchor)) {
            b(j0VarV.a(R$styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(j0VarV.g(R$styleable.PopupWindow_android_popupBackground));
        j0VarV.x();
    }

    private void b(boolean z10) {
        if (f1738b) {
            this.f1739a = z10;
        } else {
            androidx.core.widget.k.a(this, z10);
        }
    }

    @Override
    public void showAsDropDown(View view, int i10, int i11) {
        if (f1738b && this.f1739a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11);
    }

    @Override
    public void update(View view, int i10, int i11, int i12, int i13) {
        if (f1738b && this.f1739a) {
            i11 -= view.getHeight();
        }
        super.update(view, i10, i11, i12, i13);
    }

    @Override
    public void showAsDropDown(View view, int i10, int i11, int i12) {
        if (f1738b && this.f1739a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11, i12);
    }
}
