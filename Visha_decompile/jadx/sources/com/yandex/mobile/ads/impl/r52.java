package com.yandex.mobile.ads.impl;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import defpackage.y45;

public final class r52 extends CheckBox {
    private Drawable a;
    private Drawable b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r52(Context context) {
        super(context);
        y45.j(context, "context");
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setButtonDrawable((Drawable) null);
    }

    @Override
    public void setChecked(boolean z) {
        super.setChecked(z);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, this.a);
        stateListDrawable.addState(new int[0], this.b);
        setBackground(stateListDrawable);
    }

    public final void setCheckedIcon(Drawable drawable) {
        y45.j(drawable, "drawable");
        this.a = drawable;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, this.a);
        stateListDrawable.addState(new int[0], this.b);
        setBackground(stateListDrawable);
    }

    public final void setUncheckedIcon(Drawable drawable) {
        y45.j(drawable, "drawable");
        this.b = drawable;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, this.a);
        stateListDrawable.addState(new int[0], this.b);
        setBackground(stateListDrawable);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r52(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r52(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
    }
}
