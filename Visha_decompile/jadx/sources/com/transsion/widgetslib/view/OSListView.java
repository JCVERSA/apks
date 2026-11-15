package com.transsion.widgetslib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;

public class OSListView extends ListView {
    public OSListView(Context context) {
        super(context);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public OSListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public OSListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
