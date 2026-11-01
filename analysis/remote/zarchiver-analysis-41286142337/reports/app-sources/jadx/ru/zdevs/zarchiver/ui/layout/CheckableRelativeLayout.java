package ru.zdevs.zarchiver.ui.layout;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.RelativeLayout;
import ru.zdevs.zarchiver.R;
import z0.c;

class CheckableRelativeLayout extends RelativeLayout implements Checkable {

    public boolean f1930a;

    public CheckableRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1930a = false;
        int iC = c.c(getContext(), R.attr.colorPrimary);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.setExitFadeDuration(400);
        stateListDrawable.setAlpha(45);
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, new ColorDrawable(iC));
        stateListDrawable.addState(new int[0], new ColorDrawable(0));
        setBackground(stateListDrawable);
    }

    @Override
    public final boolean isChecked() {
        return this.f1930a;
    }

    @Override
    public final int[] onCreateDrawableState(int i2) {
        if (!this.f1930a) {
            return super.onCreateDrawableState(i2);
        }
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        View.mergeDrawableStates(iArrOnCreateDrawableState, new int[]{android.R.attr.state_checked});
        return iArrOnCreateDrawableState;
    }

    @Override
    public final void setChecked(boolean z2) {
        this.f1930a = z2;
        refreshDrawableState();
    }

    @Override
    public final void toggle() {
        setChecked(!this.f1930a);
    }
}
