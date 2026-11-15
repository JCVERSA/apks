package com.transsion.shorttv_pugc.base.widget;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import kotlin.jvm.internal.Intrinsics;

public final class f extends RecyclerView.r {

    private t6.f f51886a;

    private int[] f51887b;

    private int f51888c;

    public f(t6.f fVar) {
        this.f51886a = fVar;
    }

    private final void d(RecyclerView recyclerView) {
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            if (this.f51887b == null) {
                this.f51887b = new int[((StaggeredGridLayoutManager) layoutManager).Q()];
            }
            ((StaggeredGridLayoutManager) layoutManager).E(this.f51887b);
            this.f51888c = e(this.f51887b);
            return;
        }
        if (layoutManager instanceof GridLayoutManager) {
            this.f51888c = ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        } else {
            if (!(layoutManager instanceof LinearLayoutManager)) {
                throw new RuntimeException("Unsupported layoutManager.");
            }
            this.f51888c = ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
    }

    private final int e(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 : iArr) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        t6.f fVar;
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
        int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
        if (i10 != 0 || childCount <= 0 || this.f51888c < itemCount - 1) {
            return;
        }
        t6.f fVar2 = this.f51886a;
        if ((fVar2 != null ? fVar2.i() : null) != LoadMoreStatus.Fail || (fVar = this.f51886a) == null) {
            return;
        }
        fVar.w();
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        d(recyclerView);
    }
}
