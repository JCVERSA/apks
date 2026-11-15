package com.transsion.playercommon.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.LogUtils;

public class VideoMainRecyclerViewHandleConflict extends VideoMainRecyclerView {
    public float E;
    public float F;

    public VideoMainRecyclerViewHandleConflict(@NonNull Context context) {
        super(context);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.E = motionEvent.getX();
            this.F = motionEvent.getY();
            if (g(motionEvent)) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (action == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (action == 2) {
            if (Math.abs(motionEvent.getX() - this.E) > Math.abs(motionEvent.getY() - this.F) && !g(motionEvent)) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else if (action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception e) {
            LogUtils.m("VideoMainRecyclerViewHandleConflict", "dispatchTouchEvent error: " + e.getMessage());
            return false;
        }
    }

    public final boolean g(MotionEvent motionEvent) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return false;
        }
        int[] iArr = new int[2];
        childAt.getLocationOnScreen(iArr);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i = iArr[0];
        if (rawX < i || rawX > i + childAt.getWidth()) {
            return false;
        }
        int i2 = iArr[1];
        return rawY >= ((float) i2) && rawY <= ((float) (i2 + childAt.getHeight()));
    }

    @Override
    public void smoothScrollToPosition(int i) {
        if (i >= 0) {
            try {
                if (getAdapter() == null || i >= getAdapter().getItemCount()) {
                    return;
                }
                super.smoothScrollToPosition(i);
            } catch (Exception e) {
                LogUtils.m("VideoMainRecyclerViewHandleConflict", "smoothScrollToPosition error: " + e.getMessage());
            }
        }
    }

    public VideoMainRecyclerViewHandleConflict(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
