package com.just.agentweb;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;

public class NestedScrollAgentWebView extends AgentWebView implements NestedScrollingChild {
    private boolean isHorMode;
    private NestedScrollingChildHelper mChildHelper;
    private int mLastMotionX;
    private int mLastMotionY;
    private int mNestedYOffset;
    private final int[] mScrollConsumed;
    private final int[] mScrollOffset;

    public NestedScrollAgentWebView(Context context) {
        super(context);
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.isHorMode = false;
        init();
    }

    private void init() {
        this.mChildHelper = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    @Override
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.mChildHelper.dispatchNestedPreFling(f, f2);
    }

    @Override
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    public int getLastMotionX() {
        return this.mLastMotionX;
    }

    public int getLastMotionY() {
        return this.mLastMotionY;
    }

    @Override
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    @Override
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            this.mNestedYOffset = 0;
        }
        int y = (int) motionEvent.getY();
        int x = (int) motionEvent.getX();
        motionEvent.offsetLocation(0.0f, this.mNestedYOffset);
        if (actionMasked == 0) {
            this.mLastMotionY = y;
            this.mLastMotionX = x;
            startNestedScroll(2);
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            this.isHorMode = false;
            return zOnTouchEvent;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int i = this.mLastMotionY - y;
                int i2 = this.mLastMotionX - x;
                if (this.isHorMode || Math.abs(i) < Math.abs(i2)) {
                    this.isHorMode = true;
                    return super.onTouchEvent(motionEventObtain);
                }
                if (dispatchNestedPreScroll(0, i, this.mScrollConsumed, this.mScrollOffset)) {
                    i -= this.mScrollConsumed[1];
                    motionEventObtain.offsetLocation(0.0f, this.mScrollOffset[1]);
                    this.mNestedYOffset += this.mScrollOffset[1];
                }
                this.mLastMotionY = y - this.mScrollOffset[1];
                int scrollY = getScrollY();
                int iMax = Math.max(0, scrollY + i) - scrollY;
                if (dispatchNestedScroll(0, iMax, 0, i - iMax, this.mScrollOffset)) {
                    int i3 = this.mLastMotionY;
                    int i4 = this.mScrollOffset[1];
                    this.mLastMotionY = i3 - i4;
                    motionEventObtain.offsetLocation(0.0f, i4);
                    this.mNestedYOffset += this.mScrollOffset[1];
                }
                boolean zOnTouchEvent2 = super.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
                return zOnTouchEvent2;
            }
            if (actionMasked != 3 && actionMasked != 5) {
                return false;
            }
        }
        stopNestedScroll();
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void setNestedScrollingEnabled(boolean z) {
        this.mChildHelper.setNestedScrollingEnabled(z);
    }

    @Override
    public boolean startNestedScroll(int i) {
        return this.mChildHelper.startNestedScroll(i);
    }

    @Override
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    public NestedScrollAgentWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.isHorMode = false;
        init();
    }
}
