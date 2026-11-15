package t6;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.jvm.internal.Intrinsics;

public class f {

    private final BaseQuickAdapter f72532a;

    private r6.f f72533b;

    private boolean f72534c;

    private LoadMoreStatus f72535d;

    private boolean f72536e;

    private s6.a f72537f;

    private boolean f72538g;

    private boolean f72539h;

    private boolean f72540i;

    private int f72541j;

    private boolean f72542k;

    public f(BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(baseQuickAdapter, "baseQuickAdapter");
        this.f72532a = baseQuickAdapter;
        this.f72534c = true;
        this.f72535d = LoadMoreStatus.Complete;
        this.f72537f = j.a();
        this.f72539h = true;
        this.f72540i = true;
        this.f72541j = 1;
    }

    public static final void G(f this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        LoadMoreStatus loadMoreStatus = this$0.f72535d;
        if (loadMoreStatus == LoadMoreStatus.Fail) {
            this$0.w();
            return;
        }
        if (loadMoreStatus == LoadMoreStatus.Complete) {
            this$0.w();
        } else if (this$0.f72538g && loadMoreStatus == LoadMoreStatus.End) {
            this$0.w();
        }
    }

    public static final void g(f this$0, RecyclerView.m manager) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(manager, "$manager");
        if (this$0.q((LinearLayoutManager) manager)) {
            this$0.f72534c = true;
        }
    }

    public static final void h(RecyclerView.m manager, f this$0) {
        Intrinsics.h(manager, "$manager");
        Intrinsics.h(this$0, "this$0");
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) manager;
        int[] iArr = new int[staggeredGridLayoutManager.Q()];
        staggeredGridLayoutManager.E(iArr);
        if (this$0.l(iArr) + 1 != this$0.f72532a.getItemCount()) {
            this$0.f72534c = true;
        }
    }

    private final int l(int[] iArr) {
        int i10 = -1;
        if (iArr != null && iArr.length != 0) {
            for (int i11 : iArr) {
                if (i11 > i10) {
                    i10 = i11;
                }
            }
        }
        return i10;
    }

    private final void n() {
        this.f72535d = LoadMoreStatus.Loading;
        RecyclerView recyclerViewN0 = this.f72532a.n0();
        if (recyclerViewN0 != null) {
            recyclerViewN0.post(new Runnable() {
                @Override
                public final void run() {
                    f.o(this.f72526a);
                }
            });
            return;
        }
        r6.f fVar = this.f72533b;
        if (fVar != null) {
            fVar.a();
        }
    }

    public static final void o(f this$0) {
        Intrinsics.h(this$0, "this$0");
        r6.f fVar = this$0.f72533b;
        if (fVar != null) {
            fVar.a();
        }
    }

    private final boolean q(LinearLayoutManager linearLayoutManager) {
        return (linearLayoutManager.findLastCompletelyVisibleItemPosition() + 1 == this.f72532a.getItemCount() && linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    public static void u(f fVar, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadMoreEnd");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        fVar.t(z10);
    }

    public final void A(boolean z10) {
        this.f72538g = z10;
    }

    public final void B(boolean z10) {
        this.f72540i = z10;
    }

    public final void C(s6.a aVar) {
        Intrinsics.h(aVar, "<set-?>");
        this.f72537f = aVar;
    }

    public void D(r6.f fVar) {
        this.f72533b = fVar;
        z(true);
    }

    public final void E(int i10) {
        if (i10 > 1) {
            this.f72541j = i10;
        }
    }

    public final void F(BaseViewHolder viewHolder) {
        Intrinsics.h(viewHolder, "viewHolder");
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                f.G(this.f72527a, view);
            }
        });
    }

    public final void e(int i10) {
        LoadMoreStatus loadMoreStatus;
        if (this.f72539h && m() && i10 >= this.f72532a.getItemCount() - this.f72541j && (loadMoreStatus = this.f72535d) == LoadMoreStatus.Complete && loadMoreStatus != LoadMoreStatus.Loading && this.f72534c) {
            n();
        }
    }

    public final void f() {
        final RecyclerView.m layoutManager;
        if (this.f72540i) {
            return;
        }
        this.f72534c = false;
        RecyclerView recyclerViewN0 = this.f72532a.n0();
        if (recyclerViewN0 == null || (layoutManager = recyclerViewN0.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            recyclerViewN0.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    f.g(this.f72528a, layoutManager);
                }
            }, 50L);
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            recyclerViewN0.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    f.h(layoutManager, this);
                }
            }, 50L);
        }
    }

    public final LoadMoreStatus i() {
        return this.f72535d;
    }

    public final s6.a j() {
        return this.f72537f;
    }

    public final int k() {
        if (this.f72532a.q0()) {
            return -1;
        }
        BaseQuickAdapter baseQuickAdapter = this.f72532a;
        return baseQuickAdapter.a0() + baseQuickAdapter.getData().size() + baseQuickAdapter.V();
    }

    public final boolean m() {
        if (this.f72533b == null || !this.f72542k) {
            return false;
        }
        if (this.f72535d == LoadMoreStatus.End && this.f72536e) {
            return false;
        }
        return !this.f72532a.getData().isEmpty();
    }

    public final boolean p() {
        return this.f72542k;
    }

    public final boolean r() {
        return this.f72535d == LoadMoreStatus.Loading;
    }

    public final void s() {
        if (m()) {
            this.f72535d = LoadMoreStatus.Complete;
            this.f72532a.notifyItemChanged(k());
            f();
        }
    }

    public final void t(boolean z10) {
        if (m()) {
            this.f72536e = z10;
            this.f72535d = LoadMoreStatus.End;
            if (z10) {
                this.f72532a.notifyItemRemoved(k());
            } else {
                this.f72532a.notifyItemChanged(k());
            }
        }
    }

    public final void v() {
        if (m()) {
            this.f72535d = LoadMoreStatus.Fail;
            this.f72532a.notifyItemChanged(k());
        }
    }

    public final void w() {
        LoadMoreStatus loadMoreStatus = this.f72535d;
        LoadMoreStatus loadMoreStatus2 = LoadMoreStatus.Loading;
        if (loadMoreStatus == loadMoreStatus2) {
            return;
        }
        this.f72535d = loadMoreStatus2;
        this.f72532a.notifyItemChanged(k());
        n();
    }

    public final void x() {
        if (this.f72533b != null) {
            z(true);
            this.f72535d = LoadMoreStatus.Complete;
        }
    }

    public final void y(boolean z10) {
        this.f72539h = z10;
    }

    public final void z(boolean z10) {
        boolean zM = m();
        this.f72542k = z10;
        boolean zM2 = m();
        if (zM) {
            if (zM2) {
                return;
            }
            this.f72532a.notifyItemRemoved(k());
        } else if (zM2) {
            this.f72535d = LoadMoreStatus.Complete;
            this.f72532a.notifyItemInserted(k());
        }
    }
}
