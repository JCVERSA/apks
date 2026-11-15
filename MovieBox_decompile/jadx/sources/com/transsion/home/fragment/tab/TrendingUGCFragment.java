package com.transsion.home.fragment.tab;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.DefaultView;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.bean.MainOperateData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.TrendingRespData;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.home.viewmodel.HomePreferencesViewModel;
import com.transsion.home.viewmodel.TrendingUGCViewModel;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
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
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 \u0083\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0084\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00052\b\b\u0002\u0010\u0018\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001f\u0010\u0004J\u0017\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0002¢\u0006\u0004\b%\u0010\u0004J\u0017\u0010&\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002¢\u0006\u0004\b&\u0010$J\u000f\u0010'\u001a\u00020\u0005H\u0002¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u000fH\u0002¢\u0006\u0004\b(\u0010\u0011J\u000f\u0010)\u001a\u00020\u0005H\u0002¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010+\u001a\u00020*H\u0002¢\u0006\u0004\b+\u0010,J\u0019\u0010/\u001a\u00020\u00052\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b/\u00100J\u0017\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J!\u00106\u001a\u00020\u00052\u0006\u00105\u001a\u00020\"2\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0005H\u0016¢\u0006\u0004\b8\u0010\u0004J\u0017\u0010:\u001a\u00020\u00052\u0006\u00109\u001a\u00020-H\u0016¢\u0006\u0004\b:\u00100J!\u0010;\u001a\u00020\u00052\u0006\u00105\u001a\u00020\"2\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b;\u00107J\u000f\u0010<\u001a\u00020\u0005H\u0016¢\u0006\u0004\b<\u0010\u0004J\u000f\u0010=\u001a\u00020\u0005H\u0016¢\u0006\u0004\b=\u0010\u0004J\u000f\u0010>\u001a\u00020\u0005H\u0016¢\u0006\u0004\b>\u0010\u0004J\u0017\u0010@\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u000fH\u0016¢\u0006\u0004\b@\u0010\u001aJ\u000f\u0010A\u001a\u00020\u0005H\u0016¢\u0006\u0004\bA\u0010\u0004J\u000f\u0010B\u001a\u00020\u0005H\u0016¢\u0006\u0004\bB\u0010\u0004J\u000f\u0010C\u001a\u00020\u0005H\u0016¢\u0006\u0004\bC\u0010\u0004J\u000f\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bE\u0010FJ\r\u0010G\u001a\u00020\u0005¢\u0006\u0004\bG\u0010\u0004J\u0011\u0010I\u001a\u0004\u0018\u00010HH\u0016¢\u0006\u0004\bI\u0010JJ\u001f\u0010N\u001a\u00020\u00052\u0006\u0010K\u001a\u00020*2\u0006\u0010M\u001a\u00020LH\u0016¢\u0006\u0004\bN\u0010OJ\u0017\u0010R\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020PH\u0017¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\u0005H\u0016¢\u0006\u0004\bT\u0010\u0004J\u000f\u0010U\u001a\u00020\u0005H\u0016¢\u0006\u0004\bU\u0010\u0004R\u0018\u0010Y\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0014\u0010]\u001a\u00020Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010\\R\u0018\u0010a\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0016\u0010e\u001a\u00020b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010i\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0016\u0010l\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0016\u0010p\u001a\u00020m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0018\u0010t\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u001b\u0010z\u001a\u00020u8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bv\u0010w\u001a\u0004\bx\u0010yR\u001e\u0010\u007f\u001a\n\u0012\u0004\u0012\u00020|\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001¨\u0006\u0085\u0001"}, d2 = {"Lcom/transsion/home/fragment/tab/TrendingUGCFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lqk/x;", "<init>", "()V", "", "f1", "T0", "initViewModel", "r1", "Lcom/transsion/home/bean/TrendingRespData;", "baseBean", "z1", "(Lcom/transsion/home/bean/TrendingRespData;)V", "S0", "", "d1", "()Z", "", "Y0", "()F", "alpha", "w1", "(F)V", "showProgress", "p1", "(Z)V", "initExposureHelper", "", "getPageName", "()Ljava/lang/String;", "x1", "Landroid/content/Context;", "context", "Landroid/view/View;", "V0", "(Landroid/content/Context;)Landroid/view/View;", "showEmpty", "getEmptyView", "o1", "c1", "v1", "", "a1", "()I", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "b1", "(Landroid/view/LayoutInflater;)Lqk/x;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "c0", "outState", "onSaveInstanceState", "onViewCreated", "lazyLoadData", "onResume", "onPause", "hidden", "onHiddenChanged", "logResume", "p0", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "t1", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "startLoading", "hideLoading", "Lrk/b;", "g", "Lrk/b;", "exposureHelper", "Landroid/os/Handler;", "h", "Landroid/os/Handler;", "mHandler", "Lrk/d;", "i", "Lrk/d;", "postListReport", "Lcom/transsion/home/adapter/operateUGC/b;", "j", "Lcom/transsion/home/adapter/operateUGC/b;", "mainAdapter", "Lcom/transsion/home/viewmodel/TrendingUGCViewModel;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/home/viewmodel/TrendingUGCViewModel;", "viewModel", "l", "I", "headerBgHeight", "", "m", "J", "loadStartTime", "Lcom/transsion/home/bean/MainOperateData;", "n", "Lcom/transsion/home/bean/MainOperateData;", "operatingResp", "Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "o", "Lkotlin/Lazy;", "Z0", "()Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "homePreferencesViewModel", "", "Lcom/transsion/home/bean/OperateItem;", TtmlNode.TAG_P, "Ljava/util/List;", "preferencesBlockList", CampaignEx.JSON_KEY_AD_Q, "Landroid/view/View;", "mNoNetworkView", CampaignEx.JSON_KEY_AD_R, "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TrendingUGCFragment extends BaseHomeSubFragment<qk.x> {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f44176s = 8;

    private rk.b exposureHelper;

    private rk.d postListReport;

    private com.transsion.home.adapter.operateUGC.b mainAdapter;

    private TrendingUGCViewModel viewModel;

    private int headerBgHeight;

    private MainOperateData operatingResp;

    private List preferencesBlockList;

    private View mNoNetworkView;

    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private long loadStartTime = -1;

    private final Lazy homePreferencesViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TrendingUGCFragment.e1(this.f44244a);
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TrendingUGCFragment a(int i10, String str) {
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i10);
            bundle.putString(WebConstants.TAB_CODE, str);
            wf.a.f74274a.c("TrendingUGCFragment", "create trending fragment", true);
            TrendingUGCFragment trendingUGCFragment = new TrendingUGCFragment();
            trendingUGCFragment.setArguments(bundle);
            return trendingUGCFragment;
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
            if (TrendingUGCFragment.this.d1()) {
                int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                TrendingUGCFragment trendingUGCFragment = TrendingUGCFragment.this;
                trendingUGCFragment.w1(RangesKt.g((iComputeVerticalScrollOffset * 1.0f) / trendingUGCFragment.headerBgHeight, 1.0f));
                if (!TrendingUGCFragment.this.getMIsWhite() && TrendingUGCFragment.this.Y0() < 0.7f) {
                    TrendingUGCFragment.this.b0(true);
                } else {
                    if (!TrendingUGCFragment.this.getMIsWhite() || TrendingUGCFragment.this.Y0() < 0.7f) {
                        return;
                    }
                    TrendingUGCFragment.this.b0(false);
                }
            }
        }
    }

    public static final class c implements rk.a {
        c() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            try {
                com.transsion.home.adapter.operateUGC.b bVar = TrendingUGCFragment.this.mainAdapter;
                com.transsion.home.adapter.operateUGC.b bVar2 = null;
                if (bVar == null) {
                    Intrinsics.y("mainAdapter");
                    bVar = null;
                }
                OperateItem operateItem = (OperateItem) bVar.getData().get(i10);
                if (Intrinsics.c(operateItem.getType(), PostItemType.UGC_SINGLE_IMAGE.getValue())) {
                    zk.c.f76806a.e(i10, j10, operateItem);
                    return;
                }
                rk.d dVar = TrendingUGCFragment.this.postListReport;
                if (dVar != null) {
                    com.transsion.home.adapter.operateUGC.b bVar3 = TrendingUGCFragment.this.mainAdapter;
                    if (bVar3 == null) {
                        Intrinsics.y("mainAdapter");
                    } else {
                        bVar2 = bVar3;
                    }
                    dVar.a((OperateItem) CollectionsKt.l0(bVar2.getData(), i10), i10, j10);
                }
            } catch (Exception e10) {
                String message = e10.getMessage();
                if (message != null) {
                    wf.a.C0922a.f(wf.a.f74274a, "reportExposure", message, false, 4, null);
                }
            }
        }
    }

    public static final class d extends DiffUtil.e {
        d() {
        }

        @Override
        public boolean areContentsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            Subject feedsSubject = oldItem.getFeedsSubject();
            String strValueOf = String.valueOf(feedsSubject != null ? feedsSubject.getSubjectId() : null);
            Subject feedsSubject2 = newItem.getFeedsSubject();
            return Intrinsics.c(strValueOf, String.valueOf(feedsSubject2 != null ? feedsSubject2.getSubjectId() : null));
        }

        @Override
        public boolean areItemsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getType(), newItem.getType());
        }
    }

    public static final class e extends GridLayoutManager.c {

        final int f44191f;

        e(int i10) {
            this.f44191f = i10;
        }

        @Override
        public int f(int i10) {
            com.transsion.home.adapter.operateUGC.b bVar = TrendingUGCFragment.this.mainAdapter;
            if (bVar == null) {
                Intrinsics.y("mainAdapter");
                bVar = null;
            }
            String type = ((OperateItem) bVar.getItem(i10)).getType();
            if (Intrinsics.c(type, PostItemType.PREFERENCES.getValue())) {
                return this.f44191f;
            }
            if (Intrinsics.c(type, PostItemType.TRENDING_FEES_GRID.getValue())) {
                return 1;
            }
            return this.f44191f;
        }
    }

    public static final class f implements yg.m {
        f() {
        }

        @Override
        public void onConnected() {
            yg.m.a.a(this);
        }

        @Override
        public void onDisconnected() {
            TrendingUGCFragment.this.o1();
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            androidx.p009lifecycle.b0 b0VarE;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            TrendingUGCFragment.this.v1();
            if (TrendingUGCFragment.this.isResumed()) {
                com.transsion.home.adapter.operateUGC.b bVar = TrendingUGCFragment.this.mainAdapter;
                TrendingRespData trendingRespData = null;
                if (bVar == null) {
                    Intrinsics.y("mainAdapter");
                    bVar = null;
                }
                if (!bVar.getData().isEmpty()) {
                    TrendingUGCViewModel trendingUGCViewModel = TrendingUGCFragment.this.viewModel;
                    if (trendingUGCViewModel != null && (b0VarE = trendingUGCViewModel.E()) != null) {
                        trendingRespData = (TrendingRespData) b0VarE.f();
                    }
                    if (trendingRespData != null) {
                        return;
                    }
                }
                wf.a.C0922a.f(wf.a.f74274a, "TrendingFragment", "onConnected", false, 4, null);
                TrendingUGCFragment.this.p1(false);
            }
        }
    }

    public static final class g implements ViewTreeObserver.OnPreDrawListener {
        g() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onPreDraw() {
            RecyclerView recyclerView;
            ViewTreeObserver viewTreeObserver;
            Unit unit;
            TrendingUGCFragment trendingUGCFragment = TrendingUGCFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                FragmentActivity activity = trendingUGCFragment.getActivity();
                if (activity != null) {
                    activity.reportFullyDrawn();
                    unit = Unit.f64096a;
                } else {
                    unit = null;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            qk.x xVar = (qk.x) TrendingUGCFragment.this.getMViewBinding();
            if (xVar == null || (recyclerView = xVar.f69871d) == null || (viewTreeObserver = recyclerView.getViewTreeObserver()) == null) {
                return true;
            }
            viewTreeObserver.removeOnPreDrawListener(this);
            return true;
        }
    }

    static final class h implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f44194a;

        h(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44194a = function;
        }

        @Override
        public final Function a() {
            return this.f44194a;
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
            this.f44194a.invoke(obj);
        }
    }

    public static final void A1(TrendingUGCFragment trendingUGCFragment) {
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        bVar.h0().v();
    }

    public static final void B1(TrendingUGCFragment trendingUGCFragment, List list) {
        if (trendingUGCFragment.getContext() == null) {
            return;
        }
        com.transsion.home.adapter.operateUGC.b bVar = null;
        if (list.isEmpty()) {
            com.transsion.home.adapter.operateUGC.b bVar2 = trendingUGCFragment.mainAdapter;
            if (bVar2 == null) {
                Intrinsics.y("mainAdapter");
                bVar2 = null;
            }
            t6.f.u(bVar2.h0(), false, 1, null);
            return;
        }
        com.transsion.home.adapter.operateUGC.b bVar3 = trendingUGCFragment.mainAdapter;
        if (bVar3 == null) {
            Intrinsics.y("mainAdapter");
            bVar3 = null;
        }
        if (bVar3.h0().r()) {
            com.transsion.home.adapter.operateUGC.b bVar4 = trendingUGCFragment.mainAdapter;
            if (bVar4 == null) {
                Intrinsics.y("mainAdapter");
            } else {
                bVar = bVar4;
            }
            bVar.h0().s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void S0() {
        RecyclerView recyclerView;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (recyclerView = xVar.f69871d) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void T0() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        RecyclerView recyclerView;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        CustomSwipeRefreshLayout customSwipeRefreshLayout3;
        qk.x xVar = (qk.x) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (xVar == null || (customSwipeRefreshLayout3 = xVar.f69872e) == null) ? null : customSwipeRefreshLayout3.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        if (d1()) {
            layoutParams2.topMargin = 0;
            qk.x xVar2 = (qk.x) getMViewBinding();
            if (xVar2 != null && (customSwipeRefreshLayout2 = xVar2.f69872e) != null) {
                int i10 = this.headerBgHeight;
                customSwipeRefreshLayout2.setProgressViewOffset(false, i10, com.blankj.utilcode.util.a0.a(50.0f) + i10);
            }
            w1(0.0f);
            b0(true);
            return;
        }
        layoutParams2.topMargin = this.headerBgHeight;
        qk.x xVar3 = (qk.x) getMViewBinding();
        if (xVar3 != null && (recyclerView = xVar3.f69871d) != null) {
            recyclerView.setPadding(0, com.blankj.utilcode.util.a0.a(12.0f), 0, com.blankj.utilcode.util.a0.a(56.0f));
        }
        qk.x xVar4 = (qk.x) getMViewBinding();
        if (xVar4 != null && (customSwipeRefreshLayout = xVar4.f69872e) != null) {
            customSwipeRefreshLayout.setProgressViewOffset(false, 0, com.blankj.utilcode.util.a0.a(50.0f));
        }
        w1(1.0f);
        b0(false);
    }

    public static final void U0(TrendingUGCFragment trendingUGCFragment, DefaultView defaultView, View view) {
        q1(trendingUGCFragment, false, 1, null);
        defaultView.setVisibility(8);
    }

    private final View V0(Context context) {
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(context);
        this.mNoNetworkView = noNetworkBigView;
        noNetworkBigView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        noNetworkBigView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCFragment.W0(this.f44199a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCFragment.X0(this.f44204a);
            }
        });
        com.tn.lib.view.o.a(getPageName());
        return noNetworkBigView;
    }

    public static final Unit W0(TrendingUGCFragment trendingUGCFragment) {
        q1(trendingUGCFragment, false, 1, null);
        com.tn.lib.view.o.b(trendingUGCFragment.getPageName());
        return Unit.f64096a;
    }

    public static final Unit X0(TrendingUGCFragment trendingUGCFragment) {
        com.tn.lib.view.o.c(trendingUGCFragment.getPageName());
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float Y0() {
        View view;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (view = xVar.f69873f) == null) {
            return 0.0f;
        }
        return view.getAlpha();
    }

    private final HomePreferencesViewModel Z0() {
        return (HomePreferencesViewModel) this.homePreferencesViewModel.getValue();
    }

    private final int a1() {
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        int i10 = 0;
        for (Object obj : bVar.getData()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(((OperateItem) obj).getType(), PostItemType.NO_NETWORK.getValue())) {
                return i10;
            }
            i10 = i11;
        }
        return -1;
    }

    private final boolean c1() {
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        Iterator<T> it = bVar.getData().iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((OperateItem) it.next()).getType(), PostItemType.NO_NETWORK.getValue())) {
                return true;
            }
        }
        return false;
    }

    public final boolean d1() {
        return false;
    }

    public static final HomePreferencesViewModel e1(TrendingUGCFragment trendingUGCFragment) {
        Fragment fragmentRequireParentFragment = trendingUGCFragment.requireParentFragment();
        Intrinsics.g(fragmentRequireParentFragment, "requireParentFragment(...)");
        return (HomePreferencesViewModel) new androidx.p009lifecycle.v0(fragmentRequireParentFragment).a(HomePreferencesViewModel.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void f1() {
        int i10;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        qk.x xVar;
        RecyclerView recyclerView3;
        Context context = getContext();
        boolean z10 = context != null && com.transsion.baseui.util.b.a(context);
        if (z10) {
            i10 = com.blankj.utilcode.util.y.e() > com.blankj.utilcode.util.y.c() ? 4 : 3;
        } else {
            i10 = 2;
        }
        com.transsion.home.adapter.operateUGC.b bVar = new com.transsion.home.adapter.operateUGC.b(i10, this.exposureHelper, z10, this.viewModel, this);
        bVar.h0().z(true);
        bVar.h0().y(true);
        bVar.h0().E(4);
        bVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                TrendingUGCFragment.h1(this.f44252a);
            }
        });
        bVar.R0(new d());
        bVar.U1(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCFragment.i1(this.f44257a);
            }
        });
        this.mainAdapter = bVar;
        NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(requireContext(), i10);
        e eVar = new e(i10);
        eVar.i(true);
        npaGridLayoutManager.d0(eVar);
        initExposureHelper();
        rk.b bVar2 = this.exposureHelper;
        if (bVar2 != null && (xVar = (qk.x) getMViewBinding()) != null && (recyclerView3 = xVar.f69871d) != null) {
            recyclerView3.addOnScrollListener(bVar2);
        }
        qk.x xVar2 = (qk.x) getMViewBinding();
        com.transsion.home.adapter.operateUGC.b bVar3 = null;
        if (xVar2 != null && (recyclerView2 = xVar2.f69871d) != null) {
            recyclerView2.setLayoutManager(npaGridLayoutManager);
            npaGridLayoutManager.setInitialPrefetchItemCount(6);
            tf.h hVar = new tf.h(com.blankj.utilcode.util.a0.a(12.0f), i10);
            hVar.d(com.blankj.utilcode.util.a0.a(8.0f));
            recyclerView2.addItemDecoration(hVar);
            recyclerView2.setItemAnimator(null);
            com.transsion.home.adapter.operateUGC.b bVar4 = this.mainAdapter;
            if (bVar4 == null) {
                Intrinsics.y("mainAdapter");
                bVar4 = null;
            }
            recyclerView2.setAdapter(bVar4);
            com.transsion.home.adapter.operateUGC.b bVar5 = this.mainAdapter;
            if (bVar5 == null) {
                Intrinsics.y("mainAdapter");
                bVar5 = null;
            }
            recyclerView2.addOnScrollListener(new nj.a(bVar5.h0()));
        }
        com.transsion.home.adapter.operateUGC.b bVar6 = this.mainAdapter;
        if (bVar6 == null) {
            Intrinsics.y("mainAdapter");
            bVar6 = null;
        }
        com.transsion.home.adapter.trending.provider.e eVarS1 = bVar6.getPreferencesProvider();
        HomePreferencesViewModel homePreferencesViewModelZ0 = Z0();
        com.transsion.home.adapter.operateUGC.b bVar7 = this.mainAdapter;
        if (bVar7 == null) {
            Intrinsics.y("mainAdapter");
        } else {
            bVar3 = bVar7;
        }
        int mTabId = getMTabId();
        String mTabCode = getMTabCode();
        if (mTabCode == null) {
            mTabCode = "";
        }
        HomePreferencesUiHelperKt.j(eVarS1, homePreferencesViewModelZ0, bVar3, mTabId, mTabCode);
        qk.x xVar3 = (qk.x) getMViewBinding();
        if (xVar3 != null && (recyclerView = xVar3.f69871d) != null) {
            HomePreferencesUiHelperKt.h(this, recyclerView, npaGridLayoutManager, Z0(), new Function0() {
                @Override
                public final Object invoke() {
                    return Integer.valueOf(TrendingUGCFragment.j1(this.f44261a));
                }
            });
        }
        qk.x xVar4 = (qk.x) getMViewBinding();
        if (xVar4 == null || (customSwipeRefreshLayout = xVar4.f69872e) == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
            @Override
            public final void a() {
                TrendingUGCFragment.g1(this.f44266a);
            }
        });
    }

    public static final void g1(TrendingUGCFragment trendingUGCFragment) {
        trendingUGCFragment.c0();
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context);
        defaultView.setDefaultImageViewVisibility(0);
        defaultView.setDefaultImage(R$mipmap.ic_no_content);
        String string = context.getString(R$string.no_content);
        Intrinsics.g(string, "getString(...)");
        defaultView.setDescText(string);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DESC_BTN);
        defaultView.setBtnVisibility(0);
        String string2 = context.getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setBtnText(string2);
        defaultView.setBtnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TrendingUGCFragment.U0(this.f44311a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    private final String getPageName() {
        return "UgcTrending";
    }

    public static final void h1(TrendingUGCFragment trendingUGCFragment) {
        TrendingUGCViewModel trendingUGCViewModel = trendingUGCFragment.viewModel;
        if (trendingUGCViewModel != null) {
            trendingUGCViewModel.J();
        }
    }

    public static final Unit i1(TrendingUGCFragment trendingUGCFragment) {
        if (yg.l.f76264a.e()) {
            trendingUGCFragment.v1();
        }
        return Unit.f64096a;
    }

    private final void initExposureHelper() {
        this.postListReport = new rk.d(getPageName());
        rk.b bVar = new rk.b(0.6f, new c(), false, 4, null);
        this.exposureHelper = bVar;
        bVar.l(2);
    }

    private final void initViewModel() {
        androidx.p009lifecycle.b0 b0VarE;
        androidx.p009lifecycle.b0 b0VarZ;
        androidx.p009lifecycle.b0 b0VarY;
        final Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TrendingUGCFragment.k1(this.f44213a, ((Boolean) obj).booleanValue());
            }
        };
        wf.a.C0922a c0922a = wf.a.f74274a;
        PreloadTrendingData.a aVar = PreloadTrendingData.f44531n;
        wf.a.C0922a.f(c0922a, "lgx", "preObserve fragment:" + this + " " + aVar.a().J() + "  " + aVar.a().K(), false, 4, null);
        TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
        if (trendingUGCViewModel != null && (b0VarY = trendingUGCViewModel.y()) != null) {
            b0VarY.j(this, new h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return TrendingUGCFragment.l1(this.f44219a, function1, (MainOperateData) obj);
                }
            }));
        }
        TrendingUGCViewModel trendingUGCViewModel2 = this.viewModel;
        if (trendingUGCViewModel2 != null && (b0VarZ = trendingUGCViewModel2.z()) != null) {
            b0VarZ.j(this, new h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return TrendingUGCFragment.m1(this.f44226a, function1, (MainOperateData) obj);
                }
            }));
        }
        TrendingUGCViewModel trendingUGCViewModel3 = this.viewModel;
        if (trendingUGCViewModel3 == null || (b0VarE = trendingUGCViewModel3.E()) == null) {
            return;
        }
        b0VarE.j(this, new h(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TrendingUGCFragment.n1(this.f44238a, (TrendingRespData) obj);
            }
        }));
    }

    public static final int j1(TrendingUGCFragment trendingUGCFragment) {
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        return bVar.getData().size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit k1(TrendingUGCFragment trendingUGCFragment, boolean z10) {
        List arrayList;
        HashMap mapG;
        qk.x xVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<OperateItem> items;
        TrendingUGCViewModel trendingUGCViewModel;
        Integer groupPos;
        qi.b logViewConfig = trendingUGCFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        MainOperateData mainOperateData = trendingUGCFragment.operatingResp;
        boolean z11 = false;
        if (((mainOperateData == null || (groupPos = mainOperateData.getGroupPos()) == null) ? 0 : groupPos.intValue()) > 0 && (trendingUGCViewModel = trendingUGCFragment.viewModel) != null) {
            trendingUGCViewModel.u(z10);
        }
        MainOperateData mainOperateData2 = trendingUGCFragment.operatingResp;
        if (mainOperateData2 == null || (items = mainOperateData2.getItems()) == null || (arrayList = CollectionsKt.U0(items)) == null) {
            arrayList = new ArrayList();
        }
        MainOperateData mainOperateData3 = trendingUGCFragment.operatingResp;
        com.transsion.home.adapter.operateUGC.b bVar = null;
        zk.h.c(arrayList, mainOperateData3 != null ? mainOperateData3.getOps() : null);
        String mTabCode = trendingUGCFragment.getMTabCode();
        List listN = HomePreferencesUiHelperKt.n(arrayList);
        trendingUGCFragment.preferencesBlockList = listN;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "TrendingUGCFragment", "HomePrefs-UGC buildBlocks, tab=" + mTabCode + ", rawSize=" + arrayList.size() + ", blockSize=" + listN.size(), false, 4, null);
        if (!(mTabCode == null || mTabCode.length() == 0) && !listN.isEmpty()) {
            trendingUGCFragment.Z0().E(mTabCode, listN);
            List listT = trendingUGCFragment.Z0().t(mTabCode, listN);
            wf.a.C0922a.f(c0922a, "TrendingUGCFragment", "HomePrefs-UGC initialInsert, tab=" + mTabCode + "， size:" + listT.size(), false, 4, null);
            if (!listT.isEmpty()) {
                HomePreferencesUiHelperKt.g(arrayList, listN, listT);
            }
            trendingUGCFragment.r1();
        }
        com.transsion.home.adapter.operateUGC.b bVar2 = trendingUGCFragment.mainAdapter;
        if (bVar2 == null) {
            Intrinsics.y("mainAdapter");
        } else {
            bVar = bVar2;
        }
        bVar.n1(arrayList);
        trendingUGCFragment.hideLoading();
        qk.x xVar2 = (qk.x) trendingUGCFragment.getMViewBinding();
        if (((xVar2 == null || (recyclerView2 = xVar2.f69871d) == null) ? 0 : recyclerView2.computeVerticalScrollOffset()) > 10 && (xVar = (qk.x) trendingUGCFragment.getMViewBinding()) != null && (recyclerView = xVar.f69871d) != null) {
            recyclerView.scrollBy(0, 1);
        }
        if (!z10) {
            com.transsion.home.preload.c.b(arrayList);
        }
        qi.b logViewConfig2 = trendingUGCFragment.getLogViewConfig();
        if (logViewConfig2 != null && !logViewConfig2.i()) {
            z11 = true;
        }
        if (z11) {
            qi.b logViewConfig3 = trendingUGCFragment.getLogViewConfig();
            if (logViewConfig3 != null) {
                logViewConfig3.k(true);
            }
            String strValueOf = trendingUGCFragment.loadStartTime > 0 ? String.valueOf(System.currentTimeMillis() - trendingUGCFragment.loadStartTime) : "0";
            qi.b logViewConfig4 = trendingUGCFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
            }
        }
        return Unit.f64096a;
    }

    public static final Unit l1(TrendingUGCFragment trendingUGCFragment, Function1 function1, MainOperateData mainOperateData) {
        HashMap mapG;
        List<OperateItem> items;
        qi.b logViewConfig = trendingUGCFragment.getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("enterCache", String.valueOf((mainOperateData == null || (items = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items.size())));
        }
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        if (bVar.getData().size() == 0) {
            List<OperateItem> items2 = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items2 != null && !items2.isEmpty()) {
                trendingUGCFragment.operatingResp = mainOperateData;
                function1.invoke(Boolean.TRUE);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit m1(TrendingUGCFragment trendingUGCFragment, Function1 function1, MainOperateData mainOperateData) {
        List<OperateItem> items;
        qk.x xVar;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        HashMap mapG;
        List<OperateItem> items2;
        List<OperateItem> items3;
        List<OperateItem> items4;
        List<OperateItem> items5;
        MainOperateData mainOperateData2 = (MainOperateData) PreloadTrendingData.f44531n.a().J().f();
        wf.a.f74274a.c("PreloadTrending", "operating preload cache " + ((mainOperateData2 == null || (items5 = mainOperateData2.getItems()) == null) ? null : Integer.valueOf(items5.size())) + "  net:" + ((mainOperateData == null || (items4 = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items4.size())), true);
        qi.b logViewConfig = trendingUGCFragment.getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("enterNet", "cache:" + ((mainOperateData2 == null || (items3 = mainOperateData2.getItems()) == null) ? null : Integer.valueOf(items3.size())) + " net:" + ((mainOperateData == null || (items2 = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items2.size())));
        }
        List<OperateItem> items6 = mainOperateData != null ? mainOperateData.getItems() : null;
        if (items6 != null && !items6.isEmpty()) {
            trendingUGCFragment.operatingResp = mainOperateData;
        } else if (trendingUGCFragment.operatingResp == null) {
            trendingUGCFragment.operatingResp = mainOperateData2;
        }
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        if (bVar.getData().size() > 0 && ((xVar = (qk.x) trendingUGCFragment.getMViewBinding()) == null || (customSwipeRefreshLayout = xVar.f69872e) == null || !customSwipeRefreshLayout.isRefreshing())) {
            List<OperateItem> items7 = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items7 == null || items7.isEmpty()) {
                return Unit.f64096a;
            }
        }
        MainOperateData mainOperateData3 = trendingUGCFragment.operatingResp;
        if (mainOperateData3 == null || (items = mainOperateData3.getItems()) == null || !(!items.isEmpty())) {
            TrendingUGCViewModel trendingUGCViewModel = trendingUGCFragment.viewModel;
            if (trendingUGCViewModel != null) {
                trendingUGCViewModel.J();
            }
        } else {
            function1.invoke(Boolean.FALSE);
        }
        return Unit.f64096a;
    }

    public static final Unit n1(TrendingUGCFragment trendingUGCFragment, TrendingRespData trendingRespData) {
        trendingUGCFragment.z1(trendingRespData);
        return Unit.f64096a;
    }

    public final void o1() {
        int iX;
        if (c1()) {
            return;
        }
        TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
        if (trendingUGCViewModel != null) {
            com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
            if (bVar == null) {
                Intrinsics.y("mainAdapter");
                bVar = null;
            }
            iX = trendingUGCViewModel.x(bVar.getData());
        } else {
            iX = 2;
        }
        if (iX >= 0) {
            com.transsion.home.adapter.operateUGC.b bVar2 = this.mainAdapter;
            if (bVar2 == null) {
                Intrinsics.y("mainAdapter");
                bVar2 = null;
            }
            if (iX < bVar2.getData().size()) {
                com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
                if (bVar3 == null) {
                    Intrinsics.y("mainAdapter");
                    bVar3 = null;
                }
                bVar3.getData().add(iX, new OperateItem(null, PostItemType.NO_NETWORK.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870909, null));
                com.transsion.home.adapter.operateUGC.b bVar4 = this.mainAdapter;
                if (bVar4 == null) {
                    Intrinsics.y("mainAdapter");
                    bVar4 = null;
                }
                bVar4.notifyItemInserted(iX);
            }
        }
    }

    public final void p1(boolean showProgress) {
        if (showProgress) {
            com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
            if (bVar == null) {
                Intrinsics.y("mainAdapter");
                bVar = null;
            }
            if (bVar.getData().size() <= 2) {
                startLoading();
            }
        }
        TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
        if (trendingUGCViewModel != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            trendingUGCViewModel.A(contextRequireContext);
        }
    }

    static void q1(TrendingUGCFragment trendingUGCFragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        trendingUGCFragment.p1(z10);
    }

    private final void r1() {
        Z0().u().j(getViewLifecycleOwner(), new h(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TrendingUGCFragment.s1(this.f44315a, (Pair) obj);
            }
        }));
    }

    public static final Unit s1(TrendingUGCFragment trendingUGCFragment, Pair pair) {
        List list;
        String str = (String) pair.component1();
        List list2 = (List) pair.component2();
        if (!Intrinsics.c(str, trendingUGCFragment.getMTabCode()) || (list = list2) == null || list.isEmpty()) {
            return Unit.f64096a;
        }
        List list3 = trendingUGCFragment.preferencesBlockList;
        if (list3 == null) {
            return Unit.f64096a;
        }
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        com.transsion.home.adapter.operateUGC.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        List listU0 = CollectionsKt.U0(bVar.getData());
        HomePreferencesUiHelperKt.g(listU0, list3, list2);
        com.transsion.home.adapter.operateUGC.b bVar3 = trendingUGCFragment.mainAdapter;
        if (bVar3 == null) {
            Intrinsics.y("mainAdapter");
        } else {
            bVar2 = bVar3;
        }
        bVar2.n1(listU0);
        return Unit.f64096a;
    }

    private final void showEmpty() {
        hideLoading();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        View emptyView = getEmptyView(contextRequireContext);
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        bVar.Y0(emptyView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void u1(TrendingUGCFragment trendingUGCFragment) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        qk.x xVar = (qk.x) trendingUGCFragment.getMViewBinding();
        if (xVar != null && (customSwipeRefreshLayout = xVar.f69872e) != null) {
            customSwipeRefreshLayout.setRefreshing(true);
        }
        trendingUGCFragment.c0();
    }

    public final void v1() {
        int iA1 = a1();
        if (iA1 >= 0) {
            com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
            com.transsion.home.adapter.operateUGC.b bVar2 = null;
            if (bVar == null) {
                Intrinsics.y("mainAdapter");
                bVar = null;
            }
            if (iA1 < bVar.getData().size()) {
                com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
                if (bVar3 == null) {
                    Intrinsics.y("mainAdapter");
                    bVar3 = null;
                }
                bVar3.getData().remove(iA1);
                com.transsion.home.adapter.operateUGC.b bVar4 = this.mainAdapter;
                if (bVar4 == null) {
                    Intrinsics.y("mainAdapter");
                } else {
                    bVar2 = bVar4;
                }
                bVar2.notifyItemRemoved(iA1);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void w1(float alpha) {
        View view;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (view = xVar.f69873f) == null) {
            return;
        }
        view.setAlpha(alpha);
    }

    private final void x1() {
        this.mHandler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                TrendingUGCFragment.y1(this.f44318a);
            }
        }, 200L);
    }

    public static final void y1(TrendingUGCFragment trendingUGCFragment) {
        if (trendingUGCFragment.isDetached() || !trendingUGCFragment.isAdded() || trendingUGCFragment.getContext() == null) {
            return;
        }
        trendingUGCFragment.hideLoading();
        Context contextRequireContext = trendingUGCFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        View viewV0 = trendingUGCFragment.V0(contextRequireContext);
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        bVar.Y0(viewV0);
    }

    private final void z1(TrendingRespData baseBean) {
        List<OperateItem> list;
        com.transsion.home.adapter.operateUGC.b bVar = null;
        if (baseBean == null) {
            x1();
            com.transsion.home.adapter.operateUGC.b bVar2 = this.mainAdapter;
            if (bVar2 == null) {
                Intrinsics.y("mainAdapter");
                bVar2 = null;
            }
            if (bVar2.h0().r()) {
                com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
                if (bVar3 == null) {
                    Intrinsics.y("mainAdapter");
                } else {
                    bVar = bVar3;
                }
                bVar.h0().v();
                return;
            }
            return;
        }
        hideLoading();
        wf.a.C0922a c0922a = wf.a.f74274a;
        List<TrendingRespItem> items = baseBean.getItems();
        wf.a.C0922a.f(c0922a, "TrendingFragment", "updateTrendingList subjectBean " + (items != null ? Integer.valueOf(items.size()) : null), false, 4, null);
        final List<OperateItem> transferData = baseBean.getTransferData();
        com.transsion.home.adapter.operateUGC.b bVar4 = this.mainAdapter;
        if (bVar4 == null) {
            Intrinsics.y("mainAdapter");
            bVar4 = null;
        }
        if (bVar4.getData().size() == 0 && ((list = transferData) == null || list.isEmpty())) {
            showEmpty();
            return;
        }
        if (transferData == null) {
            this.mHandler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    TrendingUGCFragment.A1(this.f44302a);
                }
            }, 200L);
            return;
        }
        com.transsion.home.adapter.operateUGC.b bVar5 = this.mainAdapter;
        if (bVar5 == null) {
            Intrinsics.y("mainAdapter");
        } else {
            bVar = bVar5;
        }
        bVar.q(transferData);
        com.transsion.home.preload.c.a(getContext(), transferData);
        this.mHandler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                TrendingUGCFragment.B1(this.f44304a, transferData);
            }
        }, 200L);
    }

    @Override
    public qk.x getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qk.x xVarC = qk.x.c(inflater);
        Intrinsics.g(xVarC, "inflate(...)");
        return xVarC;
    }

    @Override
    public void c0() {
        super.c0();
        TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
        if (trendingUGCViewModel != null) {
            trendingUGCViewModel.I();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public RecyclerView f0() {
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar != null) {
            return xVar.f69871d;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void hideLoading() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        qk.x xVar;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        CustomSwipeRefreshLayout customSwipeRefreshLayout3;
        qk.h0 h0Var;
        ConstraintLayout constraintLayout;
        qk.x xVar2 = (qk.x) getMViewBinding();
        if (xVar2 != null && (h0Var = xVar2.f69870c) != null && (constraintLayout = h0Var.f69763h) != null) {
            uf.c.g(constraintLayout);
        }
        qk.x xVar3 = (qk.x) getMViewBinding();
        if (xVar3 != null && (customSwipeRefreshLayout3 = xVar3.f69872e) != null) {
            customSwipeRefreshLayout3.setEnabled(true);
        }
        qk.x xVar4 = (qk.x) getMViewBinding();
        if (xVar4 == null || (customSwipeRefreshLayout = xVar4.f69872e) == null || !customSwipeRefreshLayout.isRefreshing() || (xVar = (qk.x) getMViewBinding()) == null || (customSwipeRefreshLayout2 = xVar.f69872e) == null) {
            return;
        }
        customSwipeRefreshLayout2.setRefreshing(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        View view2;
        ViewGroup.LayoutParams layoutParams;
        RecyclerView recyclerView;
        ViewTreeObserver viewTreeObserver;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        f1();
        initViewModel();
        setNetListener(new f());
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar != null && (recyclerView = xVar.f69871d) != null && (viewTreeObserver = recyclerView.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnPreDrawListener(new g());
        }
        S0();
        this.headerBgHeight = h0();
        qk.x xVar2 = (qk.x) getMViewBinding();
        if (xVar2 != null && (view2 = xVar2.f69873f) != null && (layoutParams = view2.getLayoutParams()) != null) {
            layoutParams.height = this.headerBgHeight;
        }
        T0();
        if (savedInstanceState == null || !savedInstanceState.getBoolean("operate_items", false)) {
            return;
        }
        TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
        com.transsion.home.adapter.operateUGC.b bVar = null;
        List listD = trendingUGCViewModel != null ? trendingUGCViewModel.D() : null;
        com.transsion.home.adapter.operateUGC.b bVar2 = this.mainAdapter;
        if (bVar2 == null) {
            Intrinsics.y("mainAdapter");
        } else {
            bVar = bVar2;
        }
        bVar.n1(listD);
    }

    @Override
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
    }

    @Override
    public void lazyLoadData() {
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        if (bVar.getData().isEmpty()) {
            this.loadStartTime = System.currentTimeMillis();
            wf.a.C0922a c0922a = wf.a.f74274a;
            com.transsion.home.adapter.operateUGC.b bVar2 = this.mainAdapter;
            if (bVar2 == null) {
                Intrinsics.y("mainAdapter");
                bVar2 = null;
            }
            boolean zIsEmpty = bVar2.getData().isEmpty();
            com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
            if (bVar3 == null) {
                Intrinsics.y("mainAdapter");
                bVar3 = null;
            }
            c0922a.c("PreloadTrending", "lazyLoadData " + zIsEmpty + " " + bVar3.getData().size(), true);
            q1(this, false, 1, null);
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        bm.e.f15845a.h();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Context context = getContext();
        if (context == null || !com.transsion.baseui.util.b.a(context)) {
            return;
        }
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        bVar.notifyDataSetChanged();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.TRENDING_CREATE, 0L, 2, null));
        super.onCreate(savedInstanceState);
        TrendingUGCViewModel.a aVar = TrendingUGCViewModel.f44486l;
        Application application = requireActivity().getApplication();
        Intrinsics.g(application, "getApplication(...)");
        this.viewModel = aVar.a(application);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        zk.c.f76806a.a();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
                rk.b bVar = this.exposureHelper;
                if (bVar != null) {
                    bVar.e();
                }
            } else {
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void onPause() {
        super.onPause();
        rk.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        wf.a.C0922a c0922a = wf.a.f74274a;
        View view = this.mNoNetworkView;
        wf.a.C0922a.f(c0922a, "TrendingFragment", "visible = " + (view != null ? Integer.valueOf(view.getVisibility()) : null) + "  " + this, false, 4, null);
        View view2 = this.mNoNetworkView;
        if (view2 != null && view2.getVisibility() == 0 && yg.l.f76264a.e()) {
            com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
            if (bVar == null) {
                Intrinsics.y("mainAdapter");
                bVar = null;
            }
            if (bVar.getData().size() < 2) {
                q1(this, false, 1, null);
            }
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        com.transsion.home.adapter.operateUGC.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.y("mainAdapter");
            bVar = null;
        }
        if (bVar.getData().size() > 0) {
            TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
            if (trendingUGCViewModel != null) {
                com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
                if (bVar3 == null) {
                    Intrinsics.y("mainAdapter");
                } else {
                    bVar2 = bVar3;
                }
                trendingUGCViewModel.N(bVar2.getData());
            }
            outState.putBoolean("operate_items", true);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.TRENDING_RENDER, 0L, 2, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void p0() {
        RecyclerView recyclerView;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (recyclerView = xVar.f69871d) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void startLoading() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        qk.h0 h0Var;
        ConstraintLayout constraintLayout;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar != null && (h0Var = xVar.f69870c) != null && (constraintLayout = h0Var.f69763h) != null) {
            uf.c.k(constraintLayout);
        }
        qk.x xVar2 = (qk.x) getMViewBinding();
        if (xVar2 == null || (customSwipeRefreshLayout = xVar2.f69872e) == null) {
            return;
        }
        customSwipeRefreshLayout.setEnabled(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t1() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        RecyclerView recyclerView;
        if (isAdded()) {
            qk.x xVar = (qk.x) getMViewBinding();
            if (xVar != null && (recyclerView = xVar.f69871d) != null) {
                recyclerView.scrollToPosition(0);
            }
            qk.x xVar2 = (qk.x) getMViewBinding();
            if (xVar2 == null || (customSwipeRefreshLayout = xVar2.f69872e) == null) {
                return;
            }
            customSwipeRefreshLayout.post(new Runnable() {
                @Override
                public final void run() {
                    TrendingUGCFragment.u1(this.f44300a);
                }
            });
        }
    }
}
