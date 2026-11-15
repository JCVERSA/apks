package com.mgtv.ssp.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

public class LoadMoreRecycleView extends RecyclerView {
    private c a;
    private b b;
    private boolean c;
    private int d;

    public class a extends RecyclerView.OnScrollListener {
        private a() {
        }

        @Override
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
        }

        /* JADX WARN: Code duplicated, block: B:16:0x003f  */
        @Override
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            RecyclerView.LayoutManager layoutManager;
            int iFindLastVisibleItemPosition;
            int iFindFirstVisibleItemPosition;
            if (LoadMoreRecycleView.this.c || (layoutManager = LoadMoreRecycleView.this.getLayoutManager()) == null) {
                return;
            }
            if (layoutManager instanceof LinearLayoutManager) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            } else {
                iFindLastVisibleItemPosition = 0;
                if (layoutManager instanceof StaggeredGridLayoutManager) {
                    StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
                    int spanCount = staggeredGridLayoutManager.getSpanCount();
                    int[] iArr = new int[spanCount];
                    staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
                    if (spanCount > 0) {
                        iFindLastVisibleItemPosition = iArr[spanCount - 1];
                        iFindFirstVisibleItemPosition = iArr[0];
                    } else {
                        iFindFirstVisibleItemPosition = 0;
                    }
                } else {
                    iFindFirstVisibleItemPosition = 0;
                }
            }
            if (LoadMoreRecycleView.this.a != null && layoutManager.getItemCount() - iFindLastVisibleItemPosition <= LoadMoreRecycleView.this.d) {
                LoadMoreRecycleView.this.a(true);
                LoadMoreRecycleView.this.a.a();
            }
            if (LoadMoreRecycleView.this.b == null || iFindFirstVisibleItemPosition > 1) {
                return;
            }
            LoadMoreRecycleView.this.a(true);
            LoadMoreRecycleView.this.b.a();
        }
    }

    public interface b {
        void a();
    }

    public interface c {
        void a();
    }

    public LoadMoreRecycleView(Context context) {
        super(context);
        this.c = false;
        this.d = 4;
        addOnScrollListener(new a());
    }

    public void a(c cVar) {
        this.a = cVar;
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void a(int i) {
        int i2 = i + 1;
        this.d = i2;
        this.d = i2 >= 1 ? i2 : 1;
    }

    public LoadMoreRecycleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = false;
        this.d = 4;
        addOnScrollListener(new a());
    }
}
