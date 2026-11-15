package com.transsion.postdetail.shorttv;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.baseui.widget.BaseLoadMoreView;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.ShortTVRespData;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.shorttv.adapter.ShortTVTrendingAdapter;
import com.transsion.postdetail.shorttv.viewmodel.ShortTVContentViewModel;
import com.transsion.postdetail.shorttv.widget.ShortTVDiscoverHeaderView;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 <2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001=B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001f\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0013J\u001d\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001e\u0010\u0013J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\r\u0010 \u001a\u00020\u0011¢\u0006\u0004\b \u0010\u0013J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004R\u001b\u0010'\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R$\u00102\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001b\u00107\u001a\u0002038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010$\u001a\u0004\b5\u00106R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:¨\u0006>"}, d2 = {"Lcom/transsion/postdetail/shorttv/ShortTVFavoriteFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/moviedetailapi/bean/Subject;", "<init>", "()V", "", "V0", "subject", "", "isDownloadView", "g1", "(Lcom/transsion/moviedetailapi/bean/Subject;Z)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "W0", "(Landroidx/recyclerview/widget/RecyclerView;)V", "e1", "", "getPageName", "()Ljava/lang/String;", "onResume", "initViewData", "s0", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "G0", "loadMore", "lazyLoadData", "getPageStateLayoutTitle", "initViewModel", "a1", "retryLoadData", "Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "c1", "()Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;", "mViewModel", "c", "Ljava/lang/String;", "mPageNum", "Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;", "b1", "()Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;", "setListAdapter", "(Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;)V", "listAdapter", "Lcom/transsion/postdetail/shorttv/j;", "e", "d1", "()Lcom/transsion/postdetail/shorttv/j;", "recReport", "Lbj/b;", "f", "Lbj/b;", "exposureHelper", "g", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Deprecated
@SourceDebugExtension
public final class ShortTVFavoriteFragment extends BaseListFragment<Subject> {

    private String mPageNum;

    private ShortTVTrendingAdapter listAdapter;

    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTVContentViewModel.class), new Function0<x0>() {
        {
            super(0);
        }

        @Override
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() {
        {
            super(0);
        }

        @Override
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private final Lazy recReport = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTVFavoriteFragment.h1();
        }
    });

    private final bj.b exposureHelper = new bj.b(0.6f, new d(), false, 4, null);

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (i11 > 0) {
                ShortTVFavoriteFragment.this.W0(recyclerView);
            }
        }
    }

    public static final class c extends DiffUtil.e {
        c() {
        }

        @Override
        public boolean areContentsTheSame(Subject oldItem, Subject newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getSubjectId(), newItem.getSubjectId());
        }

        @Override
        public boolean areItemsTheSame(Subject oldItem, Subject newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return oldItem.hashCode() == newItem.hashCode();
        }
    }

    public static final class d implements bj.a {
        d() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVTrendingAdapter listAdapter = ShortTVFavoriteFragment.this.getListAdapter();
            if (((listAdapter == null || (data2 = listAdapter.getData()) == null) ? 0 : data2.size()) <= i10) {
                return;
            }
            ShortTVTrendingAdapter listAdapter2 = ShortTVFavoriteFragment.this.getListAdapter();
            Subject subject = (listAdapter2 == null || (data = listAdapter2.getData()) == null) ? null : (Subject) data.get(i10);
            if (subject != null) {
                ShortTVFavoriteFragment.this.d1().a(ShortTVFavoriteFragment.this.getPageName(), subject, i10, j10, ShortTVFavoriteFragment.this.a1());
            }
        }
    }

    public static final class e extends RecyclerView.l {
        e() {
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            if (parent.getAdapter() != null) {
                outRect.top = a0.a(16.0f);
            }
        }
    }

    static final class f implements c0, FunctionAdapter {

        private final Function1 f47126a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47126a = function;
        }

        @Override
        public final Function a() {
            return this.f47126a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f47126a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void V0() {
        RecyclerView recyclerView;
        jj.b bVar = (jj.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f63135d) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new b());
    }

    public final void W0(RecyclerView recyclerView) {
        ShortTVTrendingAdapter shortTVTrendingAdapter;
        LinearLayout linearLayoutZ;
        RecyclerView.m layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        if (!(layoutManager instanceof LinearLayoutManager) || ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() != 0 || (shortTVTrendingAdapter = this.listAdapter) == null || (linearLayoutZ = shortTVTrendingAdapter.Z()) == null) {
            return;
        }
        int childCount = linearLayoutZ.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = linearLayoutZ.getChildAt(i10);
            if ((childAt instanceof ShortTVDiscoverHeaderView) && childAt.getVisibility() == 0) {
                ((ShortTVDiscoverHeaderView) childAt).clearExposureCache();
            }
        }
    }

    public static final void X0(ShortTVFavoriteFragment shortTVFavoriteFragment) {
        shortTVFavoriteFragment.loadMore();
    }

    public static final void Y0(ShortTVFavoriteFragment shortTVFavoriteFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVFavoriteFragment.d1().b(shortTVFavoriteFragment.getPageName(), subject, i10, shortTVFavoriteFragment.a1());
            shortTVFavoriteFragment.g1(subject, false);
        }
    }

    public static final void Z0(ShortTVFavoriteFragment shortTVFavoriteFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVFavoriteFragment.d1().b(shortTVFavoriteFragment.getPageName(), subject, i10, shortTVFavoriteFragment.a1());
            shortTVFavoriteFragment.g1(subject, true);
        }
    }

    private final ShortTVContentViewModel c1() {
        return (ShortTVContentViewModel) this.mViewModel.getValue();
    }

    public final j d1() {
        return (j) this.recReport.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e1() {
        RecyclerView recyclerView;
        jj.b bVar = (jj.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f63135d) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.listAdapter);
        recyclerView.addOnScrollListener(this.exposureHelper);
        V0();
        recyclerView.addItemDecoration(new e());
    }

    public static final Unit f1(ShortTVFavoriteFragment shortTVFavoriteFragment, ShortTVRespData shortTVRespData) {
        Pager pager;
        List<Subject> items;
        if (shortTVRespData == null || (items = shortTVRespData.getItems()) == null) {
            shortTVFavoriteFragment.N0();
        } else if (shortTVFavoriteFragment.A0() || Intrinsics.c(shortTVFavoriteFragment.mPageNum, "1")) {
            shortTVFavoriteFragment.I0(false);
            if (items.isEmpty()) {
                BaseListFragment.K0(shortTVFavoriteFragment, null, 1, null);
            } else {
                BaseQuickAdapter mBaseAdapter = shortTVFavoriteFragment.getMBaseAdapter();
                if (mBaseAdapter != null) {
                    mBaseAdapter.n1(items);
                }
            }
        } else {
            BaseQuickAdapter mBaseAdapter2 = shortTVFavoriteFragment.getMBaseAdapter();
            if (mBaseAdapter2 != null) {
                mBaseAdapter2.q(items);
            }
        }
        if (shortTVRespData != null && (pager = shortTVRespData.getPager()) != null) {
            if (Intrinsics.c(pager.getHasMore(), Boolean.TRUE)) {
                shortTVFavoriteFragment.mPageNum = pager.getNextPage();
                shortTVFavoriteFragment.B0();
            } else {
                BaseListFragment.D0(shortTVFavoriteFragment, false, 1, null);
            }
        }
        return Unit.f64096a;
    }

    private final void g1(Subject subject, boolean isDownloadView) {
        Context context = getContext();
        if (context != null) {
            DownloadManagerApi.f56187j.a().d0((FragmentActivity) context, getPageName(), (384 & 4) != 0 ? "" : "", subject.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : isDownloadView, (384 & 64) != 0 ? null : subject, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
        }
    }

    public static final j h1() {
        return new j();
    }

    @Override
    public void G0() {
        I0(true);
        this.mPageNum = "1";
        lazyLoadData();
    }

    public final String a1() {
        return "favorite";
    }

    public final ShortTVTrendingAdapter getListAdapter() {
        return this.listAdapter;
    }

    public final String getPageName() {
        return "minitv_favorite";
    }

    @Override
    public String getPageStateLayoutTitle() {
        String string;
        Context context = getContext();
        return (context == null || (string = context.getString(R$string.short_tv_my_list)) == null) ? "" : string;
    }

    @Override
    public void initViewData() {
        super.initViewData();
        e1();
        I0(true);
    }

    @Override
    public void initViewModel() {
        c1().h().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTVFavoriteFragment.f1(this.f47170a, (ShortTVRespData) obj);
            }
        }));
    }

    @Override
    public void lazyLoadData() {
        boolean zC = Intrinsics.c(this.mPageNum, "1");
        ShortTVContentViewModel shortTVContentViewModelC1 = c1();
        String str = this.mPageNum;
        shortTVContentViewModelC1.l(str != null ? str : "1", 8, zC);
    }

    @Override
    public void loadMore() {
        lazyLoadData();
    }

    @Override
    public BaseQuickAdapter m0() {
        ShortTVTrendingAdapter shortTVTrendingAdapter = new ShortTVTrendingAdapter(getPageName(), true);
        shortTVTrendingAdapter.h0().C(new BaseLoadMoreView());
        shortTVTrendingAdapter.h0().z(true);
        shortTVTrendingAdapter.h0().y(true);
        shortTVTrendingAdapter.h0().E(3);
        shortTVTrendingAdapter.h0().D(new r6.f() {
            @Override
            public final void a() {
                ShortTVFavoriteFragment.X0(this.f47171a);
            }
        });
        shortTVTrendingAdapter.R0(new c());
        shortTVTrendingAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVFavoriteFragment.Y0(this.f47187a, baseQuickAdapter, view, i10);
            }
        });
        shortTVTrendingAdapter.l(R$id.btn_download);
        shortTVTrendingAdapter.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVFavoriteFragment.Z0(this.f47188a, baseQuickAdapter, view, i10);
            }
        });
        this.listAdapter = shortTVTrendingAdapter;
        return shortTVTrendingAdapter;
    }

    @Override
    public void onResume() {
        super.onResume();
        G0();
    }

    @Override
    public void retryLoadData() {
        lazyLoadData();
    }

    @Override
    public String s0() {
        String string;
        Context context = getContext();
        return (context == null || (string = context.getString(R$string.short_tv_my_list)) == null) ? "" : string;
    }
}
