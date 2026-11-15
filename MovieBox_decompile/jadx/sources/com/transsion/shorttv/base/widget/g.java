package com.transsion.shorttv.base.widget;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import kotlin.jvm.internal.Intrinsics;

public final class g extends RecyclerView.r {

    private t6.f f50905a;

    private int[] f50906b;

    private int f50907c;

    public g(t6.f fVar) {
        this.f50905a = fVar;
    }

    private final void d(RecyclerView recyclerView) {
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            if (this.f50906b == null) {
                this.f50906b = new int[((StaggeredGridLayoutManager) layoutManager).Q()];
            }
            ((StaggeredGridLayoutManager) layoutManager).E(this.f50906b);
            this.f50907c = e(this.f50906b);
            return;
        }
        if (layoutManager instanceof GridLayoutManager) {
            this.f50907c = ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        } else {
            if (!(layoutManager instanceof LinearLayoutManager)) {
                throw new RuntimeException("Unsupported layoutManager.");
            }
            this.f50907c = ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
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
        if (i10 != 0 || childCount <= 0 || this.f50907c < itemCount - 1) {
            return;
        }
        t6.f fVar2 = this.f50905a;
        if ((fVar2 != null ? fVar2.i() : null) != LoadMoreStatus.Fail || (fVar = this.f50905a) == null) {
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
