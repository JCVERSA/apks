package com.tn.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

public class ScreenAdapterLayout extends LinearLayout {

    private boolean f40026a;

    private boolean f40027b;

    private float f40028c;

    private float f40029d;

    public ScreenAdapterLayout(Context context) {
        super(context);
        this.f40026a = false;
        this.f40027b = false;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        if (this.f40026a && !this.f40027b) {
            this.f40027b = true;
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i12).getLayoutParams();
                int i13 = layoutParams.width;
                if (i13 > 0) {
                    layoutParams.width = (int) (i13 * this.f40028c);
                    layoutParams.height = (int) (layoutParams.height * this.f40029d);
                }
                float f10 = layoutParams.topMargin;
                float f11 = this.f40029d;
                layoutParams.topMargin = (int) (f10 * f11);
                layoutParams.bottomMargin = (int) (layoutParams.bottomMargin * f11);
            }
            this.f40026a = false;
        }
        super.onMeasure(i10, i11);
    }

    public void setScale(float f10, float f11) {
        this.f40026a = true;
        this.f40028c = f10;
        this.f40029d = f11;
    }

    public ScreenAdapterLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40026a = false;
        this.f40027b = false;
    }
}
