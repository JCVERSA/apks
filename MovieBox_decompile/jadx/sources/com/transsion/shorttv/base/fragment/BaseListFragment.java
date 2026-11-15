package com.transsion.shorttv.base.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.base.widget.StateView;
import com.transsion.shorttv.base.widget.TnTextView;
import com.transsion.shorttv.base.widget.g;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import qr.p;
import yg.l;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u0017\u0010\u0019\u001a\u00020\n2\b\b\u0002\u0010\u0018\u001a\u00020\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0011¢\u0006\u0004\b\u001b\u0010\u0013J\u0015\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0011¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0011¢\u0006\u0004\b\u001f\u0010\u0013J\r\u0010 \u001a\u00020\n¢\u0006\u0004\b \u0010\u0005J\r\u0010!\u001a\u00020\n¢\u0006\u0004\b!\u0010\u0005J\u0017\u0010#\u001a\u00020\n2\b\b\u0002\u0010\"\u001a\u00020\u0011¢\u0006\u0004\b#\u0010\u001eJ\r\u0010$\u001a\u00020\u0011¢\u0006\u0004\b$\u0010\u0013J\u000f\u0010&\u001a\u00020%H&¢\u0006\u0004\b&\u0010'J\u001d\u0010*\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020)\u0018\u00010(H&¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\nH&¢\u0006\u0004\b,\u0010\u0005J\u000f\u0010-\u001a\u00020\nH&¢\u0006\u0004\b-\u0010\u0005R0\u00103\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020)\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u0010+\"\u0004\b1\u00102¨\u00064"}, d2 = {"Lcom/transsion/shorttv/base/fragment/BaseListFragment;", "T", "Lcom/transsion/shorttv/base/fragment/LazyFragment;", "Lqr/p;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "n0", "(Landroid/view/LayoutInflater;)Lqr/p;", "", "initViewData", "initListener", "Landroidx/recyclerview/widget/RecyclerView$m;", "j0", "()Landroidx/recyclerview/widget/RecyclerView$m;", "q0", "", "r0", "()Z", "Landroid/view/View;", "l0", "()Landroid/view/View;", "C0", "emptyView", "A0", "(Landroid/view/View;)V", "t0", "isRefresh", "z0", "(Z)V", "s0", "x0", "u0", "gone", "v0", "isEmpty", "", "m0", "()Ljava/lang/String;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "i0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "y0", "loadMore", "m", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "k0", "setMBaseAdapter", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "mBaseAdapter", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseListFragment<T> extends LazyFragment<p> {

    private BaseQuickAdapter mBaseAdapter;

    public static void B0(BaseListFragment baseListFragment, View view, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setRvEmptyLayout");
        }
        if ((i10 & 1) != 0) {
            view = baseListFragment.l0();
        }
        baseListFragment.A0(view);
    }

    public static final void o0(BaseListFragment baseListFragment) {
        if (!baseListFragment.s0()) {
            baseListFragment.y0();
        } else {
            baseListFragment.z0(false);
            jr.b.f63248a.e("loading, please try again later ...");
        }
    }

    public static final void p0(BaseListFragment baseListFragment) {
        if (!baseListFragment.t0()) {
            baseListFragment.loadMore();
        } else {
            jr.b.f63248a.e("being refreshed, please try again later ...");
            baseListFragment.x0();
        }
    }

    public static void w0(BaseListFragment baseListFragment, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadMoreEnd");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        baseListFragment.v0(z10);
    }

    public final void A0(View emptyView) {
        Intrinsics.h(emptyView, "emptyView");
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter != null) {
            baseQuickAdapter.Y0(emptyView);
        }
    }

    public void C0() {
        z0(false);
        x0();
        if (isEmpty()) {
            B0(this, null, 1, null);
        }
        if (l.f76264a.e()) {
            return;
        }
        jr.b.f63248a.e(getString(R$string.short_tv_no_network_toast));
    }

    public abstract BaseQuickAdapter i0();

    @Override
    public void initListener() {
        SwipeRefreshLayout swipeRefreshLayout;
        p pVar = (p) getMViewBinding();
        if (pVar != null && (swipeRefreshLayout = pVar.f70129d) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    BaseListFragment.o0(this.f50766a);
                }
            });
        }
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter != null) {
            baseQuickAdapter.h0().D(new r6.f() {
                @Override
                public final void a() {
                    BaseListFragment.p0(this.f50767a);
                }
            });
        }
    }

    @Override
    public void initViewData() {
        p pVar = (p) getMViewBinding();
        if (pVar != null) {
            String strM0 = m0();
            if (strM0.length() > 0) {
                AppCompatImageView ivBack = pVar.f70128c;
                Intrinsics.g(ivBack, "ivBack");
                cr.b.e(ivBack);
                TnTextView tvTitle = pVar.f70131f;
                Intrinsics.g(tvTitle, "tvTitle");
                cr.b.e(tvTitle);
            } else {
                AppCompatImageView ivBack2 = pVar.f70128c;
                Intrinsics.g(ivBack2, "ivBack");
                cr.b.b(ivBack2);
                TnTextView tvTitle2 = pVar.f70131f;
                Intrinsics.g(tvTitle2, "tvTitle");
                cr.b.b(tvTitle2);
            }
            pVar.f70131f.setText(strM0);
        }
        q0();
    }

    public final boolean isEmpty() {
        List<Object> data;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        return (baseQuickAdapter == null || (data = baseQuickAdapter.getData()) == null || !data.isEmpty()) ? false : true;
    }

    public RecyclerView.m j0() {
        return new LinearLayoutManager(requireContext());
    }

    public final BaseQuickAdapter getMBaseAdapter() {
        return this.mBaseAdapter;
    }

    public View l0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(2, 1, false, "", getEmptyDescText());
        return stateView;
    }

    public abstract void loadMore();

    public abstract String m0();

    @Override
    public p getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        p pVarC = p.c(inflater);
        Intrinsics.g(pVarC, "inflate(...)");
        return pVarC;
    }

    public void q0() {
        RecyclerView recyclerView;
        p pVar = (p) getMViewBinding();
        if (pVar == null || (recyclerView = pVar.f70130e) == null) {
            return;
        }
        recyclerView.setLayoutManager(j0());
        BaseQuickAdapter baseQuickAdapterI0 = i0();
        this.mBaseAdapter = baseQuickAdapterI0;
        recyclerView.setAdapter(baseQuickAdapterI0);
        if (r0()) {
            BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
            recyclerView.addOnScrollListener(new g(baseQuickAdapter != null ? baseQuickAdapter.h0() : null));
        }
    }

    public boolean r0() {
        return true;
    }

    public final boolean s0() {
        t6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return false;
        }
        return fVarH0.r();
    }

    public final boolean t0() {
        SwipeRefreshLayout swipeRefreshLayout;
        p pVar = (p) getMViewBinding();
        if (pVar == null || (swipeRefreshLayout = pVar.f70129d) == null) {
            return false;
        }
        return swipeRefreshLayout.isRefreshing();
    }

    public final void u0() {
        t6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return;
        }
        fVarH0.s();
    }

    public final void v0(boolean gone) {
        t6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return;
        }
        fVarH0.t(gone);
    }

    public final void x0() {
        t6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public abstract void y0();

    public final void z0(boolean isRefresh) {
        SwipeRefreshLayout swipeRefreshLayout;
        p pVar = (p) getMViewBinding();
        if (pVar == null || (swipeRefreshLayout = pVar.f70129d) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(isRefresh);
    }
}
