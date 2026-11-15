package com.transsion.home.fragment.ranking;

import android.content.Context;
import android.graphics.Color;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.view.o;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.adapter.f;
import com.transsion.home.bean.CategoryType;
import com.transsion.home.bean.UGCRankAllData;
import com.transsion.home.fragment.film.UGCFilmListFragment;
import com.transsion.home.fragment.ranking.UGCRankAllFragment;
import com.transsion.home.viewmodel.UGCRankingViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import qk.y;
import r6.d;
import xk.a;
import yg.l;
import yg.m;
import zg.h;

@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018\u0000 M2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0018\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010!\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0007H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0007H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0007H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010D\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u00109R\u0016\u0010F\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00109R\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010L\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u00103¨\u0006N"}, d2 = {"Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lqk/y;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Cover;", "cover", "", "s0", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "o0", "t0", "v0", "Landroid/view/View;", "getNoNetworkView", "()Landroid/view/View;", "j0", "", "getPageName", "()Ljava/lang/String;", "Lcom/transsion/home/bean/CategoryType;", "category", "", RequestParameters.POSITION, "u0", "(Lcom/transsion/home/bean/CategoryType;I)V", "Landroid/view/LayoutInflater;", "inflater", "n0", "(Landroid/view/LayoutInflater;)Lqk/y;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "startLoading", "hideLoading", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsion/home/viewmodel/UGCRankingViewModel;", "a", "Lcom/transsion/home/viewmodel/UGCRankingViewModel;", "viewModel", "Lcom/transsion/home/fragment/film/UGCFilmListFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/fragment/film/UGCFilmListFragment;", "listFragment", "", "c", "Z", "hasRenderFirst", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/view/View;", "errorView", "e", "Ljava/lang/String;", "tabId", "Lcom/transsion/home/adapter/f;", "f", "Lcom/transsion/home/adapter/f;", "categoryAdapter", "Lxk/a;", "g", "Lxk/a;", "headerMaskManager", "h", "videoType", "i", "fromOptId", "", "j", "J", "firstLoadStartTimeMillis", CampaignEx.JSON_KEY_AD_K, "hasRecordedFirstLoadDuration", "l", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCRankAllFragment extends BaseFragment<y> {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f44058m = 8;

    private UGCRankingViewModel viewModel;

    private UGCFilmListFragment listFragment;

    private boolean hasRenderFirst;

    private View errorView;

    private f categoryAdapter;

    private a headerMaskManager;

    private long firstLoadStartTimeMillis;

    private boolean hasRecordedFirstLoadDuration;

    private String tabId = "0";

    private String videoType = "";

    private String fromOptId = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCRankAllFragment a(String str, String str2, String str3, String str4) {
            Bundle bundle = new Bundle();
            bundle.putString("category", str);
            if (str2 == null) {
                str2 = "";
            }
            bundle.putString("tabId", str2);
            if (str3 == null) {
                str3 = "";
            }
            bundle.putString("videoType", str3);
            if (str4 == null) {
                str4 = "";
            }
            bundle.putString("fromOptId", str4);
            UGCRankAllFragment uGCRankAllFragment = new UGCRankAllFragment();
            uGCRankAllFragment.setArguments(bundle);
            return uGCRankAllFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements m {
        b() {
        }

        @Override
        public void onConnected() {
            m.a.a(this);
        }

        @Override
        public void onDisconnected() {
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            View view;
            y mViewBinding;
            RecyclerView recyclerView;
            FrameLayout frameLayout;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (UGCRankAllFragment.this.isResumed() && (view = UGCRankAllFragment.this.errorView) != null && uf.c.i(view)) {
                wf.a.C0922a.f(wf.a.f74274a, "UGCRankAllFragment", "noNetWorkListener: network connected, hide error and reload", false, 4, null);
                y mViewBinding2 = UGCRankAllFragment.this.getMViewBinding();
                if (mViewBinding2 != null && (frameLayout = mViewBinding2.f69878e) != null) {
                    uf.c.g(frameLayout);
                }
                if (UGCRankAllFragment.this.hasRenderFirst && (mViewBinding = UGCRankAllFragment.this.getMViewBinding()) != null && (recyclerView = mViewBinding.f69877d) != null) {
                    uf.c.k(recyclerView);
                }
                UGCRankAllFragment.this.lazyLoadData();
            }
        }
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f44071a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44071a = function;
        }

        @Override
        public final Function a() {
            return this.f44071a;
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
            this.f44071a.invoke(obj);
        }
    }

    private final View getNoNetworkView() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        final NoNetworkBigView noNetworkBigView = new NoNetworkBigView(contextRequireContext);
        noNetworkBigView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        noNetworkBigView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return UGCRankAllFragment.l0(noNetworkBigView, this);
            }
        });
        noNetworkBigView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return UGCRankAllFragment.m0(this.f73661a);
            }
        });
        o.a(getPageName());
        return noNetworkBigView;
    }

    private final String getPageName() {
        return "/home/ugc_ranking";
    }

    private final View j0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(3, 1, false, "", "");
        stateView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return UGCRankAllFragment.k0(this.f73658a);
            }
        });
        return stateView;
    }

    public static final Unit k0(UGCRankAllFragment uGCRankAllFragment) {
        uGCRankAllFragment.lazyLoadData();
        return Unit.f64096a;
    }

    public static final Unit l0(NoNetworkBigView noNetworkBigView, UGCRankAllFragment uGCRankAllFragment) {
        uf.c.g(noNetworkBigView);
        uGCRankAllFragment.lazyLoadData();
        o.b(uGCRankAllFragment.getPageName());
        return Unit.f64096a;
    }

    public static final Unit m0(UGCRankAllFragment uGCRankAllFragment) {
        o.c(uGCRankAllFragment.getPageName());
        return Unit.f64096a;
    }

    private final void o0() {
        RecyclerView recyclerView;
        wf.a.C0922a.f(wf.a.f74274a, "UGCRankAllFragment", "initCategoryRecyclerView: start", false, 4, null);
        y mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f69877d) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setItemAnimator(null);
        final f fVar = new f();
        fVar.w1(new d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UGCRankAllFragment.p0(this.f73655a, fVar, baseQuickAdapter, view, i10);
            }
        });
        this.categoryAdapter = fVar;
        recyclerView.setAdapter(fVar);
    }

    public static final void p0(UGCRankAllFragment uGCRankAllFragment, f fVar, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UGCRankAllFragment", "category clicked: position=" + i10, false, 4, null);
        Object item = adapter.getItem(i10);
        if (item instanceof CategoryType) {
            f fVar2 = adapter instanceof f ? (f) adapter : null;
            if (i10 == (fVar2 != null ? fVar2.getCurrentSelectedPosition() : -1)) {
                wf.a.C0922a.f(c0922a, "UGCRankAllFragment", "category clicked same as selected: position=" + i10, false, 4, null);
                uGCRankAllFragment.u0((CategoryType) item, i10);
                return;
            }
            fVar.E1(i10);
            UGCFilmListFragment uGCFilmListFragment = uGCRankAllFragment.listFragment;
            if (uGCFilmListFragment != null) {
                uGCFilmListFragment.startLoading();
            }
            UGCRankingViewModel uGCRankingViewModel = uGCRankAllFragment.viewModel;
            if (uGCRankingViewModel != null) {
                uGCRankingViewModel.l(((CategoryType) item).getType(), uGCRankAllFragment.tabId);
            }
            uGCRankAllFragment.u0((CategoryType) item, i10);
        }
    }

    public static final Unit q0(UGCRankAllFragment uGCRankAllFragment, UGCRankAllData uGCRankAllData) {
        String url;
        List<UGCContent> items;
        UGCContent uGCContent;
        UGCCollection collection;
        Cover cover;
        List<UGCContent> items2;
        UGCContent uGCContent2;
        UGCCollection collection2;
        List<UGCContent> items3;
        UGCContent uGCContent3;
        UGCVideo video;
        Cover cover2;
        HashMap mapG;
        CategoryType categoryTypeC1;
        String name;
        View view;
        ImageView imageView;
        List<UGCContent> items4;
        UGCContent uGCContent4;
        UGCVideo video2;
        Cover cover3;
        String name2;
        CategoryType categoryTypeC2;
        List<CategoryType> categoryList;
        RecyclerView recyclerView;
        FrameLayout frameLayout;
        List<CategoryType> categoryList2;
        List<UGCContent> items5;
        HashMap mapG2;
        String ops;
        HashMap mapG3;
        if (!uGCRankAllFragment.hasRecordedFirstLoadDuration && uGCRankAllFragment.firstLoadStartTimeMillis > 0 && !uGCRankAllFragment.hasRenderFirst) {
            long jCurrentTimeMillis = System.currentTimeMillis() - uGCRankAllFragment.firstLoadStartTimeMillis;
            qi.b logViewConfig = uGCRankAllFragment.getLogViewConfig();
            if (logViewConfig != null && (mapG3 = logViewConfig.g()) != null) {
                mapG3.put("load_duration", String.valueOf(jCurrentTimeMillis));
            }
            uGCRankAllFragment.hasRecordedFirstLoadDuration = true;
        }
        qi.b logViewConfig2 = uGCRankAllFragment.getLogViewConfig();
        String str = "";
        if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
            if (uGCRankAllData == null || (ops = uGCRankAllData.getOps()) == null) {
                ops = "";
            }
            mapG2.put("ops", ops);
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        Cover cover4 = null;
        Integer numValueOf = (uGCRankAllData == null || (items5 = uGCRankAllData.getItems()) == null) ? null : Integer.valueOf(items5.size());
        wf.a.C0922a.f(c0922a, "UGCRankAllFragment", "rankAllLiveData: data received, items size=" + numValueOf + ", hasRenderFirst=" + uGCRankAllFragment.hasRenderFirst, false, 4, null);
        if (uGCRankAllFragment.hasRenderFirst) {
            UGCFilmListFragment uGCFilmListFragment = uGCRankAllFragment.listFragment;
            if (uGCFilmListFragment != null) {
                uGCFilmListFragment.hideLoading();
            }
        } else {
            uGCRankAllFragment.hideLoading();
        }
        if (((uGCRankAllData == null || (categoryList2 = uGCRankAllData.getCategoryList()) == null) ? 0 : categoryList2.size()) <= 0) {
            wf.a.C0922a.z(c0922a, "UGCRankAllFragment", "rankAllLiveData: no items, show error", false, 4, null);
            uGCRankAllFragment.v0();
            return Unit.f64096a;
        }
        y mViewBinding = uGCRankAllFragment.getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f69878e) != null) {
            uf.c.g(frameLayout);
        }
        y mViewBinding2 = uGCRankAllFragment.getMViewBinding();
        if (mViewBinding2 != null && (recyclerView = mViewBinding2.f69877d) != null) {
            uf.c.k(recyclerView);
        }
        if (!uGCRankAllFragment.hasRenderFirst) {
            wf.a.C0922a.f(c0922a, "UGCRankAllFragment", "rankAllLiveData: first render, setup category list", false, 4, null);
            f fVar = uGCRankAllFragment.categoryAdapter;
            if (fVar != null) {
                fVar.n1(uGCRankAllData != null ? uGCRankAllData.getCategoryList() : null);
            }
            if (uGCRankAllData != null && (categoryList = uGCRankAllData.getCategoryList()) != null) {
                int i10 = 0;
                for (Object obj : categoryList) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.u();
                    }
                    CategoryType categoryType = (CategoryType) obj;
                    if (Intrinsics.c(categoryType.getType(), uGCRankAllData.getCurrentCategoryType())) {
                        f fVar2 = uGCRankAllFragment.categoryAdapter;
                        if (fVar2 != null) {
                            fVar2.E1(i10);
                        }
                        wf.a.C0922a.f(wf.a.f74274a, "UGCRankAllFragment", "rankAllLiveData: set initial selected position=" + i10 + ", category=" + categoryType.getType(), false, 4, null);
                    }
                    i10 = i11;
                }
            }
            uGCRankAllFragment.hasRenderFirst = true;
        }
        UGCFilmListFragment uGCFilmListFragment2 = uGCRankAllFragment.listFragment;
        if (uGCFilmListFragment2 != null) {
            f fVar3 = uGCRankAllFragment.categoryAdapter;
            if (fVar3 == null || (categoryTypeC2 = fVar3.C1()) == null || (name2 = categoryTypeC2.getName()) == null) {
                name2 = "";
            }
            uGCFilmListFragment2.L0(uGCRankAllData, name2);
        }
        if (uGCRankAllData == null || (items4 = uGCRankAllData.getItems()) == null || (uGCContent4 = (UGCContent) CollectionsKt.k0(items4)) == null || (video2 = uGCContent4.getVideo()) == null || (cover3 = video2.getCover()) == null || (url = cover3.getUrl()) == null) {
            url = (uGCRankAllData == null || (items = uGCRankAllData.getItems()) == null || (uGCContent = (UGCContent) CollectionsKt.k0(items)) == null || (collection = uGCContent.getCollection()) == null || (cover = collection.getCover()) == null) ? null : cover.getUrl();
            if (url == null) {
                url = "";
            }
        }
        if (url.length() == 0) {
            y mViewBinding3 = uGCRankAllFragment.getMViewBinding();
            if (mViewBinding3 != null && (imageView = mViewBinding3.f69880g) != null) {
                imageView.setBackgroundColor(uGCRankAllFragment.getResources().getColor(R$color.gray_dark_10));
            }
            y mViewBinding4 = uGCRankAllFragment.getMViewBinding();
            if (mViewBinding4 != null && (view = mViewBinding4.f69875b) != null) {
                view.setBackgroundColor(uGCRankAllFragment.getResources().getColor(R$color.gray_dark_10));
            }
        } else {
            if (uGCRankAllData != null && (items3 = uGCRankAllData.getItems()) != null && (uGCContent3 = (UGCContent) CollectionsKt.k0(items3)) != null && (video = uGCContent3.getVideo()) != null && (cover2 = video.getCover()) != null) {
                cover4 = cover2;
            } else if (uGCRankAllData != null && (items2 = uGCRankAllData.getItems()) != null && (uGCContent2 = (UGCContent) CollectionsKt.k0(items2)) != null && (collection2 = uGCContent2.getCollection()) != null) {
                cover4 = collection2.getCover();
            }
            uGCRankAllFragment.s0(cover4);
        }
        UGCFilmListFragment uGCFilmListFragment3 = uGCRankAllFragment.listFragment;
        if (uGCFilmListFragment3 != null) {
            uGCRankAllFragment.getChildFragmentManager().p().y(uGCFilmListFragment3).l();
        }
        qi.b logViewConfig3 = uGCRankAllFragment.getLogViewConfig();
        if (logViewConfig3 != null) {
            logViewConfig3.k(true);
        }
        qi.b logViewConfig4 = uGCRankAllFragment.getLogViewConfig();
        if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
            f fVar4 = uGCRankAllFragment.categoryAdapter;
            if (fVar4 != null && (categoryTypeC1 = fVar4.C1()) != null && (name = categoryTypeC1.getName()) != null) {
                str = name;
            }
            mapG.put("rank_category", str);
        }
        return Unit.f64096a;
    }

    public static final void r0(UGCRankAllFragment uGCRankAllFragment, View view) {
        FragmentActivity activity = uGCRankAllFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void s0(Cover cover) {
        String averageHueDark;
        Object objM453constructorimpl;
        ImageView imageView;
        String url;
        String thumbnail;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        y mViewBinding = getMViewBinding();
        String str = "";
        if (mViewBinding != null && (imageView = mViewBinding.f69880g) != null) {
            ni.f.b bVarM = ni.f.f67269a.m(activity);
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarG = bVarM.g(url);
            if (cover == null || (thumbnail = cover.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).d(imageView);
        }
        if (cover == null || (averageHueDark = cover.getAverageHueDark()) == null) {
            return;
        }
        Unit unit = null;
        if (StringsKt.c0(averageHueDark, Utils.SEPARATOR, false, 2, null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                String averageHueDark2 = cover.getAverageHueDark();
                if (averageHueDark2 != null) {
                    str = averageHueDark2;
                }
                int color = Color.parseColor(str);
                a aVar = this.headerMaskManager;
                if (aVar != null) {
                    aVar.a(Integer.valueOf(color));
                    unit = Unit.f64096a;
                }
                objM453constructorimpl = Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                wf.a.C0922a.l(wf.a.f74274a, "UGCRankAllFragment", "initRecyclerView: parseColor failed, use default color", false, 4, null);
            }
        }
    }

    private final void t0() {
        setNetListener(new b());
    }

    private final void u0(CategoryType category, int position) {
        String name;
        b0 b0VarK;
        UGCRankAllData uGCRankAllData;
        List<UGCContent> items;
        UGCContent uGCContent;
        UGCVideo video;
        String ops;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "rec_list");
        String str = "";
        if (category == null || (name = category.getName()) == null) {
            name = "";
        }
        linkedHashMap.put("rank_category", name);
        linkedHashMap.put("belong_to_collection_id", "");
        linkedHashMap.put("content_id", "");
        linkedHashMap.put("refer_subject_id", "");
        linkedHashMap.put("content_type", "ugc_video");
        UGCRankingViewModel uGCRankingViewModel = this.viewModel;
        if (uGCRankingViewModel != null && (b0VarK = uGCRankingViewModel.k()) != null && (uGCRankAllData = (UGCRankAllData) b0VarK.f()) != null && (items = uGCRankAllData.getItems()) != null && (uGCContent = (UGCContent) CollectionsKt.k0(items)) != null && (video = uGCContent.getVideo()) != null && (ops = video.getOps()) != null) {
            str = ops;
        }
        linkedHashMap.put("ops", str);
        com.transsion.baselib.helper.a.f42121a.f(getPageName(), linkedHashMap);
    }

    private final void v0() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                UGCRankAllFragment.w0(this.f73657a);
            }
        }, 200L);
    }

    public static final void w0(UGCRankAllFragment uGCRankAllFragment) {
        y mViewBinding;
        RecyclerView recyclerView;
        FrameLayout frameLayout;
        if (uGCRankAllFragment.isDetached() || !uGCRankAllFragment.isAdded() || uGCRankAllFragment.getContext() == null) {
            return;
        }
        View viewJ0 = l.f76264a.e() ? uGCRankAllFragment.j0() : uGCRankAllFragment.getNoNetworkView();
        wf.a.C0922a.f(wf.a.f74274a, "UGCRankAllFragment", "showError: show error in outer container, hasRenderFirst=" + uGCRankAllFragment.hasRenderFirst, false, 4, null);
        y mViewBinding2 = uGCRankAllFragment.getMViewBinding();
        if (mViewBinding2 != null && (frameLayout = mViewBinding2.f69878e) != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(viewJ0);
            frameLayout.setVisibility(0);
        }
        if (uGCRankAllFragment.hasRenderFirst && (mViewBinding = uGCRankAllFragment.getMViewBinding()) != null && (recyclerView = mViewBinding.f69877d) != null) {
            uf.c.g(recyclerView);
        }
        UGCFilmListFragment uGCFilmListFragment = uGCRankAllFragment.listFragment;
        if (uGCFilmListFragment != null) {
            uGCRankAllFragment.getChildFragmentManager().p().p(uGCFilmListFragment).l();
        }
        uGCRankAllFragment.errorView = viewJ0;
    }

    @Override
    public void hideLoading() {
        ConstraintLayout constraintLayout;
        y mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayout = mViewBinding.f69881h) == null) {
            return;
        }
        uf.c.h(constraintLayout);
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        String string;
        b0 b0VarK;
        b0 b0VarK2;
        String string2;
        TitleLayout titleLayout;
        Intrinsics.h(view, "view");
        y mViewBinding = getMViewBinding();
        if (mViewBinding != null && (titleLayout = mViewBinding.f69882i) != null) {
            titleLayout.setLeftOnclick(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    UGCRankAllFragment.r0(this.f73653a, view2);
                }
            });
            h hVar = h.f76787a;
            Context context = titleLayout.getContext();
            Intrinsics.g(context, "getContext(...)");
            titleLayout.setPadding(0, hVar.d(context), 0, 0);
        }
        y mViewBinding2 = getMViewBinding();
        ImageView imageView = mViewBinding2 != null ? mViewBinding2.f69880g : null;
        y mViewBinding3 = getMViewBinding();
        this.headerMaskManager = new a(imageView, mViewBinding3 != null ? mViewBinding3.f69875b : null);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("videoType", "")) == null) {
            string = "";
        }
        this.videoType = string;
        Bundle arguments2 = getArguments();
        String str = (arguments2 == null || (string2 = arguments2.getString("fromOptId", "")) == null) ? "" : string2;
        this.fromOptId = str;
        UGCFilmListFragment uGCFilmListFragmentA = UGCFilmListFragment.INSTANCE.a(this.tabId, "", "", true, this.videoType, str);
        this.listFragment = uGCFilmListFragmentA;
        if (uGCFilmListFragmentA != null) {
            getChildFragmentManager().p().c(R$id.ranking_list_container, uGCFilmListFragmentA, "ranking_list_fragment").l();
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UGCRankAllFragment", "initView: listFragment dynamically added to container", false, 4, null);
        UGCRankingViewModel uGCRankingViewModel = this.viewModel;
        if (uGCRankingViewModel != null) {
            UGCFilmListFragment uGCFilmListFragment = this.listFragment;
            if (uGCFilmListFragment != null) {
                uGCFilmListFragment.H0(uGCRankingViewModel);
            }
            wf.a.C0922a.f(c0922a, "UGCRankAllFragment", "initView: setupRankingViewModel completed", false, 4, null);
        }
        UGCRankingViewModel uGCRankingViewModel2 = this.viewModel;
        if (uGCRankingViewModel2 != null && (b0VarK2 = uGCRankingViewModel2.k()) != null) {
            b0VarK2.p(this);
        }
        UGCRankingViewModel uGCRankingViewModel3 = this.viewModel;
        if (uGCRankingViewModel3 != null && (b0VarK = uGCRankingViewModel3.k()) != null) {
            b0VarK.j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCRankAllFragment.q0(this.f73654a, (UGCRankAllData) obj);
                }
            }));
        }
        t0();
        o0();
    }

    @Override
    public void lazyLoadData() {
        String string;
        if (this.hasRenderFirst) {
            UGCFilmListFragment uGCFilmListFragment = this.listFragment;
            if (uGCFilmListFragment != null) {
                uGCFilmListFragment.startLoading();
            }
        } else {
            startLoading();
        }
        Bundle arguments = getArguments();
        String str = "0";
        if (arguments != null && (string = arguments.getString("tabId", "0")) != null) {
            str = string;
        }
        this.tabId = str;
        Bundle arguments2 = getArguments();
        String string2 = arguments2 != null ? arguments2.getString("category") : null;
        wf.a.C0922a.f(wf.a.f74274a, "UGCRankAllFragment", "lazyLoadData: start loading, category=" + string2 + ", tabId=" + this.tabId, false, 4, null);
        if (!this.hasRecordedFirstLoadDuration && this.firstLoadStartTimeMillis == 0) {
            this.firstLoadStartTimeMillis = System.currentTimeMillis();
        }
        UGCRankingViewModel uGCRankingViewModel = this.viewModel;
        if (uGCRankingViewModel != null) {
            uGCRankingViewModel.l(string2, this.tabId);
        }
    }

    @Override
    public y getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.viewModel = (UGCRankingViewModel) new v0(activity).a(UGCRankingViewModel.class);
        }
        y yVarC = y.c(inflater);
        Intrinsics.g(yVarC, "inflate(...)");
        return yVarC;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void startLoading() {
        FrameLayout frameLayout;
        ConstraintLayout constraintLayout;
        y mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayout = mViewBinding.f69881h) != null) {
            uf.c.k(constraintLayout);
        }
        y mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (frameLayout = mViewBinding2.f69878e) == null) {
            return;
        }
        uf.c.g(frameLayout);
    }
}
