package com.transsion.room.sub.fragment.subscription;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.report.g;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.room.sub.adapter.subscription.a;
import com.transsion.room.sub.adapter.subscription.k;
import com.transsion.room.sub.bean.subscription.ItemTrending;
import com.transsion.room.sub.bean.subscription.PagerTrending;
import com.transsion.room.sub.bean.subscription.SubscriptionFeedBean;
import com.transsion.room.sub.bean.subscription.SubscriptionStatsBean;
import com.transsion.room.sub.bean.subscription.TopicItemTrending;
import com.transsion.room.sub.bean.subscription.UgcTrendingHomeBean;
import com.transsion.room.sub.fragment.subscription.SubscriptionFragment;
import com.transsion.room.sub.view.SubscriptionLoadMoreView;
import com.transsion.room.sub.viewmodel.likes.UgcLikesViewModel;
import com.transsion.room.sub.viewmodel.subscription.SubscriptionFeedListViewModel;
import com.transsion.room.sub.viewmodel.subscription.SubscriptionViewModel;
import com.transsion.room.sub.viewmodel.subscription.UgcTrendingHomeViewModel;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fp.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import qi.h;
import r6.f;
import yg.l;

@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 \u009d\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0003=\u009e\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\u0007J\u000f\u0010\r\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0007J\u000f\u0010\u0010\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u0007J\u000f\u0010\u0011\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u0007J\u001d\u0010\u0015\u001a\u00020\u000b2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u000b2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u0016J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u000bH\u0002¢\u0006\u0004\b \u0010\u0007J\u0019\u0010#\u001a\u00020\u000b2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b#\u0010$J!\u0010(\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u00182\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u000bH\u0002¢\u0006\u0004\b*\u0010\u0007J\u000f\u0010+\u001a\u00020\u000bH\u0002¢\u0006\u0004\b+\u0010\u0007J\u0017\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020!H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u000bH\u0016¢\u0006\u0004\b2\u0010\u0007J\u000f\u00103\u001a\u00020\u000bH\u0016¢\u0006\u0004\b3\u0010\u0007J\u000f\u00104\u001a\u00020\u000bH\u0016¢\u0006\u0004\b4\u0010\u0007J\u000f\u00105\u001a\u00020\u000bH\u0016¢\u0006\u0004\b5\u0010\u0007J\u000f\u00106\u001a\u00020\u000bH\u0016¢\u0006\u0004\b6\u0010\u0007J\u001f\u00109\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\b2\u0006\u00108\u001a\u00020!H\u0016¢\u0006\u0004\b9\u0010:J\u0019\u0010;\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010=\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0018H\u0016¢\u0006\u0004\b=\u0010<J#\u0010?\u001a\u00020\u000b2\b\u00108\u001a\u0004\u0018\u00010!2\b\u0010>\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b?\u0010@J\u0019\u0010A\u001a\u00020\u000b2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\bA\u0010$J\u0019\u0010B\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\bB\u0010<J\u0017\u0010E\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u000bH\u0016¢\u0006\u0004\bG\u0010\u0007J\u0017\u0010H\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bH\u0010FJ\u000f\u0010I\u001a\u00020\u000bH\u0016¢\u0006\u0004\bI\u0010\u0007J\u0017\u0010K\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\bH\u0016¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u00020\u000bH\u0016¢\u0006\u0004\bM\u0010\u0007J\u000f\u0010N\u001a\u00020\u000bH\u0016¢\u0006\u0004\bN\u0010\u0007J\u000f\u0010P\u001a\u00020OH\u0016¢\u0006\u0004\bP\u0010QJ\u000f\u0010R\u001a\u00020\u000bH\u0016¢\u0006\u0004\bR\u0010\u0007J\u000f\u0010S\u001a\u00020\u000bH\u0016¢\u0006\u0004\bS\u0010\u0007R\u0018\u0010U\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010TR\u0018\u0010V\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010TR\u0018\u0010Y\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010[\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010XR\u0016\u0010a\u001a\u00020^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0016\u0010d\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0016\u0010f\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010cR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010l\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010iR\u0018\u0010o\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010r\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010cR\u0016\u0010v\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010cR\u0016\u0010z\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0018\u0010~\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001c\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b;\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R#\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0092\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0093\u0001\u0010\u0094\u0001\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001R\u0017\u0010\u0098\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010cR\u0018\u0010\u009a\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0099\u0001\u0010TR\u0018\u0010\u009c\u0001\u001a\u00020^8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009b\u0001\u0010`¨\u0006\u009f\u0001"}, d2 = {"Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lfp/t;", "Lcom/transsion/room/sub/adapter/subscription/a;", "Lqx/b;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "S0", "()Z", "", "K0", "E0", "Q0", "V0", "L0", "T0", "", "Lcom/transsion/room/sub/bean/subscription/ItemTrending;", "feedItems", "a1", "(Ljava/util/List;)V", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "Z0", "Lcom/transsion/room/sub/adapter/subscription/k;", "N0", "()Lcom/transsion/room/sub/adapter/subscription/k;", "Lcom/transsion/room/sub/adapter/subscription/c;", "F0", "()Lcom/transsion/room/sub/adapter/subscription/c;", "I0", "", "userId", "z0", "(Ljava/lang/String;)V", WebConstants.FIELD_ITEM, "", "bottomFragmentIndex", "C0", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V", "Y0", "y0", "Landroid/view/LayoutInflater;", "inflater", "B0", "(Landroid/view/LayoutInflater;)Lfp/t;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "loadDefaultData", "initViewData", "initViewModel", "initListener", "retryLoadData", "isLike", "ugcVideoId", "w", "(ZLjava/lang/String;)V", "t", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "a", CampaignEx.JSON_KEY_TITLE, "I", "(Ljava/lang/String;Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "E", "Lcom/transsnet/loginapi/bean/UserInfo;", "user", "onLogin", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "onLogout", "onUpdateUserInfo", "onPause", "hidden", "onHiddenChanged", "(Z)V", "onResume", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "logResume", "logPause", "Ljava/lang/String;", "cursorFeed", "pageNext", "c", "Ljava/lang/Boolean;", "isFirstFeedDataRequest", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "hasMoreFeedData", "e", "hasMoreUgcHomeData", "", "f", "J", "firstLoadStartTimeMillis", "g", "Z", "hasFollowings", "h", "isLoginRefresh", "Lbj/b;", "i", "Lbj/b;", "mExposureHelper", "j", "mExposureRecommendHelper", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/room/sub/adapter/subscription/c;", "sFeedAdapter", "l", "Lcom/transsion/room/sub/adapter/subscription/k;", "sFeedTrendingAdapter", "m", "isLoading", "n", "isUgcTrendingHomeLoading", "Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;", "o", "Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;", "mCurrentTab", "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;", TtmlNode.TAG_P, "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;", "viewModel", "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;", "feedListViewModel", "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;", "ugcLikesViewModel", "Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;", "s", "Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;", "ugcHomeViewModel", "Lcom/transsion/room/sub/viewmodel/subscription/a;", "Lcom/transsion/room/sub/viewmodel/subscription/a;", "subUnsubViewModel", "Lcom/transsion/share/share/ShareDialogFragment;", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/share/share/ShareDialogFragment;", "shareDialog", "Lqx/a;", "v", "Lkotlin/Lazy;", "getLoginApi", "()Lqx/a;", "loginApi", "isSelf", "x", "pageFrom", "y", "resumeTimeStamp", "z", "TabType", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubscriptionFragment extends PageStatusFragment<t> implements a, qx.b, g {

    public static final Companion INSTANCE = new Companion(null);

    private String cursorFeed;

    private String pageNext;

    private Boolean isFirstFeedDataRequest;

    private Boolean hasMoreFeedData;

    private Boolean hasMoreUgcHomeData;

    private long firstLoadStartTimeMillis;

    private boolean hasFollowings;

    private boolean isLoginRefresh;

    private bj.b mExposureHelper;

    private bj.b mExposureRecommendHelper;

    private com.transsion.room.sub.adapter.subscription.c sFeedAdapter;

    private k sFeedTrendingAdapter;

    private boolean isLoading;

    private boolean isUgcTrendingHomeLoading;

    private TabType mCurrentTab;

    private SubscriptionViewModel viewModel;

    private SubscriptionFeedListViewModel feedListViewModel;

    private UgcLikesViewModel ugcLikesViewModel;

    private UgcTrendingHomeViewModel ugcHomeViewModel;

    private com.transsion.room.sub.viewmodel.subscription.a subUnsubViewModel;

    private ShareDialogFragment shareDialog;

    private final Lazy loginApi;

    private boolean isSelf;

    private String pageFrom;

    private long resumeTimeStamp;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;", "", "apiValue", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getApiValue", "()Ljava/lang/String;", "FOR_U", "LATEST", "HOTTEST", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum TabType {
        FOR_U("ForYou"),
        LATEST("Latest"),
        HOTTEST("New");

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String apiValue;

        TabType(String str) {
            this.apiValue = str;
        }

        public static EnumEntries<TabType> getEntries() {
            return $ENTRIES;
        }

        public final String getApiValue() {
            return this.apiValue;
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubscriptionFragment a() {
            Bundle bundle = new Bundle();
            SubscriptionFragment subscriptionFragment = new SubscriptionFragment();
            subscriptionFragment.setArguments(bundle);
            return subscriptionFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements bj.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            String ugcVideoId;
            UGCVideoBelongToCollection belongToCollection;
            String collectionId;
            com.transsion.room.sub.adapter.subscription.c cVar = SubscriptionFragment.this.sFeedAdapter;
            if (cVar == null || (data = cVar.getData()) == null) {
                return;
            }
            int size = data.size();
            SubscriptionFragment subscriptionFragment = SubscriptionFragment.this;
            if (subscriptionFragment.hasFollowings) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Subscription曝光的位置position: ");
                sb2.append(i10);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Subscription曝光的位置duration: ");
                sb3.append(j10);
                if (i10 >= size) {
                    return;
                }
                com.transsion.room.sub.adapter.subscription.c cVar2 = subscriptionFragment.sFeedAdapter;
                UGCVideo uGCVideo = cVar2 != null ? (UGCVideo) cVar2.getItem(i10) : null;
                HashMap map = new HashMap();
                map.put("item_type", "subscription");
                map.put("module_name", WebConstants.FIELD_ITEM);
                map.put("ops", String.valueOf(uGCVideo != null ? uGCVideo.getOps() : null));
                map.put(RequestParameters.POSITION, String.valueOf(i10));
                map.put("refer_subject_id", String.valueOf(uGCVideo != null ? uGCVideo.getSubjectId() : null));
                map.put("content_type", "ugc_video");
                String str = "";
                if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
                    ugcVideoId = "";
                }
                map.put("content_id", ugcVideoId);
                map.put("browse_duration", String.valueOf(j10));
                if (uGCVideo != null && (belongToCollection = uGCVideo.getBelongToCollection()) != null && (collectionId = belongToCollection.getCollectionId()) != null) {
                    str = collectionId;
                }
                map.put("belong_to_collection_id", str);
                com.transsion.baselib.helper.a.f42121a.e("/subscription/subscription", map);
            }
        }
    }

    public static final class c implements bj.a {
        c() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            String ugcVideoId;
            TopicItemTrending content;
            UGCVideo video;
            UGCVideoBelongToCollection belongToCollection;
            String collectionId;
            TopicItemTrending content2;
            UGCVideo video2;
            TopicItemTrending content3;
            UGCVideo video3;
            TopicItemTrending content4;
            UGCVideo video4;
            k kVar = SubscriptionFragment.this.sFeedTrendingAdapter;
            if (kVar == null || (data = kVar.getData()) == null) {
                return;
            }
            int size = data.size();
            SubscriptionFragment subscriptionFragment = SubscriptionFragment.this;
            if (subscriptionFragment.hasFollowings) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Recommend曝光的位置position: ");
            sb2.append(i10);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Recommend曝光的位置duration: ");
            sb3.append(j10);
            if (i10 >= size) {
                return;
            }
            k kVar2 = subscriptionFragment.sFeedTrendingAdapter;
            String subjectId = null;
            ItemTrending itemTrending = kVar2 != null ? (ItemTrending) kVar2.getItem(i10) : null;
            HashMap map = new HashMap();
            map.put("item_type", "recommend");
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put("ops", String.valueOf((itemTrending == null || (content4 = itemTrending.getContent()) == null || (video4 = content4.getVideo()) == null) ? null : video4.getOps()));
            map.put(RequestParameters.POSITION, String.valueOf(i10));
            if (itemTrending != null && (content3 = itemTrending.getContent()) != null && (video3 = content3.getVideo()) != null) {
                subjectId = video3.getSubjectId();
            }
            map.put("refer_subject_id", String.valueOf(subjectId));
            map.put("content_type", "ugc_video");
            map.put("browse_duration", String.valueOf(j10));
            String str = "";
            if (itemTrending == null || (content2 = itemTrending.getContent()) == null || (video2 = content2.getVideo()) == null || (ugcVideoId = video2.getUgcVideoId()) == null) {
                ugcVideoId = "";
            }
            map.put("content_id", ugcVideoId);
            if (itemTrending != null && (content = itemTrending.getContent()) != null && (video = content.getVideo()) != null && (belongToCollection = video.getBelongToCollection()) != null && (collectionId = belongToCollection.getCollectionId()) != null) {
                str = collectionId;
            }
            map.put("belong_to_collection_id", str);
            com.transsion.baselib.helper.a.f42121a.e("/subscription/subscription", map);
        }
    }

    public static final class d implements com.transsion.share.share.a {
        d() {
        }

        @Override
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override
        public void b(String str) {
        }

        @Override
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
        }

        @Override
        public void d(String id2) {
            Intrinsics.h(id2, "id");
        }

        @Override
        public void e(String str) {
            com.transsion.share.share.a.C0627a.c(this, str);
        }
    }

    static final class e implements c0, FunctionAdapter {

        private final Function1 f49746a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49746a = function;
        }

        @Override
        public final Function a() {
            return this.f49746a;
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
            this.f49746a.invoke(obj);
        }
    }

    public SubscriptionFragment() {
        Boolean bool = Boolean.FALSE;
        this.isFirstFeedDataRequest = bool;
        this.hasMoreFeedData = bool;
        this.hasMoreUgcHomeData = bool;
        this.mCurrentTab = TabType.HOTTEST;
        this.loginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return SubscriptionFragment.X0();
            }
        });
        this.pageFrom = "";
    }

    public static final Unit A0(SubscriptionFragment subscriptionFragment, SubscriptionStatsBean subscriptionStatsBean) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        if (subscriptionStatsBean == null && !l.f76264a.e()) {
            subscriptionFragment.showNoNetworkView(false);
        }
        Integer followingCount = subscriptionStatsBean != null ? subscriptionStatsBean.getFollowingCount() : null;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "followingCount ：" + followingCount, false, 4, null);
        if (followingCount != null) {
            if (followingCount.intValue() > 0) {
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "有订阅，走订阅接口", false, 4, null);
                subscriptionFragment.hasFollowings = true;
                if (subscriptionFragment.isLoginRefresh) {
                    SubscriptionFeedListViewModel subscriptionFeedListViewModel = subscriptionFragment.feedListViewModel;
                    if (subscriptionFeedListViewModel != null) {
                        subscriptionFeedListViewModel.i();
                    }
                } else {
                    subscriptionFragment.isFirstFeedDataRequest = Boolean.TRUE;
                    subscriptionFragment.T0();
                    t mViewBinding = subscriptionFragment.getMViewBinding();
                    if (mViewBinding != null && (recyclerView2 = mViewBinding.f60441c) != null) {
                        recyclerView2.setAdapter(subscriptionFragment.sFeedAdapter);
                    }
                }
            } else {
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "无订阅，走推荐接口", false, 4, null);
                subscriptionFragment.hasFollowings = false;
                if (subscriptionFragment.isLoginRefresh) {
                    UgcTrendingHomeViewModel ugcTrendingHomeViewModel = subscriptionFragment.ugcHomeViewModel;
                    if (ugcTrendingHomeViewModel != null) {
                        ugcTrendingHomeViewModel.i();
                    }
                } else {
                    subscriptionFragment.V0();
                }
                t mViewBinding2 = subscriptionFragment.getMViewBinding();
                if (mViewBinding2 != null && (recyclerView = mViewBinding2.f60441c) != null) {
                    recyclerView.setAdapter(subscriptionFragment.sFeedTrendingAdapter);
                }
            }
            subscriptionFragment.isLoginRefresh = false;
        }
        return Unit.f64096a;
    }

    private final void C0(UGCVideo item, final int bottomFragmentIndex) {
        if (item != null) {
            hu.b.a(item, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SubscriptionFragment.D0(bottomFragmentIndex, (Navigator) obj);
                }
            });
        }
    }

    public static final Navigator D0(int i10, Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return navigator.F("ugc_bottom_fragment_selected", i10);
    }

    private final void E0() {
        RecyclerView recyclerView;
        if (this.mExposureHelper == null) {
            bj.b bVar = new bj.b(0.6f, new b(), false, 4, null);
            t mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f60441c) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
            this.mExposureHelper = bVar;
        }
    }

    private final com.transsion.room.sub.adapter.subscription.c F0() {
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "initFeedAdapter", false, 4, null);
        com.transsion.room.sub.adapter.subscription.c cVar = new com.transsion.room.sub.adapter.subscription.c(new ArrayList(), this.mExposureHelper, false);
        cVar.h0().z(true);
        cVar.h0().y(true);
        cVar.h0().E(2);
        cVar.h0().C(new SubscriptionLoadMoreView());
        cVar.h0().D(new f() {
            @Override
            public final void a() {
                SubscriptionFragment.G0(this.f66670a);
            }
        });
        this.sFeedAdapter = cVar;
        cVar.Q1(this);
        return this.sFeedAdapter;
    }

    public static final void G0(final SubscriptionFragment subscriptionFragment) {
        RecyclerView recyclerView;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "initSubscriptionListAdapter: trigger", false, 4, null);
        if (!l.f76264a.e()) {
            wf.a.C0922a.z(c0922a, "SubscriptionFragment", "initSubscriptionListAdapter: no network, load more failed", false, 4, null);
            t mViewBinding = subscriptionFragment.getMViewBinding();
            if (mViewBinding == null || (recyclerView = mViewBinding.f60441c) == null) {
                return;
            }
            recyclerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    SubscriptionFragment.H0(this.f66663a);
                }
            }, 300L);
            return;
        }
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "initSubscriptionListAdapter: trigger load more", false, 4, null);
        String str = subscriptionFragment.cursorFeed;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sub observe cursorFeed : ");
        sb2.append(str);
        SubscriptionFeedListViewModel subscriptionFeedListViewModel = subscriptionFragment.feedListViewModel;
        if (subscriptionFeedListViewModel != null) {
            subscriptionFeedListViewModel.h(subscriptionFragment.cursorFeed);
        }
    }

    public static final void H0(SubscriptionFragment subscriptionFragment) {
        t6.f fVarH0;
        com.transsion.room.sub.adapter.subscription.c cVar = subscriptionFragment.sFeedAdapter;
        if (cVar == null || (fVarH0 = cVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void I0() {
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        wf.a.C0922a.f(wf.a.f74274a, "Subscription", "initFeedListRecyclerView", false, 4, null);
        t mViewBinding = getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f60442d) != null) {
            swipeRefreshLayout.setEnabled(true);
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    SubscriptionFragment.J0(this.f66666a);
                }
            });
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(1);
        linearLayoutManager.setInitialPrefetchItemCount(2);
        E0();
        K0();
        bj.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.f();
        }
        bj.b bVar2 = this.mExposureRecommendHelper;
        if (bVar2 != null) {
            bVar2.f();
        }
        t mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView = mViewBinding2.f60441c) != null) {
            recyclerView.setLayoutManager(linearLayoutManager);
        }
        this.sFeedAdapter = F0();
        this.sFeedTrendingAdapter = N0();
    }

    public static final void J0(SubscriptionFragment subscriptionFragment) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "initRecyclerView: user pull to refresh", false, 4, null);
        if (!subscriptionFragment.hasFollowings) {
            wf.a.C0922a.f(c0922a, "SubscriptionFragment", "initRecyclerView: user pull to refresh 没有关注", false, 4, null);
            subscriptionFragment.Y0();
            return;
        }
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "initRecyclerView: user pull to refresh 关注", false, 4, null);
        SubscriptionFeedListViewModel subscriptionFeedListViewModel = subscriptionFragment.feedListViewModel;
        if (subscriptionFeedListViewModel != null) {
            subscriptionFeedListViewModel.i();
        }
    }

    private final void K0() {
        RecyclerView recyclerView;
        if (this.mExposureRecommendHelper == null) {
            bj.b bVar = new bj.b(0.6f, new c(), false, 4, null);
            t mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f60441c) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
            this.mExposureRecommendHelper = bVar;
        }
    }

    private final void L0() {
        b0 b0VarE;
        SubscriptionFeedListViewModel subscriptionFeedListViewModel = this.feedListViewModel;
        if (subscriptionFeedListViewModel == null || (b0VarE = subscriptionFeedListViewModel.e()) == null) {
            return;
        }
        b0VarE.j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubscriptionFragment.M0(this.f66667a, (SubscriptionFeedBean) obj);
            }
        }));
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0213  */
    public static final Unit M0(SubscriptionFragment subscriptionFragment, SubscriptionFeedBean subscriptionFeedBean) {
        List<UGCVideo> feedItems;
        t6.f fVarH0;
        SwipeRefreshLayout swipeRefreshLayout;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<UGCVideo> feedItems2;
        List<Object> data;
        t mViewBinding;
        RecyclerView recyclerView3;
        List<Object> data2;
        t6.f fVarH1;
        List<Object> data3;
        t6.f fVarH2;
        t6.f fVarH3;
        subscriptionFragment.y0();
        subscriptionFragment.showContentView();
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "sub observe start", false, 4, null);
        subscriptionFragment.hasMoreFeedData = subscriptionFeedBean != null ? Boolean.valueOf(subscriptionFeedBean.getHasMore()) : null;
        subscriptionFragment.cursorFeed = subscriptionFeedBean != null ? subscriptionFeedBean.getNextCursor() : null;
        SubscriptionFeedListViewModel subscriptionFeedListViewModel = subscriptionFragment.feedListViewModel;
        Boolean boolValueOf = subscriptionFeedListViewModel != null ? Boolean.valueOf(subscriptionFeedListViewModel.g()) : null;
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "hasMoreFeedData " + subscriptionFragment.hasMoreFeedData, false, 4, null);
        com.transsion.room.sub.adapter.subscription.c cVar = subscriptionFragment.sFeedAdapter;
        if (cVar != null && (fVarH2 = cVar.h0()) != null && fVarH2.r()) {
            wf.a.C0922a.f(c0922a, "SubscriptionFragment", "sub observe loadMoreComplete", false, 4, null);
            com.transsion.room.sub.adapter.subscription.c cVar2 = subscriptionFragment.sFeedAdapter;
            if (cVar2 != null && (fVarH3 = cVar2.h0()) != null) {
                fVarH3.s();
            }
        }
        if ((subscriptionFeedBean != null ? subscriptionFeedBean.getFeedItems() : null) != null) {
            List<UGCVideo> feedItems3 = subscriptionFeedBean.getFeedItems();
            Integer numValueOf = feedItems3 != null ? Integer.valueOf(feedItems3.size()) : null;
            com.transsion.room.sub.adapter.subscription.c cVar3 = subscriptionFragment.sFeedAdapter;
            Integer numValueOf2 = (cVar3 == null || (data3 = cVar3.getData()) == null) ? null : Integer.valueOf(data3.size());
            wf.a.C0922a.f(c0922a, "SubscriptionFragment", "subscriptionFeedBean: received " + numValueOf + " items, currentListSize=" + numValueOf2 + ", hasMore=" + subscriptionFeedBean.getHasMore(), false, 4, null);
            Boolean bool = Boolean.TRUE;
            if (!Intrinsics.c(boolValueOf, bool) && !Intrinsics.c(subscriptionFragment.hasMoreFeedData, bool)) {
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "subscriptionFeedBean: no more data, load more end", false, 4, null);
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "sub observe loadMoreEnd", false, 4, null);
                com.transsion.room.sub.adapter.subscription.c cVar4 = subscriptionFragment.sFeedAdapter;
                if (cVar4 != null && (fVarH1 = cVar4.h0()) != null) {
                    t6.f.u(fVarH1, false, 1, null);
                }
            }
            com.transsion.room.sub.adapter.subscription.c cVar5 = subscriptionFragment.sFeedAdapter;
            if (cVar5 != null && (data2 = cVar5.getData()) != null && data2.isEmpty() && numValueOf != null && numValueOf.intValue() == 0) {
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "subscriptionFeedBean: empty data", false, 4, null);
            } else if (numValueOf != null && numValueOf.intValue() > 0) {
                if (Intrinsics.c(boolValueOf, bool) && (mViewBinding = subscriptionFragment.getMViewBinding()) != null && (recyclerView3 = mViewBinding.f60441c) != null) {
                    recyclerView3.setAdapter(subscriptionFragment.sFeedAdapter);
                }
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "sub observe updateData", false, 4, null);
                subscriptionFragment.Z0(subscriptionFeedBean.getFeedItems());
                qi.b logViewConfig = subscriptionFragment.getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
            }
        }
        com.transsion.room.sub.adapter.subscription.c cVar6 = subscriptionFragment.sFeedAdapter;
        if ((cVar6 == null || (data = cVar6.getData()) == null || data.size() != 0) && !Intrinsics.c(boolValueOf, Boolean.TRUE)) {
            wf.a.C0922a.f(c0922a, "loadMoreModule", "hasMoreFeedData " + subscriptionFragment.hasMoreFeedData, false, 4, null);
            if ((subscriptionFeedBean != null ? subscriptionFeedBean.getFeedItems() : null) != null && (((feedItems = subscriptionFeedBean.getFeedItems()) == null || feedItems.size() != 0) && Intrinsics.c(subscriptionFragment.hasMoreFeedData, Boolean.FALSE))) {
                wf.a.C0922a.f(c0922a, "loadMoreModule", "subscriptionFeedBean: no more data, load more end", false, 4, null);
                com.transsion.room.sub.adapter.subscription.c cVar7 = subscriptionFragment.sFeedAdapter;
                if (cVar7 != null && (fVarH0 = cVar7.h0()) != null) {
                    t6.f.u(fVarH0, false, 1, null);
                }
            }
        } else {
            if ((subscriptionFeedBean != null ? subscriptionFeedBean.getFeedItems() : null) == null || ((feedItems2 = subscriptionFeedBean.getFeedItems()) != null && feedItems2.size() == 0)) {
                Boolean bool2 = subscriptionFragment.hasMoreFeedData;
                Boolean bool3 = Boolean.FALSE;
                if (Intrinsics.c(bool2, bool3)) {
                    Boolean bool4 = subscriptionFragment.isFirstFeedDataRequest;
                    Boolean bool5 = Boolean.TRUE;
                    if (Intrinsics.c(bool4, bool5) && !Intrinsics.c(boolValueOf, bool5)) {
                        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "sub observe loadUgcTrendingHomeData", false, 4, null);
                        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "发送推荐接口的请求", false, 4, null);
                        subscriptionFragment.hasFollowings = false;
                        subscriptionFragment.V0();
                        subscriptionFragment.isFirstFeedDataRequest = bool3;
                        t mViewBinding2 = subscriptionFragment.getMViewBinding();
                        if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f60441c) != null) {
                            recyclerView2.setAdapter(subscriptionFragment.sFeedTrendingAdapter);
                        }
                    } else if (Intrinsics.c(subscriptionFragment.isFirstFeedDataRequest, bool3) && Intrinsics.c(boolValueOf, bool5)) {
                        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "sub observe UgcTrending refresh", false, 4, null);
                        subscriptionFragment.hasFollowings = false;
                        UgcTrendingHomeViewModel ugcTrendingHomeViewModel = subscriptionFragment.ugcHomeViewModel;
                        if (ugcTrendingHomeViewModel != null) {
                            ugcTrendingHomeViewModel.i();
                        }
                        t mViewBinding3 = subscriptionFragment.getMViewBinding();
                        if (mViewBinding3 != null && (recyclerView = mViewBinding3.f60441c) != null) {
                            recyclerView.setAdapter(subscriptionFragment.sFeedTrendingAdapter);
                        }
                    }
                } else {
                    wf.a.C0922a.f(c0922a, "SubscriptionFragment", "订阅请求有数据，不发送推荐接口的请求", false, 4, null);
                }
            } else {
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "订阅请求有数据，不发送推荐接口的请求", false, 4, null);
            }
        }
        subscriptionFragment.isLoading = false;
        t mViewBinding4 = subscriptionFragment.getMViewBinding();
        if (mViewBinding4 != null && (swipeRefreshLayout = mViewBinding4.f60442d) != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
        return Unit.f64096a;
    }

    private final k N0() {
        k kVar = new k(new ArrayList(), this.mExposureRecommendHelper, false);
        kVar.h0().z(true);
        kVar.h0().y(true);
        kVar.h0().E(2);
        kVar.h0().C(new SubscriptionLoadMoreView());
        kVar.h0().D(new f() {
            @Override
            public final void a() {
                SubscriptionFragment.O0(this.f66669a);
            }
        });
        this.sFeedTrendingAdapter = kVar;
        kVar.Q1(this);
        return this.sFeedTrendingAdapter;
    }

    public static final void O0(final SubscriptionFragment subscriptionFragment) {
        RecyclerView recyclerView;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "initSubscriptionListAdapter: trigger ", false, 4, null);
        if (!l.f76264a.e()) {
            wf.a.C0922a.z(c0922a, "SubscriptionFragment", "initSubscriptionListAdapter: no network, load more failed", false, 4, null);
            t mViewBinding = subscriptionFragment.getMViewBinding();
            if (mViewBinding == null || (recyclerView = mViewBinding.f60441c) == null) {
                return;
            }
            recyclerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    SubscriptionFragment.P0(this.f66664a);
                }
            }, 300L);
            return;
        }
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "initSubscriptionListAdapter: trigger load more", false, 4, null);
        String str = subscriptionFragment.pageNext;
        Integer numValueOf = str != null ? Integer.valueOf(Integer.parseInt(str)) : null;
        UgcTrendingHomeViewModel ugcTrendingHomeViewModel = subscriptionFragment.ugcHomeViewModel;
        if (ugcTrendingHomeViewModel != null) {
            ugcTrendingHomeViewModel.h(numValueOf);
        }
    }

    public static final void P0(SubscriptionFragment subscriptionFragment) {
        t6.f fVarH0;
        k kVar = subscriptionFragment.sFeedTrendingAdapter;
        if (kVar == null || (fVarH0 = kVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void Q0() {
        b0 b0VarF;
        UgcTrendingHomeViewModel ugcTrendingHomeViewModel = this.ugcHomeViewModel;
        if (ugcTrendingHomeViewModel == null || (b0VarF = ugcTrendingHomeViewModel.f()) == null) {
            return;
        }
        b0VarF.j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubscriptionFragment.R0(this.f66668a, (UgcTrendingHomeBean) obj);
            }
        }));
    }

    public static final Unit R0(SubscriptionFragment subscriptionFragment, UgcTrendingHomeBean ugcTrendingHomeBean) {
        t6.f fVarH0;
        SwipeRefreshLayout swipeRefreshLayout;
        List<Object> data;
        t6.f fVarH1;
        List<Object> data2;
        t6.f fVarH2;
        t6.f fVarH3;
        List<ItemTrending> items;
        PagerTrending pager;
        PagerTrending pager2;
        subscriptionFragment.y0();
        UgcTrendingHomeViewModel ugcTrendingHomeViewModel = subscriptionFragment.ugcHomeViewModel;
        if (ugcTrendingHomeViewModel != null) {
            ugcTrendingHomeViewModel.g();
        }
        subscriptionFragment.showContentView();
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "recommend observe loadUgcTrendingHomeData", false, 4, null);
        subscriptionFragment.hasMoreUgcHomeData = (ugcTrendingHomeBean == null || (pager2 = ugcTrendingHomeBean.getPager()) == null) ? null : Boolean.valueOf(pager2.getHasMore());
        subscriptionFragment.pageNext = (ugcTrendingHomeBean == null || (pager = ugcTrendingHomeBean.getPager()) == null) ? null : pager.getNextPage();
        if (ugcTrendingHomeBean != null && (items = ugcTrendingHomeBean.getItems()) != null) {
            items.size();
        }
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "pageNext : " + subscriptionFragment.pageNext, false, 4, null);
        wf.a.C0922a.f(c0922a, "SubscriptionFragment", "hasMoreUgcHomeData " + subscriptionFragment.hasMoreUgcHomeData, false, 4, null);
        k kVar = subscriptionFragment.sFeedTrendingAdapter;
        if (kVar != null && (fVarH2 = kVar.h0()) != null && fVarH2.r()) {
            k kVar2 = subscriptionFragment.sFeedTrendingAdapter;
            if (kVar2 != null && (fVarH3 = kVar2.h0()) != null) {
                fVarH3.s();
            }
            wf.a.C0922a.f(c0922a, "SubscriptionFragment", "recommend observe loadMoreComplete", false, 4, null);
        }
        if ((ugcTrendingHomeBean != null ? ugcTrendingHomeBean.getItems() : null) != null) {
            List<ItemTrending> items2 = ugcTrendingHomeBean.getItems();
            Integer numValueOf = items2 != null ? Integer.valueOf(items2.size()) : null;
            com.transsion.room.sub.adapter.subscription.c cVar = subscriptionFragment.sFeedAdapter;
            Integer numValueOf2 = (cVar == null || (data2 = cVar.getData()) == null) ? null : Integer.valueOf(data2.size());
            wf.a.C0922a.f(c0922a, "SubscriptionFragment", "ugcTrendingHomeData: received " + numValueOf + " items, currentListSize=" + numValueOf2 + ", hasMore=" + ugcTrendingHomeBean.getPager().getHasMore(), false, 4, null);
            if (!Intrinsics.c(subscriptionFragment.hasMoreUgcHomeData, Boolean.TRUE)) {
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "ugcTrendingHomeData: no more data, load more end", false, 4, null);
                k kVar3 = subscriptionFragment.sFeedTrendingAdapter;
                if (kVar3 != null && (fVarH1 = kVar3.h0()) != null) {
                    t6.f.u(fVarH1, false, 1, null);
                }
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "recommend observe loadMoreEnd", false, 4, null);
            }
            k kVar4 = subscriptionFragment.sFeedTrendingAdapter;
            if (kVar4 == null || (data = kVar4.getData()) == null || !data.isEmpty() || numValueOf == null || numValueOf.intValue() != 0) {
                k kVar5 = subscriptionFragment.sFeedTrendingAdapter;
                if (kVar5 != null && (fVarH0 = kVar5.h0()) != null) {
                    fVarH0.s();
                }
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "recommend observe loadMoreComplete", false, 4, null);
                List<ItemTrending> items3 = ugcTrendingHomeBean.getItems();
                Intrinsics.e(items3);
                subscriptionFragment.a1(items3);
                qi.b logViewConfig = subscriptionFragment.getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
            } else {
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "subscriptionFeedBean: empty data", false, 4, null);
                wf.a.C0922a.f(c0922a, "SubscriptionFragment", "recommend observe setEmptyView", false, 4, null);
                k kVar6 = subscriptionFragment.sFeedTrendingAdapter;
                if (kVar6 != null) {
                    kVar6.Y0(subscriptionFragment.getEmptyView(false));
                }
            }
            t mViewBinding = subscriptionFragment.getMViewBinding();
            if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f60442d) != null) {
                swipeRefreshLayout.setRefreshing(false);
            }
        }
        return Unit.f64096a;
    }

    private final boolean getIsSelf() {
        return this.isSelf;
    }

    private final void T0() {
        ConstraintLayout root;
        wf.a.C0922a.f(wf.a.f74274a, "Subscription", "loadFeedData", false, 4, null);
        if (this.isLoading) {
            return;
        }
        this.isLoading = true;
        SubscriptionFeedListViewModel subscriptionFeedListViewModel = this.feedListViewModel;
        if (subscriptionFeedListViewModel != null) {
            subscriptionFeedListViewModel.f("");
        }
        t mViewBinding = getMViewBinding();
        if (mViewBinding == null || (root = mViewBinding.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() {
            @Override
            public final void run() {
                SubscriptionFragment.U0(this.f66673a);
            }
        }, 2000L);
    }

    public static final void U0(SubscriptionFragment subscriptionFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        t mViewBinding = subscriptionFragment.getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f60442d) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    private final void V0() {
        ConstraintLayout root;
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "loadUgcTrendingHomeData", false, 4, null);
        if (this.isUgcTrendingHomeLoading) {
            return;
        }
        this.isUgcTrendingHomeLoading = true;
        UgcTrendingHomeViewModel ugcTrendingHomeViewModel = this.ugcHomeViewModel;
        if (ugcTrendingHomeViewModel != null) {
            ugcTrendingHomeViewModel.e(1, this.mCurrentTab.getApiValue());
        }
        t mViewBinding = getMViewBinding();
        if (mViewBinding == null || (root = mViewBinding.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() {
            @Override
            public final void run() {
                SubscriptionFragment.W0(this.f66672a);
            }
        }, 2000L);
    }

    public static final void W0(SubscriptionFragment subscriptionFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        t mViewBinding = subscriptionFragment.getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f60442d) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    public static final qx.a X0() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void Y0() {
        this.isLoginRefresh = true;
        qx.a loginApi = getLoginApi();
        UserInfo userInfoI = loginApi != null ? loginApi.i() : null;
        String userId = userInfoI != null ? userInfoI.getUserId() : null;
        SubscriptionViewModel subscriptionViewModel = this.viewModel;
        if (subscriptionViewModel != null) {
            subscriptionViewModel.e(String.valueOf(userId));
        }
    }

    private final void Z0(List feedItems) {
        List<Object> data;
        List<Object> data2;
        com.transsion.room.sub.adapter.subscription.c cVar = this.sFeedAdapter;
        int size = 0;
        int size2 = (cVar == null || (data2 = cVar.getData()) == null) ? 0 : data2.size();
        SubscriptionFeedListViewModel subscriptionFeedListViewModel = this.feedListViewModel;
        if (Intrinsics.c(subscriptionFeedListViewModel != null ? Boolean.valueOf(subscriptionFeedListViewModel.g()) : null, Boolean.TRUE) || size2 == 0) {
            com.transsion.room.sub.adapter.subscription.c cVar2 = this.sFeedAdapter;
            if (cVar2 != null) {
                cVar2.n1(feedItems);
            }
            wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "updateData: refresh or first load, replace data. size: " + size2 + " -> " + (feedItems != null ? Integer.valueOf(feedItems.size()) : null), false, 4, null);
            return;
        }
        com.transsion.room.sub.adapter.subscription.c cVar3 = this.sFeedAdapter;
        if (cVar3 != null) {
            Intrinsics.e(feedItems);
            cVar3.q(feedItems);
        }
        com.transsion.room.sub.adapter.subscription.c cVar4 = this.sFeedAdapter;
        if (cVar4 != null && (data = cVar4.getData()) != null) {
            size = data.size();
        }
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "updateData: load more, add " + (feedItems != null ? Integer.valueOf(feedItems.size()) : null) + " items, list size: " + size2 + " -> " + size, false, 4, null);
    }

    private final void a1(List feedItems) {
        List<Object> data;
        List<Object> data2;
        k kVar = this.sFeedTrendingAdapter;
        int size = 0;
        int size2 = (kVar == null || (data2 = kVar.getData()) == null) ? 0 : data2.size();
        UgcTrendingHomeViewModel ugcTrendingHomeViewModel = this.ugcHomeViewModel;
        if (!Intrinsics.c(ugcTrendingHomeViewModel != null ? Boolean.valueOf(ugcTrendingHomeViewModel.g()) : null, Boolean.TRUE) && size2 != 0) {
            k kVar2 = this.sFeedTrendingAdapter;
            if (kVar2 != null) {
                kVar2.q(feedItems);
            }
            k kVar3 = this.sFeedTrendingAdapter;
            if (kVar3 != null && (data = kVar3.getData()) != null) {
                size = data.size();
            }
            wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "updateData: load more, add " + feedItems.size() + " items, list size: " + size2 + " -> " + size, false, 4, null);
            return;
        }
        k kVar4 = this.sFeedTrendingAdapter;
        if (kVar4 == null) {
            wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "FeedTrendingAdapter ==null", false, 4, null);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "FeedTrendingAdapter ==" + kVar4, false, 4, null);
        }
        k kVar5 = this.sFeedTrendingAdapter;
        if (kVar5 != null) {
            kVar5.n1(feedItems);
        }
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "updateData: refresh or first load, replace data. size: " + size2 + " -> " + (feedItems != null ? Integer.valueOf(feedItems.size()) : null), false, 4, null);
    }

    private final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    private final void y0() {
        HashMap mapG;
        if (this.firstLoadStartTimeMillis > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.firstLoadStartTimeMillis;
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
                return;
            }
        }
    }

    private final void z0(String userId) {
        b0 b0VarD;
        showLoadingView();
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "checkHasFollowings阶段", false, 4, null);
        SubscriptionViewModel subscriptionViewModel = this.viewModel;
        if (subscriptionViewModel != null && (b0VarD = subscriptionViewModel.d()) != null) {
            b0VarD.j(this, new e(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SubscriptionFragment.A0(this.f66665a, (SubscriptionStatsBean) obj);
                }
            }));
        }
        SubscriptionViewModel subscriptionViewModel2 = this.viewModel;
        if (subscriptionViewModel2 != null) {
            subscriptionViewModel2.e(String.valueOf(userId));
        }
    }

    @Override
    public t getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.viewModel = (SubscriptionViewModel) new v0(activity).a(SubscriptionViewModel.class);
            this.feedListViewModel = (SubscriptionFeedListViewModel) new v0(activity).a(SubscriptionFeedListViewModel.class);
            this.ugcLikesViewModel = (UgcLikesViewModel) new v0(activity).a(UgcLikesViewModel.class);
            this.subUnsubViewModel = (com.transsion.room.sub.viewmodel.subscription.a) new v0(activity).a(com.transsion.room.sub.viewmodel.subscription.a.class);
            this.ugcHomeViewModel = (UgcTrendingHomeViewModel) new v0(activity).a(UgcTrendingHomeViewModel.class);
        }
        t tVarC = t.c(getLayoutInflater());
        Intrinsics.g(tVarC, "inflate(...)");
        return tVarC;
    }

    @Override
    public void E(UGCVideo item) {
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "onClickVideoTrendingDetailItem", false, 4, null);
        if (item != null) {
            hu.b.b(item, null, 1, null);
        }
    }

    @Override
    public void I(String ugcVideoId, String title) {
        Fragment parentFragment;
        FragmentManager childFragmentManager;
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "onClickShareItem", false, 4, null);
        if (this.shareDialog == null) {
            qx.a loginApi = getLoginApi();
            UserInfo userInfoI = loginApi != null ? loginApi.i() : null;
            ShareDialogFragment shareDialogFragmentA = ShareDialogFragment.INSTANCE.a(PostType.UGC_VIDEO, ugcVideoId, userInfoI != null ? userInfoI.getUserId() : null, ReportType.UFC_VIDEO.getValue(), (3328 & 16) != 0 ? "" : title, (3328 & 32) != 0 ? "" : null, (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : false, (3328 & 256) != 0 ? false : false, "UGCVideoDetail", (3328 & 1024) != 0 ? "" : title, (3328 & 2048) != 0 ? "" : null);
            this.shareDialog = shareDialogFragmentA;
            if (shareDialogFragmentA != null) {
                shareDialogFragmentA.G0(new d());
            }
            try {
                Fragment parentFragment2 = getParentFragment();
                if (parentFragment2 != null && parentFragment2.isAdded() && (parentFragment = getParentFragment()) != null && (childFragmentManager = parentFragment.getChildFragmentManager()) != null) {
                    childFragmentManager.g0();
                    ShareDialogFragment shareDialogFragment = this.shareDialog;
                    if ((shareDialogFragment != null && shareDialogFragment.isAdded()) || childFragmentManager.k0("share") != null) {
                        return;
                    }
                    ShareDialogFragment shareDialogFragment2 = this.shareDialog;
                    if (shareDialogFragment2 != null) {
                        shareDialogFragment2.show(childFragmentManager, "share");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.shareDialog = null;
    }

    @Override
    public void a(UGCVideo item) {
        Intrinsics.h(item, "item");
        hu.b.b(item, null, 1, null);
    }

    @Override
    public void b(String userId) {
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "userId111 ：" + userId, false, 4, null);
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", userId), requireContext(), null, 2, null);
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0045  */
    @Override
    public void initViewData() {
        boolean z10;
        HashMap mapG;
        UserInfo userInfoI;
        this.firstLoadStartTimeMillis = System.currentTimeMillis();
        qx.a loginApi = getLoginApi();
        String userId = null;
        UserInfo userInfoI2 = loginApi != null ? loginApi.i() : null;
        String userId2 = userInfoI2 != null ? userInfoI2.getUserId() : null;
        if (userId2 == null || userId2.length() == 0) {
            z10 = true;
        } else {
            String userId3 = userInfoI2 != null ? userInfoI2.getUserId() : null;
            qx.a loginApi2 = getLoginApi();
            if (loginApi2 != null && (userInfoI = loginApi2.i()) != null) {
                userId = userInfoI.getUserId();
            }
            if (Intrinsics.c(userId3, userId)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        this.isSelf = z10;
        if (getIsSelf()) {
            wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "isSelf : true", false, 4, null);
            qx.a loginApi3 = getLoginApi();
            if (loginApi3 != null) {
                loginApi3.e(this);
            }
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "isSelf : false", false, 4, null);
        }
        I0();
        if (this.pageFrom.length() == 0) {
            this.pageFrom = h.f69682a.h();
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override
    public void initViewModel() {
        L0();
        Q0();
    }

    @Override
    public void loadDefaultData() {
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "loadDefaultData阶段", false, 4, null);
        qx.a loginApi = getLoginApi();
        UserInfo userInfoI = loginApi != null ? loginApi.i() : null;
        z0(userInfoI != null ? userInfoI.getUserId() : null);
    }

    @Override
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.resumeTimeStamp;
            wf.a.C0922a.r(wf.a.f74274a, "Report", new String[]{"Subscription fb log duration:" + jElapsedRealtime}, false, 4, null);
            com.transsion.baselib.report.e.f42196a.n("Subscription", Long.valueOf(jElapsedRealtime), getContext());
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("/subscription/subscription", false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        qx.a loginApi = getLoginApi();
        if (loginApi != null) {
            loginApi.j(this);
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    @Override
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        qx.b.a.a(this, user);
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "onLogin阶段", false, 4, null);
        Y0();
    }

    @Override
    public void onLogout() {
        qx.b.a.b(this);
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "onLogout阶段", false, 4, null);
        Y0();
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onUpdateUserInfo(UserInfo user) {
        Intrinsics.h(user, "user");
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "onUpdateUserInfo阶段", false, 4, null);
    }

    @Override
    public void retryLoadData() {
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "retryLoadData阶段", false, 4, null);
        qx.a loginApi = getLoginApi();
        UserInfo userInfoI = loginApi != null ? loginApi.i() : null;
        z0(userInfoI != null ? userInfoI.getUserId() : null);
    }

    @Override
    public void t(UGCVideo item) {
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "onClickCommentReply", false, 4, null);
        C0(item, 1);
    }

    @Override
    public void w(boolean isLike, String ugcVideoId) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        wf.a.C0922a.f(wf.a.f74274a, "SubscriptionFragment", "onClickCommentLike", false, 4, null);
        UgcLikesViewModel ugcLikesViewModel = this.ugcLikesViewModel;
        if (ugcLikesViewModel != null) {
            ugcLikesViewModel.j(ugcVideoId, isLike);
        }
    }
}
