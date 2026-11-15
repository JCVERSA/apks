package nj;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import kotlin.jvm.internal.Intrinsics;
import t6.f;

public final class a extends RecyclerView.r {

    private f f67304a;

    private int[] f67305b;

    private int f67306c;

    public a(f fVar) {
        this.f67304a = fVar;
    }

    private final void d(RecyclerView recyclerView) {
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            if (this.f67305b == null) {
                this.f67305b = new int[((StaggeredGridLayoutManager) layoutManager).Q()];
            }
            ((StaggeredGridLayoutManager) layoutManager).E(this.f67305b);
            this.f67306c = e(this.f67305b);
            return;
        }
        if (layoutManager instanceof GridLayoutManager) {
            this.f67306c = ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        } else {
            if (!(layoutManager instanceof LinearLayoutManager)) {
                throw new RuntimeException("Unsupported layoutManager.");
            }
            this.f67306c = ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
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
        f fVar;
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
        int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
        if (i10 != 0 || childCount <= 0 || this.f67306c < itemCount - 1) {
            return;
        }
        f fVar2 = this.f67304a;
        if ((fVar2 != null ? fVar2.i() : null) != LoadMoreStatus.Fail || (fVar = this.f67304a) == null) {
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
