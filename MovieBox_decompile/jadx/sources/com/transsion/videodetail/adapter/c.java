package com.transsion.videodetail.adapter;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class c extends RecyclerView.l {

    private final int f55507a;

    public c(int i10) {
        this.f55507a = i10;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = parent.getAdapter();
        Intrinsics.f(adapter, "null cannot be cast to non-null type com.transsion.videodetail.adapter.VideoDetailEpisodeAdapter");
        int size = ((b) adapter).getData().size();
        RecyclerView.m layoutManager = parent.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        int iU = size % ((GridLayoutManager) layoutManager).U();
        if (iU == 0) {
            iU = 3;
        }
        if (childAdapterPosition >= RangesKt.e(size - iU, 0)) {
            outRect.bottom = this.f55507a;
        } else {
            outRect.bottom = 0;
        }
    }
}
