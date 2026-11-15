package com.transsnet.downloader.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.drawable.DrawableCreator;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLFrameLayout;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.DownloadResolutionItem;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.DubsInfoData;
import com.transsion.moviedetailapi.bean.ResolutionItem;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.view.DownloadMovieAdView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.manager.StartDownloadHelper;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.transsnet.downloader.widget.DownloadGridTabView;
import com.transsnet.downloader.widget.DownloadResolutionTabView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 ¥\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002¦\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001f\u0010\u0004J\u0019\u0010\"\u001a\u00020\u00052\b\u0010!\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b\"\u0010#J#\u0010'\u001a\b\u0012\u0004\u0012\u00020%0$2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$H\u0002¢\u0006\u0004\b'\u0010(J%\u0010+\u001a\u00020\u00052\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010*\u001a\u00020)H\u0002¢\u0006\u0004\b+\u0010,J%\u00100\u001a\u00020\u00052\f\u0010.\u001a\b\u0012\u0004\u0012\u00020-0$2\u0006\u0010/\u001a\u00020)H\u0002¢\u0006\u0004\b0\u0010,J\u000f\u00101\u001a\u00020\u0005H\u0002¢\u0006\u0004\b1\u0010\u0004J\u000f\u00102\u001a\u00020\u0005H\u0002¢\u0006\u0004\b2\u0010\u0004JI\u00108\u001a\u00020\u00052\u0006\u00103\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\b\u00104\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u00105\u001a\u0004\u0018\u00010)2\b\b\u0002\u00106\u001a\u00020)2\b\b\u0002\u00107\u001a\u00020\u0013H\u0002¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u0005H\u0002¢\u0006\u0004\b:\u0010\u0004J)\u0010<\u001a\u00020;2\u0006\u00103\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\b\b\u0002\u00107\u001a\u00020\u0013H\u0002¢\u0006\u0004\b<\u0010=J%\u0010A\u001a\u00020\u00052\f\u0010?\u001a\b\u0012\u0004\u0012\u00020>0$2\u0006\u0010@\u001a\u00020\u0013H\u0002¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\u0005H\u0002¢\u0006\u0004\bC\u0010\u0004J\u000f\u0010D\u001a\u00020\u0005H\u0002¢\u0006\u0004\bD\u0010\u0004J\u000f\u0010E\u001a\u00020\u0005H\u0002¢\u0006\u0004\bE\u0010\u0004J\u000f\u0010F\u001a\u00020\u0005H\u0002¢\u0006\u0004\bF\u0010\u0004JQ\u0010N\u001a\u00020\u00052\b\u0010G\u001a\u0004\u0018\u00010\u00102\u0006\u0010H\u001a\u00020\u00102\b\u0010I\u001a\u0004\u0018\u00010\u00102\b\u0010J\u001a\u0004\u0018\u00010\u00102\b\u0010K\u001a\u0004\u0018\u00010\u00102\b\u0010L\u001a\u0004\u0018\u00010\u00102\u0006\u0010M\u001a\u00020\u0010H\u0002¢\u0006\u0004\bN\u0010OJ\u0017\u0010P\u001a\u00020\u00052\u0006\u00103\u001a\u00020)H\u0002¢\u0006\u0004\bP\u0010QJ\u001d\u0010T\u001a\u00020\u00052\f\u0010S\u001a\b\u0012\u0004\u0012\u00020R0$H\u0002¢\u0006\u0004\bT\u0010UJ\u000f\u0010V\u001a\u00020\u0005H\u0002¢\u0006\u0004\bV\u0010\u0004J\u0017\u0010X\u001a\u00020\u00052\u0006\u0010W\u001a\u00020\u0010H\u0002¢\u0006\u0004\bX\u0010YR\u0016\u0010H\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010]\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010[R\u0018\u0010a\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0018\u0010c\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010[R\u0018\u0010e\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010[R\u0018\u0010K\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010[R\u0018\u0010h\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010[R\u0018\u0010j\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010[R\u0016\u0010m\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0016\u0010o\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010lR\u0016\u0010s\u001a\u00020p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0016\u0010u\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010[R\u0014\u0010y\u001a\u00020v8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010xR\u0018\u0010|\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0016\u0010\u007f\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u0018\u0010\u0081\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010~R\u001c\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0018\u0010\u0087\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010~R\u0018\u0010\u0089\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010~R \u0010\u008d\u0001\u001a\t\u0012\u0004\u0012\u00020>0\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0018\u0010\u0092\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0091\u0001\u0010~R\u001a\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0093\u0001\u0010[R\u0017\u0010\u0095\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010lR \u0010\u009a\u0001\u001a\u00030\u0096\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\br\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R!\u0010\u009f\u0001\u001a\u00030\u009b\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009c\u0001\u0010\u0097\u0001\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001R!\u0010¤\u0001\u001a\u00030 \u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¡\u0001\u0010\u0097\u0001\u001a\u0006\b¢\u0001\u0010£\u0001¨\u0006§\u0001"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lbx/a0;", "<init>", "()V", "", "initViewData", "onResume", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "u1", "(Landroid/view/LayoutInflater;)Lbx/a0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewModel", "initListener", "retryLoadData", "v0", "x0", "w0", "y0", "onDestroy", "initView", "Lcom/transsnet/downloader/bean/DownloadListBean;", "listBean", "S1", "(Lcom/transsnet/downloader/bean/DownloadListBean;)V", "", "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;", "resolutionList", "X1", "(Ljava/util/List;)Ljava/util/List;", "", "resolutionPosition", "D1", "(Ljava/util/List;I)V", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "dubsList", "dubsPosition", "x1", "F1", "j1", "resolution", "audioChannel", "season", "tabIndex", "isShowLoading", "Z1", "(IILjava/lang/String;Ljava/lang/Integer;IZ)V", "w1", "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;", "l1", "(IIZ)Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;", "Lcom/transsion/baselib/db/download/DownloadBean;", "selectedList", "selectAll", "V1", "(Ljava/util/List;Z)V", "U1", "T1", "Q1", "P1", "pageName", "pageFrom", "subjectId", "postId", "ops", "resourceId", "taskId", "q1", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Y1", "(I)V", "Lcom/transsnet/downloader/widget/e;", "titleList", "B1", "(Ljava/util/List;)V", "k1", CampaignEx.JSON_KEY_TITLE, "W1", "(Ljava/lang/String;)V", "l", "Ljava/lang/String;", "m", "lastPageFrom", "Lcom/transsion/moviedetailapi/bean/Subject;", "n", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "o", "curSubjectId", TtmlNode.TAG_P, "groupId", CampaignEx.JSON_KEY_AD_Q, CampaignEx.JSON_KEY_AD_R, "targetResourceId", "s", "moduleName", "t", "Z", "dialogStyle", TmcStartParams.KEY_URL_SHORT, "isSelectAll", "", "v", "J", "localTotalSize", "w", "formatSize", "Lkotlinx/coroutines/n0;", "x", "Lkotlinx/coroutines/n0;", "downloadCoroutineScope", "y", "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;", "curFragment", "z", "I", "targetSeason", "A", "curSeason", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "B", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "commonNavigator", "C", "curTabIndex", "D", "curTotalEpisode", "Ljava/util/concurrent/CopyOnWriteArrayList;", "E", "Ljava/util/concurrent/CopyOnWriteArrayList;", "checkedList", "F", "Ljava/lang/Integer;", "currentResolution", "G", "currentResolutionPosition", "H", "selectedCurrentAudioSubjectId", "showPremiumIfNeed", "Lcom/transsnet/downloader/manager/StartDownloadHelper;", "Lkotlin/Lazy;", "t1", "()Lcom/transsnet/downloader/manager/StartDownloadHelper;", "startDownloadHelper", "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "K", "s1", "()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "groupMainViewModel", "Lcom/transsnet/downloader/viewmodel/k0;", "L", "r1", "()Lcom/transsnet/downloader/viewmodel/k0;", "detailDownloadViewModel", "M", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadReDetectorGroupMainFragment extends DownloadReDetectorBaseFragment<bx.a0> {

    public static final Companion INSTANCE = new Companion(null);

    private ORCommonNavigator commonNavigator;

    private int curTabIndex;

    private int curTotalEpisode;

    private Integer currentResolution;

    private int currentResolutionPosition;

    private String selectedCurrentAudioSubjectId;

    private boolean showPremiumIfNeed;

    private Subject subject;

    private String curSubjectId;

    private String groupId;

    private String ops;

    private String targetResourceId;

    private String moduleName;

    private boolean isSelectAll;

    private long localTotalSize;

    private DownloadReDetectorGroupFragment curFragment;

    private int targetSeason;

    private String pageFrom = "";

    private String lastPageFrom = "";

    private boolean dialogStyle = true;

    private String formatSize = "";

    private final kotlinx.coroutines.n0 downloadCoroutineScope = kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b());

    private int curSeason = 1;

    private CopyOnWriteArrayList checkedList = new CopyOnWriteArrayList();

    private final Lazy startDownloadHelper = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadReDetectorGroupMainFragment.b2();
        }
    });

    private final Lazy groupMainViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadReDetectorGroupMainFragment.v1(this.f57103a);
        }
    });

    private final Lazy detailDownloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsnet.downloader.viewmodel.k0.class), new Function0<androidx.p009lifecycle.x0>() {
        {
            super(0);
        }

        @Override
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() {
        {
            super(0);
        }

        @Override
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorGroupMainFragment a(String str, String str2, Subject subject, String str3, String str4, String str5, String str6, int i10, boolean z10) {
            DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment = new DownloadReDetectorGroupMainFragment();
            downloadReDetectorGroupMainFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_page_from", str), TuplesKt.a("extra_last_page_from", str2), TuplesKt.a("extra_subject", subject), TuplesKt.a("extra_group_id", str3), TuplesKt.a("extra_ops", str4), TuplesKt.a("extra_target_resource_id", str5), TuplesKt.a("extra_module_name", str6), TuplesKt.a("extra_season", Integer.valueOf(i10)), TuplesKt.a("extra_dialog_style", Boolean.valueOf(z10))));
            return downloadReDetectorGroupMainFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements wj.g {
        b() {
        }

        public static final Unit c(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
            downloadReDetectorGroupMainFragment.Q1();
            return Unit.f64096a;
        }

        @Override
        public void a(boolean z10) {
            DownloadReDetectorGroupMainFragment.this.r1().c().q(Boolean.valueOf(z10));
        }

        @Override
        public void onFail() {
            wj.h.f74282a.a(DownloadReDetectorGroupMainFragment.this.getClassTag() + " --> interception() --> onFail() --> 失败了");
        }

        @Override
        public void onSuccess() {
            FragmentActivity activity = DownloadReDetectorGroupMainFragment.this.getActivity();
            if (activity != null) {
                final DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment = DownloadReDetectorGroupMainFragment.this;
                Subject subject = downloadReDetectorGroupMainFragment.subject;
                if (subject != null) {
                    com.transsnet.downloader.manager.f.f57260a.a().j(activity, subject, new Function0() {
                        @Override
                        public final Object invoke() {
                            return DownloadReDetectorGroupMainFragment.b.c(downloadReDetectorGroupMainFragment);
                        }
                    });
                }
            }
        }
    }

    public static final class c implements im.a {
        c() {
        }

        @Override
        public void a(MemberCheckResult memberCheckResult) {
            im.a.C0761a.f(this, memberCheckResult);
        }

        @Override
        public void b(MemberCheckResult memberCheckResult) {
            im.a.C0761a.d(this, memberCheckResult);
        }

        @Override
        public void c(MemberCheckResult memberCheckResult) {
            im.a.C0761a.g(this, memberCheckResult);
        }

        @Override
        public void d(MemberCheckResult memberCheckResult) {
            im.a.C0761a.e(this, memberCheckResult);
        }

        @Override
        public void e() {
            im.a.C0761a.c(this);
            DownloadReDetectorGroupMainFragment.this.T1();
        }

        @Override
        public void f(MemberCheckResult memberCheckResult) {
            im.a.C0761a.a(this, memberCheckResult);
        }

        @Override
        public void onFail(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            im.a.C0761a.b(this, errorMsg);
            wf.a.C0922a.f(wf.a.f74274a, "co_mem", "DownloadReDetectorGroupMainFragment --> onSelectAllClickIfNeed() --> 剧集全选 --> " + errorMsg, false, 4, null);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56715a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56715a = function;
        }

        @Override
        public final Function a() {
            return this.f56715a;
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
            this.f56715a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit A1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, int i10, DubsInfo item) {
        androidx.p009lifecycle.b0 b0VarG;
        BLFrameLayout bLFrameLayout;
        Intrinsics.h(item, "item");
        String subjectId = item.getSubjectId();
        if (subjectId != null) {
            bx.a0 a0Var = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var != null && (bLFrameLayout = a0Var.f15904f) != null) {
                uf.c.k(bLFrameLayout);
            }
            downloadReDetectorGroupMainFragment.curSubjectId = subjectId;
            DownloadResourcesDetectorViewModel viewModel = downloadReDetectorGroupMainFragment.getViewModel();
            if (viewModel != null && (b0VarG = viewModel.g()) != null) {
                b0VarG.q(downloadReDetectorGroupMainFragment.curSubjectId);
            }
            downloadReDetectorGroupMainFragment.getTAG();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initAudioTab: 切换音轨到:");
            sb2.append(item);
            DownloadResourcesDetectorViewModel viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
            if (viewModel2 != null) {
                viewModel2.u(subjectId);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void B1(final List titleList) {
        DownloadGridTabView downloadGridTabView;
        bx.a0 a0Var = (bx.a0) getMViewBinding();
        if (a0Var == null || (downloadGridTabView = a0Var.f15921w) == null) {
            return;
        }
        downloadGridTabView.setItemClickCallback(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return DownloadReDetectorGroupMainFragment.C1(this.f57037a, titleList, ((Integer) obj).intValue(), (com.transsnet.downloader.widget.e) obj2);
            }
        });
        downloadGridTabView.setDataList(titleList);
    }

    public static final Unit C1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, List list, int i10, com.transsnet.downloader.widget.e item) {
        Intrinsics.h(item, "item");
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = downloadReDetectorGroupMainFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "ep tab click, resolution:" + downloadReDetectorGroupMainFragment.currentResolution + ", index:" + i10, false, 4, null);
        downloadReDetectorGroupMainFragment.W1(((com.transsnet.downloader.widget.e) list.get(i10)).a());
        Integer num = downloadReDetectorGroupMainFragment.currentResolution;
        if (num != null) {
            a2(downloadReDetectorGroupMainFragment, num.intValue(), downloadReDetectorGroupMainFragment.currentResolutionPosition, downloadReDetectorGroupMainFragment.curSubjectId, null, i10, false, 40, null);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void D1(List resolutionList, int resolutionPosition) {
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadResolutionTabView downloadResolutionTabView2;
        bx.a0 a0Var = (bx.a0) getMViewBinding();
        if (a0Var != null && (downloadResolutionTabView2 = a0Var.f15922x) != null) {
            downloadResolutionTabView2.setResolutionItemClickListener(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return DownloadReDetectorGroupMainFragment.E1(this.f56961a, ((Integer) obj).intValue(), (DownloadResolutionItem) obj2);
                }
            });
        }
        bx.a0 a0Var2 = (bx.a0) getMViewBinding();
        if (a0Var2 == null || (downloadResolutionTabView = a0Var2.f15922x) == null) {
            return;
        }
        downloadResolutionTabView.setResolutionContentData(resolutionList, resolutionPosition);
    }

    public static final Unit E1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, int i10, DownloadResolutionItem item) {
        Intrinsics.h(item, "item");
        downloadReDetectorGroupMainFragment.Y1(item.getResolution());
        a2(downloadReDetectorGroupMainFragment, item.getResolution(), i10, downloadReDetectorGroupMainFragment.curSubjectId, null, 0, false, 24, null);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void F1() {
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarZ;
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null && (viewModel = getViewModel()) != null && (b0VarZ = viewModel.z()) != null) {
            b0VarZ.j(parentFragment, new d(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadReDetectorGroupMainFragment.G1(this.f56972a, (Integer) obj);
                }
            }));
        }
        bx.a0 a0Var = (bx.a0) getMViewBinding();
        if (a0Var == null || (downloadResolutionTabView = a0Var.f15922x) == null) {
            return;
        }
        downloadResolutionTabView.setSeasonClickListener(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadReDetectorGroupMainFragment.H1(this.f56982a);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit G1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, Integer num) {
        Integer resolution;
        DownloadResolutionTabView downloadResolutionTabView;
        bx.a0 a0Var = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (downloadResolutionTabView = a0Var.f15922x) != null) {
            Intrinsics.e(num);
            downloadResolutionTabView.setSeason(num.intValue());
        }
        Integer num2 = downloadReDetectorGroupMainFragment.currentResolution;
        a2(downloadReDetectorGroupMainFragment, num2 != null ? num2.intValue() : 360, downloadReDetectorGroupMainFragment.currentResolutionPosition, downloadReDetectorGroupMainFragment.curSubjectId, num, 0, false, 16, null);
        downloadReDetectorGroupMainFragment.k1();
        DownloadListBean downloadListBean = (DownloadListBean) downloadReDetectorGroupMainFragment.s1().s().f();
        downloadReDetectorGroupMainFragment.Y1((downloadListBean == null || (resolution = downloadListBean.getResolution()) == null) ? com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 0) : resolution.intValue());
        return Unit.f64096a;
    }

    public static final Unit H1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
        androidx.p009lifecycle.b0 b0VarP;
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorGroupMainFragment.getViewModel();
        if (viewModel != null && (b0VarP = viewModel.p()) != null) {
            b0VarP.q(8);
        }
        return Unit.f64096a;
    }

    public static final void I1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, View view) {
        downloadReDetectorGroupMainFragment.m0();
    }

    public static final void J1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, View view) {
        downloadReDetectorGroupMainFragment.U1();
    }

    public static final void K1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, View view) {
        downloadReDetectorGroupMainFragment.U1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void L1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, View view) {
        DownloadMovieAdView downloadMovieAdView;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        }
        if (downloadReDetectorGroupMainFragment.checkedList.isEmpty()) {
            fh.b.f60176a.d(com.transsnet.downloader.R$string.download_unselected_tips);
            return;
        }
        DownloadBean downloadBean = (DownloadBean) CollectionsKt.k0(downloadReDetectorGroupMainFragment.checkedList);
        if (downloadBean != null) {
            com.transsion.baselib.report.launch.b.f42221a.b().putInt("download_last_resolution", downloadBean.getResolution());
        }
        bx.a0 a0Var = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (downloadMovieAdView = a0Var.f15923y) != null) {
            downloadMovieAdView.download();
        }
        downloadReDetectorGroupMainFragment.r1().b().q(Boolean.TRUE);
        wj.f fVar = (wj.f) TheRouter.d(wj.f.class, new Object[0]);
        if (fVar != null) {
            Integer num = downloadReDetectorGroupMainFragment.currentResolution;
            DownloadBean downloadBean2 = (DownloadBean) CollectionsKt.k0(downloadReDetectorGroupMainFragment.checkedList);
            fVar.e(num, downloadBean2 != null ? downloadBean2.getGenre() : null, downloadReDetectorGroupMainFragment.new b(), MemberSceneType.SCENE_HDDL);
        }
    }

    public static final Unit M1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, DubsInfoData dubsInfoData) {
        List<DubsInfo> dubs;
        String subjectId;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarG;
        DownloadResourcesDetectorViewModel viewModel2;
        if (dubsInfoData != null && (dubs = dubsInfoData.getDubs()) != null) {
            int iIndexOf = 0;
            if (dubs.isEmpty()) {
                String str = downloadReDetectorGroupMainFragment.curSubjectId;
                if (str != null && (viewModel2 = downloadReDetectorGroupMainFragment.getViewModel()) != null) {
                    viewModel2.u(str);
                }
            } else {
                Subject subject = downloadReDetectorGroupMainFragment.subject;
                Object obj = null;
                downloadReDetectorGroupMainFragment.curSubjectId = subject != null ? subject.getSubjectId() : null;
                DownloadResourcesDetectorViewModel viewModel3 = downloadReDetectorGroupMainFragment.getViewModel();
                if (viewModel3 != null && (b0VarG = viewModel3.g()) != null) {
                    b0VarG.q(downloadReDetectorGroupMainFragment.curSubjectId);
                }
                for (Object obj2 : dubs) {
                    String subjectId2 = ((DubsInfo) obj2).getSubjectId();
                    Subject subject2 = downloadReDetectorGroupMainFragment.subject;
                    if (Intrinsics.c(subjectId2, subject2 != null ? subject2.getSubjectId() : null)) {
                        obj = obj2;
                        break;
                    }
                }
                DubsInfo dubsInfo = (DubsInfo) obj;
                if (dubsInfo != null) {
                    dubsInfo.setSelected(true);
                    iIndexOf = dubs.indexOf(dubsInfo);
                }
                Subject subject3 = downloadReDetectorGroupMainFragment.subject;
                if (subject3 != null && (subjectId = subject3.getSubjectId()) != null && (viewModel = downloadReDetectorGroupMainFragment.getViewModel()) != null) {
                    viewModel.u(subjectId);
                }
            }
            downloadReDetectorGroupMainFragment.x1(CollectionsKt.U0(dubs), iIndexOf);
        }
        return Unit.f64096a;
    }

    public static final Unit N1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, DownloadListBean downloadListBean) {
        downloadReDetectorGroupMainFragment.S1(downloadListBean);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x013d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0141  */
    /* JADX WARN: Code duplicated, block: B:57:0x0154  */
    /* JADX WARN: Code duplicated, block: B:59:0x0158  */
    /* JADX WARN: Code duplicated, block: B:62:0x0162  */
    /* JADX WARN: Code duplicated, block: B:67:0x017b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0181  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit O1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, int i10, ResourcesSeasonList resourcesSeasonList) {
        List<ResourcesSeason> seasons;
        Object next;
        Object next2;
        int se2;
        Subject subject;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarH;
        Integer subjectType;
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadResolutionTabView downloadResolutionTabView2;
        DownloadResourcesDetectorViewModel viewModel2;
        Subject subject2;
        String title;
        androidx.p009lifecycle.b0 b0VarH2;
        BLFrameLayout bLFrameLayout;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = downloadReDetectorGroupMainFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "获取当前季跟分辨率的信息,resolution:" + i10 + "， , curSeason:" + downloadReDetectorGroupMainFragment.curSeason, false, 4, null);
        Subject subject3 = downloadReDetectorGroupMainFragment.subject;
        if (subject3 != null) {
            subject3.setSubjectType(resourcesSeasonList != null ? resourcesSeasonList.getSubjectType() : null);
        }
        bx.a0 a0Var = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (bLFrameLayout = a0Var.f15904f) != null) {
            uf.c.g(bLFrameLayout);
        }
        if (resourcesSeasonList != null && (seasons = resourcesSeasonList.getSeasons()) != null) {
            List<ResourcesSeason> list = seasons;
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ResourcesSeason) next).getSe() != downloadReDetectorGroupMainFragment.curSeason);
            ResourcesSeason resourcesSeason = (ResourcesSeason) next;
            if (resourcesSeason != null) {
                se2 = resourcesSeason.getSe();
            } else {
                Iterator<T> it2 = list.iterator();
                if (it2.hasNext()) {
                    next2 = it2.next();
                    if (it2.hasNext()) {
                        int se3 = ((ResourcesSeason) next2).getSe();
                        do {
                            Object next3 = it2.next();
                            int se4 = ((ResourcesSeason) next3).getSe();
                            if (se3 > se4) {
                                next2 = next3;
                                se3 = se4;
                            }
                        } while (it2.hasNext());
                    }
                } else {
                    next2 = null;
                }
                ResourcesSeason resourcesSeason2 = (ResourcesSeason) next2;
                se2 = resourcesSeason2 != null ? resourcesSeason2.getSe() : downloadReDetectorGroupMainFragment.curSeason;
            }
            downloadReDetectorGroupMainFragment.curSeason = se2;
            Pair pairA = DownloadUtil.f57680a.A(seasons, se2, i10);
            int iIntValue = ((Number) pairA.getFirst()).intValue();
            int iIntValue2 = ((Number) pairA.getSecond()).intValue();
            int iH = RangesKt.h(iIntValue2 + 19, iIntValue);
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String tag2 = downloadReDetectorGroupMainFragment.getTAG();
            Intrinsics.g(tag2, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a2, tag2, "加载第一刷数据，curSeason:" + downloadReDetectorGroupMainFragment.curSeason + ", start:" + iIntValue2 + ", end:" + iH + ", total:" + iIntValue + ", resolution:" + i10 + "， audioChannel", false, 4, null);
            Subject subject4 = downloadReDetectorGroupMainFragment.subject;
            if (subject4 != null) {
                Integer subjectType2 = subject4.getSubjectType();
                int value = SubjectType.TV.getValue();
                if (subjectType2 != null && subjectType2.intValue() == value) {
                    if (downloadReDetectorGroupMainFragment.targetSeason <= 0) {
                        downloadReDetectorGroupMainFragment.targetSeason = downloadReDetectorGroupMainFragment.curSeason;
                    }
                    viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
                    if (viewModel2 != null && (b0VarH2 = viewModel2.h()) != null) {
                        b0VarH2.q(Integer.valueOf(downloadReDetectorGroupMainFragment.targetSeason));
                    }
                    DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModelS1 = downloadReDetectorGroupMainFragment.s1();
                    String str = downloadReDetectorGroupMainFragment.curSubjectId;
                    subject2 = downloadReDetectorGroupMainFragment.subject;
                    if (subject2 != null) {
                        title = subject2.getTitle();
                    } else {
                        title = null;
                    }
                    downloadResourcesDetectorViewModelS1.j(str, (920 & 2) != 0 ? "" : title, (920 & 4) != 0 ? 0 : 0, (920 & 8) != 0 ? "1" : null, (920 & 16) != 0 ? 20 : 1, (920 & 32) != 0 ? 1 : 0, (920 & 64) != 0 ? 1 : 0, (920 & 128) != 0 ? 1 : 0, (920 & 256) != 0 ? 1 : 0, (920 & 512) == 0 ? 0 : 1, (920 & 1024) != 0 ? com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 0) : i10);
                } else {
                    subject = downloadReDetectorGroupMainFragment.subject;
                    if (subject != null) {
                        subjectType = subject.getSubjectType();
                        int value2 = SubjectType.EDUCATION.getValue();
                        if (subjectType != null && subjectType.intValue() == value2) {
                            if (downloadReDetectorGroupMainFragment.targetSeason <= 0) {
                                downloadReDetectorGroupMainFragment.targetSeason = downloadReDetectorGroupMainFragment.curSeason;
                            }
                            viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
                            if (viewModel2 != null) {
                                b0VarH2.q(Integer.valueOf(downloadReDetectorGroupMainFragment.targetSeason));
                            }
                            DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModelS2 = downloadReDetectorGroupMainFragment.s1();
                            String str2 = downloadReDetectorGroupMainFragment.curSubjectId;
                            subject2 = downloadReDetectorGroupMainFragment.subject;
                            if (subject2 != null) {
                                title = subject2.getTitle();
                            } else {
                                title = null;
                            }
                            downloadResourcesDetectorViewModelS2.j(str2, (920 & 2) != 0 ? "" : title, (920 & 4) != 0 ? 0 : 0, (920 & 8) != 0 ? "1" : null, (920 & 16) != 0 ? 20 : 1, (920 & 32) != 0 ? 1 : 0, (920 & 64) != 0 ? 1 : 0, (920 & 128) != 0 ? 1 : 0, (920 & 256) != 0 ? 1 : 0, (920 & 512) == 0 ? 0 : 1, (920 & 1024) != 0 ? com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 0) : i10);
                        }
                    }
                    downloadReDetectorGroupMainFragment.curSeason = 0;
                    viewModel = downloadReDetectorGroupMainFragment.getViewModel();
                    if (viewModel != null && (b0VarH = viewModel.h()) != null) {
                        b0VarH.q(0);
                    }
                    downloadReDetectorGroupMainFragment.showPremiumIfNeed = true;
                    a2(downloadReDetectorGroupMainFragment, 0, 0, downloadReDetectorGroupMainFragment.curSubjectId, null, 0, false, 56, null);
                }
            } else {
                subject = downloadReDetectorGroupMainFragment.subject;
                if (subject != null) {
                    subjectType = subject.getSubjectType();
                    int value3 = SubjectType.EDUCATION.getValue();
                    if (subjectType != null) {
                        if (downloadReDetectorGroupMainFragment.targetSeason <= 0) {
                            downloadReDetectorGroupMainFragment.targetSeason = downloadReDetectorGroupMainFragment.curSeason;
                        }
                        viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
                        if (viewModel2 != null) {
                            b0VarH2.q(Integer.valueOf(downloadReDetectorGroupMainFragment.targetSeason));
                        }
                        DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModelS3 = downloadReDetectorGroupMainFragment.s1();
                        String str3 = downloadReDetectorGroupMainFragment.curSubjectId;
                        subject2 = downloadReDetectorGroupMainFragment.subject;
                        if (subject2 != null) {
                            title = subject2.getTitle();
                        } else {
                            title = null;
                        }
                        downloadResourcesDetectorViewModelS3.j(str3, (920 & 2) != 0 ? "" : title, (920 & 4) != 0 ? 0 : 0, (920 & 8) != 0 ? "1" : null, (920 & 16) != 0 ? 20 : 1, (920 & 32) != 0 ? 1 : 0, (920 & 64) != 0 ? 1 : 0, (920 & 128) != 0 ? 1 : 0, (920 & 256) != 0 ? 1 : 0, (920 & 512) == 0 ? 0 : 1, (920 & 1024) != 0 ? com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 0) : i10);
                    }
                }
                downloadReDetectorGroupMainFragment.curSeason = 0;
                viewModel = downloadReDetectorGroupMainFragment.getViewModel();
                if (viewModel != null) {
                    b0VarH.q(0);
                }
                downloadReDetectorGroupMainFragment.showPremiumIfNeed = true;
                a2(downloadReDetectorGroupMainFragment, 0, 0, downloadReDetectorGroupMainFragment.curSubjectId, null, 0, false, 56, null);
            }
            bx.a0 a0Var2 = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var2 != null && (downloadResolutionTabView2 = a0Var2.f15922x) != null) {
                downloadResolutionTabView2.setSeasons(seasons.size());
            }
            bx.a0 a0Var3 = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var3 != null && (downloadResolutionTabView = a0Var3.f15922x) != null) {
                downloadResolutionTabView.setSeason(downloadReDetectorGroupMainFragment.curSeason);
            }
        }
        return Unit.f64096a;
    }

    private final void P1() {
        androidx.p009lifecycle.b0 b0VarP;
        androidx.p009lifecycle.b0 b0VarI;
        if (this.checkedList.isEmpty()) {
            return;
        }
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarI = viewModel.i()) != null) {
            int size = this.checkedList.size();
            String str = this.formatSize;
            Object obj = this.checkedList.get(0);
            Intrinsics.g(obj, "get(...)");
            b0VarI.q(new com.transsnet.downloader.viewmodel.b(size, str, (DownloadBean) obj, false));
        }
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 == null || (b0VarP = viewModel2.p()) == null) {
            return;
        }
        b0VarP.q(3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q1() {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        View view;
        FrameLayout frameLayout;
        r1().b().q(Boolean.FALSE);
        if (u0(this.localTotalSize)) {
            return;
        }
        bx.a0 a0Var = (bx.a0) getMViewBinding();
        if (a0Var != null && (frameLayout = a0Var.f15905g) != null && frameLayout.getVisibility() == 0) {
            wf.a.f74274a.p("download", new String[]{"DownloadReDetectorGroupMainFragment --> onDownload() --> 当前正在全选中"}, true);
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "onDownload ", false, 4, null);
        bx.a0 a0Var2 = (bx.a0) getMViewBinding();
        if (a0Var2 != null && (view = a0Var2.f15920v) != null) {
            uf.c.k(view);
        }
        bx.a0 a0Var3 = (bx.a0) getMViewBinding();
        if (a0Var3 != null && (appCompatImageView = a0Var3.f15906h) != null) {
            uf.c.g(appCompatImageView);
        }
        bx.a0 a0Var4 = (bx.a0) getMViewBinding();
        if (a0Var4 != null && (appCompatTextView = a0Var4.f15913o) != null) {
            uf.c.g(appCompatTextView);
        }
        bx.a0 a0Var5 = (bx.a0) getMViewBinding();
        if (a0Var5 != null && (progressBar2 = a0Var5.f15911m) != null) {
            uf.c.k(progressBar2);
        }
        int i10 = 0;
        for (Object obj : this.checkedList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            DownloadBean downloadBean = (DownloadBean) obj;
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            downloadBean.setTaskId(string);
            q1(this.pageFrom, this.lastPageFrom, downloadBean.getSubjectId(), downloadBean.getPostId(), this.ops, downloadBean.getResourceId(), string);
            wf.a.f74274a.p("download", new String[]{"剧集多资源，下载点击，开始下载: subjectId = " + downloadBean.getSubjectId() + ",resourceId = " + downloadBean.getResourceId() + ", name = " + downloadBean.getTotalTitleName()}, true);
            i10 = i11;
        }
        p0().C(this.checkedList);
        t1().f(this.checkedList);
        kotlinx.coroutines.k.d(this.downloadCoroutineScope, null, null, new DownloadReDetectorGroupMainFragment$onDownload$2(this, null), 3, null);
        long size = ((long) ((this.checkedList.size() / 20) * 100)) + 300;
        bx.a0 a0Var6 = (bx.a0) getMViewBinding();
        if (a0Var6 != null && (progressBar = a0Var6.f15911m) != null) {
            progressBar.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    DownloadReDetectorGroupMainFragment.R1(this.f56949a);
                }
            }, size);
        }
        BiddingNativeManager.Companion companion = BiddingNativeManager.f40990v;
        com.transsion.ad.strategy.c cVar = com.transsion.ad.strategy.c.f41178a;
        Subject subject = this.subject;
        companion.a("DownloadPopupScene", cVar.a(subject != null ? subject.getGenre() : null));
    }

    public static final void R1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
        downloadReDetectorGroupMainFragment.P1();
    }

    private final void S1(DownloadListBean listBean) {
        List<DownloadResolutionItem> resolutionList;
        if (listBean == null || (resolutionList = listBean.getResolutionList()) == null) {
            return;
        }
        if (this.commonNavigator == null) {
            Integer resolution = listBean.getResolution();
            Y1(resolution != null ? resolution.intValue() : com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 0));
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "onGetDefResolutionData 首次，curSeason:" + this.curSeason + ",resolutionList: :" + resolutionList, false, 4, null);
        List listX1 = X1(resolutionList);
        F1();
        if (listX1.size() <= 1) {
            D1(listX1, 0);
            this.showPremiumIfNeed = true;
            Integer resolution2 = listBean.getResolution();
            a2(this, resolution2 != null ? resolution2.intValue() : 0, 0, this.curSubjectId, null, 0, false, 56, null);
            return;
        }
        this.showPremiumIfNeed = false;
        Integer resolution3 = listBean.getResolution();
        int iIntValue = resolution3 != null ? resolution3.intValue() : 0;
        int i10 = -1;
        int i11 = com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", -1);
        Iterator it = listX1.iterator();
        int i12 = 0;
        while (true) {
            if (!it.hasNext()) {
                i12 = -1;
                break;
            } else if (((DownloadResolutionItem) it.next()).getResolution() == i11) {
                break;
            } else {
                i12++;
            }
        }
        if (i12 < 0 && iIntValue > 0) {
            Iterator it2 = listX1.iterator();
            int i13 = 0;
            while (it2.hasNext()) {
                if (((DownloadResolutionItem) it2.next()).getResolution() == iIntValue) {
                    i10 = i13;
                    break;
                }
                i13++;
            }
            i12 = i10;
        }
        int i14 = i12 < 0 ? 0 : i12;
        int resolution4 = 0;
        int i15 = 0;
        for (Object obj : listX1) {
            int i16 = i15 + 1;
            if (i15 < 0) {
                CollectionsKt.u();
            }
            DownloadResolutionItem downloadResolutionItem = (DownloadResolutionItem) obj;
            if (i15 == i14) {
                resolution4 = downloadResolutionItem.getResolution();
                downloadResolutionItem.setSelected(true);
            } else {
                downloadResolutionItem.setSelected(false);
            }
            i15 = i16;
        }
        D1(listX1, i14);
        a2(this, resolution4, i14, this.curSubjectId, null, 0, false, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void T1() {
        bx.a0 a0Var;
        AppCompatImageView appCompatImageView;
        DownloadReDetectorGroupFragment downloadReDetectorGroupFragment = this.curFragment;
        if ((downloadReDetectorGroupFragment != null && !downloadReDetectorGroupFragment.l1()) || (a0Var = (bx.a0) getMViewBinding()) == null || (appCompatImageView = a0Var.f15907i) == null) {
            return;
        }
        appCompatImageView.setSelected(!appCompatImageView.isSelected());
        boolean zIsSelected = appCompatImageView.isSelected();
        this.isSelectAll = zIsSelected;
        DownloadReDetectorGroupFragment downloadReDetectorGroupFragment2 = this.curFragment;
        if (downloadReDetectorGroupFragment2 != null) {
            downloadReDetectorGroupFragment2.n1(zIsSelected);
        }
    }

    private final void U1() {
        DownloadReDetectorGroupFragment downloadReDetectorGroupFragment;
        if (this.isSelectAll || (downloadReDetectorGroupFragment = this.curFragment) == null || !downloadReDetectorGroupFragment.d1()) {
            T1();
            return;
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            DownloadReDetectorGroupFragment downloadReDetectorGroupFragment2 = this.curFragment;
            bVar.g(downloadReDetectorGroupFragment2 != null ? downloadReDetectorGroupFragment2.a1() : null, new c());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void V1(List selectedList, boolean selectAll) {
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView2;
        AppCompatTextView appCompatTextView2;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        this.checkedList.clear();
        List list = selectedList;
        this.checkedList.addAll(list);
        wf.a.C0922a.f(wf.a.f74274a, "zxb_log", "DownloadReDetectorGroupMainFragment --> onSelectData() --> checkedList.size = " + this.checkedList.size(), false, 4, null);
        Iterator it = selectedList.iterator();
        long jLongValue = 0L;
        while (it.hasNext()) {
            DownloadBean downloadBean = (DownloadBean) it.next();
            if (!downloadBean.isUnable()) {
                Long size = downloadBean.getSize();
                jLongValue += size != null ? size.longValue() : 0L;
            }
        }
        this.localTotalSize = jLongValue;
        if (jLongValue == 0) {
            bx.a0 a0Var = (bx.a0) getMViewBinding();
            if (a0Var != null && (appCompatTextView2 = a0Var.f15913o) != null) {
                appCompatTextView2.setText(getString(com.transsnet.downloader.R$string.str_download));
            }
            bx.a0 a0Var2 = (bx.a0) getMViewBinding();
            if (a0Var2 != null && (appCompatImageView2 = a0Var2.f15907i) != null) {
                appCompatImageView2.setSelected(false);
            }
            DownloadReDetectorGroupFragment downloadReDetectorGroupFragment = this.curFragment;
            if (downloadReDetectorGroupFragment != null) {
                downloadReDetectorGroupFragment.t1(false);
            }
        } else {
            this.formatSize = zg.b.a(jLongValue, 1);
            bx.a0 a0Var3 = (bx.a0) getMViewBinding();
            if (a0Var3 != null && (appCompatTextView = a0Var3.f15913o) != null) {
                appCompatTextView.setText(getString(com.transsnet.downloader.R$string.str_download) + " · " + this.formatSize);
            }
            bx.a0 a0Var4 = (bx.a0) getMViewBinding();
            if (a0Var4 != null && (appCompatImageView = a0Var4.f15907i) != null) {
                appCompatImageView.setSelected(selectAll);
            }
            DownloadReDetectorGroupFragment downloadReDetectorGroupFragment2 = this.curFragment;
            if (downloadReDetectorGroupFragment2 != null) {
                downloadReDetectorGroupFragment2.t1(selectAll);
            }
        }
        if (list.isEmpty()) {
            return;
        }
        this.currentResolution = Integer.valueOf(((DownloadBean) CollectionsKt.u0(selectedList)).getResolution());
    }

    private final void W1(String title) {
        qi.h hVar = qi.h.f69682a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(WebConstants.PAGE_FROM, this.pageFrom);
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "episode_tab");
        linkedHashMap.put(CampaignEx.JSON_KEY_TITLE, title);
        Unit unit = Unit.f64096a;
        hVar.o("download", linkedHashMap);
    }

    private final List X1(List resolutionList) {
        androidx.p009lifecycle.b0 b0VarY;
        ResourcesSeasonList resourcesSeasonList;
        List<ResourcesSeason> seasons;
        Object next;
        ArrayList arrayList = new ArrayList();
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarY = viewModel.y()) != null && (resourcesSeasonList = (ResourcesSeasonList) b0VarY.f()) != null && (seasons = resourcesSeasonList.getSeasons()) != null) {
            Iterator<T> it = seasons.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ResourcesSeason) next).getSe() != this.curSeason);
            ResourcesSeason resourcesSeason = (ResourcesSeason) next;
            if (resourcesSeason != null) {
                List<ResolutionItem> resolutions = resourcesSeason.getResolutions();
                if (resolutions == null || resolutions.isEmpty()) {
                    return resolutionList;
                }
                List<ResolutionItem> resolutions2 = resourcesSeason.getResolutions();
                if (resolutions2 != null && resolutions2.size() == resolutionList.size()) {
                    return resolutionList;
                }
                List<ResolutionItem> resolutions3 = resourcesSeason.getResolutions();
                if (resolutions3 != null) {
                    for (ResolutionItem resolutionItem : resolutions3) {
                        Iterator it2 = resolutionList.iterator();
                        while (it2.hasNext()) {
                            DownloadResolutionItem downloadResolutionItem = (DownloadResolutionItem) it2.next();
                            if (resolutionItem.getResolution() == downloadResolutionItem.getResolution()) {
                                arrayList.add(downloadResolutionItem);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return arrayList.isEmpty() ? resolutionList : arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00b0  */
    /* JADX WARN: Multi-variable type inference failed */
    private final void Y1(int resolution) {
        DownloadGridTabView downloadGridTabView;
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadGridTabView downloadGridTabView2;
        androidx.p009lifecycle.b0 b0VarY;
        ResourcesSeasonList resourcesSeasonList;
        List<ResourcesSeason> seasons;
        Object next;
        List<ResolutionItem> resolutions;
        ResolutionItem resolutionItem;
        Object next2;
        Object next3;
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarY = viewModel.y()) != null && (resourcesSeasonList = (ResourcesSeasonList) b0VarY.f()) != null && (seasons = resourcesSeasonList.getSeasons()) != null) {
            Iterator<T> it = seasons.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ResourcesSeason) next).getSe() != this.curSeason);
            ResourcesSeason resourcesSeason = (ResourcesSeason) next;
            if (resourcesSeason != null) {
                if (resolution == 0) {
                    List<ResolutionItem> resolutions2 = resourcesSeason.getResolutions();
                    if (resolutions2 != null) {
                        Iterator<T> it2 = resolutions2.iterator();
                        if (it2.hasNext()) {
                            next3 = it2.next();
                            if (it2.hasNext()) {
                                int epNum = ((ResolutionItem) next3).getEpNum();
                                do {
                                    Object next4 = it2.next();
                                    int epNum2 = ((ResolutionItem) next4).getEpNum();
                                    if (epNum < epNum2) {
                                        next3 = next4;
                                        epNum = epNum2;
                                    }
                                } while (it2.hasNext());
                            }
                        } else {
                            next3 = null;
                        }
                        ResolutionItem resolutionItem2 = (ResolutionItem) next3;
                        if (resolutionItem2 != null) {
                            this.curTotalEpisode = resolutionItem2.getEpNum();
                        }
                    }
                } else {
                    List<ResolutionItem> resolutions3 = resourcesSeason.getResolutions();
                    if (resolutions3 != null) {
                        Iterator<T> it3 = resolutions3.iterator();
                        do {
                            if (!it3.hasNext()) {
                                next2 = null;
                                break;
                            }
                            next2 = it3.next();
                        } while (resolution != ((ResolutionItem) next2).getResolution());
                        ResolutionItem resolutionItem3 = (ResolutionItem) next2;
                        if (resolutionItem3 != null) {
                            this.curTotalEpisode = resolutionItem3.getEpNum();
                        } else {
                            resolutions = resourcesSeason.getResolutions();
                            if (resolutions != null && (resolutionItem = (ResolutionItem) CollectionsKt.k0(resolutions)) != null) {
                                this.curTotalEpisode = resolutionItem.getEpNum();
                            }
                        }
                    } else {
                        resolutions = resourcesSeason.getResolutions();
                        if (resolutions != null) {
                            this.curTotalEpisode = resolutionItem.getEpNum();
                        }
                    }
                }
            }
        }
        int i10 = (this.curTotalEpisode + 49) / 50;
        if (i10 <= 1) {
            bx.a0 a0Var = (bx.a0) getMViewBinding();
            if (a0Var == null || (downloadGridTabView2 = a0Var.f15921w) == null) {
                return;
            }
            uf.c.g(downloadGridTabView2);
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "setSeasonOrEpTitleTab, totalEpisode:" + this.curTotalEpisode + ", titleCount:" + i10, false, 4, null);
        bx.a0 a0Var2 = (bx.a0) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (a0Var2 == null || (downloadResolutionTabView = a0Var2.f15922x) == null) ? null : downloadResolutionTabView.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.bottomMargin = com.blankj.utilcode.util.a0.a(12.0f);
        }
        bx.a0 a0Var3 = (bx.a0) getMViewBinding();
        if (a0Var3 != null && (downloadGridTabView = a0Var3.f15921w) != null) {
            uf.c.k(downloadGridTabView);
        }
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < i10) {
            int i12 = i11 * 50;
            arrayList.add(new com.transsnet.downloader.widget.e((i12 + 1) + "-" + RangesKt.h(i12 + 50, this.curTotalEpisode), i11 == 0));
            i11++;
        }
        B1(arrayList);
    }

    private final void Z1(int resolution, int resolutionPosition, String audioChannel, Integer season, int tabIndex, boolean isShowLoading) {
        androidx.p009lifecycle.b0 b0VarH;
        androidx.p009lifecycle.b0 b0VarG;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        Integer num = this.currentResolution;
        if (num != null && resolution == num.intValue() && tabIndex == this.curTabIndex && Intrinsics.c(audioChannel, this.selectedCurrentAudioSubjectId)) {
            int i10 = this.curSeason;
            if (season != null && season.intValue() == i10) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                String tag = getTAG();
                Intrinsics.g(tag, "<get-TAG>(...)");
                wf.a.C0922a.f(c0922a, tag, "分辨率未切换，不处理, resolution = " + resolution + ", tabIndex = " + tabIndex, false, 4, null);
                return;
            }
        }
        String str = "fragment_download_group-" + resolution + "-" + this.curSubjectId + "-" + tabIndex + "-" + season;
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        String tag2 = getTAG();
        Intrinsics.g(tag2, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a2, tag2, "group showFragment, resolution:" + resolution + ",  curEpTabPosition:" + tabIndex + "， curSubjectId：" + this.curSubjectId + " season:" + season, false, 4, null);
        this.currentResolution = Integer.valueOf(resolution);
        this.curTabIndex = tabIndex;
        this.currentResolutionPosition = resolutionPosition;
        this.selectedCurrentAudioSubjectId = audioChannel;
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarG = viewModel.g()) != null) {
            b0VarG.q(audioChannel);
        }
        this.curSeason = season != null ? season.intValue() : 1;
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null && (b0VarH = viewModel2.h()) != null) {
            b0VarH.q(Integer.valueOf(this.curSeason));
        }
        w1();
        Fragment fragmentK0 = getChildFragmentManager().k0(str);
        if (fragmentK0 == null) {
            fragmentK0 = l1(resolution, resolutionPosition, isShowLoading);
        }
        Intrinsics.f(fragmentK0, "null cannot be cast to non-null type com.transsnet.downloader.fragment.DownloadReDetectorGroupFragment");
        DownloadReDetectorGroupFragment downloadReDetectorGroupFragment = (DownloadReDetectorGroupFragment) fragmentK0;
        this.curFragment = downloadReDetectorGroupFragment;
        if (downloadReDetectorGroupFragment != null) {
            downloadReDetectorGroupFragment.t1(this.isSelectAll);
        }
        if (downloadReDetectorGroupFragment.isAdded()) {
            getChildFragmentManager().p().y(fragmentK0).l();
        } else {
            getChildFragmentManager().p().c(R$id.fl_content, fragmentK0, str).l();
        }
    }

    static void a2(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, int i10, int i11, String str, Integer num, int i12, boolean z10, int i13, Object obj) {
        if ((i13 & 8) != 0) {
            num = Integer.valueOf(downloadReDetectorGroupMainFragment.curSeason);
        }
        Integer num2 = num;
        if ((i13 & 16) != 0) {
            i12 = 0;
        }
        int i14 = i12;
        if ((i13 & 32) != 0) {
            z10 = true;
        }
        downloadReDetectorGroupMainFragment.Z1(i10, i11, str, num2, i14, z10);
    }

    public static final StartDownloadHelper b2() {
        return new StartDownloadHelper();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        DownloadMovieAdView downloadMovieAdView;
        BLFrameLayout bLFrameLayout;
        LinearLayoutCompat linearLayoutCompat;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        ImageView imageView;
        CoordinatorLayout coordinatorLayout;
        ViewGroup.LayoutParams layoutParams;
        bx.a0 a0Var;
        BLConstraintLayout bLConstraintLayout;
        if (!this.dialogStyle && (a0Var = (bx.a0) getMViewBinding()) != null && (bLConstraintLayout = a0Var.f15901c) != null) {
            bLConstraintLayout.setBackground(new DrawableCreator.Builder().setSolidColor(requireActivity().getResources().getColor(R$color.gray_dark_00)).build());
        }
        bx.a0 a0Var2 = (bx.a0) getMViewBinding();
        if (a0Var2 != null && (coordinatorLayout = a0Var2.f15902d) != null && (layoutParams = coordinatorLayout.getLayoutParams()) != null) {
            layoutParams.height = q0();
        }
        bx.a0 a0Var3 = (bx.a0) getMViewBinding();
        if (a0Var3 != null && (imageView = a0Var3.f15908j) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorGroupMainFragment.I1(this.f57060a, view);
                }
            });
        }
        bx.a0 a0Var4 = (bx.a0) getMViewBinding();
        if (a0Var4 != null && (appCompatTextView = a0Var4.f15916r) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorGroupMainFragment.J1(this.f57072a, view);
                }
            });
        }
        bx.a0 a0Var5 = (bx.a0) getMViewBinding();
        if (a0Var5 != null && (appCompatImageView = a0Var5.f15907i) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorGroupMainFragment.K1(this.f57078a, view);
                }
            });
        }
        bx.a0 a0Var6 = (bx.a0) getMViewBinding();
        if (a0Var6 != null && (linearLayoutCompat = a0Var6.f15900b) != null) {
            linearLayoutCompat.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorGroupMainFragment.L1(this.f57088a, view);
                }
            });
        }
        bx.a0 a0Var7 = (bx.a0) getMViewBinding();
        if (a0Var7 != null && (bLFrameLayout = a0Var7.f15904f) != null) {
            bLFrameLayout.setVisibility(0);
        }
        bx.a0 a0Var8 = (bx.a0) getMViewBinding();
        if (a0Var8 == null || (downloadMovieAdView = a0Var8.f15923y) == null) {
            return;
        }
        Subject subject = this.subject;
        downloadMovieAdView.loadAd(subject != null ? subject.getGenre() : null);
    }

    private final void j1() {
    }

    private final void k1() {
        List<DownloadResolutionItem> resolutionList;
        DownloadListBean downloadListBean = (DownloadListBean) s1().s().f();
        if (downloadListBean == null || (resolutionList = downloadListBean.getResolutionList()) == null) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.r(c0922a, tag, new String[]{"checkSeason2RestResolution curSeason:" + this.curSeason + ",resolutionList: :" + resolutionList}, false, 4, null);
        List listX1 = X1(resolutionList);
        if (listX1.size() <= 1) {
            D1(listX1, 0);
            return;
        }
        Integer resolution = downloadListBean.getResolution();
        int iIntValue = resolution != null ? resolution.intValue() : 0;
        int i10 = -1;
        int i11 = com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", -1);
        Iterator it = listX1.iterator();
        int i12 = 0;
        while (true) {
            if (!it.hasNext()) {
                i12 = -1;
                break;
            }
            int resolution2 = ((DownloadResolutionItem) it.next()).getResolution();
            Integer num = this.currentResolution;
            if (num != null && resolution2 == num.intValue()) {
                break;
            } else {
                i12++;
            }
        }
        if (i12 < 0) {
            Iterator it2 = listX1.iterator();
            i12 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i12 = -1;
                    break;
                } else if (((DownloadResolutionItem) it2.next()).getResolution() == i11) {
                    break;
                } else {
                    i12++;
                }
            }
        }
        if (i12 < 0 && iIntValue > 0) {
            Iterator it3 = listX1.iterator();
            int i13 = 0;
            while (it3.hasNext()) {
                if (((DownloadResolutionItem) it3.next()).getResolution() == iIntValue) {
                    i10 = i13;
                    break;
                }
                i13++;
            }
            i12 = i10;
        }
        if (i12 < 0) {
            i12 = 0;
        }
        int i14 = 0;
        for (Object obj : listX1) {
            int i15 = i14 + 1;
            if (i14 < 0) {
                CollectionsKt.u();
            }
            ((DownloadResolutionItem) obj).setSelected(i14 == i12);
            i14 = i15;
        }
        D1(listX1, i12);
    }

    private final DownloadReDetectorGroupFragment l1(int resolution, int resolutionPosition, boolean isShowLoading) {
        final DownloadReDetectorGroupFragment downloadReDetectorGroupFragmentA = DownloadReDetectorGroupFragment.INSTANCE.a(this.pageFrom, this.lastPageFrom, this.subject, this.curSubjectId, this.groupId, this.ops, this.targetResourceId, Integer.valueOf(resolution), resolutionPosition, this.showPremiumIfNeed, isShowLoading, this.curSeason, this.curTabIndex);
        downloadReDetectorGroupFragmentA.r1(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return DownloadReDetectorGroupMainFragment.m1(this.f56992a, (List) obj, ((Boolean) obj2).booleanValue());
            }
        });
        downloadReDetectorGroupFragmentA.s1(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadReDetectorGroupMainFragment.n1(downloadReDetectorGroupFragmentA, this, (String) obj);
            }
        });
        downloadReDetectorGroupFragmentA.u1(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadReDetectorGroupMainFragment.o1(this.f57010a, ((Boolean) obj).booleanValue());
            }
        });
        downloadReDetectorGroupFragmentA.v1(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadReDetectorGroupMainFragment.p1(this.f57018a, ((Boolean) obj).booleanValue());
            }
        });
        return downloadReDetectorGroupFragmentA;
    }

    public static final Unit m1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, List list, boolean z10) {
        Intrinsics.h(list, "list");
        downloadReDetectorGroupMainFragment.V1(list, z10);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit n1(DownloadReDetectorGroupFragment downloadReDetectorGroupFragment, DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, String str) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        if (!downloadReDetectorGroupFragment.isAdded() || downloadReDetectorGroupFragment.isDetached() || downloadReDetectorGroupFragment.isRemoving()) {
            return Unit.f64096a;
        }
        if (str == null || str.length() == 0) {
            bx.a0 a0Var = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var != null && (appCompatTextView = a0Var.f15913o) != null) {
                appCompatTextView.setText(downloadReDetectorGroupFragment.getString(com.transsnet.downloader.R$string.str_download));
            }
        } else {
            bx.a0 a0Var2 = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var2 != null && (appCompatTextView2 = a0Var2.f15913o) != null) {
                appCompatTextView2.setText(downloadReDetectorGroupFragment.getString(com.transsnet.downloader.R$string.str_download) + " · " + str);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit o1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, boolean z10) {
        FrameLayout frameLayout;
        bx.a0 a0Var = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (frameLayout = a0Var.f15905g) != null) {
            frameLayout.setVisibility(z10 ? 0 : 8);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit p1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, boolean z10) {
        BLFrameLayout bLFrameLayout;
        bx.a0 a0Var = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (bLFrameLayout = a0Var.f15904f) != null) {
            bLFrameLayout.setVisibility(z10 ? 0 : 8);
        }
        return Unit.f64096a;
    }

    private final void q1(String pageName, String pageFrom, String subjectId, String postId, String ops, String resourceId, String taskId) {
        HashMap map = new HashMap();
        map.put(WebConstants.PAGE_FROM, pageFrom);
        map.put("subject_id", subjectId);
        map.put("post_id", postId);
        map.put("ops", ops);
        map.put("resource_id", resourceId);
        map.put("task_id", taskId);
        map.put("module_name", this.moduleName);
        qi.h hVar = qi.h.f69682a;
        if (pageName == null) {
            pageName = "download_click";
        }
        hVar.q(pageName, "download_click", map);
        Bundle bundle = new Bundle();
        bundle.putString("resource_id", resourceId);
        bundle.putString("subject_id", subjectId);
        com.transsion.baselib.report.e.f42196a.l("download_click", bundle, getContext());
    }

    public final com.transsnet.downloader.viewmodel.k0 r1() {
        return (com.transsnet.downloader.viewmodel.k0) this.detailDownloadViewModel.getValue();
    }

    private final DownloadResourcesDetectorViewModel s1() {
        return (DownloadResourcesDetectorViewModel) this.groupMainViewModel.getValue();
    }

    private final StartDownloadHelper t1() {
        return (StartDownloadHelper) this.startDownloadHelper.getValue();
    }

    public static final DownloadResourcesDetectorViewModel v1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
        return (DownloadResourcesDetectorViewModel) new androidx.p009lifecycle.v0(downloadReDetectorGroupMainFragment).a(DownloadResourcesDetectorViewModel.class);
    }

    private final void w1() {
        List listY0 = getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        Iterator it = listY0.iterator();
        while (it.hasNext()) {
            getChildFragmentManager().p().p((Fragment) it.next()).l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void x1(List dubsList, int dubsPosition) {
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadResolutionTabView downloadResolutionTabView2;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarO;
        DownloadResolutionTabView downloadResolutionTabView3;
        bx.a0 a0Var = (bx.a0) getMViewBinding();
        if (a0Var != null && (downloadResolutionTabView3 = a0Var.f15922x) != null) {
            downloadResolutionTabView3.setAudioClickListener(new Function0() {
                @Override
                public final Object invoke() {
                    return DownloadReDetectorGroupMainFragment.y1(this.f57110a);
                }
            });
        }
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null && (viewModel = getViewModel()) != null && (b0VarO = viewModel.o()) != null) {
            b0VarO.j(parentFragment, new d(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadReDetectorGroupMainFragment.z1(this.f56927a, (DubsInfo) obj);
                }
            }));
        }
        bx.a0 a0Var2 = (bx.a0) getMViewBinding();
        if (a0Var2 != null && (downloadResolutionTabView2 = a0Var2.f15922x) != null) {
            downloadResolutionTabView2.setAudioItemClickListener(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return DownloadReDetectorGroupMainFragment.A1(this.f56937a, ((Integer) obj).intValue(), (DubsInfo) obj2);
                }
            });
        }
        bx.a0 a0Var3 = (bx.a0) getMViewBinding();
        if (a0Var3 == null || (downloadResolutionTabView = a0Var3.f15922x) == null) {
            return;
        }
        downloadResolutionTabView.setAudioContentData(dubsList, dubsPosition);
    }

    public static final Unit y1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
        androidx.p009lifecycle.b0 b0VarP;
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorGroupMainFragment.getViewModel();
        if (viewModel != null && (b0VarP = viewModel.p()) != null) {
            b0VarP.q(9);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit z1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, DubsInfo dubsInfo) {
        DownloadResolutionTabView downloadResolutionTabView;
        androidx.p009lifecycle.b0 b0VarG;
        BLFrameLayout bLFrameLayout;
        String subjectId = dubsInfo.getSubjectId();
        if (subjectId != null) {
            bx.a0 a0Var = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var != null && (bLFrameLayout = a0Var.f15904f) != null) {
                uf.c.k(bLFrameLayout);
            }
            downloadReDetectorGroupMainFragment.curSubjectId = subjectId;
            DownloadResourcesDetectorViewModel viewModel = downloadReDetectorGroupMainFragment.getViewModel();
            if (viewModel != null && (b0VarG = viewModel.g()) != null) {
                b0VarG.q(subjectId);
            }
            DownloadResourcesDetectorViewModel viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
            if (viewModel2 != null) {
                viewModel2.u(subjectId);
            }
            bx.a0 a0Var2 = (bx.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var2 != null && (downloadResolutionTabView = a0Var2.f15922x) != null) {
                downloadResolutionTabView.updateAudioTrack(dubsInfo.getLanName());
            }
        }
        return Unit.f64096a;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initViewData() {
        initView();
        j1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initViewModel() {
        String subjectId;
        androidx.p009lifecycle.b0 b0VarG;
        androidx.p009lifecycle.b0 b0VarN;
        androidx.p009lifecycle.b0 b0VarY;
        bx.a0 a0Var;
        DownloadResolutionTabView downloadResolutionTabView;
        final int i10 = com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 0);
        Subject subject = this.subject;
        if (subject != null && (a0Var = (bx.a0) getMViewBinding()) != null && (downloadResolutionTabView = a0Var.f15922x) != null) {
            downloadResolutionTabView.setSubject(subject);
        }
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarY = viewModel.y()) != null) {
            b0VarY.j(this, new d(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadReDetectorGroupMainFragment.O1(this.f56908a, i10, (ResourcesSeasonList) obj);
                }
            }));
        }
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null && (b0VarN = viewModel2.n()) != null) {
            b0VarN.j(this, new d(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadReDetectorGroupMainFragment.M1(this.f57026a, (DubsInfoData) obj);
                }
            }));
        }
        s1().s().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadReDetectorGroupMainFragment.N1(this.f57050a, (DownloadListBean) obj);
            }
        }));
        Subject subject2 = this.subject;
        if (subject2 != null && (subjectId = subject2.getSubjectId()) != null) {
            this.curSubjectId = subjectId;
            DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
            if (viewModel3 != null && (b0VarG = viewModel3.g()) != null) {
                b0VarG.q(this.curSubjectId);
            }
            DownloadResourcesDetectorViewModel viewModel4 = getViewModel();
            if (viewModel4 != null) {
                viewModel4.t(subjectId);
            }
        }
        getParentFragment();
        DownloadResourcesDetectorViewModel viewModel5 = getViewModel();
        if (viewModel5 != null) {
            viewModel5.v();
        }
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        String string3;
        String string4;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        HashMap mapG5;
        String string5;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("extra_page_from")) == null) {
            string = "";
        }
        this.pageFrom = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("extra_last_page_from")) == null) {
            string2 = "";
        }
        this.lastPageFrom = string2;
        Bundle arguments3 = getArguments();
        this.subject = (Subject) (arguments3 != null ? arguments3.getSerializable("extra_subject") : null);
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string3 = arguments4.getString("extra_ops")) == null) {
            string3 = "";
        }
        this.ops = string3;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string4 = arguments5.getString("extra_target_resource_id")) == null) {
            string4 = "";
        }
        this.targetResourceId = string4;
        Bundle arguments6 = getArguments();
        if (arguments6 != null && (string5 = arguments6.getString("extra_module_name")) != null) {
            str = string5;
        }
        this.moduleName = str;
        Bundle arguments7 = getArguments();
        this.targetSeason = arguments7 != null ? arguments7.getInt("extra_season") : 0;
        Bundle arguments8 = getArguments();
        this.dialogStyle = arguments8 != null ? arguments8.getBoolean("extra_dialog_style") : true;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG5 = logViewConfig.g()) != null) {
            mapG5.put(WebConstants.PAGE_FROM, this.pageFrom);
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG4 = logViewConfig2.g()) != null) {
            mapG4.put("last_page_from", this.lastPageFrom);
        }
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
            Subject subject = this.subject;
            mapG3.put("subject_id", subject != null ? subject.getSubjectId() : null);
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
            mapG2.put("ops", this.ops);
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 == null || (mapG = logViewConfig5.g()) == null) {
            return;
        }
        mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "2");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onDestroy() {
        DownloadMovieAdView downloadMovieAdView;
        DownloadListManager.a aVar = DownloadListManager.f57771m;
        aVar.a().Y(null);
        try {
            aVar.a().A().clear();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        bx.a0 a0Var = (bx.a0) getMViewBinding();
        if (a0Var != null && (downloadMovieAdView = a0Var.f15923y) != null) {
            downloadMovieAdView.onDestroy();
        }
        super.onDestroy();
    }

    @Override
    public void onResume() {
        super.onResume();
        j1();
    }

    @Override
    public void retryLoadData() {
    }

    @Override
    public bx.a0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.a0 a0VarC = bx.a0.c(inflater);
        Intrinsics.g(a0VarC, "inflate(...)");
        return a0VarC;
    }

    @Override
    public void v0() {
        super.v0();
    }

    @Override
    public void w0() {
        super.w0();
    }

    @Override
    public void x0() {
        super.x0();
    }

    @Override
    public void y0() {
        super.y0();
    }
}
