package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.DefaultView;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.TnTextView;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.ShortTVRespData;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.config.RenderType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.control.SubjectVideoPagerChangeControl;
import com.transsion.postdetail.helper.ShortTvImmVideoHelper;
import com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoader;
import com.transsion.postdetail.ui.view.ImmVideoLoadMoreView;
import com.transsion.postdetail.ui.view.ImmVideoNoNetworkView;
import com.transsion.postdetail.viewmodel.ImmVideoRequestEntity;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u0087\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001BB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0005J\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u0005J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0005J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010\u0005J\u0017\u0010'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u0019\u0010+\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/J!\u00101\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u00142\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b1\u00102J!\u00103\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u00142\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b3\u00102J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\u0005J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0005J\u0017\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0006H\u0016¢\u0006\u0004\b;\u0010\u0005J\u000f\u0010<\u001a\u00020\u0006H\u0016¢\u0006\u0004\b<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u0010\u0005J\u0017\u0010?\u001a\u00020\u00062\u0006\u0010>\u001a\u00020)H\u0016¢\u0006\u0004\b?\u0010,J\u000f\u0010@\u001a\u00020\u0006H\u0016¢\u0006\u0004\b@\u0010\u0005R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010F\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010CR\u0016\u0010I\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010L\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR$\u0010R\u001a\u0004\u0018\u00010A8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bM\u0010C\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u0016\u0010T\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010CR\u0016\u0010V\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010HR\u0016\u0010X\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010KR\u001b\u0010^\u001a\u00020Y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]R\u0018\u0010b\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010f\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010t\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010KR\u0016\u0010v\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010KR\u0016\u0010x\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010KR\u0016\u0010z\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010HR%\u0010\u0082\u0001\u001a\u00020{8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001¨\u0006\u0088\u0001"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lwn/r;", "Lim/f;", "<init>", "()V", "", "initPlayer", "initAdapter", "initViewModel", "initBack", "observeRemoveVideo", "Lcom/transsion/moviedetailapi/bean/ShortTVRespData;", "subjectBean", "L0", "(Lcom/transsion/moviedetailapi/bean/ShortTVRespData;)V", "showNotNetError", "showEmpty", "Landroid/content/Context;", "context", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "getNotNetErrorView", "hideProgress", "showProgress", "loadMore", "loadData", "doLoadData", "", "it", "scrollToPosition", "(I)V", "initAd", "J0", "(Landroid/content/Context;)V", "initNonAd", "Landroid/view/LayoutInflater;", "inflater", "y0", "(Landroid/view/LayoutInflater;)Lwn/r;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "onResume", "onPause", "", "hidden", "onHiddenChanged", "(Z)V", "logPause", "logResume", "onDestroy", "outState", "onSaveInstanceState", "onMemberStateChange", "", "a", "Ljava/lang/String;", "mPostId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mItemType", "c", "I", "mTabId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "fromComment", "e", "getTran_ops", "()Ljava/lang/String;", "setTran_ops", "(Ljava/lang/String;)V", "tran_ops", "f", "mNextPage", "g", "mPerPage", "h", "videoLoadMore", "Lcom/transsion/postdetail/viewmodel/w;", "i", "Lkotlin/Lazy;", "v0", "()Lcom/transsion/postdetail/viewmodel/w;", "mVideoViewModel", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "j", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "mPagerLayoutManager", "Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;", "mPagerChangeControl", "Lcom/transsion/postdetail/ui/adapter/i;", "l", "Lcom/transsion/postdetail/ui/adapter/i;", "mAdapter", "Lcom/transsion/player/orplayer/f;", "m", "Lcom/transsion/player/orplayer/f;", "mOrPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "n", "Lcom/transsion/player/ui/ORPlayerView;", "mOrPlayerView", "o", "isLoadingData", TtmlNode.TAG_P, "isFirstLoadMore", CampaignEx.JSON_KEY_AD_Q, "attachToMain", CampaignEx.JSON_KEY_AD_R, "savedCurrentIndex", "", "s", "J", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "resumeTimeStamp", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "t", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", TmcStartParams.KEY_URL_SHORT, "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvVideoFragment extends BaseFragment<wn.r> implements im.f {

    public static final Companion INSTANCE = new Companion(null);

    private int mTabId;

    private boolean fromComment;

    private String tran_ops;

    private boolean videoLoadMore;

    private final Lazy mVideoViewModel;

    private PagerLayoutManager mPagerLayoutManager;

    private SubjectVideoPagerChangeControl mPagerChangeControl;

    private com.transsion.postdetail.ui.adapter.i mAdapter;

    private com.transsion.player.orplayer.f mOrPlayer;

    private ORPlayerView mOrPlayerView;

    private boolean isLoadingData;

    private boolean isFirstLoadMore;

    private boolean attachToMain;

    private int savedCurrentIndex;

    private long resumeTimeStamp;

    private BiddingListManager v3ListManager;

    private String mPostId = "";

    private String mItemType = "";

    private String mNextPage = "1";

    private int mPerPage = 5;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTvVideoFragment a(Context context, String str, String str2, Integer num, boolean z10, boolean z11, String str3, boolean z12) {
            String string;
            Intrinsics.h(context, "context");
            ShortTvVideoFragment shortTvVideoFragment = new ShortTvVideoFragment();
            shortTvVideoFragment.J0(context);
            ImmVideoRequestEntity immVideoRequestEntity = new ImmVideoRequestEntity();
            immVideoRequestEntity.setPage("1");
            immVideoRequestEntity.setPerPage(5);
            immVideoRequestEntity.setSessionId(jg.b.f63119a.h());
            Uri uriB = com.transsion.baselib.report.h.f42200a.b();
            if (uriB == null || (string = uriB.toString()) == null) {
                string = "";
            }
            immVideoRequestEntity.setDeepLink(string);
            immVideoRequestEntity.setUserPrefer("");
            immVideoRequestEntity.setLatest_events(new ej.a(ej.b.f59709a.e()));
            immVideoRequestEntity.setPostId("0");
            immVideoRequestEntity.setTabId(num != null ? num.intValue() : 0);
            immVideoRequestEntity.setImmersiveRecType(1);
            shortTvVideoFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("id", str), TuplesKt.a("item_type", str2), TuplesKt.a("tab_id", num), TuplesKt.a("video_load_more", Boolean.valueOf(z10)), TuplesKt.a("from_comment", Boolean.valueOf(z11)), TuplesKt.a("rec_ops", str3), TuplesKt.a("attach_to_main", Boolean.valueOf(z12)), TuplesKt.a("yy_preload_id", Integer.valueOf(am.e.f407a.c(new VideoImmersiveDataLoader(immVideoRequestEntity))))));
            return shortTvVideoFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends androidx.activity.u {
        b() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            FragmentActivity activity = ShortTvVideoFragment.this.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    public static final class c implements yg.m {
        c() {
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
            t6.f fVarH0;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (((ShortTVRespData) ShortTvVideoFragment.this.v0().l().f()) == null) {
                ShortTvVideoFragment.this.loadData();
                return;
            }
            com.transsion.postdetail.ui.adapter.i iVar = ShortTvVideoFragment.this.mAdapter;
            if (((iVar == null || (fVarH0 = iVar.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail) {
                ShortTvVideoFragment.this.loadMore();
            }
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47564a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47564a = function;
        }

        @Override
        public final Function a() {
            return this.f47564a;
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
            this.f47564a.invoke(obj);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.ShortTvVideoFragment$onDestroy$1", f = "ShortTvVideoFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ShortTvVideoFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            com.transsion.player.orplayer.f fVar = ShortTvVideoFragment.this.mOrPlayer;
            if (fVar != null) {
                fVar.stop();
            }
            com.transsion.player.orplayer.f fVar2 = ShortTvVideoFragment.this.mOrPlayer;
            if (fVar2 != null) {
                fVar2.release();
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public ShortTvVideoFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.mVideoViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.postdetail.viewmodel.w.class), new Function0<androidx.p009lifecycle.x0>() {
            {
                super(0);
            }

            @Override
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.isFirstLoadMore = true;
        this.savedCurrentIndex = -1;
    }

    public static final void A0(final ShortTvVideoFragment shortTvVideoFragment) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        if (!yg.l.f76264a.e()) {
            wn.r mViewBinding = shortTvVideoFragment.getMViewBinding();
            if (mViewBinding == null || (recyclerView = mViewBinding.f74527d) == null) {
                return;
            }
            recyclerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    ShortTvVideoFragment.C0(this.f47612a);
                }
            }, 500L);
            return;
        }
        if (shortTvVideoFragment.isFirstLoadMore) {
            shortTvVideoFragment.isFirstLoadMore = false;
            shortTvVideoFragment.loadMore();
            return;
        }
        wn.r mViewBinding2 = shortTvVideoFragment.getMViewBinding();
        if (mViewBinding2 == null || (recyclerView2 = mViewBinding2.f74527d) == null) {
            return;
        }
        recyclerView2.postDelayed(new Runnable() {
            @Override
            public final void run() {
                ShortTvVideoFragment.B0(this.f47603a);
            }
        }, 500L);
    }

    public static final void B0(ShortTvVideoFragment shortTvVideoFragment) {
        shortTvVideoFragment.loadMore();
    }

    public static final void C0(ShortTvVideoFragment shortTvVideoFragment) {
        t6.f fVarH0;
        shortTvVideoFragment.isLoadingData = false;
        com.transsion.postdetail.ui.adapter.i iVar = shortTvVideoFragment.mAdapter;
        if (iVar == null || (fVarH0 = iVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void D0(ShortTvVideoFragment shortTvVideoFragment, View view) {
        shortTvVideoFragment.requireActivity().finish();
    }

    public static final Unit E0(ShortTvVideoFragment shortTvVideoFragment, ShortTVRespData shortTVRespData) {
        t6.f fVarH0;
        com.transsion.postdetail.ui.adapter.i iVar;
        t6.f fVarH1;
        List<Object> data;
        shortTvVideoFragment.isLoadingData = false;
        if (shortTVRespData == null) {
            com.transsion.postdetail.ui.adapter.i iVar2 = shortTvVideoFragment.mAdapter;
            if (iVar2 == null || (data = iVar2.getData()) == null || data.size() != 0) {
                com.transsion.postdetail.ui.adapter.i iVar3 = shortTvVideoFragment.mAdapter;
                if (iVar3 != null && (fVarH0 = iVar3.h0()) != null && fVarH0.r() && (iVar = shortTvVideoFragment.mAdapter) != null && (fVarH1 = iVar.h0()) != null) {
                    fVarH1.v();
                }
            } else if (yg.l.f76264a.e()) {
                shortTvVideoFragment.showEmpty();
            } else {
                shortTvVideoFragment.showNotNetError();
            }
        } else {
            shortTvVideoFragment.L0(shortTVRespData);
        }
        return Unit.f64096a;
    }

    public static final Unit F0(ShortTvVideoFragment shortTvVideoFragment, String str) {
        if (TextUtils.equals("0", str)) {
            gx.b.f61207a.a().e(shortTvVideoFragment.mPostId);
            FragmentActivity activity = shortTvVideoFragment.getActivity();
            if (activity != null) {
                activity.finish();
            }
        } else {
            fh.b.a aVar = fh.b.f60176a;
            FragmentActivity activity2 = shortTvVideoFragment.getActivity();
            aVar.e(activity2 != null ? activity2.getString(R$string.delete_post_failed) : null);
        }
        return Unit.f64096a;
    }

    public static final Unit G0(ShortTvVideoFragment shortTvVideoFragment, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            shortTvVideoFragment.showProgress();
            shortTvVideoFragment.loadData();
        } else {
            shortTvVideoFragment.L0(new ShortTVRespData(CollectionsKt.U0(list2), null, false));
        }
        return Unit.f64096a;
    }

    public static final Unit H0(final ShortTvVideoFragment shortTvVideoFragment, final Integer num) {
        RecyclerView recyclerView;
        try {
            if (num.intValue() >= 0) {
                SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = shortTvVideoFragment.mPagerChangeControl;
                if (subjectVideoPagerChangeControl != null) {
                    subjectVideoPagerChangeControl.r();
                }
                com.transsion.postdetail.ui.adapter.i iVar = shortTvVideoFragment.mAdapter;
                if (iVar != null) {
                    Intrinsics.e(num);
                    iVar.G0(num.intValue());
                }
                wn.r mViewBinding = shortTvVideoFragment.getMViewBinding();
                if (mViewBinding != null && (recyclerView = mViewBinding.f74527d) != null) {
                    recyclerView.post(new Runnable() {
                        @Override
                        public final void run() {
                            ShortTvVideoFragment.I0(this.f47618a, num);
                        }
                    });
                }
            }
        } catch (Throwable unused) {
        }
        return Unit.f64096a;
    }

    public static final void I0(ShortTvVideoFragment shortTvVideoFragment, Integer num) {
        RecyclerView.a0 a0VarFindViewHolderForAdapterPosition;
        RecyclerView recyclerView;
        Integer numValueOf;
        wn.r mViewBinding = shortTvVideoFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f74527d) == null) {
            a0VarFindViewHolderForAdapterPosition = null;
        } else {
            com.transsion.postdetail.ui.adapter.i iVar = shortTvVideoFragment.mAdapter;
            if (iVar != null) {
                int iA0 = iVar.a0();
                Intrinsics.e(num);
                numValueOf = Integer.valueOf(iA0 + num.intValue());
            } else {
                numValueOf = num;
            }
            Intrinsics.e(numValueOf);
            a0VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(numValueOf.intValue());
        }
        SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = shortTvVideoFragment.mPagerChangeControl;
        if (subjectVideoPagerChangeControl != null) {
            Intrinsics.e(num);
            subjectVideoPagerChangeControl.f(num.intValue(), true, a0VarFindViewHolderForAdapterPosition != null ? a0VarFindViewHolderForAdapterPosition.itemView : null);
        }
    }

    public final void J0(Context context) {
        ShortTvImmVideoHelper.f46849k.a().v(context);
    }

    public static final void K0(ShortTvVideoFragment shortTvVideoFragment, int i10) {
        PagerLayoutManager pagerLayoutManager = shortTvVideoFragment.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            View viewT = pagerLayoutManager.T();
            if (viewT != null) {
                wf.a.C0922a.r(wf.a.f74274a, "ShortTvImmVideoPlayer", new String[]{"initView2， scrollToPosition ：" + i10}, false, 4, null);
                SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = shortTvVideoFragment.mPagerChangeControl;
                if (subjectVideoPagerChangeControl != null) {
                    subjectVideoPagerChangeControl.f(i10, true, viewT);
                    return;
                }
                return;
            }
            int childCount = pagerLayoutManager.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = pagerLayoutManager.getChildAt(i11);
                if (childAt != null && pagerLayoutManager.getPosition(childAt) == i10) {
                    wf.a.C0922a.r(wf.a.f74274a, "ShortTvImmVideoPlayer", new String[]{"initView， scrollToPosition ：" + i10}, false, 4, null);
                    SubjectVideoPagerChangeControl subjectVideoPagerChangeControl2 = shortTvVideoFragment.mPagerChangeControl;
                    if (subjectVideoPagerChangeControl2 != null) {
                        subjectVideoPagerChangeControl2.f(i10, true, childAt);
                        return;
                    }
                    return;
                }
            }
        }
    }

    private final void L0(ShortTVRespData subjectBean) {
        String nextPage;
        com.transsion.postdetail.ui.adapter.i iVar;
        t6.f fVarH0;
        t6.f fVarH1;
        com.transsion.postdetail.ui.adapter.i iVar2;
        t6.f fVarH2;
        String url;
        Media video;
        hideProgress();
        Pager pager = subjectBean.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "1";
        }
        this.mNextPage = nextPage;
        List<Subject> items = subjectBean.getItems();
        if (items != null) {
            Iterator<Subject> it = items.iterator();
            while (it.hasNext()) {
                Subject next = it.next();
                ShortTVItem shortTVFirstEp = next.getShortTVFirstEp();
                if (((shortTVFirstEp == null || (video = shortTVFirstEp.getVideo()) == null) ? null : video.getVideoAddress()) != null) {
                    ShortTVItem shortTVFirstEp2 = next.getShortTVFirstEp();
                    Media video2 = shortTVFirstEp2 != null ? shortTVFirstEp2.getVideo() : null;
                    Intrinsics.e(video2);
                    Video videoAddress = video2.getVideoAddress();
                    if (videoAddress == null || (url = videoAddress.getUrl()) == null || url.length() != 0) {
                    }
                }
                it.remove();
            }
            com.transsion.postdetail.ui.adapter.i iVar3 = this.mAdapter;
            List<Object> data = iVar3 != null ? iVar3.getData() : null;
            ArrayList arrayList = new ArrayList();
            if (data == null || !(!data.isEmpty())) {
                arrayList.addAll(items);
            } else {
                Iterator<Subject> it2 = items.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
            SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = this.mPagerChangeControl;
            if (subjectVideoPagerChangeControl != null) {
                subjectVideoPagerChangeControl.g(arrayList);
            }
            SubjectVideoPagerChangeControl subjectVideoPagerChangeControl2 = this.mPagerChangeControl;
            if (subjectVideoPagerChangeControl2 != null) {
                subjectVideoPagerChangeControl2.o();
            }
            if (this.attachToMain) {
                ShortTvImmVideoHelper shortTvImmVideoHelperA = ShortTvImmVideoHelper.f46849k.a();
                com.transsion.postdetail.ui.adapter.i iVar4 = this.mAdapter;
                shortTvImmVideoHelperA.z(iVar4 != null ? iVar4.getData() : null);
            }
        }
        com.transsion.postdetail.ui.adapter.i iVar5 = this.mAdapter;
        if (iVar5 != null && (fVarH1 = iVar5.h0()) != null && fVarH1.r() && (iVar2 = this.mAdapter) != null && (fVarH2 = iVar2.h0()) != null) {
            fVarH2.s();
        }
        Pager pager2 = subjectBean.getPager();
        if ((pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) && (iVar = this.mAdapter) != null && (fVarH0 = iVar.h0()) != null) {
            t6.f.u(fVarH0, false, 1, null);
        }
        int i10 = this.savedCurrentIndex;
        if (i10 >= 0) {
            scrollToPosition(i10);
            this.savedCurrentIndex = -1;
        }
    }

    private final void doLoadData() {
        if (this.isLoadingData) {
            return;
        }
        this.isLoadingData = true;
        v0().k(this.mPostId, this.mTabId, this.mNextPage, this.mPerPage, 1);
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        defaultView.setGravity(17);
        defaultView.setDefaultImageViewVisibility(0);
        defaultView.setDefaultImage(R$mipmap.ic_no_content);
        String string = context.getString(com.tn.lib.widget.R$string.no_content);
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
                ShortTvVideoFragment.u0(this.f47678a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    private final View getNotNetErrorView(Context context) {
        final ImmVideoNoNetworkView immVideoNoNetworkView = new ImmVideoNoNetworkView(context);
        uf.c.e(immVideoNoNetworkView);
        immVideoNoNetworkView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvVideoFragment.w0(immVideoNoNetworkView, this);
            }
        });
        immVideoNoNetworkView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvVideoFragment.x0();
            }
        });
        com.tn.lib.view.o.a("shorttv_detail_video");
        return immVideoNoNetworkView;
    }

    private final void hideProgress() {
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        this.v3ListManager = biddingListManager;
        wn.r mViewBinding = getMViewBinding();
        biddingListManager.F(mViewBinding != null ? mViewBinding.f74527d : null);
        BiddingListManager biddingListManager2 = this.v3ListManager;
        if (biddingListManager2 != null) {
            biddingListManager2.A(androidx.p009lifecycle.v.a(this));
        }
        BiddingListManager biddingListManager3 = this.v3ListManager;
        if (biddingListManager3 != null) {
            biddingListManager3.G("VideoForYouListScene");
        }
        BiddingListManager biddingListManager4 = this.v3ListManager;
        if (biddingListManager4 != null) {
            biddingListManager4.z(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return ShortTvVideoFragment.z0(this.f47685a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
                }
            });
        }
    }

    private final void initAdapter() {
        com.transsion.postdetail.ui.adapter.i iVar = new com.transsion.postdetail.ui.adapter.i(new ArrayList(), this, this.mPostId, this.mItemType, this.attachToMain);
        iVar.h0().z(this.videoLoadMore);
        if (this.videoLoadMore) {
            iVar.h0().C(new ImmVideoLoadMoreView());
            iVar.h0().z(true);
            iVar.h0().y(true);
            iVar.h0().E(2);
            iVar.h0().D(new r6.f() {
                @Override
                public final void a() {
                    ShortTvVideoFragment.A0(this.f47698a);
                }
            });
        }
        this.mAdapter = iVar;
    }

    private final void initBack() {
        AppCompatImageView appCompatImageView;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView2;
        ConstraintLayout constraintLayout;
        wn.r mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (constraintLayout = mViewBinding.f74528e) == null) ? null : constraintLayout.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).topMargin = com.blankj.utilcode.util.d.c();
        if (this.mPostId.length() == 0) {
            wn.r mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (appCompatImageView2 = mViewBinding2.f74525b) == null) {
                return;
            }
            uf.c.g(appCompatImageView2);
            return;
        }
        wn.r mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (tnTextView = mViewBinding3.f74529f) != null) {
            uf.c.g(tnTextView);
        }
        wn.r mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView = mViewBinding4.f74525b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTvVideoFragment.D0(this.f47690a, view);
                }
            });
        }
        requireActivity().getOnBackPressedDispatcher().i(this, new b());
    }

    private final void initNonAd() {
    }

    private final void initPlayer() {
        com.transsion.player.orplayer.f fVarA;
        eo.b bVar = eo.b.f59776a;
        if (bVar.b()) {
            fVarA = new pn.e(null, 1, null);
            fVarA.setLooping(true);
            fVarA.prepare();
            fVarA.play();
        } else {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            fVarA = new com.transsion.player.orplayer.f.a(contextRequireContext).b(new hn.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, true, false, false, false, null, 126975, null)).a();
        }
        this.mOrPlayer = fVarA;
        if (bVar.b()) {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            ORPlayerView oRPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.SURFACE_VIEW);
            this.mOrPlayerView = oRPlayerView;
            com.transsion.player.orplayer.f fVar = this.mOrPlayer;
            if (fVar != null) {
                fVar.setSurfaceView(oRPlayerView.getSurface());
            }
        } else {
            FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
            ORPlayerView oRPlayerView2 = new ORPlayerView(fragmentActivityRequireActivity2, RenderType.TEXTURE_VIEW);
            this.mOrPlayerView = oRPlayerView2;
            com.transsion.player.orplayer.f fVar2 = this.mOrPlayer;
            if (fVar2 != null) {
                fVar2.setTextureView(oRPlayerView2.getTextureView());
            }
        }
        com.transsion.player.orplayer.f fVar3 = this.mOrPlayer;
        if (fVar3 != null) {
            fVar3.setLooping(true);
        }
    }

    private final void initViewModel() {
        v0().l().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoFragment.E0(this.f47584a, (ShortTVRespData) obj);
            }
        }));
        v0().j().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoFragment.F0(this.f47643a, (String) obj);
            }
        }));
        if (this.attachToMain) {
            ShortTvImmVideoHelper.f46849k.a().n().j(this, new d(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTvVideoFragment.G0(this.f47649a, (List) obj);
                }
            }));
        }
    }

    public final void loadData() {
        doLoadData();
    }

    public final void loadMore() {
        loadData();
    }

    private final void observeRemoveVideo() {
        v0().o().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoFragment.H0(this.f47672a, (Integer) obj);
            }
        }));
    }

    private final void scrollToPosition(final int it) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<Object> data;
        com.transsion.postdetail.ui.adapter.i iVar = this.mAdapter;
        if (((iVar == null || (data = iVar.getData()) == null) ? 0 : data.size()) <= it) {
            return;
        }
        wn.r mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f74527d) != null) {
            recyclerView2.scrollToPosition(it);
        }
        wn.r mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f74527d) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                ShortTvVideoFragment.K0(this.f47593a, it);
            }
        });
    }

    private final void showEmpty() {
        com.transsion.postdetail.ui.adapter.i iVar;
        List<Object> data;
        hideProgress();
        com.transsion.postdetail.ui.adapter.i iVar2 = this.mAdapter;
        if (iVar2 == null || (data = iVar2.getData()) == null || !(!data.isEmpty())) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View emptyView = getEmptyView(contextRequireContext);
            if (emptyView == null || (iVar = this.mAdapter) == null) {
                return;
            }
            iVar.Y0(emptyView);
        }
    }

    private final void showNotNetError() {
        com.transsion.postdetail.ui.adapter.i iVar;
        List<Object> data;
        hideProgress();
        com.transsion.postdetail.ui.adapter.i iVar2 = this.mAdapter;
        if (iVar2 == null || (data = iVar2.getData()) == null || !(!data.isEmpty())) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View notNetErrorView = getNotNetErrorView(contextRequireContext);
            if (notNetErrorView == null || (iVar = this.mAdapter) == null) {
                return;
            }
            iVar.Y0(notNetErrorView);
        }
    }

    private final void showProgress() {
    }

    public static final void u0(ShortTvVideoFragment shortTvVideoFragment, DefaultView defaultView, View view) {
        shortTvVideoFragment.loadData();
        defaultView.setVisibility(8);
    }

    public final com.transsion.postdetail.viewmodel.w v0() {
        return (com.transsion.postdetail.viewmodel.w) this.mVideoViewModel.getValue();
    }

    public static final Unit w0(ImmVideoNoNetworkView immVideoNoNetworkView, ShortTvVideoFragment shortTvVideoFragment) {
        uf.c.g(immVideoNoNetworkView);
        shortTvVideoFragment.showProgress();
        shortTvVideoFragment.loadData();
        com.tn.lib.view.o.b("shorttv_detail_video");
        return Unit.f64096a;
    }

    public static final Unit x0() {
        com.tn.lib.view.o.c("shorttv_detail_video");
        return Unit.f64096a;
    }

    public static final Unit z0(ShortTvVideoFragment shortTvVideoFragment, int i10, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        if (current != null) {
            Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -1, 67108863, null);
            subject.setNonAdDelegate(current);
            com.transsion.postdetail.ui.adapter.i iVar = shortTvVideoFragment.mAdapter;
            int size = (iVar == null || (data = iVar.getData()) == null) ? 0 : data.size();
            if (i10 <= size) {
                com.transsion.postdetail.ui.adapter.i iVar2 = shortTvVideoFragment.mAdapter;
                if (iVar2 != null) {
                    iVar2.n(i10, subject);
                }
            } else {
                com.transsion.postdetail.ui.adapter.i iVar3 = shortTvVideoFragment.mAdapter;
                if (iVar3 != null) {
                    iVar3.n(size, subject);
                }
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0030  */
    @Override
    public void initData(View view, Bundle savedInstanceState) {
        List listK;
        String nextPage;
        Intrinsics.h(view, "view");
        setNetListener(new c());
        initViewModel();
        ShortTVRespData shortTVRespDataN = v0().n();
        if (shortTVRespDataN == null) {
            listK = ShortTvImmVideoHelper.f46849k.a().k();
        } else {
            Pager pager = shortTVRespDataN.getPager();
            if (pager == null || (nextPage = pager.getNextPage()) == null) {
                nextPage = "1";
            }
            this.mNextPage = nextPage;
            listK = shortTVRespDataN.getItems();
            if (listK == null) {
                listK = ShortTvImmVideoHelper.f46849k.a().k();
            }
        }
        if (!listK.isEmpty()) {
            SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = this.mPagerChangeControl;
            if (subjectVideoPagerChangeControl != null) {
                subjectVideoPagerChangeControl.g(listK);
                return;
            }
            return;
        }
        if (this.attachToMain) {
            ShortTvImmVideoHelper.f46849k.a().t();
        } else {
            showProgress();
            loadData();
        }
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        Intrinsics.h(view, "view");
        int i10 = savedInstanceState != null ? savedInstanceState.getInt("CURRENT_INDEX") : -1;
        this.savedCurrentIndex = i10;
        wf.a.C0922a.r(wf.a.f74274a, "ShortTvImmVideoPlayer", new String[]{"initView， savedCurrentIndex ：" + i10}, false, 4, null);
        initAd();
        initNonAd();
        initAdapter();
        initPlayer();
        initBack();
        observeRemoveVideo();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.mPagerLayoutManager = new PagerLayoutManager(fragmentActivityRequireActivity);
        SubjectVideoPagerChangeControl aVar = eo.b.f59776a.b() ? new com.transsion.postdetail.control.a(this, this.mAdapter, this.mOrPlayer, this.mOrPlayerView, this.mPagerLayoutManager) : new SubjectVideoPagerChangeControl(this, this.mAdapter, this.mOrPlayer, this.mOrPlayerView, this.mPagerLayoutManager);
        this.mPagerChangeControl = aVar;
        PagerLayoutManager pagerLayoutManager = this.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            pagerLayoutManager.X(aVar);
        }
        wn.r mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f74527d) != null) {
            recyclerView.setLayoutManager(this.mPagerLayoutManager);
            recyclerView.setAdapter(this.mAdapter);
            recyclerView.setHasFixedSize(true);
        }
        ShortTvImmVideoHelper shortTvImmVideoHelperA = ShortTvImmVideoHelper.f46849k.a();
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
        shortTvImmVideoHelperA.p(fragmentActivityRequireActivity2);
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            com.transsion.baselib.report.e.f42196a.n("shorttv_detail_video", Long.valueOf(SystemClock.elapsedRealtime() - this.resumeTimeStamp), getContext());
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("shorttv_detail_video", false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        HashMap mapG;
        HashMap mapG2;
        String string2;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("id")) == null) {
            string = "";
        }
        this.mPostId = string;
        Bundle arguments2 = getArguments();
        if (arguments2 != null && (string2 = arguments2.getString("item_type")) != null) {
            str = string2;
        }
        this.mItemType = str;
        Bundle arguments3 = getArguments();
        this.mTabId = arguments3 != null ? arguments3.getInt("tab_id") : 0;
        Bundle arguments4 = getArguments();
        this.videoLoadMore = arguments4 != null ? arguments4.getBoolean("video_load_more", true) : true;
        Bundle arguments5 = getArguments();
        this.fromComment = arguments5 != null ? arguments5.getBoolean("from_comment") : false;
        Bundle arguments6 = getArguments();
        this.tran_ops = arguments6 != null ? arguments6.getString("rec_ops") : null;
        Bundle arguments7 = getArguments();
        this.attachToMain = arguments7 != null ? arguments7.getBoolean("attach_to_main") : false;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
        }
        com.transsion.postdetail.viewmodel.w wVarV0 = v0();
        if (wVarV0 != null) {
            Bundle arguments8 = getArguments();
            wVarV0.q(arguments8 != null ? Integer.valueOf(arguments8.getInt("yy_preload_id")) : null);
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.D(this);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new AnonymousClass1(null), 3, null);
        ShortTvImmVideoHelper.f46849k.a().j();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.v(this);
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                com.transsion.player.orplayer.f fVar = this.mOrPlayer;
                if (fVar != null) {
                    fVar.pause();
                }
                logPause();
            } else {
                com.transsion.player.orplayer.f fVar2 = this.mOrPlayer;
                if (fVar2 != null) {
                    fVar2.play();
                }
                logResume();
            }
            SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = this.mPagerChangeControl;
            if (subjectVideoPagerChangeControl != null) {
                subjectVideoPagerChangeControl.p(hidden);
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void onMemberStateChange() {
        wf.a.C0922a.f(wf.a.f74274a, "co_mem", "VideoFragment --> onMemberStateChange() --> refresh list", false, 4, null);
        com.transsion.postdetail.ui.adapter.i iVar = this.mAdapter;
        if (iVar != null) {
            iVar.n1(null);
        }
        loadData();
    }

    @Override
    public void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override
    public void onResume() {
        super.onResume();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = this.mPagerChangeControl;
        outState.putInt("CURRENT_INDEX", subjectVideoPagerChangeControl != null ? subjectVideoPagerChangeControl.i() : 0);
    }

    @Override
    public wn.r getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        wn.r rVarC = wn.r.c(inflater);
        Intrinsics.g(rVarC, "inflate(...)");
        return rVarC;
    }
}
