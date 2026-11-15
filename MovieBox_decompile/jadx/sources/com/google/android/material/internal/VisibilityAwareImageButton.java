package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

@SuppressLint({"AppCompatCustomView"})
public class VisibilityAwareImageButton extends ImageButton {

    private int f28311a;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public final int getUserSetVisibility() {
        return this.f28311a;
    }

    public final void internalSetVisibility(int i10, boolean z10) {
        super.setVisibility(i10);
        if (z10) {
            this.f28311a = i10;
        }
    }

    @Override
    public void setVisibility(int i10) {
        internalSetVisibility(i10, true);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f28311a = getVisibility();
    }
}
