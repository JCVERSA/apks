package com.transsion.widgetslib.view.damping;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.transsion.widgetslib.view.OSLoadingView;
import defpackage.mu4;

public class OSRefreshRecyclerView extends RecyclerView implements Runnable, com.transsion.widgetslib.view.damping.a {
    private mu4 mDampingAdapter;
    private HeaderHelper mHeaderHelper;
    private boolean mIsAppBarExpanded;

    public class a extends GridLayoutManager.SpanSizeLookup {
        public final RecyclerView.Adapter a;
        public final int b;
        public final GridLayoutManager.SpanSizeLookup c;

        public a(RecyclerView.Adapter adapter, int i, GridLayoutManager.SpanSizeLookup spanSizeLookup) {
            this.a = adapter;
            this.b = i;
            this.c = spanSizeLookup;
        }

        @Override
        public int getSpanSize(int i) {
            return this.a.getItemViewType(i) == 145 ? this.b : this.c.getSpanSize(i - OSRefreshRecyclerView.this.mDampingAdapter.getHeaderCount());
        }
    }

    public OSRefreshRecyclerView(@NonNull Context context) {
        super(context);
        this.mIsAppBarExpanded = true;
        initHeaderHelper();
    }

    public void abortRefreshing() {
        this.mHeaderHelper.j();
    }

    @Override
    public boolean canScrollVertically(int i) {
        if (i >= 0 || this.mIsAppBarExpanded) {
            return super.canScrollVertically(i);
        }
        return true;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.mHeaderHelper.l(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    public HeaderHelper getHeaderHelper() {
        return this.mHeaderHelper;
    }

    @Override
    public OSLoadingView getLoadingView() {
        return this.mHeaderHelper.getLoadingView();
    }

    public void initHeaderHelper() {
        HeaderHelper headerHelper = new HeaderHelper(getContext());
        this.mHeaderHelper = headerHelper;
        headerHelper.setMinHeight(1);
    }

    public boolean isRefreshing() {
        return this.mHeaderHelper.o();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mHeaderHelper.p();
    }

    public void onFinishHeaderInflate(View view) {
        this.mHeaderHelper.q(view);
    }

    public void onOverScrollUpdated(float f) {
        this.mHeaderHelper.r(f);
    }

    @Override
    public void run() {
        StaggeredGridLayoutManager.LayoutParams layoutParams;
        RecyclerView.Adapter adapter = getAdapter();
        if (this.mDampingAdapter == null || adapter == null) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new a(adapter, gridLayoutManager.getSpanCount(), gridLayoutManager.getSpanSizeLookup()));
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            int itemCount = adapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                View childAt = getChildAt(i);
                HeaderHelper headerHelper = this.mHeaderHelper;
                if (headerHelper != null && childAt != null && childAt == headerHelper.getLayoutHeader() && (layoutParams = (StaggeredGridLayoutManager.LayoutParams) childAt.getLayoutParams()) != null) {
                    layoutParams.setFullSpan(true);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        super.setAdapter(adapter);
        if (adapter instanceof mu4) {
            mu4 mu4Var = (mu4) adapter;
            this.mDampingAdapter = mu4Var;
            mu4Var.setRefreshLayout(this);
            post(this);
        }
    }

    public void setAppBarExpanded(boolean z) {
        this.mIsAppBarExpanded = z;
    }

    @Override
    public void setOnRefreshListener(OSDampingLayout.a aVar) {
        this.mHeaderHelper.setOnRefreshListener(aVar);
    }

    @Override
    public void setRefreshEnabled(boolean z) {
        this.mHeaderHelper.setRefreshEnabled(z);
    }

    @Override
    public void setTextColor(@ColorInt int i) {
        this.mHeaderHelper.setTextColor(i);
    }

    public OSRefreshRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsAppBarExpanded = true;
        initHeaderHelper();
    }

    public OSRefreshRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsAppBarExpanded = true;
        initHeaderHelper();
    }
}
