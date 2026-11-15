package com.transsion.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;

public class CustomLinearLayoutManager extends LinearLayoutManager {
    public boolean e;
    public int f;
    public int g;

    public static class a extends LinearSmoothScroller {
        public RecyclerView a;
        public int b;

        public a(RecyclerView recyclerView, Context context, int i) {
            super(context);
            this.a = recyclerView;
            this.b = i == 0 ? -1 : com.transsion.utils.a.d(context, i);
        }

        public final float a() {
            int i = this.b;
            if (i == -1 || i == 0) {
                return 0.2f;
            }
            int iAbs = Math.abs((getTargetPosition() * this.b) - this.a.computeHorizontalScrollOffset()) / this.b;
            if (iAbs < 20) {
                return 3.0f;
            }
            if (iAbs < 60) {
                return 2.0f;
            }
            if (iAbs < 120) {
                return 1.0f;
            }
            return iAbs < 300 ? 0.5f : 0.2f;
        }

        @Override
        public int calculateDtToFit(int i, int i2, int i3, int i4, int i5) {
            int i6 = (i3 + ((i4 - i3) / 2)) - (i + ((i2 - i) / 2));
            if (i6 <= 0 || this.a.canScrollHorizontally(-1)) {
                return Math.min(this.a.computeHorizontalScrollOffset() + com.transsion.utils.a.d(this.a.getContext(), 43.0f), i6);
            }
            return 0;
        }

        @Override
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            float fCalculateSpeedPerPixel = super.calculateSpeedPerPixel(displayMetrics) * a();
            Log.e("CustomLinearLayoutManager", "calculateSpeedPerPixel: " + fCalculateSpeedPerPixel);
            return fCalculateSpeedPerPixel;
        }
    }

    public CustomLinearLayoutManager(Context context) {
        super(context);
        this.e = false;
        this.f = Integer.MIN_VALUE;
        this.g = Integer.MIN_VALUE;
        setItemPrefetchEnabled(false);
    }

    @Override
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        try {
            super.collectAdjacentPrefetchPositions(i, i2, state, layoutPrefetchRegistry);
        } catch (Exception e) {
            LogUtils.m("CustomLinearLayoutManager", "collectAdjacentPrefetchPositions error: " + e.getMessage());
        }
    }

    @Override
    public void collectInitialPrefetchPositions(int i, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        try {
            super.collectInitialPrefetchPositions(i, layoutPrefetchRegistry);
        } catch (Exception e) {
            LogUtils.m("CustomLinearLayoutManager", "collectAdjacentPrefetchPositions error: " + e.getMessage());
        }
    }

    public final void g() {
        int height;
        if (getChildCount() != 0 && (height = (getHeight() - getPaddingTop()) - getPaddingBottom()) > 0) {
            int iMax = 0;
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (childAt != null) {
                    iMax = Math.max(iMax, getDecoratedMeasuredHeight(childAt));
                }
            }
            int i2 = (height - iMax) / 2;
            if (i2 == this.f && iMax == this.g) {
                return;
            }
            this.f = i2;
            this.g = iMax;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2 != null) {
                    int decoratedMeasuredHeight = getDecoratedMeasuredHeight(childAt2);
                    int paddingTop = getPaddingTop() + i2 + ((iMax - decoratedMeasuredHeight) / 2);
                    layoutDecorated(childAt2, getDecoratedLeft(childAt2), paddingTop, getDecoratedRight(childAt2), paddingTop + decoratedMeasuredHeight);
                }
            }
        }
    }

    public void h(RecyclerView recyclerView, int i, boolean z, int i2) {
        if (!z) {
            scrollToPosition(i);
            return;
        }
        a aVar = new a(recyclerView, recyclerView.getContext(), i2);
        aVar.setTargetPosition(i);
        startSmoothScroll(aVar);
    }

    @Override
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            super.onLayoutChildren(recycler, state);
            if (this.e && getOrientation() == 0) {
                g();
            }
        } catch (Exception e) {
            LogUtils.m("CustomLinearLayoutManager", e.getMessage());
        }
    }

    @Override
    public void startSmoothScroll(RecyclerView.SmoothScroller smoothScroller) {
        super.startSmoothScroll(smoothScroller);
    }

    public CustomLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.e = false;
        this.f = Integer.MIN_VALUE;
        this.g = Integer.MIN_VALUE;
        setItemPrefetchEnabled(false);
    }

    public CustomLinearLayoutManager(Context context, int i, boolean z, boolean z2) {
        super(context, i, z);
        this.f = Integer.MIN_VALUE;
        this.g = Integer.MIN_VALUE;
        this.e = z2;
        setItemPrefetchEnabled(false);
    }

    public CustomLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.e = false;
        this.f = Integer.MIN_VALUE;
        this.g = Integer.MIN_VALUE;
        setItemPrefetchEnabled(false);
    }
}
