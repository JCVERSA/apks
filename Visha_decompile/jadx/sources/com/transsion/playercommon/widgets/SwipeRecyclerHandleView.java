package com.transsion.playercommon.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import com.yanzhenjie.recyclerview.SwipeRecyclerView;

public class SwipeRecyclerHandleView extends SwipeRecyclerView {
    public SwipeRecyclerHandleView(Context context) {
        super(context);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (Exception e) {
            Log.e("SwipeRecyclerCatchView", e.getMessage());
            return false;
        }
    }

    public SwipeRecyclerHandleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SwipeRecyclerHandleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
