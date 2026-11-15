package com.cloud.tmc.miniapp.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

public final class OooO00o extends RecyclerView.l {
    public final int OooO00o;

    public OooO00o(int i10) {
        this.OooO00o = i10;
    }

    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.x state) {
        Intrinsics.h(rect, "rect");
        Intrinsics.h(view, "view");
        Intrinsics.h(recyclerView, "recyclerView");
        Intrinsics.h(state, "state");
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        int iU = ((GridLayoutManager) layoutManager).U();
        if ((childAdapterPosition + 1) % iU == 0) {
            rect.right = this.OooO00o;
        }
        if (childAdapterPosition < iU) {
            rect.top = this.OooO00o;
        }
        int i10 = this.OooO00o;
        rect.bottom = i10;
        rect.left = i10;
    }

    @Override
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.x state) {
        Intrinsics.h(canvas, "canvas");
        Intrinsics.h(recyclerView, "recyclerView");
        Intrinsics.h(state, "state");
    }

    @Override
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.x state) {
        Intrinsics.h(canvas, "canvas");
        Intrinsics.h(recyclerView, "recyclerView");
        Intrinsics.h(state, "state");
    }
}
