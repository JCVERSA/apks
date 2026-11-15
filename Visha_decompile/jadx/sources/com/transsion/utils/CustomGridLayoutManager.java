package com.transsion.utils;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;

public class CustomGridLayoutManager extends GridLayoutManager {
    public CustomGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        setItemPrefetchEnabled(false);
    }

    @Override
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        try {
            super.collectAdjacentPrefetchPositions(i, i2, state, layoutPrefetchRegistry);
        } catch (Exception e) {
            LogUtils.m("CustomGridLayoutManager", "collectAdjacentPrefetchPositions error: " + e.getMessage());
        }
    }

    @Override
    public void collectInitialPrefetchPositions(int i, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        try {
            super.collectInitialPrefetchPositions(i, layoutPrefetchRegistry);
        } catch (Exception e) {
            LogUtils.m("CustomGridLayoutManager", "collectInitialPrefetchPositions error: " + e.getMessage());
        }
    }

    @Override
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            return super.scrollHorizontallyBy(i, recycler, state);
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            return super.scrollVerticallyBy(i, recycler, state);
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public CustomGridLayoutManager(Context context, int i) {
        super(context, i);
        setItemPrefetchEnabled(false);
    }
}
