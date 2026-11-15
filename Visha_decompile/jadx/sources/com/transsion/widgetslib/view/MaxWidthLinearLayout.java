package com.transsion.widgetslib.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.transsion.tranplayer.MediaPlayer;

public class MaxWidthLinearLayout extends LinearLayout {
    public MaxWidthLinearLayout(Context context) {
        super(context);
    }

    public static int a(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(a(MediaPlayer.Event.LosePicSerious), Integer.MIN_VALUE), i2);
    }

    public MaxWidthLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
