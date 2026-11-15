package com.bumptech.glide.integration.recyclerview;

import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public final class RecyclerToListViewScrollListener extends RecyclerView.r {
    public static final int UNKNOWN_SCROLL_STATE = Integer.MIN_VALUE;
    private final AbsListView.OnScrollListener scrollListener;
    private int lastFirstVisible = -1;
    private int lastVisibleCount = -1;
    private int lastItemCount = -1;

    public RecyclerToListViewScrollListener(@NonNull AbsListView.OnScrollListener onScrollListener) {
        this.scrollListener = onScrollListener;
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        int i11;
        if (i10 != 0) {
            i11 = 1;
            if (i10 != 1) {
                i11 = 2;
                if (i10 != 2) {
                    i11 = Integer.MIN_VALUE;
                }
            }
        } else {
            i11 = 0;
        }
        this.scrollListener.onScrollStateChanged(null, i11);
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iAbs = Math.abs(iFindFirstVisibleItemPosition - linearLayoutManager.findLastVisibleItemPosition());
        int itemCount = recyclerView.getAdapter().getItemCount();
        if (iFindFirstVisibleItemPosition == this.lastFirstVisible && iAbs == this.lastVisibleCount && itemCount == this.lastItemCount) {
            return;
        }
        this.scrollListener.onScroll(null, iFindFirstVisibleItemPosition, iAbs, itemCount);
        this.lastFirstVisible = iFindFirstVisibleItemPosition;
        this.lastVisibleCount = iAbs;
        this.lastItemCount = itemCount;
    }
}
