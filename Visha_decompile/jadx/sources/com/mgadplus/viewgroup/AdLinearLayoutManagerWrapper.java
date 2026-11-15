package com.mgadplus.viewgroup;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class AdLinearLayoutManagerWrapper extends LinearLayoutManager {
    public volatile boolean e;

    public AdLinearLayoutManagerWrapper(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.e = true;
    }

    @Override
    public boolean canScrollVertically() {
        return this.e && super.canScrollVertically();
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        try {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
        } catch (NullPointerException e) {
            Log.e("LinearLayoutManagerWrap", "onInitializeAccessibilityEvent: ", e);
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        try {
            super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
        } catch (NullPointerException e) {
            Log.e("LinearLayoutManagerWrap", "onInitializeAccessibilityNodeInfo: ", e);
        }
    }

    @Override
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (IndexOutOfBoundsException | NullPointerException e) {
            Log.e("LinearLayoutManagerWrap", "onLayoutChildren: ", e);
        }
    }

    @Override
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        try {
            super.onMeasure(recycler, state, i, i2);
        } catch (Exception e) {
            Log.e("LinearLayoutManagerWrap", "onMeasure: ", e);
        }
    }

    @Override
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            return super.scrollHorizontallyBy(i, recycler, state);
        } catch (IndexOutOfBoundsException e) {
            Log.e("LinearLayoutManagerWrap", "scrollHorizontallyBy: ", e);
            return 0;
        }
    }

    @Override
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            return super.scrollVerticallyBy(i, recycler, state);
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
            Log.e("LinearLayoutManagerWrap", "scrollVerticallyBy: ", e);
            return 0;
        }
    }

    @Override
    public void onInitializeAccessibilityEvent(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityEvent accessibilityEvent) {
        try {
            super.onInitializeAccessibilityEvent(recycler, state, accessibilityEvent);
        } catch (NullPointerException e) {
            Log.e("LinearLayoutManagerWrap", "onInitializeAccessibilityEvent: ", e);
        }
    }
}
