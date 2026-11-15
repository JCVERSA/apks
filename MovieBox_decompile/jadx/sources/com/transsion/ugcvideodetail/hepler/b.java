package com.transsion.ugcvideodetail.hepler;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.tn.lib.pager.PagerLayoutManager;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.widget.UGCImmVideoItemView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import yg.l;

public final class b extends ng.a implements com.transsion.baselib.report.k.a {

    public static final a f54247k = new a(null);

    private final Fragment f54248a;

    private final BaseProviderMultiAdapter f54249b;

    private final com.transsion.player.orplayer.f f54250c;

    private final ORPlayerView f54251d;

    private PagerLayoutManager f54252e;

    private int f54253f;

    private int f54254g;

    private boolean f54255h;

    private View f54256i;

    private boolean f54257j;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(Fragment fragment, BaseProviderMultiAdapter baseProviderMultiAdapter, com.transsion.player.orplayer.f fVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(fragment, "fragment");
        this.f54248a = fragment;
        this.f54249b = baseProviderMultiAdapter;
        this.f54250c = fVar;
        this.f54251d = oRPlayerView;
        this.f54252e = pagerLayoutManager;
        com.transsion.baselib.report.k.f42210a.g(this);
    }

    private final void e() {
        t6.f fVarH0;
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f54249b;
        if (((baseProviderMultiAdapter == null || (fVarH0 = baseProviderMultiAdapter.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && l.f76264a.e()) {
            wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoControl", "current is fail, try load more", false, 4, null);
            this.f54249b.h0().w();
        }
    }

    private final void h(int i10, View view) {
        this.f54256i = view;
        wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoControl", "on page select position = " + i10, false, 4, null);
        if (i10 < 0) {
            return;
        }
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f54249b;
        UGCImmVideo uGCImmVideo = baseProviderMultiAdapter != null ? (UGCImmVideo) baseProviderMultiAdapter.f0(i10) : null;
        this.f54253f = i10;
        if (uGCImmVideo != null) {
            if (view instanceof UGCImmVideoItemView) {
                ((UGCImmVideoItemView) view).onPageSelected(this.f54250c, this.f54251d, uGCImmVideo);
            }
        } else {
            com.transsion.player.orplayer.f fVar = this.f54250c;
            if (fVar != null) {
                fVar.pause();
            }
        }
    }

    @Override
    public void a(int i10, boolean z10, View view) {
        wf.a.C0922a.r(wf.a.f74274a, "UGCImmVideoControl", new String[]{"onEachPageSelected, position = " + i10}, false, 4, null);
    }

    @Override
    public void b(View view) {
        if (this.f54257j) {
            this.f54257j = false;
            return;
        }
        PagerLayoutManager pagerLayoutManager = this.f54252e;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            wf.a.C0922a.v(wf.a.f74274a, "UGCImmVideoControl", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f54253f, false, 4, null);
            if (this.f54253f == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f54253f = iFindFirstVisibleItemPosition;
            }
            h(this.f54253f, view);
        }
    }

    @Override
    public void c(boolean z10, int i10, View view) {
        RecyclerView recyclerView;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.v(c0922a, "UGCImmVideoControl", "onPageRelease, position = " + i10 + ", ----- currentPosition = " + this.f54253f, false, 4, null);
        if (i10 == this.f54253f) {
            BaseProviderMultiAdapter baseProviderMultiAdapter = this.f54249b;
            if (baseProviderMultiAdapter != null && (recyclerView = baseProviderMultiAdapter.getRecyclerView()) != null && recyclerView.getScrollState() == 1) {
                wf.a.C0922a.v(c0922a, "UGCImmVideoControl", "onPageRelease, 连续滑动，暂停", false, 4, null);
                com.transsion.player.orplayer.f fVar = this.f54250c;
                if (fVar != null) {
                    fVar.pause();
                }
            }
            if (view instanceof UGCImmVideoItemView) {
                ((UGCImmVideoItemView) view).onPageRelease(i10);
            }
        }
    }

    @Override
    public void d(int i10, boolean z10, View view) {
        e();
        wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoControl", "onPageSelected, position = " + i10 + ", ----- currentPosition = " + this.f54253f, false, 4, null);
        int i11 = this.f54253f;
        if (i11 != i10 || this.f54255h) {
            this.f54255h = false;
            this.f54254g = i11;
            this.f54253f = i10;
            h(i10, view);
        }
    }

    public final UGCImmVideoItemView f() {
        View view = this.f54256i;
        if (view instanceof UGCImmVideoItemView) {
            return (UGCImmVideoItemView) view;
        }
        return null;
    }

    public final void g() {
        View view = this.f54256i;
        UGCImmVideoItemView uGCImmVideoItemView = view instanceof UGCImmVideoItemView ? (UGCImmVideoItemView) view : null;
        if (uGCImmVideoItemView != null) {
            uGCImmVideoItemView.onPageDestroy();
        }
        com.transsion.baselib.report.k.f42210a.t(this);
    }

    @Override
    public void onBackgroundStatusChange(boolean z10) {
        if (z10) {
            View view = this.f54256i;
            UGCImmVideoItemView uGCImmVideoItemView = view instanceof UGCImmVideoItemView ? (UGCImmVideoItemView) view : null;
            if (uGCImmVideoItemView != null) {
                uGCImmVideoItemView.app2Background();
            }
        }
    }
}
