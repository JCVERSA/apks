package com.transsion.widgets.fastscroller;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.y45;
import java.lang.ref.WeakReference;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewScrollListener;", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;", "scroller", MethodDecl.initName, "(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "newState", "Lzfb;", "onScrollStateChanged", "(Landroidx/recyclerview/widget/RecyclerView;I)V", "dx", "dy", "onScrolled", "(Landroidx/recyclerview/widget/RecyclerView;II)V", "Ljava/lang/ref/WeakReference;", "mRecyclerViewFastScrollerRef", "Ljava/lang/ref/WeakReference;", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RecyclerViewScrollListener extends RecyclerView.OnScrollListener {
    private WeakReference<RecyclerViewFastScroller> mRecyclerViewFastScrollerRef;

    public RecyclerViewScrollListener(RecyclerViewFastScroller recyclerViewFastScroller) {
        y45.j(recyclerViewFastScroller, "scroller");
        this.mRecyclerViewFastScrollerRef = new WeakReference<>(recyclerViewFastScroller);
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
        RecyclerViewFastScroller recyclerViewFastScroller;
        y45.j(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, newState);
        WeakReference<RecyclerViewFastScroller> weakReference = this.mRecyclerViewFastScrollerRef;
        if (weakReference == null || (recyclerViewFastScroller = weakReference.get()) == null) {
            return;
        }
        recyclerViewFastScroller.onScrollStateChanged(recyclerView, newState);
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
        RecyclerViewFastScroller recyclerViewFastScroller;
        y45.j(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, dx, dy);
        WeakReference<RecyclerViewFastScroller> weakReference = this.mRecyclerViewFastScrollerRef;
        if (weakReference == null || (recyclerViewFastScroller = weakReference.get()) == null) {
            return;
        }
        recyclerViewFastScroller.onScrolled(recyclerView, dx, dy);
    }
}
