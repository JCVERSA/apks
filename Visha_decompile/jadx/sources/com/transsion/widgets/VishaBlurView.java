package com.transsion.widgets;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.common.R;
import eightbitlab.com.blurview.BlurView;

public class VishaBlurView extends BlurView {
    public static final boolean IS_SUPPORT_BLUR = true;

    public VishaBlurView(Context context) {
        super(context);
    }

    private void setRootBlurView(View view, boolean z) {
        if (z) {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(R.attr.min_bar_background, typedValue, true);
            setupWith((ViewGroup) view).f(((Activity) getContext()).getWindow().getDecorView().getBackground()).d(typedValue.data).c(2.0f);
        }
    }

    public VishaBlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VishaBlurView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setRootBlurView(View view) {
        setRootBlurView(view, true);
    }
}
