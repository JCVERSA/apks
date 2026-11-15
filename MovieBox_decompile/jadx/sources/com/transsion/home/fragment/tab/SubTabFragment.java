package com.transsion.home.fragment.tab;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.activity.OperateActivity;
import com.transsion.home.adapter.suboperate.SubTabAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.SubOperateData;
import com.transsion.home.bean.TrendingRespData;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.home.fragment.bottom.BottomOpFragment;
import com.transsion.home.fragment.home.HomeFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.viewmodel.HomePreferencesViewModel;
import com.transsion.home.viewmodel.SubTabViewModel;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000¡\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\n\n\u0002\b\u0007*\u0001e\b\u0007\u0018\u0000 i2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001jB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u0019\u0010\u001b\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J!\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J!\u0010%\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b%\u0010#J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\r\u0010.\u001a\u00020-¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020-H\u0016¢\u0006\u0004\b0\u0010/J\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u0004J\u0011\u00103\u001a\u0004\u0018\u000102H\u0016¢\u0006\u0004\b3\u00104J\u001f\u00108\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u00072\u0006\u00107\u001a\u000206H\u0016¢\u0006\u0004\b8\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001b\u0010G\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010N\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR$\u0010R\u001a\u0010\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020\u0005\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR$\u0010W\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0T\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010Y\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010JR\u0016\u0010]\u001a\u00020Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0018\u0010`\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0014\u0010b\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010JR,\u0010d\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020\u00050O\u0012\u0004\u0012\u00020\u00050O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bc\u0010QR\u0014\u0010h\u001a\u00020e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010g¨\u0006k"}, d2 = {"Lcom/transsion/home/fragment/tab/SubTabFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lqk/w;", "<init>", "()V", "", "m0", "", "U0", "()I", "n1", "f1", "Q0", "", "alpha", "q1", "(F)V", "T0", "()F", "l1", "r1", "Landroid/view/View;", "getNoNetworkView", "()Landroid/view/View;", "R0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Y0", "(Landroid/view/LayoutInflater;)Lqk/w;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "p0", "initData", "onResume", "startLoading", "hideLoading", "lazyLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "", "getPageName", "()Ljava/lang/String;", "g0", "c0", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Lcom/transsion/home/viewmodel/SubTabViewModel;", "g", "Lcom/transsion/home/viewmodel/SubTabViewModel;", "mViewModel", "Lcom/transsion/home/adapter/suboperate/SubTabAdapter;", "h", "Lcom/transsion/home/adapter/suboperate/SubTabAdapter;", "mMainAdapter", "Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "i", "Lkotlin/Lazy;", "V0", "()Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "homePreferencesViewModel", "", "j", "Z", "mHasTranslateWindow", CampaignEx.JSON_KEY_AD_K, "I", "mHeaderBgHeight", "Lkotlin/Function1;", "l", "Lkotlin/jvm/functions/Function1;", "mPermissionCallback", "Landroidx/activity/result/b;", "", "m", "Landroidx/activity/result/b;", "mLauncher", "n", "mIsFirstRender", "", "o", "J", "loadStartTime", TtmlNode.TAG_P, "Landroid/view/View;", "mNoNetworkView", CampaignEx.JSON_KEY_AD_Q, "isUGCMode", CampaignEx.JSON_KEY_AD_R, "mOnAppointmentClick", "com/transsion/home/fragment/tab/SubTabFragment$d", "s", "Lcom/transsion/home/fragment/tab/SubTabFragment$d;", "mRecycleScrollListener", "t", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubTabFragment extends BaseHomeSubFragment<qk.w> {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f44125u = 8;

    private static final Map f44126v;

    private SubTabViewModel mViewModel;

    private SubTabAdapter mMainAdapter;

    private boolean mHasTranslateWindow;

    private int mHeaderBgHeight;

    private Function1 mPermissionCallback;

    private androidx.activity.result.b mLauncher;

    private View mNoNetworkView;

    private final Lazy homePreferencesViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SubTabFragment.Z0(this.f44268a);
        }
    });

    private boolean mIsFirstRender = true;

    private long loadStartTime = -1;

    private final boolean isUGCMode = ij.g.f62108a.b();

    private final Function1 mOnAppointmentClick = new Function1() {
        @Override
        public final Object invoke(Object obj) {
            return SubTabFragment.m1(this.f44271a, (Function1) obj);
        }
    };

    private final d mRecycleScrollListener = new d();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(int i10) {
            String str = (String) SubTabFragment.f44126v.get(Integer.valueOf(i10));
            return str == null ? "home_sub_operate" : str;
        }

        public final SubTabFragment b(int i10, String str) {
            if (!SubTabFragment.f44126v.containsKey(Integer.valueOf(i10)) && str != null) {
                SubTabFragment.f44126v.put(Integer.valueOf(i10), str);
            }
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i10);
            bundle.putString(WebConstants.TAB_CODE, str);
            SubTabFragment subTabFragment = new SubTabFragment();
            subTabFragment.setArguments(bundle);
            return subTabFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends DiffUtil.e {
        b() {
        }

        @Override
        public boolean areContentsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            Subject feedsSubject = oldItem.getFeedsSubject();
            String subjectId = feedsSubject != null ? feedsSubject.getSubjectId() : null;
            Subject feedsSubject2 = newItem.getFeedsSubject();
            return Intrinsics.c(subjectId, feedsSubject2 != null ? feedsSubject2.getSubjectId() : null);
        }

        @Override
        public boolean areItemsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            Subject feedsSubject = oldItem.getFeedsSubject();
            Integer subjectType = feedsSubject != null ? feedsSubject.getSubjectType() : null;
            Subject feedsSubject2 = newItem.getFeedsSubject();
            return Intrinsics.c(subjectType, feedsSubject2 != null ? feedsSubject2.getSubjectType() : null);
        }
    }

    public static final class c extends GridLayoutManager.c {

        final int f44141f;

        c(int i10) {
            this.f44141f = i10;
        }

        @Override
        public int f(int i10) {
            SubTabAdapter subTabAdapter = SubTabFragment.this.mMainAdapter;
            Integer numValueOf = subTabAdapter != null ? Integer.valueOf(subTabAdapter.getItemViewType(i10)) : null;
            int iOrdinal = PostItemType.PREFERENCES.ordinal();
            if (numValueOf != null && numValueOf.intValue() == iOrdinal) {
                return this.f44141f;
            }
            int iOrdinal2 = PostItemType.SUBJECT.ordinal();
            if (numValueOf == null || numValueOf.intValue() != iOrdinal2) {
                int iOrdinal3 = PostItemType.SINGLE_SUBJECT.ordinal();
                if (numValueOf == null || numValueOf.intValue() != iOrdinal3) {
                    int iOrdinal4 = PostItemType.TRENDING_FEES_GRID.ordinal();
                    if (numValueOf == null || numValueOf.intValue() != iOrdinal4) {
                        return this.f44141f;
                    }
                }
            }
            return 1;
        }
    }

    public static final class d extends RecyclerView.r {
        d() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (SubTabFragment.this.mHasTranslateWindow) {
                int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                SubTabFragment subTabFragment = SubTabFragment.this;
                subTabFragment.q1(RangesKt.g((iComputeVerticalScrollOffset * 1.0f) / subTabFragment.mHeaderBgHeight, 1.0f));
                if (!SubTabFragment.this.getMIsWhite() && SubTabFragment.this.T0() < 0.7f) {
                    SubTabFragment.this.b0(true);
                } else {
                    if (!SubTabFragment.this.getMIsWhite() || SubTabFragment.this.T0() < 0.7f) {
                        return;
                    }
                    SubTabFragment.this.b0(false);
                }
            }
        }
    }

    public static final class e implements yg.m {
        e() {
        }

        @Override
        public void onConnected() {
            yg.m.a.a(this);
        }

        @Override
        public void onDisconnected() {
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            SubTabAdapter subTabAdapter;
            List<Object> data;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (SubTabFragment.this.isResumed() && (subTabAdapter = SubTabFragment.this.mMainAdapter) != null && (data = subTabAdapter.getData()) != null && data.isEmpty()) {
                SubTabFragment.this.l1();
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f44144a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44144a = function;
        }

        @Override
        public final Function a() {
            return this.f44144a;
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
            this.f44144a.invoke(obj);
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(HomeTabId.Trending.getValue()), "Trending");
        linkedHashMap.put(Integer.valueOf(HomeTabId.UGC_Trending.getValue()), "UgcTrending");
        f44126v = linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Q0() {
        SwipeRefreshLayout swipeRefreshLayout;
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout2;
        Guideline guideline;
        View view;
        SwipeRefreshLayout swipeRefreshLayout3;
        RecyclerView recyclerView2;
        SwipeRefreshLayout swipeRefreshLayout4;
        Guideline guideline2;
        Guideline guideline3;
        qk.w wVar = (qk.w) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (wVar == null || (guideline3 = wVar.f69865d) == null) ? null : guideline3.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        if (this.mHasTranslateWindow) {
            bVar.f7353a = 0;
            qk.w wVar2 = (qk.w) getMViewBinding();
            if (wVar2 != null && (guideline2 = wVar2.f69865d) != null) {
                guideline2.setLayoutParams(bVar);
            }
            qk.w wVar3 = (qk.w) getMViewBinding();
            if (wVar3 != null && (swipeRefreshLayout4 = wVar3.f69867f) != null) {
                swipeRefreshLayout4.invalidate();
            }
            q1(0.0f);
            b0(true);
            qk.w wVar4 = (qk.w) getMViewBinding();
            if (wVar4 != null && (recyclerView2 = wVar4.f69866e) != null) {
                recyclerView2.addOnScrollListener(this.mRecycleScrollListener);
            }
            qk.w wVar5 = (qk.w) getMViewBinding();
            if (wVar5 == null || (swipeRefreshLayout3 = wVar5.f69867f) == null) {
                return;
            }
            int i10 = this.mHeaderBgHeight;
            swipeRefreshLayout3.setProgressViewOffset(false, i10, com.blankj.utilcode.util.a0.a(50.0f) + i10);
            return;
        }
        qk.w wVar6 = (qk.w) getMViewBinding();
        int height = (wVar6 == null || (view = wVar6.f69863b) == null) ? 0 : view.getHeight();
        if (height <= 0) {
            height = this.mHeaderBgHeight;
        }
        bVar.f7353a = height;
        qk.w wVar7 = (qk.w) getMViewBinding();
        if (wVar7 != null && (guideline = wVar7.f69865d) != null) {
            guideline.setLayoutParams(bVar);
        }
        qk.w wVar8 = (qk.w) getMViewBinding();
        if (wVar8 != null && (swipeRefreshLayout2 = wVar8.f69867f) != null) {
            swipeRefreshLayout2.invalidate();
        }
        q1(1.0f);
        b0(false);
        qk.w wVar9 = (qk.w) getMViewBinding();
        if (wVar9 != null && (recyclerView = wVar9.f69866e) != null) {
            recyclerView.removeOnScrollListener(this.mRecycleScrollListener);
        }
        qk.w wVar10 = (qk.w) getMViewBinding();
        if (wVar10 == null || (swipeRefreshLayout = wVar10.f69867f) == null) {
            return;
        }
        swipeRefreshLayout.setProgressViewOffset(false, 0, com.blankj.utilcode.util.a0.a(50.0f));
    }

    private final View R0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(3, 1, false, "", "");
        stateView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return SubTabFragment.S0(this.f44223a);
            }
        });
        return stateView;
    }

    public static final Unit S0(SubTabFragment subTabFragment) {
        subTabFragment.l1();
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float T0() {
        View view;
        qk.w wVar = (qk.w) getMViewBinding();
        if (wVar == null || (view = wVar.f69863b) == null) {
            return 0.0f;
        }
        return view.getAlpha();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int U0() {
        View view;
        View view2;
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof HomeFragment) {
            return h0();
        }
        if (parentFragment instanceof BottomOpFragment) {
            Fragment parentFragment2 = getParentFragment();
            Intrinsics.f(parentFragment2, "null cannot be cast to non-null type com.transsion.home.fragment.bottom.BottomOpFragment");
            return ((BottomOpFragment) parentFragment2).c0();
        }
        if (!(getActivity() instanceof OperateActivity)) {
            qk.w wVar = (qk.w) getMViewBinding();
            if (wVar != null && (view = wVar.f69863b) != null) {
                uf.c.h(view);
            }
            return 1;
        }
        int color = androidx.core.content.b.getColor(requireContext(), R$color.bg_02);
        qk.w wVar2 = (qk.w) getMViewBinding();
        if (wVar2 != null && (view2 = wVar2.f69863b) != null) {
            view2.setBackgroundColor(color);
        }
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.home.activity.OperateActivity");
        return ((OperateActivity) activity).b0();
    }

    private final HomePreferencesViewModel V0() {
        return (HomePreferencesViewModel) this.homePreferencesViewModel.getValue();
    }

    public static final Unit W0(NoNetworkBigView noNetworkBigView, SubTabFragment subTabFragment) {
        uf.c.g(noNetworkBigView);
        subTabFragment.l1();
        com.tn.lib.view.o.b(subTabFragment.getPageName());
        return Unit.f64096a;
    }

    public static final Unit X0(SubTabFragment subTabFragment) {
        com.tn.lib.view.o.c(subTabFragment.getPageName());
        return Unit.f64096a;
    }

    public static final HomePreferencesViewModel Z0(SubTabFragment subTabFragment) {
        Fragment fragmentRequireParentFragment = subTabFragment.requireParentFragment();
        Intrinsics.g(fragmentRequireParentFragment, "requireParentFragment(...)");
        return (HomePreferencesViewModel) new androidx.p009lifecycle.v0(fragmentRequireParentFragment).a(HomePreferencesViewModel.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit a1(SubTabFragment subTabFragment, SubOperateData subOperateData) {
        List arrayList;
        List<OperateItem> items;
        t6.f fVarH0;
        SwipeRefreshLayout swipeRefreshLayout;
        qk.w wVar = (qk.w) subTabFragment.getMViewBinding();
        if (wVar != null && (swipeRefreshLayout = wVar.f69867f) != null) {
            swipeRefreshLayout.setEnabled(true);
        }
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter != null && (fVarH0 = subTabAdapter.h0()) != null) {
            fVarH0.z(true);
        }
        if (subOperateData == null || (items = subOperateData.getItems()) == null || (arrayList = CollectionsKt.U0(items)) == null) {
            arrayList = new ArrayList();
        }
        zk.h.c(arrayList, subOperateData != null ? subOperateData.getOps() : null);
        HomePreferencesUiHelperKt.f(subTabFragment.getMTabCode(), subTabFragment.V0(), arrayList);
        SubTabAdapter subTabAdapter2 = subTabFragment.mMainAdapter;
        if (subTabAdapter2 != null) {
            subTabAdapter2.n1(arrayList);
        }
        String value = PostItemType.BANNER.getValue();
        OperateItem operateItem = (OperateItem) CollectionsKt.l0(arrayList, 0);
        subTabFragment.mHasTranslateWindow = Intrinsics.c(value, operateItem != null ? operateItem.getType() : null);
        if (subTabFragment.mIsFirstRender) {
            subTabFragment.Q0();
            subTabFragment.mIsFirstRender = false;
        }
        return Unit.f64096a;
    }

    public static final Unit b1(SubTabFragment subTabFragment, Function1 function1, SubOperateData subOperateData) {
        HashMap mapG;
        List<OperateItem> items;
        subTabFragment.hideLoading();
        boolean z10 = false;
        if (((subOperateData == null || (items = subOperateData.getItems()) == null) ? 0 : items.size()) <= 0) {
            subTabFragment.r1();
            return Unit.f64096a;
        }
        qi.b logViewConfig = subTabFragment.getLogViewConfig();
        if (logViewConfig != null && !logViewConfig.i()) {
            z10 = true;
        }
        if (z10) {
            qi.b logViewConfig2 = subTabFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
            qi.b logViewConfig3 = subTabFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
            }
        }
        function1.invoke(subOperateData);
        return Unit.f64096a;
    }

    public static final Unit c1(SubTabFragment subTabFragment, Function1 function1, SubOperateData subOperateData) {
        List<OperateItem> items;
        subTabFragment.hideLoading();
        if (((subOperateData == null || (items = subOperateData.getItems()) == null) ? 0 : items.size()) > 0) {
            subTabFragment.n0();
            function1.invoke(subOperateData);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit d1(final SubTabFragment subTabFragment, TrendingRespData trendingRespData) {
        t6.f fVarH0;
        t6.f fVarH1;
        Pager pager;
        ConstraintLayout constraintLayoutB;
        List<OperateItem> transferData;
        List<TrendingRespItem> items;
        if (((trendingRespData == null || (items = trendingRespData.getItems()) == null) ? 0 : items.size()) > 0) {
            SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
            if (subTabAdapter != null) {
                subTabAdapter.q((trendingRespData == null || (transferData = trendingRespData.getTransferData()) == null) ? new ArrayList<>() : transferData);
            }
            qk.w wVar = (qk.w) subTabFragment.getMViewBinding();
            if (wVar != null && (constraintLayoutB = wVar.getRoot()) != null) {
                constraintLayoutB.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        SubTabFragment.e1(this.f44203a);
                    }
                }, 300L);
            }
        } else {
            if ((trendingRespData == null || (pager = trendingRespData.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.FALSE)) {
                SubTabAdapter subTabAdapter2 = subTabFragment.mMainAdapter;
                if (subTabAdapter2 != null && (fVarH1 = subTabAdapter2.h0()) != null) {
                    t6.f.u(fVarH1, false, 1, null);
                }
            } else {
                SubTabAdapter subTabAdapter3 = subTabFragment.mMainAdapter;
                if (subTabAdapter3 != null && (fVarH0 = subTabAdapter3.h0()) != null) {
                    fVarH0.v();
                }
            }
        }
        return Unit.f64096a;
    }

    public static final void e1(SubTabFragment subTabFragment) {
        t6.f fVarH0;
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter == null || (fVarH0 = subTabAdapter.h0()) == null) {
            return;
        }
        fVarH0.s();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void f1() {
        int i10;
        LinearLayoutManager npaLinearLayoutManager;
        RecyclerView recyclerView;
        com.transsion.home.adapter.trending.provider.e eVarS1;
        RecyclerView recyclerView2;
        FragmentActivity activity;
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubTabFragment.j1(this.f44280a, ((Integer) obj).intValue());
            }
        };
        FragmentActivity activity2 = getActivity();
        if (activity2 == null || !com.transsion.baseui.util.b.a(activity2)) {
            i10 = 2;
        } else {
            i10 = com.blankj.utilcode.util.y.e() > com.blankj.utilcode.util.y.c() ? 4 : 3;
        }
        int i11 = i10;
        ArrayList arrayList = new ArrayList();
        Function1 function2 = this.mOnAppointmentClick;
        int iE0 = getMTabId();
        KeyEventDispatcher.Component activity3 = getActivity();
        Intrinsics.f(activity3, "null cannot be cast to non-null type com.transsion.home.preload.MainXMLPreload");
        com.transsion.home.preload.b bVarD = ((com.transsion.home.preload.a) activity3).getXmlPreload();
        FragmentActivity activity4 = getActivity();
        this.mMainAdapter = new SubTabAdapter(arrayList, function2, this, iE0, bVarD, function1, activity4 != null && com.transsion.baseui.util.b.a(activity4), i11, this.isUGCMode);
        if (this.isUGCMode || ((activity = getActivity()) != null && com.transsion.baseui.util.b.a(activity))) {
            NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(requireContext(), i11);
            c cVar = new c(i11);
            cVar.i(true);
            npaGridLayoutManager.d0(cVar);
            npaLinearLayoutManager = npaGridLayoutManager;
        } else {
            npaLinearLayoutManager = new NpaLinearLayoutManager(requireContext(), 1, false);
        }
        qk.w wVar = (qk.w) getMViewBinding();
        if (wVar != null && (recyclerView2 = wVar.f69866e) != null) {
            recyclerView2.setAdapter(this.mMainAdapter);
            recyclerView2.setLayoutManager(npaLinearLayoutManager);
            npaLinearLayoutManager.setInitialPrefetchItemCount(6);
            recyclerView2.setItemAnimator(null);
            if (this.isUGCMode) {
                tf.h hVar = new tf.h(com.blankj.utilcode.util.a0.a(16.0f), i11);
                hVar.d(com.blankj.utilcode.util.a0.a(8.0f));
                recyclerView2.addItemDecoration(hVar);
            } else {
                tf.h hVar2 = new tf.h(com.blankj.utilcode.util.a0.a(12.0f), 1);
                hVar2.d(com.blankj.utilcode.util.a0.a(6.0f));
                recyclerView2.addItemDecoration(hVar2);
            }
        }
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        if (subTabAdapter != null && (eVarS1 = subTabAdapter.getPreferencesProvider()) != null) {
            HomePreferencesViewModel homePreferencesViewModelV0 = V0();
            SubTabAdapter subTabAdapter2 = this.mMainAdapter;
            Intrinsics.e(subTabAdapter2);
            int iE1 = getMTabId();
            String strD0 = getMTabCode();
            if (strD0 == null) {
                strD0 = "";
            }
            HomePreferencesUiHelperKt.j(eVarS1, homePreferencesViewModelV0, subTabAdapter2, iE1, strD0);
        }
        qk.w wVar2 = (qk.w) getMViewBinding();
        if (wVar2 != null && (recyclerView = wVar2.f69866e) != null) {
            HomePreferencesUiHelperKt.h(this, recyclerView, npaLinearLayoutManager, V0(), new Function0() {
                @Override
                public final Object invoke() {
                    return Integer.valueOf(SubTabFragment.g1(this.f44316a));
                }
            });
        }
        SubTabAdapter subTabAdapter3 = this.mMainAdapter;
        if (subTabAdapter3 != null) {
            subTabAdapter3.h0().z(true);
            subTabAdapter3.h0().z(true);
            subTabAdapter3.h0().y(true);
            subTabAdapter3.h0().D(new r6.f() {
                @Override
                public final void a() {
                    SubTabFragment.h1(this.f44196a);
                }
            });
            subTabAdapter3.R0(new b());
        }
    }

    public static final int g1(SubTabFragment subTabFragment) {
        List<Object> data;
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter == null || (data = subTabAdapter.getData()) == null) {
            return 0;
        }
        return data.size();
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
                return SubTabFragment.W0(noNetworkBigView, this);
            }
        });
        noNetworkBigView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return SubTabFragment.X0(this.f44242a);
            }
        });
        com.tn.lib.view.o.a(getPageName());
        this.mNoNetworkView = noNetworkBigView;
        Intrinsics.e(noNetworkBigView);
        return noNetworkBigView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void h1(final SubTabFragment subTabFragment) {
        RecyclerView recyclerView;
        if (yg.l.f76264a.e()) {
            SubTabViewModel subTabViewModel = subTabFragment.mViewModel;
            if (subTabViewModel != null) {
                subTabViewModel.t(subTabFragment.getMTabId(), subTabFragment.getMTabCode(), false);
                return;
            }
            return;
        }
        fh.b.f60176a.d(R$string.no_network_toast);
        qk.w wVar = (qk.w) subTabFragment.getMViewBinding();
        if (wVar == null || (recyclerView = wVar.f69866e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                SubTabFragment.i1(this.f44217a);
            }
        }, 500L);
    }

    public static final void i1(SubTabFragment subTabFragment) {
        t6.f fVarH0;
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter == null || (fVarH0 = subTabAdapter.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final Unit j1(SubTabFragment subTabFragment, int i10) {
        HashMap mapG;
        HashMap mapG2;
        String str;
        Integer numV;
        qi.b logViewConfig = subTabFragment.getLogViewConfig();
        int iIntValue = (logViewConfig == null || (mapG2 = logViewConfig.g()) == null || (str = (String) mapG2.get("scrollPosition")) == null || (numV = StringsKt.v(str)) == null) ? 0 : numV.intValue();
        qi.b logViewConfig2 = subTabFragment.getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            mapG.put("scrollPosition", String.valueOf(RangesKt.e(iIntValue, i10)));
        }
        return Unit.f64096a;
    }

    public static final void k1(SubTabFragment subTabFragment) {
        subTabFragment.c0();
    }

    public final void l1() {
        startLoading();
        String strE = ij.o.f62115a.e();
        SubTabViewModel subTabViewModel = this.mViewModel;
        if (subTabViewModel != null) {
            subTabViewModel.n(getMTabId(), false, strE);
        }
    }

    private final void m0() {
        String strD0;
        Fragment parentFragment = getParentFragment();
        HomeFragment homeFragment = parentFragment instanceof HomeFragment ? (HomeFragment) parentFragment : null;
        if ((homeFragment == null || (strD0 = homeFragment.J0()) == null) && (strD0 = getMTabCode()) == null) {
            strD0 = "";
        }
        if (homeFragment != null) {
            homeFragment.a1(strD0, true);
        }
    }

    public static final Unit m1(SubTabFragment subTabFragment, Function1 callback) {
        Intrinsics.h(callback, "callback");
        subTabFragment.mPermissionCallback = callback;
        androidx.activity.result.b bVar = subTabFragment.mLauncher;
        if (bVar != null) {
            bVar.a(new String[]{"android.permission.READ_CALENDAR", "android.permission.WRITE_CALENDAR"});
        }
        return Unit.f64096a;
    }

    private final void n1() {
        setNetListener(new e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void o1(final SubTabFragment subTabFragment, Map permissions) {
        RecyclerView recyclerView;
        Intrinsics.h(permissions, "permissions");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        Iterator it = permissions.entrySet().iterator();
        while (it.hasNext()) {
            if (!((Boolean) ((Map.Entry) it.next()).getValue()).booleanValue()) {
                booleanRef.element = false;
            }
        }
        qk.w wVar = (qk.w) subTabFragment.getMViewBinding();
        if (wVar == null || (recyclerView = wVar.f69866e) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                SubTabFragment.p1(this.f44209a, booleanRef);
            }
        });
    }

    public static final void p1(SubTabFragment subTabFragment, Ref.BooleanRef booleanRef) {
        Function1 function1 = subTabFragment.mPermissionCallback;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(booleanRef.element));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void q1(float alpha) {
        View view;
        qk.w wVar = (qk.w) getMViewBinding();
        if (wVar == null || (view = wVar.f69863b) == null) {
            return;
        }
        view.setAlpha(alpha);
    }

    private final void r1() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                SubTabFragment.s1(this.f44277a);
            }
        }, 200L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void s1(SubTabFragment subTabFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        if (subTabFragment.isDetached() || !subTabFragment.isAdded() || subTabFragment.getContext() == null) {
            return;
        }
        View viewR0 = yg.l.f76264a.e() ? subTabFragment.R0() : subTabFragment.getNoNetworkView();
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter != null) {
            subTabAdapter.Y0(viewR0);
        }
        subTabFragment.Q0();
        qk.w wVar = (qk.w) subTabFragment.getMViewBinding();
        if (wVar == null || (swipeRefreshLayout = wVar.f69867f) == null) {
            return;
        }
        swipeRefreshLayout.setEnabled(false);
    }

    @Override
    public qk.w getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qk.w wVarC = qk.w.c(inflater);
        Intrinsics.g(wVarC, "inflate(...)");
        return wVarC;
    }

    @Override
    public void c0() {
        String strE = ij.o.f62115a.e();
        SubTabViewModel subTabViewModel = this.mViewModel;
        if (subTabViewModel != null) {
            subTabViewModel.n(getMTabId(), true, strE);
        }
        m0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public RecyclerView f0() {
        qk.w wVar = (qk.w) getMViewBinding();
        if (wVar != null) {
            return wVar.f69866e;
        }
        return null;
    }

    @Override
    public String g0() {
        return this.isUGCMode ? "HomeFragmentListGrid2TemplateAd" : "HomeFragmentListLinearTemplateAd";
    }

    public final String getPageName() {
        return INSTANCE.a(getMTabId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void hideLoading() {
        qk.h0 h0Var;
        ConstraintLayout constraintLayout;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        qk.w wVar = (qk.w) getMViewBinding();
        if (wVar != null && (swipeRefreshLayout = wVar.f69867f) != null && swipeRefreshLayout.isRefreshing()) {
            qk.w wVar2 = (qk.w) getMViewBinding();
            if (wVar2 == null || (swipeRefreshLayout2 = wVar2.f69867f) == null) {
                return;
            }
            swipeRefreshLayout2.setRefreshing(false);
            return;
        }
        qk.w wVar3 = (qk.w) getMViewBinding();
        if (wVar3 == null || (h0Var = wVar3.f69864c) == null || (constraintLayout = h0Var.f69763h) == null) {
            return;
        }
        uf.c.g(constraintLayout);
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        androidx.p009lifecycle.b0 b0VarS;
        androidx.p009lifecycle.b0 b0VarQ;
        androidx.p009lifecycle.b0 b0VarP;
        Intrinsics.h(view, "view");
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        if (subTabAdapter != null) {
            HomePreferencesUiHelperKt.o(this, V0(), subTabAdapter);
        }
        final Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubTabFragment.a1(this.f44313a, (SubOperateData) obj);
            }
        };
        SubTabViewModel subTabViewModel = this.mViewModel;
        if (subTabViewModel != null && (b0VarP = subTabViewModel.p()) != null) {
            b0VarP.j(this, new f(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SubTabFragment.b1(this.f44248a, function1, (SubOperateData) obj);
                }
            }));
        }
        SubTabViewModel subTabViewModel2 = this.mViewModel;
        if (subTabViewModel2 != null && (b0VarQ = subTabViewModel2.q()) != null) {
            b0VarQ.j(this, new f(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SubTabFragment.c1(this.f44254a, function1, (SubOperateData) obj);
                }
            }));
        }
        SubTabViewModel subTabViewModel3 = this.mViewModel;
        if (subTabViewModel3 == null || (b0VarS = subTabViewModel3.s()) == null) {
            return;
        }
        b0VarS.j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubTabFragment.d1(this.f44259a, (TrendingRespData) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        SwipeRefreshLayout swipeRefreshLayout;
        View view2;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        SubTabViewModel subTabViewModel = (SubTabViewModel) new androidx.p009lifecycle.v0(this).a(SubTabViewModel.class);
        this.mViewModel = subTabViewModel;
        if (subTabViewModel != null) {
            subTabViewModel.w(this.isUGCMode);
        }
        f1();
        this.mHeaderBgHeight = U0();
        qk.w wVar = (qk.w) getMViewBinding();
        if (wVar != null && (view2 = wVar.f69863b) != null && (layoutParams = view2.getLayoutParams()) != null) {
            layoutParams.height = this.mHeaderBgHeight;
        }
        qk.w wVar2 = (qk.w) getMViewBinding();
        if (wVar2 != null && (swipeRefreshLayout = wVar2.f69867f) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    SubTabFragment.k1(this.f44264a);
                }
            });
        }
        n1();
    }

    @Override
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        List<Object> data;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager == null || lastAdPosition < 0) {
            return;
        }
        OperateItem operateItem = new OperateItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870911, null);
        operateItem.setNonAdDelegate(wrapperNativeManager);
        operateItem.setType(PostItemType.TRENDING_NATIVE_AD.getValue());
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        int size = (subTabAdapter == null || (data = subTabAdapter.getData()) == null) ? 0 : data.size();
        if (lastAdPosition < 0 || lastAdPosition > size) {
            SubTabAdapter subTabAdapter2 = this.mMainAdapter;
            if (subTabAdapter2 != null) {
                subTabAdapter2.p(operateItem);
                return;
            }
            return;
        }
        SubTabAdapter subTabAdapter3 = this.mMainAdapter;
        if (subTabAdapter3 != null) {
            subTabAdapter3.n(lastAdPosition, operateItem);
        }
    }

    @Override
    public void lazyLoadData() {
        List<Object> data;
        this.loadStartTime = System.currentTimeMillis();
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        if (((subTabAdapter == null || (data = subTabAdapter.getData()) == null) ? 0 : data.size()) <= 0) {
            l1();
        }
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        this.mLauncher = registerForActivityResult(new f.h(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                SubTabFragment.o1(this.f44274a, (Map) obj);
            }
        });
        super.onCreate(savedInstanceState);
    }

    @Override
    public void onResume() {
        HashMap mapG;
        List<Object> data;
        super.onResume();
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        boolean z10 = false;
        if (((subTabAdapter == null || (data = subTabAdapter.getData()) == null) ? 0 : data.size()) <= 0) {
            View view = this.mNoNetworkView;
            if (view != null && view.getVisibility() == 0) {
                z10 = true;
            }
            if (z10 && yg.l.f76264a.e()) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                View view2 = this.mNoNetworkView;
                wf.a.C0922a.f(c0922a, "SubTabFragment", "loaddata on resume = " + (view2 != null ? Integer.valueOf(view2.getVisibility()) : null) + "  " + this, false, 4, null);
                l1();
            }
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
        mapG.put("scrollPosition", "0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void p0() {
        RecyclerView recyclerView;
        qk.w wVar = (qk.w) getMViewBinding();
        if (wVar == null || (recyclerView = wVar.f69866e) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void startLoading() {
        qk.h0 h0Var;
        ConstraintLayout constraintLayout;
        qk.w wVar = (qk.w) getMViewBinding();
        if (wVar == null || (h0Var = wVar.f69864c) == null || (constraintLayout = h0Var.f69763h) == null) {
            return;
        }
        uf.c.k(constraintLayout);
    }
}
