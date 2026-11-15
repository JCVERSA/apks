package com.transsion.playercommon.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.transsion.playercommon.R;

public class RectRoundFrameLayout extends RoundFrameLayout {
    public float i;

    public RectRoundFrameLayout(Context context) {
        this(context, null);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((int) (View.MeasureSpec.getSize(i) / this.i), View.MeasureSpec.getMode(i)));
    }

    public RectRoundFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RectRoundFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = 1.0f;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RoundFrameLayout);
            float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.RoundFrameLayout_size_wh, 1.0f);
            this.i = f;
            if (f == 0.0f) {
                this.i = 1.0f;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
