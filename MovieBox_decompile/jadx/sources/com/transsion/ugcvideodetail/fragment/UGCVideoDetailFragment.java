package com.transsion.ugcvideodetail.fragment;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.viewpager2.widget.ViewPager2;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.player.longvideo.constants.LongVodContentType;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsion.ugcvideodetail.hepler.UGCVideoFloatManager;
import com.transsion.ugcvideodetail.hepler.UGCVideoPlayFrom;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCLocalVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailAboutCourseView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailPlayListView;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u0000 t2\u00020\u0001:\u0001uB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\n\u0010\bJ\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\bJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001e\u0010\u0003J\u0019\u0010\u001f\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001f\u0010\u0019J%\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#2\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u0003J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\u0003J\u000f\u0010)\u001a\u00020\u0006H\u0014¢\u0006\u0004\b)\u0010\u0003J\u000f\u0010*\u001a\u00020\u0006H\u0014¢\u0006\u0004\b*\u0010\u0003J\u000f\u0010+\u001a\u00020\u001aH\u0016¢\u0006\u0004\b+\u0010,J\u0011\u0010-\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b-\u0010.J\u0011\u0010/\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b/\u0010.J\u000f\u00100\u001a\u00020\u0006H\u0016¢\u0006\u0004\b0\u0010\u0003J\u000f\u00101\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010\u0003J\u000f\u00102\u001a\u00020\u0006H\u0014¢\u0006\u0004\b2\u0010\u0003J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0003J\u000f\u00105\u001a\u000204H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u0002042\u0006\u00107\u001a\u00020\u001aH\u0016¢\u0006\u0004\b8\u00109J\u0011\u0010:\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b:\u00106J\u0017\u0010=\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020;H\u0014¢\u0006\u0004\b=\u0010>J\u0011\u0010@\u001a\u0004\u0018\u00010?H\u0014¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\bB\u0010\u0003J\u000f\u0010C\u001a\u00020\u0006H\u0016¢\u0006\u0004\bC\u0010\u0003R\u001b\u0010I\u001a\u00020D8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u0018\u0010L\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010N\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010KR\u0018\u0010P\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010KR\u0018\u0010R\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010KR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010Y\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010\\\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010^\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010XR\u0018\u0010`\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010KR\u001a\u0010c\u001a\u00020\u000f8\u0016X\u0096D¢\u0006\f\n\u0004\ba\u0010K\u001a\u0004\bb\u0010.R\u001a\u0010f\u001a\u00020\u000f8\u0016X\u0096D¢\u0006\f\n\u0004\bd\u0010K\u001a\u0004\be\u0010.R\u001c\u0010k\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010h0g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010jR\u001c\u0010m\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010jR\u001c\u0010o\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010jR\u0016\u0010s\u001a\u00020p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010r¨\u0006v"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;", "Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;", "<init>", "()V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "", "E1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "previousVideo", "w1", "detail", "D1", "C1", "loadData", "", "errorMsg", "x1", "(Ljava/lang/String;)V", "r1", "A1", "l1", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;", "playInfo", "p1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V", "", "i1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Z", "B1", "j1", "v1", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;", "videoDetailStream", "", "Lln/c;", "o1", "(Ljava/util/List;)Ljava/util/List;", "receiveArguments", "initViewData", "F0", "H0", "isAudioShowNoNetworkLayout", "()Z", "w0", "()Ljava/lang/String;", "B0", "initViewModel", TmcConstants.NAVIGATION_ON_START, "q0", "retryLoadData", "Landroid/view/View;", "getNoNetworkView", "()Landroid/view/View;", "isShowTitleLayout", "getEmptyView", "(Z)Landroid/view/View;", "getLoadingView", "Lcom/transsion/videofloat/bean/FloatActionType;", "actionType", "V0", "(Lcom/transsion/videofloat/bean/FloatActionType;)Z", "Ldw/a;", "u0", "()Ldw/a;", "logResume", "logPause", "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "n", "Lkotlin/Lazy;", "m1", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "detailViewModel", "o", "Ljava/lang/String;", "ops", TtmlNode.TAG_P, "collectionId", CampaignEx.JSON_KEY_AD_Q, "subjectId", CampaignEx.JSON_KEY_AD_R, "fromOptId", "", "s", "I", "bottomFragmentSelected", "t", "Z", "withoutHistory", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ugcVideo", "v", "showNetErr", "w", "previousUgcVideoId", "x", "x0", "PAGE_NAME", "y", "getTAG", "TAG", "Landroidx/lifecycle/c0;", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "z", "Landroidx/lifecycle/c0;", "historyObserver", "A", "detailObserver", "B", "playInfoObserver", "", "C", "J", "resumeTimeStamp", "D", "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDetailFragment extends UGCVideoDetailBaseFragment {

    public static final Companion INSTANCE = new Companion(null);

    private long resumeTimeStamp;

    private String ops;

    private String collectionId;

    private String subjectId;

    private String fromOptId;

    private int bottomFragmentSelected;

    private boolean withoutHistory;

    private UGCVideo ugcVideo;

    private boolean showNetErr;

    private String previousUgcVideoId;

    private final Lazy detailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final String PAGE_NAME = "/ugc_video/detail";

    private final String TAG = "UGCVideoDetail";

    private final androidx.p009lifecycle.c0 historyObserver = new androidx.p009lifecycle.c0() {
        @Override
        public final void onChanged(Object obj) {
            UGCVideoDetailFragment.q1(this.f54206a, (UGCVideoDetailPlayBean) obj);
        }
    };

    private final androidx.p009lifecycle.c0 detailObserver = new androidx.p009lifecycle.c0() {
        @Override
        public final void onChanged(Object obj) {
            UGCVideoDetailFragment.k1(this.f54209a, (UGCVideo) obj);
        }
    };

    private final androidx.p009lifecycle.c0 playInfoObserver = new androidx.p009lifecycle.c0() {
        @Override
        public final void onChanged(Object obj) {
            UGCVideoDetailFragment.u1(this.f54211a, (UGCVideoPlayInfo) obj);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCVideoDetailFragment a() {
            return new UGCVideoDetailFragment();
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f54094a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54094a = function;
        }

        @Override
        public final Function a() {
            return this.f54094a;
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
            this.f54094a.invoke(obj);
        }
    }

    public static final class c implements gw.a {
        c() {
        }

        @Override
        public boolean a(dw.a aVar) {
            return UGCVideoFloatManager.f54217b.q(aVar);
        }

        @Override
        public void b(dw.a aVar) {
            UGCVideoFloatManager uGCVideoFloatManager = UGCVideoFloatManager.f54217b;
            uGCVideoFloatManager.o();
            uGCVideoFloatManager.s(aVar);
        }

        @Override
        public void c(dw.a aVar) {
            gw.a.C0742a.a(this, aVar);
            UGCVideoFloatManager.f54217b.p(aVar);
        }
    }

    public static final class d implements kn.a.b {
        d() {
        }

        @Override
        public void a() {
            UGCVideoDetailFragment.this.j1();
        }

        @Override
        public boolean b() {
            String ugcVideoId;
            if (UGCVideoDetailFragment.this.showNetErr && yg.l.f76264a.e() && (ugcVideoId = UGCVideoDetailFragment.this.getUgcVideoId()) != null) {
                UGCVideoDetailFragment uGCVideoDetailFragment = UGCVideoDetailFragment.this;
                uGCVideoDetailFragment.m1().c0(ugcVideoId, uGCVideoDetailFragment.collectionId);
            }
            return UGCVideoDetailFragment.this.showNetErr;
        }

        @Override
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return UGCVideoDetailFragment.this.V0(actionType);
        }

        @Override
        public void d(LongVodUiType uiType) {
            UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
            Intrinsics.h(uiType, "uiType");
            UGCVideoDetailFragment.this.O0(uiType);
            boolean z10 = uiType != LongVodUiType.MIDDLE;
            com.transsion.ugcvideodetail.hepler.e bottomRecHelper = UGCVideoDetailFragment.this.getBottomRecHelper();
            if (bottomRecHelper != null) {
                bottomRecHelper.s(z10);
            }
            UGCVideoDetailFragment.this.m0();
            iu.i mViewBinding = UGCVideoDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f62692n) == null) {
                return;
            }
            uGCVideoDetailPlayListView.pauseAnimatedImageSpans(z10);
        }

        @Override
        public View e() {
            return null;
        }

        @Override
        public void f(boolean z10) {
            AppCompatImageView appCompatImageView;
            iu.i mViewBinding = UGCVideoDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f62687i) == null) {
                return;
            }
            appCompatImageView.setVisibility(z10 ? 0 : 8);
        }

        @Override
        public void g(ln.a aVar) {
            UGCVideoDetailBaseFragment.p0(UGCVideoDetailFragment.this, null, 1, null);
        }

        @Override
        public void onCompletion() {
            UGCVideoDetailFragment.this.j1();
        }
    }

    private final void A1() {
        kn.a playerControl = getPlayerControl();
        if (playerControl != null) {
            playerControl.showNoNetError();
        }
        this.showNetErr = true;
    }

    private final void B1() {
        Context context;
        String value;
        List<UGCVideoHashTag> hashTags;
        UGCVideoHashTag uGCVideoHashTag;
        if (getPlayerControl() == null && (context = getContext()) != null) {
            UGCVideo uGCVideo = this.ugcVideo;
            if (uGCVideo == null || (value = uGCVideo.getCategory()) == null) {
                value = UGCVideoType.MOVIE.getValue();
            }
            LongVodPageType longVodPageType = Intrinsics.c(value, UGCVideoType.MUSIC.getValue()) ? LongVodPageType.MUSIC : LongVodPageType.STREAM;
            iu.i iVar = (iu.i) getMViewBinding();
            if (iVar != null) {
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                String page_name = getPAGE_NAME();
                String strName = longVodPageType.name();
                UGCVideo uGCVideo2 = this.ugcVideo;
                String title = null;
                longVodPlayerView.init(page_name, longVodPageType, strName + (uGCVideo2 != null ? uGCVideo2.getUgcVideoId() : null), null, null, CollectionsKt.l(), LongVodContentType.UGC_VIDEO_ONLINE);
                UGCVideo uGCVideo3 = this.ugcVideo;
                if (uGCVideo3 != null && (hashTags = uGCVideo3.getHashTags()) != null && (uGCVideoHashTag = (UGCVideoHashTag) CollectionsKt.k0(hashTags)) != null) {
                    title = uGCVideoHashTag.getTitle();
                }
                longVodPlayerView.initAdHelper(title);
                longVodPlayerView.setFeedBackVisible(true);
                iVar.f62685g.addView(longVodPlayerView);
                P0(longVodPlayerView);
            }
            kn.a playerControl = getPlayerControl();
            if (playerControl != null) {
                playerControl.setCallback(new d());
            }
        }
    }

    private final void C1() {
        LinearLayout linearLayout;
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        boolean zI = ij.o.f62115a.i();
        iu.i mViewBinding = getMViewBinding();
        boolean z10 = false;
        if (mViewBinding != null && (uGCVideoDetailPlayListView = mViewBinding.f62692n) != null && uGCVideoDetailPlayListView.getVisibility() == 0) {
            z10 = true;
        }
        iu.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (linearLayout = mViewBinding2.f62688j) == null) {
            return;
        }
        int iB = (!zI || z10) ? lj.a.b(20) : lj.a.b(8);
        if (linearLayout.getPaddingBottom() != iB) {
            linearLayout.setPadding(linearLayout.getPaddingLeft(), linearLayout.getPaddingTop(), linearLayout.getPaddingRight(), iB);
        }
    }

    private final void D1(UGCVideo detail) {
        UGCVideoDetailAboutCourseView uGCVideoDetailAboutCourseView;
        UGCVideoDetailInfoView uGCVideoDetailInfoView;
        detail.setOps(this.ops);
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (uGCVideoDetailInfoView = mViewBinding.f62683e) != null) {
            uGCVideoDetailInfoView.setData(detail);
        }
        iu.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (uGCVideoDetailAboutCourseView = mViewBinding2.f62680b) != null) {
            uGCVideoDetailAboutCourseView.setData(detail);
        }
        C1();
    }

    private final void E1(UGCVideo video) {
        qi.b logViewConfig;
        HashMap mapG;
        HashMap mapG2;
        qi.b logViewConfig2;
        HashMap mapG3;
        qi.b logViewConfig3;
        HashMap mapG4;
        HashMap mapG5;
        HashMap mapG6;
        HashMap mapG7;
        String collectionId;
        HashMap mapG8;
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null) {
            String ops = video.getOps();
            if (ops == null) {
                ops = this.ops;
            }
            logViewConfig4.n(ops);
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG8 = logViewConfig5.g()) != null) {
            String ugcVideoId = video.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
        }
        qi.b logViewConfig6 = getLogViewConfig();
        if (logViewConfig6 != null && (mapG7 = logViewConfig6.g()) != null) {
            UGCVideoBelongToCollection belongToCollection = video.getBelongToCollection();
            if ((belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) && (collectionId = this.collectionId) == null) {
                collectionId = "";
            }
        }
        qi.b logViewConfig7 = getLogViewConfig();
        if (logViewConfig7 != null && (mapG6 = logViewConfig7.g()) != null) {
            String subjectId = video.getSubjectId();
        }
        qi.b logViewConfig8 = getLogViewConfig();
        if (logViewConfig8 != null && (mapG5 = logViewConfig8.g()) != null) {
        }
        String str = this.fromOptId;
        if (str != null && (logViewConfig3 = getLogViewConfig()) != null && (mapG4 = logViewConfig3.g()) != null) {
        }
        String previousPageVideoId = getPreviousPageVideoId();
        if (previousPageVideoId != null && (logViewConfig2 = getLogViewConfig()) != null && (mapG3 = logViewConfig2.g()) != null) {
        }
        qi.b logViewConfig9 = getLogViewConfig();
        if (logViewConfig9 != null && (mapG2 = logViewConfig9.g()) != null) {
        }
        String previousTrackId = getPreviousTrackId();
        if (previousTrackId != null && (logViewConfig = getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
        }
        qi.b logViewConfig10 = getLogViewConfig();
        if (logViewConfig10 != null) {
            logViewConfig10.k(true);
        }
    }

    private final boolean i1(UGCVideoPlayInfo playInfo) {
        ArrayList arrayList;
        Object next;
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        List<ui.i1> playListData;
        iu.i mViewBinding = getMViewBinding();
        Object obj = null;
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f62692n) == null || (playListData = uGCVideoDetailPlayListView.getPlayListData()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (ui.i1 i1Var : playListData) {
                UGCVideo uGCVideo = i1Var instanceof UGCVideo ? (UGCVideo) i1Var : null;
                if (uGCVideo != null) {
                    arrayList.add(uGCVideo);
                }
            }
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((UGCVideo) next).getUgcVideoId(), playInfo.getUgcVideoId()));
        UGCVideo uGCVideo2 = (UGCVideo) next;
        if (uGCVideo2 == null) {
            return false;
        }
        int iVideoUGCPosition = uGCVideo2.videoUGCPosition() + 1;
        for (Object obj2 : arrayList) {
            if (((UGCVideo) obj2).videoUGCPosition() == iVideoUGCPosition) {
                obj = obj2;
                break;
            }
        }
        UGCVideo uGCVideo3 = (UGCVideo) obj;
        if (uGCVideo3 != null) {
            return !Intrinsics.c(uGCVideo3.getUgcVideoId(), playInfo.getUgcVideoId());
        }
        return false;
    }

    public final void j1() {
        ArrayList arrayList;
        Object next;
        String ugcVideoId;
        String ugcVideoId2;
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        List<ui.i1> playListData;
        UGCVideoPlayInfo uGCVideoPlayInfo = (UGCVideoPlayInfo) m1().L().f();
        if (!(uGCVideoPlayInfo != null ? i1(uGCVideoPlayInfo) : false)) {
            wf.a.C0922a.f(wf.a.f74274a, getTAG(), "checkPlayInfo 没有下一集", false, 4, null);
            kn.a playerControl = getPlayerControl();
            if (playerControl != null) {
                playerControl.showReplay();
                return;
            }
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "checkPlayNextOrReplay 是剧集，判断下一集还是完成 ", false, 4, null);
        iu.i mViewBinding = getMViewBinding();
        Object obj = null;
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f62692n) == null || (playListData = uGCVideoDetailPlayListView.getPlayListData()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (ui.i1 i1Var : playListData) {
                UGCVideo uGCVideo = i1Var instanceof UGCVideo ? (UGCVideo) i1Var : null;
                if (uGCVideo != null) {
                    arrayList.add(uGCVideo);
                }
            }
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                ugcVideoId2 = ((UGCVideo) next).getUgcVideoId();
                Intrinsics.e(uGCVideoPlayInfo);
            }
        } while (!Intrinsics.c(ugcVideoId2, uGCVideoPlayInfo.getUgcVideoId()));
        UGCVideo uGCVideo2 = (UGCVideo) next;
        if (uGCVideo2 != null) {
            int iVideoUGCPosition = uGCVideo2.videoUGCPosition() + 1;
            for (Object obj2 : arrayList) {
                if (((UGCVideo) obj2).videoUGCPosition() == iVideoUGCPosition) {
                    obj = obj2;
                    break;
                }
            }
            UGCVideo uGCVideo3 = (UGCVideo) obj;
            if (uGCVideo3 == null || (ugcVideoId = uGCVideo3.getUgcVideoId()) == null) {
                return;
            }
            m1().c0(ugcVideoId, this.collectionId);
        }
    }

    public static final void k1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideo uGCVideo) {
        UGCVideo uGCVideo2;
        wf.a.C0922a.f(wf.a.f74274a, uGCVideoDetailFragment.getTAG(), "detailObserver: " + uGCVideo, false, 4, null);
        if (uGCVideo == null) {
            uGCVideoDetailFragment.x1("视频信息为空");
            return;
        }
        String ugcVideoId = uGCVideo.getUgcVideoId();
        String str = uGCVideoDetailFragment.previousUgcVideoId;
        boolean z10 = (str == null || Intrinsics.c(str, ugcVideoId) || ugcVideoId == null) ? false : true;
        if (z10 && (uGCVideo2 = uGCVideoDetailFragment.ugcVideo) != null) {
            uGCVideoDetailFragment.w1(uGCVideo2);
        }
        uGCVideoDetailFragment.l0();
        uGCVideoDetailFragment.ugcVideo = uGCVideo;
        uGCVideoDetailFragment.T0(ugcVideoId);
        uGCVideoDetailFragment.m1().D().q(uGCVideoDetailFragment.getUgcVideoId());
        String str2 = uGCVideoDetailFragment.collectionId;
        if (str2 == null || str2.length() == 0) {
            UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
            uGCVideoDetailFragment.collectionId = belongToCollection != null ? belongToCollection.getCollectionId() : null;
            uGCVideoDetailFragment.m1().B().q(uGCVideoDetailFragment.collectionId);
        }
        uGCVideoDetailFragment.K0(uGCVideo.getCategory());
        uGCVideoDetailFragment.r1();
        uGCVideoDetailFragment.D1(uGCVideo);
        uGCVideoDetailFragment.showContentView();
        if (z10) {
            uGCVideoDetailFragment.Q0(uGCVideoDetailFragment.previousUgcVideoId);
            uGCVideoDetailFragment.R0(uGCVideoDetailFragment.getTrackId());
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            uGCVideoDetailFragment.S0(string);
        }
        uGCVideoDetailFragment.E1(uGCVideo);
        FragmentActivity activity = uGCVideoDetailFragment.getActivity();
        UGCVideoDetailActivity uGCVideoDetailActivity = activity instanceof UGCVideoDetailActivity ? (UGCVideoDetailActivity) activity : null;
        if (uGCVideoDetailActivity != null) {
            uGCVideoDetailActivity.L0(uGCVideo.getCategory());
        }
        uGCVideoDetailFragment.previousUgcVideoId = ugcVideoId;
    }

    private final void l1() {
        kn.a playerControl = getPlayerControl();
        if (playerControl != null) {
            playerControl.removeNoNetError();
        }
        this.showNetErr = false;
    }

    private final void loadData() {
        String ugcVideoId = getUgcVideoId();
        if (ugcVideoId != null) {
            if (StringsKt.q0(ugcVideoId)) {
                ugcVideoId = null;
            }
            if (ugcVideoId != null) {
                m1().c0(ugcVideoId, this.collectionId);
                return;
            }
        }
        String str = this.subjectId;
        if (str != null) {
            String str2 = StringsKt.q0(str) ? null : str;
            if (str2 != null) {
                m1().d0(str2);
                return;
            }
        }
        x1("视频ID不能为空");
    }

    public final UGCVideoDetailViewModel m1() {
        return (UGCVideoDetailViewModel) this.detailViewModel.getValue();
    }

    public static final void n1(UGCVideoDetailFragment uGCVideoDetailFragment, View view) {
        uGCVideoDetailFragment.requireActivity().finish();
    }

    private final List o1(List videoDetailStream) {
        ArrayList arrayList = new ArrayList();
        if (videoDetailStream != null) {
            Iterator it = videoDetailStream.iterator();
            while (it.hasNext()) {
                UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) it.next();
                ln.c cVar = new ln.c(UGCVideoFloatManager.f54217b.i(uGCVideoPlayStream.getFormat()), uGCVideoPlayStream.getId(), uGCVideoPlayStream.getUrl(), uGCVideoPlayStream.getResolutions(), uGCVideoPlayStream.getSize(), uGCVideoPlayStream.getDuration(), uGCVideoPlayStream.getSignCookie(), null, 128, null);
                cVar.l(uGCVideoPlayStream.getIdType());
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }

    private final void p1(UGCVideoPlayInfo playInfo) {
        if (this.ugcVideo == null) {
            wf.a.C0922a.f(wf.a.f74274a, getTAG(), "handlePlayInfo, ugcVideo is null", false, 4, null);
            return;
        }
        kn.a playerControl = getPlayerControl();
        if (playerControl != null) {
            playerControl.hasNextEpisode(i1(playInfo));
        }
        v1(playInfo);
    }

    public static final void q1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
        wf.a.C0922a.f(wf.a.f74274a, uGCVideoDetailFragment.getTAG(), "historyObserver: " + uGCVideoDetailPlayBean + ", withoutHistory=" + uGCVideoDetailFragment.withoutHistory, false, 4, null);
        if (uGCVideoDetailPlayBean != null && !uGCVideoDetailFragment.withoutHistory) {
            uGCVideoDetailFragment.T0(uGCVideoDetailPlayBean.getUgcVideoId());
            uGCVideoDetailFragment.m1().D().q(uGCVideoDetailFragment.getUgcVideoId());
        }
        uGCVideoDetailFragment.loadData();
    }

    private final void r1() {
        UGCVideoDetailViewModel uGCVideoDetailViewModelM1 = m1();
        UGCVideo uGCVideo = this.ugcVideo;
        iu.i mViewBinding = getMViewBinding();
        MagicIndicator magicIndicator = mViewBinding != null ? mViewBinding.f62690l : null;
        iu.i mViewBinding2 = getMViewBinding();
        ViewPager2 viewPager2 = mViewBinding2 != null ? mViewBinding2.f62697s : null;
        String page_name = getPAGE_NAME();
        UGCVideoPlayFrom uGCVideoPlayFrom = UGCVideoPlayFrom.ON_LINE_VIDEO;
        String str = this.fromOptId;
        int i10 = this.bottomFragmentSelected;
        iu.i mViewBinding3 = getMViewBinding();
        N0(new com.transsion.ugcvideodetail.hepler.e(this, uGCVideoDetailViewModelM1, uGCVideo, null, magicIndicator, viewPager2, page_name, uGCVideoPlayFrom, str, i10, mViewBinding3 != null ? mViewBinding3.f62681c : null));
    }

    public static final Unit s1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideoDetailViewModel.b bVar) {
        List<ui.i1> listL;
        if (bVar != null) {
            String strA = bVar.a();
            List<? extends ui.i1> listB = bVar.b();
            iu.i mViewBinding = uGCVideoDetailFragment.getMViewBinding();
            UGCVideoDetailPlayListView uGCVideoDetailPlayListView = mViewBinding != null ? mViewBinding.f62692n : null;
            if (uGCVideoDetailPlayListView == null || (listL = uGCVideoDetailPlayListView.getPlayListData()) == null) {
                listL = CollectionsKt.l();
            }
            List<ui.i1> list = listL;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.c(((ui.i1) it.next()).videoUGCId(), strA)) {
                        wf.a.C0922a.f(wf.a.f74274a, uGCVideoDetailFragment.getTAG(), "replacePlayListDataLiveData: Video " + strA + " already exists in detail play list, skipping replace", false, 4, null);
                        return Unit.f64096a;
                    }
                }
            }
            wf.a.C0922a.f(wf.a.f74274a, uGCVideoDetailFragment.getTAG(), "replacePlayListDataLiveData: Received " + listB.size() + " items to replace play list for video " + strA, false, 4, null);
            if (uGCVideoDetailPlayListView != null) {
                uGCVideoDetailPlayListView.replacePlayListData(listB);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit t1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideoList uGCVideoList) {
        uGCVideoDetailFragment.C1();
        return Unit.f64096a;
    }

    public static final void u1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideoPlayInfo uGCVideoPlayInfo) {
        wf.a.C0922a.f(wf.a.f74274a, uGCVideoDetailFragment.getTAG(), "playInfoObserver: " + uGCVideoPlayInfo, false, 4, null);
        if (uGCVideoPlayInfo != null) {
            uGCVideoDetailFragment.p1(uGCVideoPlayInfo);
        }
        if (uGCVideoPlayInfo != null || yg.l.f76264a.e()) {
            uGCVideoDetailFragment.l1();
        } else {
            uGCVideoDetailFragment.A1();
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004b  */
    private final void v1(UGCVideoPlayInfo playInfo) {
        long progress;
        String format;
        String averageHueLight;
        String thumbnail;
        String url;
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null || !uGCVideo.isFamilyModeIntercept()) {
            if (playInfo == null || playInfo.getResources().isEmpty()) {
                wf.a.C0922a.l(wf.a.f74274a, getTAG(), "空返回", false, 4, null);
                return;
            }
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) m1().J().f();
            if (this.withoutHistory) {
                progress = 0;
            } else {
                if (!Intrinsics.c(uGCVideoDetailPlayBean != null ? uGCVideoDetailPlayBean.getUgcVideoId() : null, playInfo.getUgcVideoId()) || uGCVideoDetailPlayBean == null) {
                    progress = 0;
                } else {
                    progress = uGCVideoDetailPlayBean.getProgress();
                }
            }
            UGCVideoFloatManager uGCVideoFloatManager = UGCVideoFloatManager.f54217b;
            UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(playInfo.getResources());
            if (uGCVideoPlayStream == null || (format = uGCVideoPlayStream.getFormat()) == null) {
                format = "";
            }
            PlayMimeType playMimeTypeI = uGCVideoFloatManager.i(format);
            wf.a.C0922a c0922a = wf.a.f74274a;
            String tag = getTAG();
            String ugcVideoId = playInfo.getUgcVideoId();
            UGCVideo uGCVideo2 = this.ugcVideo;
            String ugcVideoId2 = uGCVideo2 != null ? uGCVideo2.getUgcVideoId() : null;
            c0922a.c(tag, "playVideo  playInfo:" + ugcVideoId + "  ugcVideo:" + ugcVideoId2 + ", historyProgress:" + progress + ", withoutHistory:" + this.withoutHistory, true);
            UGCVideo uGCVideo3 = this.ugcVideo;
            if (uGCVideo3 != null) {
                String title = uGCVideo3.getTitle();
                String str = title == null ? "" : title;
                String title2 = uGCVideo3.getTitle();
                String lastPageFrom = getLastPageFrom();
                String str2 = lastPageFrom == null ? "" : lastPageFrom;
                String page_name = getPAGE_NAME();
                List listO1 = o1(playInfo.getResources());
                Cover cover = uGCVideo3.getCover();
                String str3 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
                Cover cover2 = uGCVideo3.getCover();
                String str4 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
                Cover cover3 = uGCVideo3.getCover();
                String str5 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
                Long duration = uGCVideo3.getDuration();
                ln.a aVar = new ln.a("", playMimeTypeI, progress, 0, 0, str, title2, str2, page_name, listO1, str3, str4, str5, (int) (duration != null ? duration.longValue() : 0L), null, false, uGCVideo3.getTitle(), uGCVideo3.getOps(), 49152, null);
                aVar.A(uGCVideo3);
                B1();
                kn.a playerControl = getPlayerControl();
                if (playerControl != null) {
                    playerControl.updateReportId(getPreviousPageVideoId(), getTrackId(), getPreviousTrackId());
                }
                kn.a playerControl2 = getPlayerControl();
                if (playerControl2 != null) {
                    playerControl2.setDataSource(aVar);
                }
            }
        }
    }

    private final void w1(UGCVideo previousVideo) {
        if (previousVideo == null) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "reportVideoSwitch: previousVideo=" + previousVideo.getUgcVideoId(), false, 4, null);
        logPause();
        logResume();
    }

    private final void x1(String errorMsg) {
        wf.a.C0922a.l(wf.a.f74274a, getTAG(), "showErrorView: " + errorMsg, false, 4, null);
        if (yg.l.f76264a.e()) {
            PageStatusFragment.showEmptyView$default(this, false, 1, null);
        } else {
            PageStatusFragment.showNoNetworkView$default(this, false, 1, null);
        }
    }

    public static final void y1(FragmentActivity fragmentActivity, dw.a aVar, FloatActionType floatActionType, UGCVideoDetailFragment uGCVideoDetailFragment) {
        cw.e.f58665a.b().d(fragmentActivity, aVar, floatActionType, uGCVideoDetailFragment.getCurPlayerUiType() == LongVodUiType.LAND);
    }

    public static final Unit z1(UGCVideoDetailFragment uGCVideoDetailFragment, FragmentActivity fragmentActivity, boolean z10) {
        kn.a playerControl;
        if (z10 && (playerControl = uGCVideoDetailFragment.getPlayerControl()) != null) {
            playerControl.exitFullScreen();
        }
        kn.a playerControl2 = uGCVideoDetailFragment.getPlayerControl();
        if (playerControl2 != null) {
            playerControl2.setFloatIsShow(z10);
        }
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f64096a;
    }

    @Override
    protected String getSubjectId() {
        return this.subjectId;
    }

    @Override
    protected void F0() {
        UGCVideoDetailInfoView uGCVideoDetailInfoView;
        UGCVideoDetailInfoView uGCVideoDetailInfoView2;
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView;
        UGCVideoDetailInfoView uGCVideoDetailInfoView3;
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (uGCVideoDetailInfoView3 = mViewBinding.f62683e) != null) {
            uf.c.k(uGCVideoDetailInfoView3);
        }
        iu.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (uGCLocalVideoDetailInfoView = mViewBinding2.f62689k) != null) {
            uf.c.g(uGCLocalVideoDetailInfoView);
        }
        iu.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (uGCVideoDetailInfoView2 = mViewBinding3.f62683e) != null) {
            uGCVideoDetailInfoView2.setParentFragment(this);
        }
        iu.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (uGCVideoDetailInfoView = mViewBinding4.f62683e) == null) {
            return;
        }
        uGCVideoDetailInfoView.setPageName(getPAGE_NAME());
    }

    @Override
    protected void H0() {
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f62692n) == null) {
            return;
        }
        uGCVideoDetailPlayListView.setParentFragment(this, UGCVideoPlayFrom.ON_LINE_VIDEO);
    }

    @Override
    protected boolean V0(final FloatActionType actionType) {
        String value;
        ConstraintLayout constraintLayoutB;
        Intrinsics.h(actionType, "actionType");
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null || (value = uGCVideo.getCategory()) == null) {
            value = UGCVideoType.MOVIE.getValue();
        }
        if (Intrinsics.c(value, UGCVideoType.MUSIC.getValue())) {
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "showFloat2Window----music return", false, 4, null);
            return false;
        }
        final FragmentActivity activity = getActivity();
        if (activity != null && !activity.isDestroyed() && !activity.isFinishing()) {
            FloatActionType floatActionType = FloatActionType.ICON;
            if (actionType != floatActionType && !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
                wf.a.f74274a.c("VideoFloat", "设置页pip开关被关闭了", true);
                return false;
            }
            final dw.a aVarU0 = u0();
            if (aVarU0 != null) {
                if (actionType != floatActionType && !aVarU0.f().isPlaying()) {
                    wf.a.f74274a.c("VideoFloat-pip", "stream 视频暂停，无需触发画中画", true);
                    return false;
                }
                cw.e.a aVar = cw.e.f58665a;
                if (aVar.b().c()) {
                    kn.a playerControl = getPlayerControl();
                    if (playerControl != null) {
                        playerControl.hideBottomController(true);
                    }
                    wf.a.f74274a.c("VideoFloat-pip", "stream 当前可用画中画，使用画中画播放", true);
                    if (Build.VERSION.SDK_INT < 31 || actionType != FloatActionType.HOME) {
                        aVar.b().d(activity, aVarU0, actionType, getCurPlayerUiType() == LongVodUiType.LAND);
                    } else {
                        iu.i mViewBinding = getMViewBinding();
                        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
                            constraintLayoutB.postDelayed(new Runnable() {
                                @Override
                                public final void run() {
                                    UGCVideoDetailFragment.y1(activity, aVarU0, actionType, this);
                                }
                            }, 1000L);
                        }
                    }
                    return true;
                }
                wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "checkShowFloatView----actionType:" + actionType, false, 4, null);
                cw.b.f58659a.c().e(activity, aVarU0, actionType == floatActionType, getCurPlayerUiType() == LongVodUiType.LAND, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return UGCVideoDetailFragment.z1(this.f54202a, activity, ((Boolean) obj).booleanValue());
                    }
                }, new c());
            }
        }
        return false;
    }

    @Override
    public View getEmptyView(boolean isShowTitleLayout) {
        View emptyView = super.getEmptyView(isShowTitleLayout);
        cr.b.a(emptyView);
        return emptyView;
    }

    @Override
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.layout_ugc_video_detail_default_skeleton, (ViewGroup) getFlStateView(), false);
        ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailFragment.n1(this.f54186a, view);
            }
        });
        return viewInflate;
    }

    @Override
    public View getNoNetworkView() {
        View noNetworkView = super.getNoNetworkView();
        cr.b.a(noNetworkView);
        return noNetworkView;
    }

    @Override
    public String getTAG() {
        return this.TAG;
    }

    @Override
    public void initViewData() {
        super.initViewData();
        showLoadingView();
    }

    @Override
    public void initViewModel() {
        m1().D().q(getUgcVideoId());
        m1().B().q(this.collectionId);
        m1().J().j(this, this.historyObserver);
        m1().G().j(this, this.detailObserver);
        m1().L().j(this, this.playInfoObserver);
        m1().Q().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCVideoDetailFragment.s1(this.f54189a, (UGCVideoDetailViewModel.b) obj);
            }
        }));
        m1().M().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCVideoDetailFragment.t1(this.f54193a, (UGCVideoList) obj);
            }
        }));
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return true;
    }

    @Override
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.resumeTimeStamp;
            wf.a.C0922a.r(wf.a.f74274a, "Report", new String[]{"UGCNormalVideoDetailFragment fb log duration:" + jElapsedRealtime}, false, 4, null);
            com.transsion.baselib.report.e.f42196a.n("UGCNormalVideoDetailFragment", Long.valueOf(jElapsedRealtime), getContext());
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override
    public void onStart() {
        UGCVideoDetailInfoView uGCVideoDetailInfoView;
        UGCVideoDetailInfoView uGCVideoDetailInfoView2;
        super.onStart();
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCVideoDetailInfoView = mViewBinding.f62683e) == null || !uGCVideoDetailInfoView.isAutoPlayShowing() || !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false)) {
            return;
        }
        iu.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (uGCVideoDetailInfoView2 = mViewBinding2.f62683e) != null) {
            uGCVideoDetailInfoView2.removeAutoPlay();
        }
        kn.a playerControl = getPlayerControl();
        if (playerControl != null) {
            playerControl.ugcAutoPause2PlayVideo();
        }
    }

    @Override
    protected void q0() {
        String ugcVideoId = getUgcVideoId();
        if (ugcVideoId != null) {
            if (StringsKt.q0(ugcVideoId)) {
                ugcVideoId = null;
            }
            if (ugcVideoId != null) {
                m1().b0(ugcVideoId);
                return;
            }
        }
        String str = this.subjectId;
        if (str != null) {
            String str2 = StringsKt.q0(str) ? null : str;
            if (str2 != null) {
                m1().d0(str2);
                return;
            }
        }
        x1("--视频ID不能为空");
    }

    @Override
    public void receiveArguments() {
        super.receiveArguments();
        Bundle arguments = getArguments();
        T0(arguments != null ? arguments.getString("id") : null);
        Bundle arguments2 = getArguments();
        this.collectionId = arguments2 != null ? arguments2.getString("collection_id") : null;
        Bundle arguments3 = getArguments();
        this.subjectId = arguments3 != null ? arguments3.getString("subject_id") : null;
        Bundle arguments4 = getArguments();
        U0(arguments4 != null ? arguments4.getString("ugcCategory") : null);
        Bundle arguments5 = getArguments();
        this.ops = arguments5 != null ? arguments5.getString("ops") : null;
        Bundle arguments6 = getArguments();
        this.fromOptId = arguments6 != null ? arguments6.getString("from_opt_id") : null;
        Bundle arguments7 = getArguments();
        Q0(arguments7 != null ? arguments7.getString("parent_video_id") : null);
        Bundle arguments8 = getArguments();
        this.bottomFragmentSelected = arguments8 != null ? arguments8.getInt("ugc_bottom_fragment_selected", 0) : 0;
        Bundle arguments9 = getArguments();
        this.withoutHistory = arguments9 != null ? arguments9.getBoolean("ugc_without_history", false) : false;
        super.Q0(getPreviousPageVideoId());
        wf.a.f74274a.c(getTAG(), "receiveArguments: ugcVideoId=" + getUgcVideoId() + ", collectionId:" + this.collectionId + " subjectId:" + this.subjectId + ", ops=" + this.ops + ", fromOptId=" + this.fromOptId + ", previousPageVideoId=" + getPreviousPageVideoId() + ", bottomFragmentSelected=" + this.bottomFragmentSelected + ", withoutHistory=" + this.withoutHistory, true);
    }

    @Override
    public void retryLoadData() {
        showLoadingView();
        loadData();
    }

    @Override
    protected dw.a u0() {
        ArrayList<UGCVideo> arrayList;
        String format;
        ArrayList arrayList2;
        String str;
        String ops;
        String averageHueLight;
        String thumbnail;
        String url;
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        List<ui.i1> playListData;
        UGCVideoPlayInfo uGCVideoPlayInfo = (UGCVideoPlayInfo) m1().L().f();
        if (uGCVideoPlayInfo == null) {
            return null;
        }
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f62692n) == null || (playListData = uGCVideoDetailPlayListView.getPlayListData()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (ui.i1 i1Var : playListData) {
                UGCVideo uGCVideo = i1Var instanceof UGCVideo ? (UGCVideo) i1Var : null;
                if (uGCVideo != null) {
                    arrayList.add(uGCVideo);
                }
            }
        }
        kn.a playerControl = getPlayerControl();
        com.transsion.player.orplayer.f player = playerControl != null ? playerControl.getPlayer() : null;
        kn.a playerControl2 = getPlayerControl();
        ORPlayerView playerView = playerControl2 != null ? playerControl2.getOrPlayerView() : null;
        kn.a playerControl3 = getPlayerControl();
        SimpleSubtitleView subtitleView = playerControl3 != null ? playerControl3.getSubtitleView() : null;
        kn.a playerControl4 = getPlayerControl();
        ViewGroup subtitleViewGroup = playerControl4 != null ? playerControl4.getSubtitleViewGroup() : null;
        if (playerView == null || player == null || this.ugcVideo == null || subtitleView == null) {
            return null;
        }
        UGCVideoFloatManager uGCVideoFloatManager = UGCVideoFloatManager.f54217b;
        UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(uGCVideoPlayInfo.getResources());
        if (uGCVideoPlayStream == null || (format = uGCVideoPlayStream.getFormat()) == null) {
            format = "";
        }
        PlayMimeType playMimeTypeI = uGCVideoFloatManager.i(format);
        UGCVideo uGCVideo2 = this.ugcVideo;
        if (uGCVideo2 == null) {
            return null;
        }
        ArrayList arrayList3 = new ArrayList();
        if (arrayList != null) {
            String strA = "";
            for (UGCVideo uGCVideo3 : arrayList) {
                String title = uGCVideo2.getTitle();
                String str2 = title == null ? "" : title;
                String lastPageFrom = getLastPageFrom();
                String str3 = lastPageFrom == null ? "" : lastPageFrom;
                String page_name = getPAGE_NAME();
                Cover cover = uGCVideo2.getCover();
                String str4 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
                Cover cover2 = uGCVideo2.getCover();
                String str5 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
                Cover cover3 = uGCVideo2.getCover();
                String str6 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
                Long duration = uGCVideo2.getDuration();
                ArrayList arrayList4 = arrayList3;
                ln.a aVar = new ln.a("", playMimeTypeI, 0L, 0, 0, str2, null, str3, page_name, null, str4, str5, str6, (int) (duration != null ? duration.longValue() : 0L), null, false, uGCVideo2.getTitle(), uGCVideo2.getOps(), 49728, null);
                strA = nn.a.f67319a.a(aVar);
                aVar.A(uGCVideo2);
                arrayList4.add(aVar);
                arrayList3 = arrayList4;
            }
            arrayList2 = arrayList3;
            str = strA;
        } else {
            arrayList2 = arrayList3;
            str = "";
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        UGCVideo uGCVideo4 = this.ugcVideo;
        c0922a.c("VideoFloat", "stream-----showFloat, title:" + (uGCVideo4 != null ? uGCVideo4.getTitle() : null), true);
        UGCVideoFloatManager.f54217b.u(arrayList2);
        kn.a playerControl5 = getPlayerControl();
        ln.c playingStream = playerControl5 != null ? playerControl5.getPlayingStream() : null;
        dw.a aVar2 = new dw.a(playerView, player, subtitleViewGroup, FloatPlayType.STREAM, "", 0, 0, playingStream != null ? playingStream.e() : null, getPAGE_NAME());
        aVar2.I(playMimeTypeI);
        aVar2.C(str);
        String str7 = this.ops;
        if (str7 == null) {
            UGCVideo uGCVideo5 = this.ugcVideo;
            ops = uGCVideo5 != null ? uGCVideo5.getOps() : null;
        } else {
            ops = str7;
        }
        aVar2.A(ops);
        aVar2.L(this.ugcVideo);
        aVar2.B(getLastPageFrom());
        return aVar2;
    }

    @Override
    public String getOps() {
        return this.ops;
    }

    @Override
    public String getPAGE_NAME() {
        return this.PAGE_NAME;
    }
}
