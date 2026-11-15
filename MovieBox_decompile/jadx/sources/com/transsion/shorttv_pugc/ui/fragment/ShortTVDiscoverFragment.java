package com.transsion.shorttv_pugc.ui.fragment;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.base.widget.SafeRecyclerView;
import com.transsion.shorttv.ui.widget.ShortTVBannerView;
import com.transsion.shorttv_pugc.base.fragment.PageStatusFragment;
import com.transsion.shorttv_pugc.base.widget.NpaGridLayoutManager;
import com.transsion.shorttv_pugc.base.widget.StateView;
import com.transsion.shorttv_pugc.bean.BannerData;
import com.transsion.shorttv_pugc.bean.Image;
import com.transsion.shorttv_pugc.bean.Pager;
import com.transsion.shorttv_pugc.bean.ShortTVRespData;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.ui.adapter.ShortTVBannerAdapter;
import com.transsion.shorttv_pugc.ui.adapter.ShortTVTrendingAdapter;
import com.transsion.shorttv_pugc.ui.widget.ShortTVDiscoverHeaderView;
import com.transsion.shorttv_pugc.ui.widget.ShortTVFavoriteView;
import com.transsion.shorttv_pugc.ui.widget.ShortTvLoadMoreView;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import qr.q0;

@Metadata(d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u0019\u0010\u0015\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u0019\u0010\u0019\u001a\u00020\u00052\b\b\u0002\u0010\u0018\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0002¢\u0006\u0004\b#\u0010\u0004J\u001f\u0010'\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u000bH\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0005H\u0002¢\u0006\u0004\b)\u0010\u0004J\u0017\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u0004J\u000f\u00102\u001a\u00020\u0005H\u0016¢\u0006\u0004\b2\u0010\u0004J\u000f\u00103\u001a\u00020\u0005H\u0016¢\u0006\u0004\b3\u0010\u0004J\u000f\u00104\u001a\u00020\u0005H\u0016¢\u0006\u0004\b4\u0010\u0004J\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u0010\u0004J\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0004J/\u0010:\u001a\u00020\u00052\u000e\u00108\u001a\n\u0012\u0004\u0012\u00020$\u0018\u0001072\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0005H\u0016¢\u0006\u0004\b<\u0010\u0004J\u0017\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u00020\u000bH\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u001eH\u0016¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020>H\u0016¢\u0006\u0004\bC\u0010DJ\u0011\u0010E\u001a\u0004\u0018\u00010>H\u0016¢\u0006\u0004\bE\u0010DJ\u000f\u0010F\u001a\u00020\u001eH\u0016¢\u0006\u0004\bF\u0010BJ\u0017\u0010H\u001a\u00020\u00052\u0006\u0010G\u001a\u00020\u000bH\u0016¢\u0006\u0004\bH\u0010\u000eJ\u000f\u0010I\u001a\u00020\u0005H\u0016¢\u0006\u0004\bI\u0010\u0004J\u000f\u0010J\u001a\u00020\u0005H\u0016¢\u0006\u0004\bJ\u0010\u0004J\u000f\u0010K\u001a\u00020.H\u0016¢\u0006\u0004\bK\u00100J\u000f\u0010L\u001a\u00020.H\u0016¢\u0006\u0004\bL\u00100J\u000f\u0010N\u001a\u00020MH\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0005H\u0016¢\u0006\u0004\bP\u0010\u0004R\"\u0010U\u001a\n Q*\u0004\u0018\u00010.0.8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u00100R$\u0010]\u001a\u0004\u0018\u00010V8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010b\u001a\u00020.8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b^\u0010S\u001a\u0004\b_\u00100\"\u0004\b`\u0010aR$\u0010j\u001a\u0004\u0018\u00010c8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\u001b\u0010p\u001a\u00020k8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bn\u0010oR\u0018\u0010t\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\"\u0010w\u001a\u00020\u000b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bu\u0010v\u001a\u0004\bw\u0010\u0010\"\u0004\bx\u0010\u000eR\"\u0010z\u001a\u00020\u000b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\by\u0010v\u001a\u0004\bz\u0010\u0010\"\u0004\b{\u0010\u000eR\u0016\u0010~\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R&\u0010\u0083\u0001\u001a\u000f\u0012\u0004\u0012\u00020.\u0012\u0005\u0012\u00030\u0080\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R \u0010\u0090\u0001\u001a\u00030\u008c\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u008d\u0001\u0010m\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0018\u0010\u0092\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0091\u0001\u0010}R\u001a\u0010\u0096\u0001\u001a\u00030\u0093\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0097\u0001\u0010vR\u0016\u0010\u009a\u0001\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0099\u0001\u0010}RI\u0010¤\u0001\u001a\"\u0012\u0015\u0012\u00130\u000b¢\u0006\u000e\b\u009c\u0001\u0012\t\b\u009d\u0001\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u009b\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009e\u0001\u0010\u009f\u0001\u001a\u0006\b \u0001\u0010¡\u0001\"\u0006\b¢\u0001\u0010£\u0001R\u001c\u0010¨\u0001\u001a\u0005\u0018\u00010¥\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R&\u0010¬\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b©\u0001\u0010v\u001a\u0005\bª\u0001\u0010\u0010\"\u0005\b«\u0001\u0010\u000eR\u0018\u0010®\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u00ad\u0001\u0010}R\u0018\u0010²\u0001\u001a\u00030¯\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b°\u0001\u0010±\u0001R\u001c\u0010¶\u0001\u001a\u0005\u0018\u00010³\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001¨\u0006·\u0001"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;", "Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;", "Lqr/x;", "<init>", "()V", "", "L0", "Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;", "data", "f1", "(Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;)V", "", "isBanner", "B0", "(Z)V", "J0", "()Z", "c1", "y0", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "A0", "(Landroidx/recyclerview/widget/RecyclerView;)V", "loadMore", "isRefresh", "W0", "V0", "x0", "d1", "X0", "", "dy", "Y0", "(I)V", "showLoading", "hideLoading", "Lcom/transsion/shorttv_pugc/bean/Subject;", "subject", "isDownloadView", "Z0", "(Lcom/transsion/shorttv_pugc/bean/Subject;Z)V", "initAd", "Landroid/view/LayoutInflater;", "inflater", "I0", "(Landroid/view/LayoutInflater;)Lqr/x;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", TmcConstants.NAVIGATION_ON_START, "initListener", "retryLoadData", "b1", "", "list", "hasMore", "h1", "(Ljava/util/List;ZZ)V", "g1", "isShowTitleLayout", "Landroid/view/View;", "getEmptyView", "(Z)Landroid/view/View;", "getScreenType", "()I", "getNoNetworkView", "()Landroid/view/View;", "getLoadingView", "G0", "hidden", "onHiddenChanged", "onResume", "onPause", "getPageName", "E0", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onDestroy", "kotlin.jvm.PlatformType", "i", "Ljava/lang/String;", "getTAG", "TAG", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;", "j", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;", "F0", "()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;", "setListAdapter", "(Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;)V", "listAdapter", CampaignEx.JSON_KEY_AD_K, "getNextPage", "setNextPage", "(Ljava/lang/String;)V", "nextPage", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "l", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "getViewModel", "()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "setViewModel", "(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V", "viewModel", "Lxs/b;", "m", "Lkotlin/Lazy;", "H0", "()Lxs/b;", "recReport", "Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;", "n", "Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;", "favoriteHeaderView", "o", "Z", "isFirstStart", "setFirstStart", TtmlNode.TAG_P, "isFirstPageChange", "setFirstPageChange", CampaignEx.JSON_KEY_AD_Q, "I", "tabId", "", "Landroid/view/ViewGroup;", CampaignEx.JSON_KEY_AD_R, "Ljava/util/Map;", "headerViewList", "Lqr/q0;", "s", "Lqr/q0;", "bannerBinding", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;", "t", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;", "bannerAdapter", "Lcom/transsion/shorttv_pugc/utils/a;", TmcStartParams.KEY_URL_SHORT, "C0", "()Lcom/transsion/shorttv_pugc/utils/a;", "bannerDotHelper", "v", "bannerCurPosition", "", "w", "J", "bannerBrowseTime", "x", "hasAddedBanner", "y", "statusBarHeight", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "z", "Lkotlin/jvm/functions/Function1;", "getListener", "()Lkotlin/jvm/functions/Function1;", "setListener", "(Lkotlin/jvm/functions/Function1;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroidx/recyclerview/widget/RecyclerView$r;", "A", "Landroidx/recyclerview/widget/RecyclerView$r;", "subTabScrollListener", "B", "getHasSlideOutBanner", "e1", "hasSlideOutBanner", "C", "mDy", "Lfs/b;", "D", "Lfs/b;", "exposureHelper", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "E", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class ShortTVDiscoverFragment extends PageStatusFragment<qr.x> {

    private RecyclerView.r subTabScrollListener;

    private boolean hasSlideOutBanner;

    private int mDy;

    private BiddingListManager v3ListManager;

    private ShortTVTrendingAdapter listAdapter;

    private ShortTvViewModel viewModel;

    private ShortTVFavoriteView favoriteHeaderView;

    private q0 bannerBinding;

    private ShortTVBannerAdapter bannerAdapter;

    private long bannerBrowseTime;

    private boolean hasAddedBanner;

    private Function1 listener;

    private final String TAG = getClass().getSimpleName();

    private String nextPage = "1";

    private final Lazy recReport = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTVDiscoverFragment.a1();
        }
    });

    private boolean isFirstStart = true;

    private boolean isFirstPageChange = true;

    private int tabId = 13;

    private Map headerViewList = new LinkedHashMap();

    private final Lazy bannerDotHelper = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTVDiscoverFragment.z0(this.f52260a);
        }
    });

    private int bannerCurPosition = -1;

    private final int statusBarHeight = com.blankj.utilcode.util.d.c();

    private final fs.b exposureHelper = new fs.b(0.6f, new b(), false, 4, null);

    public static final class a extends RecyclerView.r {
        a() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (i11 > 0) {
                ShortTVDiscoverFragment.this.A0(recyclerView);
            }
        }
    }

    public static final class b implements fs.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVTrendingAdapter listAdapter = ShortTVDiscoverFragment.this.getListAdapter();
            if (((listAdapter == null || (data2 = listAdapter.getData()) == null) ? 0 : data2.size()) <= i10) {
                return;
            }
            ShortTVTrendingAdapter listAdapter2 = ShortTVDiscoverFragment.this.getListAdapter();
            Subject subject = (listAdapter2 == null || (data = listAdapter2.getData()) == null) ? null : (Subject) data.get(i10);
            if (subject != null) {
                ShortTVDiscoverFragment.this.H0().a(ShortTVDiscoverFragment.this.getPageName(), subject, i10, j10, ShortTVDiscoverFragment.this.E0());
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

    public static final class d extends GridLayoutManager.c {

        final SafeRecyclerView f52136f;

        d(SafeRecyclerView safeRecyclerView) {
            this.f52136f = safeRecyclerView;
        }

        /* JADX WARN: Code duplicated, block: B:20:0x003e  */
        @Override
        public int f(int i10) {
            BiddingNativeManager nonAdDelegate;
            List<Object> data;
            boolean z10 = false;
            if (i10 >= 0) {
                ShortTVTrendingAdapter listAdapter = ShortTVDiscoverFragment.this.getListAdapter();
                if (i10 < ((listAdapter == null || (data = listAdapter.getData()) == null) ? 0 : data.size())) {
                    ShortTVTrendingAdapter listAdapter2 = ShortTVDiscoverFragment.this.getListAdapter();
                    if (listAdapter2 == null) {
                        nonAdDelegate = null;
                    } else {
                        ShortTVTrendingAdapter listAdapter3 = ShortTVDiscoverFragment.this.getListAdapter();
                        Subject subject = (Subject) listAdapter2.getItem(i10 - (listAdapter3 != null ? listAdapter3.a0() : 0));
                        if (subject != null) {
                            nonAdDelegate = subject.getNonAdDelegate();
                        } else {
                            nonAdDelegate = null;
                        }
                    }
                    if (nonAdDelegate != null) {
                        z10 = true;
                    }
                }
            }
            Context context = this.f52136f.getContext();
            Intrinsics.g(context, "getContext(...)");
            return (!ls.a.a(context) || z10) ? 2 : 1;
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
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() != null) {
                if (childAdapterPosition == 0) {
                    outRect.top = com.blankj.utilcode.util.a0.a(0.0f);
                } else {
                    outRect.top = com.blankj.utilcode.util.a0.a(16.0f);
                }
            }
        }
    }

    public static final class f extends RecyclerView.r {

        private int f52137a;

        f() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            qr.x xVar;
            SafeRecyclerView safeRecyclerView;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i10);
            if (i10 != 0 || (xVar = (qr.x) ShortTVDiscoverFragment.this.getMViewBinding()) == null || (safeRecyclerView = xVar.f70191b) == null || safeRecyclerView.canScrollVertically(-1)) {
                return;
            }
            ShortTVDiscoverFragment shortTVDiscoverFragment = ShortTVDiscoverFragment.this;
            shortTVDiscoverFragment.B0(shortTVDiscoverFragment.J0());
            ShortTVDiscoverFragment.this.e1(false);
            this.f52137a = 0;
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            ShortTVDiscoverFragment.this.Y0(i11);
        }
    }

    static final class g implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f52139a;

        g(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52139a = function;
        }

        @Override
        public final Function a() {
            return this.f52139a;
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
            this.f52139a.invoke(obj);
        }
    }

    public final void A0(RecyclerView recyclerView) {
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

    public final void B0(boolean isBanner) {
        int color;
        View view;
        if (isBanner && J0()) {
            ImmersionBar immersionBarWith = ImmersionBar.with(this);
            color = 0;
            immersionBarWith.statusBarDarkFont(false);
            immersionBarWith.init();
        } else {
            color = androidx.core.content.b.getColor(requireContext(), R$color.short_tv_bg_02);
            ImmersionBar immersionBarWith2 = ImmersionBar.with(this);
            immersionBarWith2.statusBarDarkFont(!ls.f.f66113a.a());
            immersionBarWith2.init();
        }
        qr.x xVar = (qr.x) getMViewBinding();
        if (xVar == null || (view = xVar.f70196g) == null) {
            return;
        }
        view.setBackgroundColor(color);
    }

    private final com.transsion.shorttv_pugc.utils.a C0() {
        return (com.transsion.shorttv_pugc.utils.a) this.bannerDotHelper.getValue();
    }

    public static final Unit D0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        String strF;
        shortTVDiscoverFragment.retryLoadData();
        qi.b logViewConfig = shortTVDiscoverFragment.getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            com.transsion.shorttv_pugc.base.widget.j.b(strF);
        }
        return Unit.f64096a;
    }

    public final xs.b H0() {
        return (xs.b) this.recReport.getValue();
    }

    public final boolean J0() {
        ShortTVBannerAdapter shortTVBannerAdapter = this.bannerAdapter;
        if (shortTVBannerAdapter == null) {
            return false;
        }
        Intrinsics.e(shortTVBannerAdapter);
        return shortTVBannerAdapter.getData().size() > 0;
    }

    public static final Unit K0(ShortTVDiscoverFragment shortTVDiscoverFragment, int i10, BiddingNativeManager wrapperNativeManager) {
        List<Object> data;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager != null) {
            Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, -1, 4194303, null);
            subject.setNonAdDelegate(wrapperNativeManager);
            ShortTVTrendingAdapter shortTVTrendingAdapter = shortTVDiscoverFragment.listAdapter;
            int size = (shortTVTrendingAdapter == null || (data = shortTVTrendingAdapter.getData()) == null) ? 0 : data.size();
            Context context = shortTVDiscoverFragment.getContext();
            int i11 = (context == null || !ls.a.a(context) || i10 % 2 == 0) ? i10 : i10 - 1;
            if (i11 <= size) {
                ShortTVTrendingAdapter shortTVTrendingAdapter2 = shortTVDiscoverFragment.listAdapter;
                if (shortTVTrendingAdapter2 != null) {
                    shortTVTrendingAdapter2.n(i11, subject);
                }
            } else {
                ShortTVTrendingAdapter shortTVTrendingAdapter3 = shortTVDiscoverFragment.listAdapter;
                if (shortTVTrendingAdapter3 != null) {
                    shortTVTrendingAdapter3.n(size, subject);
                }
            }
        }
        return Unit.f64096a;
    }

    private final void L0() {
        final SwipeRefreshLayout swipeRefreshLayout;
        SafeRecyclerView safeRecyclerView;
        final boolean z10 = true;
        ShortTVTrendingAdapter shortTVTrendingAdapter = new ShortTVTrendingAdapter(getPageName(), true);
        shortTVTrendingAdapter.h0().C(new ShortTvLoadMoreView());
        shortTVTrendingAdapter.h0().z(true);
        shortTVTrendingAdapter.h0().y(true);
        shortTVTrendingAdapter.h0().E(3);
        shortTVTrendingAdapter.h0().D(new r6.f() {
            @Override
            public final void a() {
                ShortTVDiscoverFragment.N0(this.f52190a);
            }
        });
        shortTVTrendingAdapter.R0(new c());
        shortTVTrendingAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVDiscoverFragment.O0(this.f52246a, baseQuickAdapter, view, i10);
            }
        });
        shortTVTrendingAdapter.l(R$id.btn_download);
        shortTVTrendingAdapter.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVDiscoverFragment.P0(this.f52248a, z10, baseQuickAdapter, view, i10);
            }
        });
        this.listAdapter = shortTVTrendingAdapter;
        qr.x xVar = (qr.x) getMViewBinding();
        if (xVar != null && (safeRecyclerView = xVar.f70191b) != null) {
            NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(safeRecyclerView.getContext(), 2);
            npaGridLayoutManager.d0(new d(safeRecyclerView));
            safeRecyclerView.setLayoutManager(npaGridLayoutManager);
            safeRecyclerView.setAdapter(this.listAdapter);
            safeRecyclerView.addOnScrollListener(this.exposureHelper);
            y0();
            safeRecyclerView.addItemDecoration(new e());
        }
        qr.x xVar2 = (qr.x) getMViewBinding();
        if (xVar2 == null || (swipeRefreshLayout = xVar2.f70192c) == null) {
            return;
        }
        int iA = com.blankj.utilcode.util.a0.a(30.0f);
        int i10 = this.statusBarHeight + iA;
        swipeRefreshLayout.setProgressViewOffset(false, i10, (iA * 2) + i10);
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
            @Override
            public final void a() {
                ShortTVDiscoverFragment.M0(swipeRefreshLayout, this);
            }
        });
    }

    public static final void M0(SwipeRefreshLayout swipeRefreshLayout, ShortTVDiscoverFragment shortTVDiscoverFragment) {
        if (yg.l.f76264a.e()) {
            shortTVDiscoverFragment.b1();
        } else {
            ns.b.f67352a.d(R$string.short_tv_no_network_toast);
            swipeRefreshLayout.setRefreshing(false);
        }
    }

    public static final void N0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        shortTVDiscoverFragment.loadMore();
    }

    public static final void O0(ShortTVDiscoverFragment shortTVDiscoverFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVDiscoverFragment.H0().b(shortTVDiscoverFragment.getPageName(), subject, i10, shortTVDiscoverFragment.E0());
            shortTVDiscoverFragment.Z0(subject, false);
        }
    }

    public static final void P0(ShortTVDiscoverFragment shortTVDiscoverFragment, boolean z10, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVDiscoverFragment.H0().b(shortTVDiscoverFragment.getPageName(), subject, i10, shortTVDiscoverFragment.E0());
            shortTVDiscoverFragment.Z0(subject, z10);
        }
    }

    public static final void Q0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        SafeRecyclerView safeRecyclerView;
        if (shortTVDiscoverFragment.isAdded()) {
            qr.x xVar = (qr.x) shortTVDiscoverFragment.getMViewBinding();
            int iComputeVerticalScrollOffset = (xVar == null || (safeRecyclerView = xVar.f70191b) == null) ? 0 : safeRecyclerView.computeVerticalScrollOffset();
            shortTVDiscoverFragment.mDy = 0;
            shortTVDiscoverFragment.Y0(iComputeVerticalScrollOffset);
        }
    }

    public static final Unit R0(ShortTVDiscoverFragment shortTVDiscoverFragment, ShortTVRespData shortTVRespData) {
        shortTVDiscoverFragment.hideLoading();
        shortTVDiscoverFragment.f1(shortTVRespData);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002e  */
    public static final Unit S0(ShortTVDiscoverFragment shortTVDiscoverFragment, ShortTVRespData shortTVRespData) {
        if ((shortTVRespData != null ? shortTVRespData.getItems() : null) != null) {
            List<Subject> items = shortTVRespData.getItems();
            Intrinsics.e(items);
            if (items.isEmpty()) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                String TAG = shortTVDiscoverFragment.TAG;
                Intrinsics.g(TAG, "TAG");
                wf.a.C0922a.z(c0922a, TAG, "addHeaderView, has no Favorite", false, 4, null);
                shortTVDiscoverFragment.d1();
            } else {
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                String TAG2 = shortTVDiscoverFragment.TAG;
                Intrinsics.g(TAG2, "TAG");
                wf.a.C0922a.f(c0922a2, TAG2, "addHeaderView, has Favorite", false, 4, null);
                shortTVDiscoverFragment.x0();
            }
        } else {
            wf.a.C0922a c0922a3 = wf.a.f74274a;
            String TAG3 = shortTVDiscoverFragment.TAG;
            Intrinsics.g(TAG3, "TAG");
            wf.a.C0922a.z(c0922a3, TAG3, "addHeaderView, has no Favorite", false, 4, null);
            shortTVDiscoverFragment.d1();
        }
        return Unit.f64096a;
    }

    public static final void T0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        t6.f fVarH0;
        ShortTVTrendingAdapter shortTVTrendingAdapter = shortTVDiscoverFragment.listAdapter;
        if (((shortTVTrendingAdapter == null || (fVarH0 = shortTVTrendingAdapter.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.End) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = shortTVDiscoverFragment.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "load more， loadData", false, 4, null);
        shortTVDiscoverFragment.W0(false);
    }

    public static final void U0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        t6.f fVarH0;
        ShortTVTrendingAdapter shortTVTrendingAdapter = shortTVDiscoverFragment.listAdapter;
        if (shortTVTrendingAdapter == null || (fVarH0 = shortTVTrendingAdapter.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void V0() {
        ShortTvViewModel shortTvViewModel = this.viewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.H(this.tabId);
        }
    }

    private final void W0(boolean isRefresh) {
        ShortTvViewModel shortTvViewModel = this.viewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.K(this.nextPage, 8, isRefresh);
        }
    }

    private final void X0() {
        List data;
        BannerData bannerData;
        List data2;
        int i10 = this.bannerCurPosition;
        if (i10 >= 0) {
            ShortTVBannerAdapter shortTVBannerAdapter = this.bannerAdapter;
            if (i10 >= ((shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? 0 : data2.size())) {
                return;
            }
            long jCurrentTimeMillis = this.bannerBrowseTime > 0 ? System.currentTimeMillis() - this.bannerBrowseTime : 0L;
            ShortTVBannerAdapter shortTVBannerAdapter2 = this.bannerAdapter;
            if (shortTVBannerAdapter2 == null || (data = shortTVBannerAdapter2.getData()) == null || (bannerData = (BannerData) data.get(this.bannerCurPosition)) == null) {
                return;
            }
            com.transsion.shorttv_pugc.utils.a aVarC0 = C0();
            String pageName = getPageName();
            String value = ShortTvItemType.BANNER.getValue();
            String subjectId = bannerData.getSubjectId();
            Boolean hasResource = bannerData.getHasResource();
            String deepLink = bannerData.getDeepLink();
            Integer numValueOf = Integer.valueOf(this.bannerCurPosition);
            Image image = bannerData.getImage();
            aVarC0.a((4144 & 1) != 0 ? null : pageName, (4144 & 2) != 0 ? null : "opt", (4144 & 4) != 0 ? null : value, (4144 & 8) != 0 ? null : subjectId, (4144 & 16) != 0 ? null : null, (4144 & 32) != 0 ? null : null, (4144 & 64) != 0 ? null : hasResource, (4144 & 128) != 0 ? null : deepLink, (4144 & 256) != 0 ? null : numValueOf, (4144 & 512) != 0 ? null : image != null ? image.getUrl() : null, (4144 & 1024) != 0 ? 0L : jCurrentTimeMillis, (4144 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(bannerData.getBuiltIn()), (4144 & 4096) == 0 ? null : null);
        }
    }

    public final void Y0(int dy2) {
        if (dy2 == 0) {
            this.mDy = 0;
        } else {
            this.mDy += dy2;
        }
        if (Math.abs(this.mDy) > ((com.blankj.utilcode.util.y.e() * 9) / 16) / 2) {
            if (this.hasSlideOutBanner) {
                return;
            }
            B0(false);
            this.hasSlideOutBanner = true;
            return;
        }
        if (this.hasSlideOutBanner) {
            B0(true);
            this.hasSlideOutBanner = false;
        }
    }

    private final void Z0(Subject subject, boolean isDownloadView) {
        Context context = getContext();
        if (context != null) {
            ts.a.f72793a.a((FragmentActivity) context, getPageName(), subject.getOps(), (PsExtractor.AUDIO_STREAM & 8) != 0 ? null : "download_subject", (PsExtractor.AUDIO_STREAM & 16) != 0 ? false : isDownloadView, (PsExtractor.AUDIO_STREAM & 32) != 0 ? null : subject, (PsExtractor.AUDIO_STREAM & 64) != 0 ? null : null, (PsExtractor.AUDIO_STREAM & 128) != 0 ? Boolean.FALSE : null);
        }
    }

    public static final xs.b a1() {
        return new xs.b();
    }

    private final void c1(boolean isBanner) {
        Space space;
        View view;
        Space space2;
        View view2;
        if (isBanner) {
            qr.x xVar = (qr.x) getMViewBinding();
            if (xVar != null && (view2 = xVar.f70195f) != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                view2.setLayoutParams(bVar);
            }
            qr.x xVar2 = (qr.x) getMViewBinding();
            if (xVar2 == null || (space2 = xVar2.f70194e) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = space2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            ((ViewGroup.MarginLayoutParams) bVar2).height = gs.a.a(90);
            space2.setLayoutParams(bVar2);
            return;
        }
        qr.x xVar3 = (qr.x) getMViewBinding();
        if (xVar3 != null && (view = xVar3.f70195f) != null) {
            ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
            if (layoutParams3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams3;
            ((ViewGroup.MarginLayoutParams) bVar3).height = this.statusBarHeight + gs.a.a(44);
            view.setLayoutParams(bVar3);
        }
        qr.x xVar4 = (qr.x) getMViewBinding();
        if (xVar4 == null || (space = xVar4.f70194e) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams4 = space.getLayoutParams();
        if (layoutParams4 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar4 = (ConstraintLayout.b) layoutParams4;
        ((ViewGroup.MarginLayoutParams) bVar4).height = gs.a.a(10);
        space.setLayoutParams(bVar4);
    }

    private final void d1() {
        ShortTVFavoriteView shortTVFavoriteView = this.favoriteHeaderView;
        if (shortTVFavoriteView == null) {
            return;
        }
        ShortTVTrendingAdapter shortTVTrendingAdapter = this.listAdapter;
        if (shortTVTrendingAdapter != null) {
            Intrinsics.e(shortTVFavoriteView);
            shortTVTrendingAdapter.J0(shortTVFavoriteView);
        }
        this.favoriteHeaderView = null;
    }

    private final void f1(ShortTVRespData data) {
        String nextPage;
        Boolean hasMore;
        t6.f fVarH0;
        ShortTVTrendingAdapter shortTVTrendingAdapter;
        t6.f fVarH1;
        ShortTVTrendingAdapter shortTVTrendingAdapter2;
        List<Object> data2;
        if (data == null) {
            if (this.bannerBinding == null && this.headerViewList.isEmpty() && (shortTVTrendingAdapter2 = this.listAdapter) != null && (data2 = shortTVTrendingAdapter2.getData()) != null && data2.isEmpty()) {
                g1();
                return;
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter3 = this.listAdapter;
            if (shortTVTrendingAdapter3 == null || (fVarH0 = shortTVTrendingAdapter3.h0()) == null || !fVarH0.r() || (shortTVTrendingAdapter = this.listAdapter) == null || (fVarH1 = shortTVTrendingAdapter.h0()) == null) {
                return;
            }
            fVarH1.v();
            return;
        }
        Pager pager = data.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "1";
        }
        this.nextPage = nextPage;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        String str = this.nextPage;
        List<Subject> items = data.getItems();
        Integer numValueOf = items != null ? Integer.valueOf(items.size()) : null;
        Pager pager2 = data.getPager();
        wf.a.C0922a.f(c0922a, TAG, "updateTreadingList,nextPage :" + str + ", size:" + numValueOf + ", hasMore:" + (pager2 != null ? pager2.getHasMore() : null), false, 4, null);
        List<Subject> items2 = data.getItems();
        boolean zIsRefresh = data.isRefresh();
        Pager pager3 = data.getPager();
        h1(items2, zIsRefresh, (pager3 == null || (hasMore = pager3.getHasMore()) == null) ? false : hasMore.booleanValue());
    }

    private final void hideLoading() {
        showContentView();
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        qr.x xVar = (qr.x) getMViewBinding();
        biddingListManager.F(xVar != null ? xVar.f70191b : null);
        biddingListManager.A(androidx.p009lifecycle.v.a(this));
        biddingListManager.G("ShortTvDiscoverMostTrendingScene");
        biddingListManager.z(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return ShortTVDiscoverFragment.K0(this.f52261a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.v3ListManager = biddingListManager;
    }

    private final void loadMore() {
        SafeRecyclerView safeRecyclerView;
        SafeRecyclerView safeRecyclerView2;
        t6.f fVarH0;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "loadMore", false, 4, null);
        if (!yg.l.f76264a.e()) {
            ns.b.f67352a.d(R$string.short_tv_no_network_toast);
            qr.x xVar = (qr.x) getMViewBinding();
            if (xVar == null || (safeRecyclerView = xVar.f70191b) == null) {
                return;
            }
            safeRecyclerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    ShortTVDiscoverFragment.U0(this.f52195a);
                }
            }, 500L);
            return;
        }
        ShortTVTrendingAdapter shortTVTrendingAdapter = this.listAdapter;
        if (shortTVTrendingAdapter != null && (fVarH0 = shortTVTrendingAdapter.h0()) != null) {
            fVarH0.w();
        }
        qr.x xVar2 = (qr.x) getMViewBinding();
        if (xVar2 == null || (safeRecyclerView2 = xVar2.f70191b) == null) {
            return;
        }
        safeRecyclerView2.postDelayed(new Runnable() {
            @Override
            public final void run() {
                ShortTVDiscoverFragment.T0(this.f52192a);
            }
        }, 300L);
    }

    private final void showLoading() {
        showLoadingView();
    }

    private final void x0() {
        Context context;
        if (this.favoriteHeaderView == null && (context = getContext()) != null) {
            ShortTVFavoriteView shortTVFavoriteView = new ShortTVFavoriteView(this, "collection", H0(), context);
            this.favoriteHeaderView = shortTVFavoriteView;
            if (this.hasAddedBanner) {
                ShortTVTrendingAdapter shortTVTrendingAdapter = this.listAdapter;
                if (shortTVTrendingAdapter != null) {
                    Intrinsics.e(shortTVFavoriteView);
                    BaseQuickAdapter.y(shortTVTrendingAdapter, shortTVFavoriteView, 2, 0, 4, null);
                    return;
                }
                return;
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter2 = this.listAdapter;
            if (shortTVTrendingAdapter2 != null) {
                Intrinsics.e(shortTVFavoriteView);
                BaseQuickAdapter.y(shortTVTrendingAdapter2, shortTVFavoriteView, 1, 0, 4, null);
            }
        }
    }

    private final void y0() {
        SafeRecyclerView safeRecyclerView;
        qr.x xVar = (qr.x) getMViewBinding();
        if (xVar == null || (safeRecyclerView = xVar.f70191b) == null) {
            return;
        }
        safeRecyclerView.addOnScrollListener(new a());
    }

    public static final com.transsion.shorttv_pugc.utils.a z0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        return new com.transsion.shorttv_pugc.utils.a(shortTVDiscoverFragment.getPageName());
    }

    public String E0() {
        return "most_trending";
    }

    protected final ShortTVTrendingAdapter getListAdapter() {
        return this.listAdapter;
    }

    public int G0() {
        return R$layout.pugc_short_tv_layout_skeleton_drawing_discover;
    }

    @Override
    public qr.x getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qr.x xVarC = qr.x.c(inflater);
        Intrinsics.g(xVarC, "inflate(...)");
        return xVarC;
    }

    public void b1() {
        V0();
        this.nextPage = "1";
    }

    public final void e1(boolean z10) {
        this.hasSlideOutBanner = z10;
    }

    public void g1() {
        if (yg.l.f76264a.e()) {
            PageStatusFragment.c0(this, false, 1, null);
        } else {
            showNoNetworkView(false);
        }
    }

    @Override
    public View getEmptyView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTVDiscoverFragment.D0(this.f52197a);
            }
        });
        stateView.showData(4, getScreenType(), false, getPageStateLayoutTitle(), getEmptyDescText());
        return stateView;
    }

    @Override
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(G0(), (ViewGroup) getFlStateView(), false);
        View viewFindViewById = viewInflate.findViewById(R$id.v_bar_space);
        if (this.subTabScrollListener != null) {
            View viewFindViewById2 = viewInflate.findViewById(R$id.v_title);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            ViewGroup.LayoutParams layoutParams = viewFindViewById2.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = com.blankj.utilcode.util.a0.a(10.0f);
            viewFindViewById2.setLayoutParams(bVar);
            int iA = this.statusBarHeight + com.blankj.utilcode.util.a0.a(32.0f);
            Intrinsics.e(viewFindViewById);
            ViewGroup.LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            ((ViewGroup.MarginLayoutParams) bVar2).height = iA;
            viewFindViewById.setLayoutParams(bVar2);
        } else {
            Intrinsics.e(viewFindViewById);
            ViewGroup.LayoutParams layoutParams3 = viewFindViewById.getLayoutParams();
            if (layoutParams3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams3;
            ((ViewGroup.MarginLayoutParams) bVar3).height = this.statusBarHeight;
            viewFindViewById.setLayoutParams(bVar3);
        }
        return viewInflate;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    @Override
    public View getNoNetworkView() {
        View noNetworkView;
        vs.i iVarR;
        ShortTvViewModel shortTvViewModel = this.viewModel;
        if (shortTvViewModel == null || (iVarR = shortTvViewModel.R()) == null) {
            noNetworkView = super.getNoNetworkView();
        } else {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            noNetworkView = iVarR.a(contextRequireContext);
            if (noNetworkView == null) {
                noNetworkView = super.getNoNetworkView();
            }
        }
        noNetworkView.setPadding(noNetworkView.getPaddingStart(), noNetworkView.getPaddingTop() + this.statusBarHeight + com.blankj.utilcode.util.a0.a(35.0f), noNetworkView.getPaddingEnd(), noNetworkView.getPaddingBottom());
        return noNetworkView;
    }

    public String getPageName() {
        return "minitv_explore";
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public int getScreenType() {
        return 4;
    }

    public void h1(List list, boolean isRefresh, boolean hasMore) {
        t6.f fVarH0;
        t6.f fVarH1;
        ShortTVTrendingAdapter shortTVTrendingAdapter;
        t6.f fVarH2;
        SwipeRefreshLayout swipeRefreshLayout;
        qr.x xVar;
        SwipeRefreshLayout swipeRefreshLayout2;
        List<Object> data;
        List<Object> listL;
        t6.f fVarH3;
        SwipeRefreshLayout swipeRefreshLayout3;
        t6.f fVarH4;
        ShortTVTrendingAdapter shortTVTrendingAdapter2;
        t6.f fVarH5;
        SwipeRefreshLayout swipeRefreshLayout4;
        qr.x xVar2;
        SwipeRefreshLayout swipeRefreshLayout5;
        List<Object> data2;
        Subject subject;
        SwipeRefreshLayout swipeRefreshLayout6;
        qr.x xVar3 = (qr.x) getMViewBinding();
        if (xVar3 != null && (swipeRefreshLayout6 = xVar3.f70192c) != null) {
            swipeRefreshLayout6.setEnabled(true);
        }
        if (isRefresh) {
            BiddingListManager biddingListManager = this.v3ListManager;
            if (biddingListManager != null) {
                biddingListManager.y();
            }
            if (list != null && (subject = (Subject) CollectionsKt.k0(list)) != null) {
                subject.setShowTitle(true);
            }
        }
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            if (isRefresh) {
                qi.b logViewConfig = getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
                ShortTVTrendingAdapter shortTVTrendingAdapter3 = this.listAdapter;
                if (shortTVTrendingAdapter3 != null) {
                    shortTVTrendingAdapter3.n1(list2);
                }
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter4 = this.listAdapter;
            if (shortTVTrendingAdapter4 == null || (data = shortTVTrendingAdapter4.getData()) == null || !data.isEmpty()) {
                if (hasMore) {
                    ShortTVTrendingAdapter shortTVTrendingAdapter5 = this.listAdapter;
                    if (shortTVTrendingAdapter5 != null && (fVarH1 = shortTVTrendingAdapter5.h0()) != null && fVarH1.r() && (shortTVTrendingAdapter = this.listAdapter) != null && (fVarH2 = shortTVTrendingAdapter.h0()) != null) {
                        fVarH2.s();
                    }
                } else {
                    ShortTVTrendingAdapter shortTVTrendingAdapter6 = this.listAdapter;
                    if (shortTVTrendingAdapter6 != null && (fVarH0 = shortTVTrendingAdapter6.h0()) != null) {
                        t6.f.u(fVarH0, false, 1, null);
                    }
                }
            } else if (isRefresh) {
                Intrinsics.c(getPageName(), "minitv_explore");
            }
            qr.x xVar4 = (qr.x) getMViewBinding();
            if (xVar4 == null || (swipeRefreshLayout = xVar4.f70192c) == null || !swipeRefreshLayout.isRefreshing() || (xVar = (qr.x) getMViewBinding()) == null || (swipeRefreshLayout2 = xVar.f70192c) == null) {
                return;
            }
            swipeRefreshLayout2.setRefreshing(false);
            return;
        }
        ShortTVTrendingAdapter shortTVTrendingAdapter7 = this.listAdapter;
        if ((shortTVTrendingAdapter7 == null || (data2 = shortTVTrendingAdapter7.getData()) == null || !data2.isEmpty()) && !isRefresh) {
            ShortTVTrendingAdapter shortTVTrendingAdapter8 = this.listAdapter;
            if (shortTVTrendingAdapter8 == null || (listL = shortTVTrendingAdapter8.getData()) == null) {
                listL = CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!listL.contains((Subject) obj)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                String TAG = this.TAG;
                Intrinsics.g(TAG, "TAG");
                wf.a.C0922a.f(c0922a, TAG, "updateList 全部去重了", false, 4, null);
                return;
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter9 = this.listAdapter;
            if (shortTVTrendingAdapter9 != null) {
                shortTVTrendingAdapter9.q(arrayList);
            }
        } else {
            qr.x xVar5 = (qr.x) getMViewBinding();
            if (xVar5 != null && (swipeRefreshLayout4 = xVar5.f70192c) != null && swipeRefreshLayout4.isRefreshing() && (xVar2 = (qr.x) getMViewBinding()) != null && (swipeRefreshLayout5 = xVar2.f70192c) != null) {
                swipeRefreshLayout5.setRefreshing(false);
            }
            qi.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter10 = this.listAdapter;
            if (shortTVTrendingAdapter10 != null) {
                shortTVTrendingAdapter10.n1(list2);
            }
        }
        if (hasMore) {
            ShortTVTrendingAdapter shortTVTrendingAdapter11 = this.listAdapter;
            if (shortTVTrendingAdapter11 != null && (fVarH4 = shortTVTrendingAdapter11.h0()) != null && fVarH4.r() && (shortTVTrendingAdapter2 = this.listAdapter) != null && (fVarH5 = shortTVTrendingAdapter2.h0()) != null) {
                fVarH5.s();
            }
        } else {
            ShortTVTrendingAdapter shortTVTrendingAdapter12 = this.listAdapter;
            if (shortTVTrendingAdapter12 != null && (fVarH3 = shortTVTrendingAdapter12.h0()) != null) {
                t6.f.u(fVarH3, false, 1, null);
            }
        }
        if (J0() || this.subTabScrollListener != null) {
            return;
        }
        B0(false);
        Function1 function1 = this.listener;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        c1(false);
        qr.x xVar6 = (qr.x) getMViewBinding();
        if (xVar6 == null || (swipeRefreshLayout3 = xVar6.f70192c) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = swipeRefreshLayout3.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        bVar.setMargins(0, com.blankj.utilcode.util.a0.a(80.0f), 0, 0);
        swipeRefreshLayout3.setLayoutParams(bVar);
    }

    @Override
    public void initListener() {
        SafeRecyclerView safeRecyclerView;
        SafeRecyclerView safeRecyclerView2;
        SafeRecyclerView safeRecyclerView3;
        if (this.subTabScrollListener != null) {
            qr.x xVar = (qr.x) getMViewBinding();
            if (xVar != null && (safeRecyclerView3 = xVar.f70191b) != null) {
                RecyclerView.r rVar = this.subTabScrollListener;
                Intrinsics.e(rVar);
                safeRecyclerView3.addOnScrollListener(rVar);
            }
        } else {
            qr.x xVar2 = (qr.x) getMViewBinding();
            if (xVar2 != null && (safeRecyclerView = xVar2.f70191b) != null) {
                safeRecyclerView.addOnScrollListener(new f());
            }
        }
        qr.x xVar3 = (qr.x) getMViewBinding();
        if (xVar3 == null || (safeRecyclerView2 = xVar3.f70191b) == null) {
            return;
        }
        safeRecyclerView2.post(new Runnable() {
            @Override
            public final void run() {
                ShortTVDiscoverFragment.Q0(this.f52259a);
            }
        });
    }

    @Override
    public void initViewData() {
        View view;
        Bundle arguments = getArguments();
        this.tabId = arguments != null ? arguments.getInt("tab_id") : 13;
        qr.x xVar = (qr.x) getMViewBinding();
        if (xVar != null && (view = xVar.f70195f) != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = this.statusBarHeight;
            view.setLayoutParams(bVar);
        }
        L0();
        initAd();
    }

    @Override
    public void initViewModel() {
        ShortTvViewModel shortTvViewModel;
        androidx.p009lifecycle.b0 b0VarX;
        androidx.p009lifecycle.b0 b0VarT;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "initViewModel " + this, false, 4, null);
        ShortTvViewModel shortTvViewModel2 = (ShortTvViewModel) new v0(this).a(ShortTvViewModel.class);
        this.viewModel = shortTvViewModel2;
        if (shortTvViewModel2 != null && (b0VarT = shortTvViewModel2.T()) != null) {
            b0VarT.j(this, new g(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTVDiscoverFragment.R0(this.f52255a, (ShortTVRespData) obj);
                }
            }));
        }
        ShortTvViewModel shortTvViewModel3 = this.viewModel;
        if (shortTvViewModel3 != null && (b0VarX = shortTvViewModel3.x()) != null) {
            b0VarX.j(this, new g(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTVDiscoverFragment.S0(this.f52258a, (ShortTVRespData) obj);
                }
            }));
        }
        showLoading();
        Context context = getContext();
        if (context != null && (shortTvViewModel = this.viewModel) != null) {
            shortTvViewModel.W(context);
        }
        b1();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed() && hidden) {
            this.exposureHelper.e();
            qr.x xVar = (qr.x) getMViewBinding();
            A0(xVar != null ? xVar.f70191b : null);
        }
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    @Override
    public void onPause() {
        ShortTVBannerView shortTVBannerView;
        ShortTVBannerView shortTVBannerView2;
        super.onPause();
        X0();
        this.exposureHelper.e();
        qr.x xVar = (qr.x) getMViewBinding();
        A0(xVar != null ? xVar.f70191b : null);
        q0 q0Var = this.bannerBinding;
        if (q0Var == null || (shortTVBannerView = q0Var.f70142b) == null || !shortTVBannerView.isAttachedToWindow()) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "onPause banner stopTurning", false, 4, null);
        q0 q0Var2 = this.bannerBinding;
        if (q0Var2 == null || (shortTVBannerView2 = q0Var2.f70142b) == null) {
            return;
        }
        shortTVBannerView2.stopTurning();
    }

    @Override
    public void onResume() {
        ShortTVBannerView shortTVBannerView;
        ShortTVBannerView shortTVBannerView2;
        super.onResume();
        this.bannerBrowseTime = System.currentTimeMillis();
        q0 q0Var = this.bannerBinding;
        if (q0Var == null || (shortTVBannerView = q0Var.f70142b) == null || !shortTVBannerView.isAttachedToWindow()) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "onResume banner startTurning", false, 4, null);
        q0 q0Var2 = this.bannerBinding;
        if (q0Var2 == null || (shortTVBannerView2 = q0Var2.f70142b) == null) {
            return;
        }
        shortTVBannerView2.startTurning();
    }

    @Override
    public void onStart() {
        super.onStart();
        if (isVisible() && this.isFirstStart) {
            this.isFirstStart = false;
        }
    }

    @Override
    public void retryLoadData() {
        List<Object> data;
        ShortTVTrendingAdapter shortTVTrendingAdapter = this.listAdapter;
        if (shortTVTrendingAdapter != null && (data = shortTVTrendingAdapter.getData()) != null && data.size() == 0) {
            showLoading();
            b1();
            return;
        }
        ShortTVTrendingAdapter shortTVTrendingAdapter2 = this.listAdapter;
        if (shortTVTrendingAdapter2 == null || shortTVTrendingAdapter2.h0().i() != LoadMoreStatus.Fail) {
            return;
        }
        shortTVTrendingAdapter2.h0().w();
    }
}
