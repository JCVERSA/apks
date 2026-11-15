package com.zhpan.bannerview.provider;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.v70;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ScrollDurationManger extends LinearLayoutManager {
    public final LinearLayoutManager e;
    public final int f;

    public class a extends LinearSmoothScroller {
        public a(Context context) {
            super(context);
        }

        @Override
        public int calculateTimeForDeceleration(int i) {
            return ScrollDurationManger.this.f;
        }
    }

    public ScrollDurationManger(ViewPager2 viewPager2, int i, LinearLayoutManager linearLayoutManager) {
        super(viewPager2.getContext(), linearLayoutManager.getOrientation(), false);
        this.f = i;
        this.e = linearLayoutManager;
    }

    @Override
    public void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
        try {
            Method declaredMethod = this.e.getClass().getDeclaredMethod("calculateExtraLayoutSpace", state.getClass(), iArr.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.e, state, iArr);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
            v70.e(e.getMessage());
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.e.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
    }

    @Override
    public boolean performAccessibilityAction(RecyclerView.Recycler recycler, RecyclerView.State state, int i, Bundle bundle) {
        return this.e.performAccessibilityAction(recycler, state, i, bundle);
    }

    @Override
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        return false;
    }

    @Override
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        a aVar = new a(recyclerView.getContext());
        aVar.setTargetPosition(i);
        startSmoothScroll(aVar);
    }
}
