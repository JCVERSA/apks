package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;

public class InScrollListView extends ListView {
    public InScrollListView(Context context) {
        super(context);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public InScrollListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public InScrollListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public InScrollListView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
