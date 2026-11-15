package com.transsion.shorttv_pugc.ui.fragment;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv_pugc.base.fragment.BaseListFragment;
import com.transsion.shorttv_pugc.base.widget.BaseLoadMoreView;
import com.transsion.shorttv_pugc.base.widget.NpaLinearLayoutManager;
import com.transsion.shorttv_pugc.bean.Pager;
import com.transsion.shorttv_pugc.bean.ShortTVRespData;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.ui.adapter.ShortTVTrendingAdapter;
import com.transsion.shorttv_pugc.ui.widget.ShortTVDiscoverHeaderView;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 =2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001>B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001f\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0013J\u001d\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001f\u0010\u0013J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\r\u0010!\u001a\u00020\u0011¢\u0006\u0004\b!\u0010\u0013J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R$\u00103\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010%\u001a\u0004\b6\u00107R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;¨\u0006?"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment;", "Lcom/transsion/shorttv_pugc/base/fragment/BaseListFragment;", "Lcom/transsion/shorttv_pugc/bean/Subject;", "<init>", "()V", "", "L0", "subject", "", "isDownloadView", "X0", "(Lcom/transsion/shorttv_pugc/bean/Subject;Z)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "M0", "(Landroidx/recyclerview/widget/RecyclerView;)V", "U0", "", "getPageName", "()Ljava/lang/String;", "onResume", "initViewData", "initListener", "m0", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "i0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "y0", "loadMore", "lazyLoadData", "getPageStateLayoutTitle", "initViewModel", "Q0", "retryLoadData", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "n", "Lkotlin/Lazy;", "S0", "()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "mViewModel", "o", "Ljava/lang/String;", "mPageNum", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;", TtmlNode.TAG_P, "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;", "R0", "()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;", "setListAdapter", "(Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;)V", "listAdapter", "Lxs/b;", CampaignEx.JSON_KEY_AD_Q, "T0", "()Lxs/b;", "recReport", "Lfs/b;", CampaignEx.JSON_KEY_AD_R, "Lfs/b;", "exposureHelper", "s", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTVFavoriteFragment extends BaseListFragment<Subject> {

    public static final Companion INSTANCE = new Companion(null);

    private String mPageNum;

    private ShortTVTrendingAdapter listAdapter;

    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTvViewModel.class), new Function0<x0>() {
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
            return ShortTVFavoriteFragment.Y0();
        }
    });

    private final fs.b exposureHelper = new fs.b(0.6f, new d(), false, 4, null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTVFavoriteFragment a() {
            return new ShortTVFavoriteFragment();
        }

        private Companion() {
        }
    }

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (i11 > 0) {
                ShortTVFavoriteFragment.this.M0(recyclerView);
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

    public static final class d implements fs.a {
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
                ShortTVFavoriteFragment.this.T0().a(ShortTVFavoriteFragment.this.getPageName(), subject, i10, j10, ShortTVFavoriteFragment.this.Q0());
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
                outRect.top = com.blankj.utilcode.util.a0.a(16.0f);
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f52148a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52148a = function;
        }

        @Override
        public final Function a() {
            return this.f52148a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f52148a.invoke(obj);
        }
    }

    private final void L0() {
        RecyclerView recyclerView;
        qr.b bVar = (qr.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f69952e) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new b());
    }

    public final void M0(RecyclerView recyclerView) {
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

    public static final void N0(ShortTVFavoriteFragment shortTVFavoriteFragment) {
        shortTVFavoriteFragment.loadMore();
    }

    public static final void O0(ShortTVFavoriteFragment shortTVFavoriteFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVFavoriteFragment.T0().b(shortTVFavoriteFragment.getPageName(), subject, i10, shortTVFavoriteFragment.Q0());
            shortTVFavoriteFragment.X0(subject, false);
        }
    }

    public static final void P0(ShortTVFavoriteFragment shortTVFavoriteFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVFavoriteFragment.T0().b(shortTVFavoriteFragment.getPageName(), subject, i10, shortTVFavoriteFragment.Q0());
            shortTVFavoriteFragment.X0(subject, true);
        }
    }

    private final ShortTvViewModel S0() {
        return (ShortTvViewModel) this.mViewModel.getValue();
    }

    public final xs.b T0() {
        return (xs.b) this.recReport.getValue();
    }

    private final void U0() {
        RecyclerView recyclerView;
        qr.b bVar = (qr.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f69952e) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.listAdapter);
        recyclerView.addOnScrollListener(this.exposureHelper);
        L0();
        recyclerView.addItemDecoration(new e());
    }

    public static final void V0(ShortTVFavoriteFragment shortTVFavoriteFragment, View view) {
        FragmentActivity activity = shortTVFavoriteFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final Unit W0(ShortTVFavoriteFragment shortTVFavoriteFragment, ShortTVRespData shortTVRespData) {
        Pager pager;
        List<Subject> items;
        if (shortTVRespData == null || (items = shortTVRespData.getItems()) == null) {
            shortTVFavoriteFragment.C0();
        } else if (shortTVFavoriteFragment.t0() || Intrinsics.c(shortTVFavoriteFragment.mPageNum, "1")) {
            shortTVFavoriteFragment.z0(false);
            if (items.isEmpty()) {
                BaseListFragment.B0(shortTVFavoriteFragment, null, 1, null);
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
                shortTVFavoriteFragment.u0();
            } else {
                BaseListFragment.w0(shortTVFavoriteFragment, false, 1, null);
            }
        }
        return Unit.f64096a;
    }

    private final void X0(Subject subject, boolean isDownloadView) {
        Context context = getContext();
        if (context != null) {
            ts.a.f72793a.a((FragmentActivity) context, getPageName(), subject.getOps(), (PsExtractor.AUDIO_STREAM & 8) != 0 ? null : "download_subject", (PsExtractor.AUDIO_STREAM & 16) != 0 ? false : isDownloadView, (PsExtractor.AUDIO_STREAM & 32) != 0 ? null : subject, (PsExtractor.AUDIO_STREAM & 64) != 0 ? null : null, (PsExtractor.AUDIO_STREAM & 128) != 0 ? Boolean.FALSE : null);
        }
    }

    public static final xs.b Y0() {
        return new xs.b();
    }

    public final String Q0() {
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
    public BaseQuickAdapter i0() {
        ShortTVTrendingAdapter shortTVTrendingAdapter = new ShortTVTrendingAdapter(getPageName(), true);
        shortTVTrendingAdapter.h0().C(new BaseLoadMoreView());
        shortTVTrendingAdapter.h0().z(true);
        shortTVTrendingAdapter.h0().y(true);
        shortTVTrendingAdapter.h0().E(3);
        shortTVTrendingAdapter.h0().D(new r6.f() {
            @Override
            public final void a() {
                ShortTVFavoriteFragment.N0(this.f52264a);
            }
        });
        shortTVTrendingAdapter.R0(new c());
        shortTVTrendingAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVFavoriteFragment.O0(this.f52265a, baseQuickAdapter, view, i10);
            }
        });
        shortTVTrendingAdapter.l(R$id.btn_download);
        shortTVTrendingAdapter.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVFavoriteFragment.P0(this.f52266a, baseQuickAdapter, view, i10);
            }
        });
        this.listAdapter = shortTVTrendingAdapter;
        return shortTVTrendingAdapter;
    }

    @Override
    public void initListener() {
        AppCompatImageView appCompatImageView;
        super.initListener();
        qr.b bVar = (qr.b) getMViewBinding();
        if (bVar == null || (appCompatImageView = bVar.f69950c) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTVFavoriteFragment.V0(this.f52262a, view);
            }
        });
    }

    @Override
    public void initViewData() {
        super.initViewData();
        U0();
        z0(true);
    }

    @Override
    public void initViewModel() {
        S0().x().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTVFavoriteFragment.W0(this.f52263a, (ShortTVRespData) obj);
            }
        }));
    }

    @Override
    public void lazyLoadData() {
        Intrinsics.c(this.mPageNum, "1");
    }

    @Override
    public void loadMore() {
        lazyLoadData();
    }

    @Override
    public String m0() {
        String string;
        Context context = getContext();
        return (context == null || (string = context.getString(R$string.short_tv_my_list)) == null) ? "" : string;
    }

    @Override
    public void onResume() {
        super.onResume();
        y0();
    }

    @Override
    public void retryLoadData() {
        lazyLoadData();
    }

    @Override
    public void y0() {
        z0(true);
        this.mPageNum = "1";
        lazyLoadData();
    }
}
