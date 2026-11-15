package com.transsion.widgets;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.gw.swipeback.SwipeBackLayout;

public class CustomSwipeBackLayout extends SwipeBackLayout {
    private boolean mEnable;
    private boolean mIgnoreThisPointer;

    public CustomSwipeBackLayout(@NonNull Context context) {
        super(context);
        this.mEnable = true;
    }

    private boolean isInTopSystemGesture(MotionEvent motionEvent) {
        int iMax = (int) ((getResources().getDisplayMetrics().density * 48.0f) + 0.5f);
        WindowInsets rootWindowInsets = getRootWindowInsets();
        if (rootWindowInsets != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                iMax = Math.max(iMax, Math.max(rootWindowInsets.getInsets(WindowInsets.Type.statusBars()).top, Math.max(rootWindowInsets.getInsets(WindowInsets.Type.systemGestures()).top, rootWindowInsets.getInsets(WindowInsets.Type.mandatorySystemGestures()).top)));
            } else {
                iMax = Math.max(iMax, rootWindowInsets.getSystemWindowInsetTop());
            }
        }
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        return motionEvent.getRawY() - ((float) iArr[1]) <= ((float) iMax);
    }

    private boolean shouldIgnorePointer(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mIgnoreThisPointer = isInTopSystemGesture(motionEvent);
        }
        if (!this.mIgnoreThisPointer) {
            return false;
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.mIgnoreThisPointer = false;
        }
        return true;
    }

    public void enableSwipeBack(boolean z) {
        this.mEnable = z;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (shouldIgnorePointer(motionEvent)) {
            return false;
        }
        try {
            if (this.mEnable) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (shouldIgnorePointer(motionEvent)) {
            return false;
        }
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public CustomSwipeBackLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEnable = true;
    }

    public CustomSwipeBackLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mEnable = true;
    }
}
