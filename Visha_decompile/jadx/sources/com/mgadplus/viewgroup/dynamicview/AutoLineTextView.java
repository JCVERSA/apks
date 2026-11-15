package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;

public class AutoLineTextView extends TextView {
    public boolean b;

    public AutoLineTextView(Context context) {
        super(context);
        this.b = false;
    }

    public final void a() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (layoutParams == null || !(layoutParams instanceof RelativeLayout.LayoutParams)) ? null : (RelativeLayout.LayoutParams) layoutParams;
        int measuredHeight = getMeasuredHeight();
        if (layoutParams2 != null) {
            measuredHeight = (measuredHeight - layoutParams2.topMargin) - layoutParams2.bottomMargin;
        }
        setLines(measuredHeight / getLineHeight());
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (!this.b) {
            a();
            this.b = true;
        }
        super.onDraw(canvas);
    }

    public AutoLineTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = false;
    }

    public AutoLineTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = false;
    }
}
