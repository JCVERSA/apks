package com.hisavana.common.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.hisavana.common.utils.AdLogUtil;

public class WrapTadView extends RelativeLayout {
    private final String TAG;

    public WrapTadView(Context context) {
        super(context);
        this.TAG = "TadView";
    }

    protected void onAddView(View view) {
        if (view != null) {
            removeAllViews();
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            addView(view, layoutParams);
            AdLogUtil.Log().d("TadView", "add view ");
        }
    }

    public WrapTadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "TadView";
    }

    public WrapTadView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TAG = "TadView";
    }
}
