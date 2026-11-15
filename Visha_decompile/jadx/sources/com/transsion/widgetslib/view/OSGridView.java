package com.transsion.widgetslib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;

public class OSGridView extends GridView {
    public OSGridView(Context context) {
        super(context);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public OSGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public OSGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
