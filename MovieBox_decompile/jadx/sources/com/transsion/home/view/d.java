package com.transsion.home.view;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n;
import kotlin.jvm.internal.Intrinsics;

public final class d extends n {

    private final int f44377a;

    public d(int i10) {
        this.f44377a = i10;
    }

    private final int k(RecyclerView.m mVar, View view) {
        return (view.getLeft() - mVar.getPaddingLeft()) - this.f44377a;
    }

    private final int l(RecyclerView.m mVar, View view) {
        return view.getTop() - mVar.getPaddingTop();
    }

    @Override
    public int[] calculateDistanceToFinalSnap(RecyclerView.m layoutManager, View targetView) {
        Intrinsics.h(layoutManager, "layoutManager");
        Intrinsics.h(targetView, "targetView");
        if (layoutManager.canScrollHorizontally()) {
            return new int[]{k(layoutManager, targetView), 0};
        }
        return layoutManager.canScrollVertically() ? new int[]{0, l(layoutManager, targetView)} : new int[]{0, 0};
    }
}
