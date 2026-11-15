package com.transsion.ugcvideodetail.fragment;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.viewpager2.widget.ViewPager2;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.player.longvideo.constants.LongVodContentType;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.activity.UGCLocalVideoDetailActivity;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.hepler.UGCLocalVideoFloatManager;
import com.transsion.ugcvideodetail.hepler.UGCVideoPlayFrom;
import com.transsion.ugcvideodetail.viewmodel.UGCLocalVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCLocalVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailPlayListView;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 F2\u00020\u0001:\u0001GB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0004\b\u001d\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001f\u0010\u001bJ\u000f\u0010 \u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\u0003J\u0017\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\"\u0010\u001bJ\u0017\u0010#\u001a\u00020\b2\u0006\u0010!\u001a\u00020\u0018H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0004H\u0002¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0004H\u0002¢\u0006\u0004\b&\u0010\u0003J\u0017\u0010'\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0018H\u0002¢\u0006\u0004\b'\u0010\u001bJ\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020*0)2\u0006\u0010(\u001a\u00020\u0018H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u0018H\u0002¢\u0006\u0004\b-\u0010.R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010;\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00106R\u001a\u0010>\u001a\u00020\u000b8\u0016X\u0096D¢\u0006\f\n\u0004\b<\u00106\u001a\u0004\b=\u0010\rR\u001a\u0010A\u001a\u00020\u000b8\u0016X\u0096D¢\u0006\f\n\u0004\b?\u00106\u001a\u0004\b@\u0010\rR\u001c\u0010E\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006H"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;", "Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;", "<init>", "()V", "", "receiveArguments", "F0", "H0", "", "isAudioShowNoNetworkLayout", "()Z", "", "w0", "()Ljava/lang/String;", "q0", "initViewModel", "retryLoadData", "Lcom/transsion/videofloat/bean/FloatActionType;", "actionType", "V0", "(Lcom/transsion/videofloat/bean/FloatActionType;)Z", "Ldw/a;", "u0", "()Ldw/a;", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "o1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "previousDownloadBean", "j1", "detail", "n1", "g1", "playInfo", "f1", "a1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Z", "m1", "b1", "i1", "bean", "", "Lln/c;", "e1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/util/List;", "d1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;", "Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", "n", "Lkotlin/Lazy;", "c1", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", "detailViewModel", "o", "Ljava/lang/String;", "resourceId", TtmlNode.TAG_P, "Lcom/transsion/baselib/db/download/DownloadBean;", CampaignEx.JSON_KEY_AD_Q, "previousUgcVideoId", CampaignEx.JSON_KEY_AD_R, "x0", "PAGE_NAME", "s", "getTAG", "TAG", "Landroidx/lifecycle/c0;", "t", "Landroidx/lifecycle/c0;", "playInfoObserver", TmcStartParams.KEY_URL_SHORT, "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCLocalVideoDetailFragment extends UGCVideoDetailBaseFragment {

    public static final Companion INSTANCE = new Companion(null);

    private String resourceId;

    private DownloadBean downloadBean;

    private String previousUgcVideoId;

    private final Lazy detailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCLocalVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final String PAGE_NAME = "/ugc_video/local_detail";

    private final String TAG = "UGCLocalVideoDetail";

    private final androidx.p009lifecycle.c0 playInfoObserver = new androidx.p009lifecycle.c0() {
        @Override
        public final void onChanged(Object obj) {
            UGCLocalVideoDetailFragment.h1(this.f54141a, (DownloadBean) obj);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCLocalVideoDetailFragment a() {
            return new UGCLocalVideoDetailFragment();
        }

        private Companion() {
        }
    }

    public static final class b implements gw.a {
        b() {
        }

        @Override
        public boolean a(dw.a aVar) {
            return UGCLocalVideoFloatManager.f54214b.j(aVar);
        }

        @Override
        public void b(dw.a aVar) {
            UGCLocalVideoFloatManager uGCLocalVideoFloatManager = UGCLocalVideoFloatManager.f54214b;
            uGCLocalVideoFloatManager.h();
            uGCLocalVideoFloatManager.l(aVar);
        }

        @Override
        public void c(dw.a aVar) {
            gw.a.C0742a.a(this, aVar);
            UGCLocalVideoFloatManager.f54214b.i(aVar);
        }
    }

    public static final class c implements kn.a.b {
        c() {
        }

        @Override
        public void a() {
            UGCLocalVideoDetailFragment.this.b1();
        }

        @Override
        public boolean b() {
            return false;
        }

        @Override
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return UGCLocalVideoDetailFragment.this.V0(actionType);
        }

        @Override
        public void d(LongVodUiType uiType) {
            UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
            Intrinsics.h(uiType, "uiType");
            UGCLocalVideoDetailFragment.this.O0(uiType);
            boolean z10 = uiType != LongVodUiType.MIDDLE;
            com.transsion.ugcvideodetail.hepler.e eVarS0 = UGCLocalVideoDetailFragment.this.getBottomRecHelper();
            if (eVarS0 != null) {
                eVarS0.s(z10);
            }
            UGCLocalVideoDetailFragment.this.m0();
            iu.i mViewBinding = UGCLocalVideoDetailFragment.this.getMViewBinding();
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
            iu.i mViewBinding = UGCLocalVideoDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f62687i) == null) {
                return;
            }
            appCompatImageView.setVisibility(z10 ? 0 : 8);
        }

        @Override
        public void g(ln.a aVar) {
            UGCLocalVideoDetailFragment.this.o0(aVar);
        }

        @Override
        public void onCompletion() {
            UGCLocalVideoDetailFragment.this.b1();
        }
    }

    private final boolean a1(DownloadBean playInfo) {
        List list = (List) c1().k().f();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return false;
        }
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
        Iterator it = list.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            DownloadBean downloadBean = (DownloadBean) it.next();
            if (Intrinsics.c(downloadBean != null ? downloadBean.getUgcVideoId() : null, playInfo.getUgcVideoId())) {
                break;
            }
            i10++;
        }
        if (i10 < 0 || i10 >= list.size() - 1) {
            return false;
        }
        DownloadBean downloadBean2 = (DownloadBean) list.get(i10 + 1);
        return !Intrinsics.c(downloadBean2 != null ? downloadBean2.getUgcVideoId() : null, playInfo.getUgcVideoId());
    }

    public final void b1() {
        DownloadBean downloadBean;
        DownloadBean downloadBean2 = (DownloadBean) c1().i().f();
        int i10 = 0;
        if (!(downloadBean2 != null ? a1(downloadBean2) : false)) {
            wf.a.C0922a.f(wf.a.f74274a, getTAG(), "checkPlayInfo 没有下一集", false, 4, null);
            kn.a aVarY0 = getPlayerControl();
            if (aVarY0 != null) {
                aVarY0.showReplay();
                return;
            }
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, getTAG(), "checkPlayNextOrReplay 是剧集，判断下一集还是完成 ", false, 4, null);
        List list = (List) c1().k().f();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        wf.a.C0922a.f(c0922a, getTAG(), "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            DownloadBean downloadBean3 = (DownloadBean) it.next();
            String ugcVideoId = downloadBean3 != null ? downloadBean3.getUgcVideoId() : null;
            Intrinsics.e(downloadBean2);
            if (Intrinsics.c(ugcVideoId, downloadBean2.getUgcVideoId())) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 < 0 || i10 >= list.size() - 1 || (downloadBean = (DownloadBean) list.get(i10 + 1)) == null) {
            return;
        }
        c1().i().q(downloadBean);
    }

    private final UGCLocalVideoDetailViewModel c1() {
        return (UGCLocalVideoDetailViewModel) this.detailViewModel.getValue();
    }

    private final String d1(DownloadBean bean) {
        if (!bean.isInnerRes()) {
            String path = bean.getPath();
            return path == null ? "" : path;
        }
        if (!bean.isCompleted()) {
            return com.transsnet.downloader.manager.p.f57282a.a(Utils.a()).h(bean);
        }
        String path2 = bean.getPath();
        return path2 == null ? "" : path2;
    }

    private final List e1(DownloadBean bean) {
        ArrayList arrayList = new ArrayList();
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String ugcVideoId = bean.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        arrayList.add(new ln.c(playMimeType, ugcVideoId, d1(bean), String.valueOf(bean.getResolution()), String.valueOf(bean.getSize()), String.valueOf(bean.getDuration()), "", null, 128, null));
        return arrayList;
    }

    private final void f1(DownloadBean playInfo) {
        kn.a aVarY0 = getPlayerControl();
        if (aVarY0 != null) {
            aVarY0.hasNextEpisode(a1(playInfo));
        }
        i1(playInfo);
    }

    private final void g1() {
        MagicIndicator magicIndicator;
        View view;
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view = mViewBinding.f62695q) != null) {
            uf.c.g(view);
        }
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean == null || !downloadBean.isInnerRes()) {
            iu.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (magicIndicator = mViewBinding2.f62690l) == null) {
                return;
            }
            uf.c.g(magicIndicator);
            return;
        }
        DownloadBean downloadBean2 = this.downloadBean;
        iu.i mViewBinding3 = getMViewBinding();
        MagicIndicator magicIndicator2 = mViewBinding3 != null ? mViewBinding3.f62690l : null;
        iu.i mViewBinding4 = getMViewBinding();
        ViewPager2 viewPager2 = mViewBinding4 != null ? mViewBinding4.f62697s : null;
        String page_name = getPAGE_NAME();
        UGCVideoPlayFrom uGCVideoPlayFrom = UGCVideoPlayFrom.LOCAL_VIDEO;
        iu.i mViewBinding5 = getMViewBinding();
        N0(new com.transsion.ugcvideodetail.hepler.e(this, null, null, downloadBean2, magicIndicator2, viewPager2, page_name, uGCVideoPlayFrom, null, 0, mViewBinding5 != null ? mViewBinding5.f62681c : null));
    }

    public static final void h1(UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment, DownloadBean downloadBean) {
        DownloadBean downloadBean2;
        wf.a.C0922a.f(wf.a.f74274a, uGCLocalVideoDetailFragment.getTAG(), "playInfoObserver: " + downloadBean, false, 4, null);
        if (downloadBean != null) {
            String ugcVideoId = downloadBean.getUgcVideoId();
            String str = uGCLocalVideoDetailFragment.previousUgcVideoId;
            boolean z10 = (str == null || Intrinsics.c(str, ugcVideoId) || ugcVideoId == null) ? false : true;
            if (z10 && (downloadBean2 = uGCLocalVideoDetailFragment.downloadBean) != null) {
                uGCLocalVideoDetailFragment.j1(downloadBean2);
            }
            uGCLocalVideoDetailFragment.l0();
            uGCLocalVideoDetailFragment.downloadBean = downloadBean;
            uGCLocalVideoDetailFragment.resourceId = downloadBean.getResourceId();
            uGCLocalVideoDetailFragment.T0(ugcVideoId);
            uGCLocalVideoDetailFragment.c1().f().q(uGCLocalVideoDetailFragment.getUgcVideoId());
            uGCLocalVideoDetailFragment.c1().e().q(downloadBean.getUgcVideoCollectionId());
            uGCLocalVideoDetailFragment.n1(downloadBean);
            uGCLocalVideoDetailFragment.g1();
            uGCLocalVideoDetailFragment.f1(downloadBean);
            if (z10) {
                uGCLocalVideoDetailFragment.Q0(uGCLocalVideoDetailFragment.previousUgcVideoId);
                uGCLocalVideoDetailFragment.R0(uGCLocalVideoDetailFragment.getTrackId());
                String string = UUID.randomUUID().toString();
                Intrinsics.g(string, "toString(...)");
                uGCLocalVideoDetailFragment.S0(string);
            }
            uGCLocalVideoDetailFragment.o1(downloadBean);
            FragmentActivity activity = uGCLocalVideoDetailFragment.getActivity();
            UGCLocalVideoDetailActivity uGCLocalVideoDetailActivity = activity instanceof UGCLocalVideoDetailActivity ? (UGCLocalVideoDetailActivity) activity : null;
            if (uGCLocalVideoDetailActivity != null) {
                uGCLocalVideoDetailActivity.D0(downloadBean.getUgcVideoType());
            }
            uGCLocalVideoDetailFragment.previousUgcVideoId = ugcVideoId;
        }
    }

    private final void i1(DownloadBean playInfo) {
        long readProgress = playInfo.getReadProgress();
        wf.a.f74274a.c(getTAG(), "localVideo  playVideo， historyProgress:" + readProgress, true);
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String ugcVideoCollectionName = playInfo.getUgcVideoCollectionName();
        String str = ugcVideoCollectionName == null ? "" : ugcVideoCollectionName;
        String ugcVideoName = playInfo.getUgcVideoName();
        String strV0 = getLastPageFrom();
        String str2 = strV0 == null ? "" : strV0;
        String page_name = getPAGE_NAME();
        List listE1 = e1(playInfo);
        String cover = playInfo.getCover();
        String str3 = cover == null ? "" : cover;
        String thumbnail = playInfo.getThumbnail();
        String str4 = thumbnail == null ? "" : thumbnail;
        Long duration = playInfo.getDuration();
        ln.a aVar = new ln.a("", playMimeType, readProgress, 0, 0, str, ugcVideoName, str2, page_name, listE1, str3, str4, "", (int) (duration != null ? duration.longValue() : 0L), null, false, playInfo.getUgcVideoName(), playInfo.getOps(), 49152, null);
        aVar.x(playInfo);
        m1();
        kn.a aVarY0 = getPlayerControl();
        if (aVarY0 != null) {
            aVarY0.updateReportId(getPreviousPageVideoId(), getTrackId(), getPreviousTrackId());
        }
        kn.a aVarY1 = getPlayerControl();
        if (aVarY1 != null) {
            aVarY1.setDataSource(aVar);
        }
    }

    private final void j1(DownloadBean previousDownloadBean) {
        if (previousDownloadBean == null) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "reportVideoSwitch: previousVideo=" + previousDownloadBean.getUgcVideoId(), false, 4, null);
        logPause();
        logResume();
    }

    public static final void k1(FragmentActivity fragmentActivity, dw.a aVar, FloatActionType floatActionType, UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment) {
        cw.e.f58665a.b().d(fragmentActivity, aVar, floatActionType, uGCLocalVideoDetailFragment.getCurPlayerUiType() == LongVodUiType.LAND);
    }

    public static final Unit l1(UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment, FragmentActivity fragmentActivity, boolean z10) {
        kn.a aVarY0;
        if (z10 && (aVarY0 = uGCLocalVideoDetailFragment.getPlayerControl()) != null) {
            aVarY0.exitFullScreen();
        }
        kn.a aVarY1 = uGCLocalVideoDetailFragment.getPlayerControl();
        if (aVarY1 != null) {
            aVarY1.setFloatIsShow(z10);
        }
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f64096a;
    }

    private final void m1() {
        Context context;
        LongVodPageType longVodPageType;
        String value;
        if (getPlayerControl() == null && (context = getContext()) != null) {
            DownloadBean downloadBean = (DownloadBean) c1().i().f();
            String ugcVideoId = downloadBean != null ? downloadBean.getUgcVideoId() : null;
            if (ugcVideoId == null || ugcVideoId.length() == 0) {
                longVodPageType = (downloadBean != null ? downloadBean.getSubjectType() : SubjectType.MOVIE.getValue()) == SubjectType.MUSIC.getValue() ? LongVodPageType.MUSIC : LongVodPageType.STREAM;
            } else {
                if (downloadBean == null || (value = downloadBean.getUgcVideoType()) == null) {
                    value = UGCVideoType.MOVIE.getValue();
                }
                longVodPageType = Intrinsics.c(value, UGCVideoType.MUSIC.getValue()) ? LongVodPageType.MUSIC : LongVodPageType.STREAM;
            }
            LongVodPageType longVodPageType2 = longVodPageType;
            iu.i iVar = (iu.i) getMViewBinding();
            if (iVar != null) {
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                longVodPlayerView.init(getPAGE_NAME(), longVodPageType2, longVodPageType2.name() + (downloadBean != null ? downloadBean.getUgcVideoId() : null), null, null, CollectionsKt.l(), LongVodContentType.UGC_VIDEO_LOCAL);
                DownloadBean downloadBean2 = this.downloadBean;
                longVodPlayerView.initAdHelper(downloadBean2 != null ? downloadBean2.getGenre() : null);
                longVodPlayerView.setFeedBackVisible(true);
                iVar.f62685g.addView(longVodPlayerView);
                P0(longVodPlayerView);
            }
            kn.a aVarY0 = getPlayerControl();
            if (aVarY0 != null) {
                aVarY0.setCallback(new c());
            }
        }
    }

    private final void n1(DownloadBean detail) {
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView;
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCLocalVideoDetailInfoView = mViewBinding.f62689k) == null) {
            return;
        }
        uGCLocalVideoDetailInfoView.setData(detail);
    }

    private final void o1(DownloadBean downloadBean) {
        qi.b logViewConfig;
        HashMap mapG;
        HashMap mapG2;
        qi.b logViewConfig2;
        HashMap mapG3;
        HashMap mapG4;
        HashMap mapG5;
        HashMap mapG6;
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null) {
            String ops = downloadBean.getOps();
            if (ops == null) {
                ops = "";
            }
            logViewConfig3.n(ops);
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG6 = logViewConfig4.g()) != null) {
            String ugcVideoId = downloadBean.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG5 = logViewConfig5.g()) != null) {
            String ugcVideoCollectionId = downloadBean.getUgcVideoCollectionId();
        }
        qi.b logViewConfig6 = getLogViewConfig();
        if (logViewConfig6 != null && (mapG4 = logViewConfig6.g()) != null) {
        }
        String strZ0 = getPreviousPageVideoId();
        if (strZ0 != null && (logViewConfig2 = getLogViewConfig()) != null && (mapG3 = logViewConfig2.g()) != null) {
        }
        qi.b logViewConfig7 = getLogViewConfig();
        if (logViewConfig7 != null && (mapG2 = logViewConfig7.g()) != null) {
        }
        String strA0 = getPreviousTrackId();
        if (strA0 == null || (logViewConfig = getLogViewConfig()) == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override
    protected void F0() {
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView;
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView2;
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView3;
        UGCVideoDetailInfoView uGCVideoDetailInfoView;
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (uGCVideoDetailInfoView = mViewBinding.f62683e) != null) {
            uf.c.g(uGCVideoDetailInfoView);
        }
        iu.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (uGCLocalVideoDetailInfoView3 = mViewBinding2.f62689k) != null) {
            uf.c.k(uGCLocalVideoDetailInfoView3);
        }
        iu.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (uGCLocalVideoDetailInfoView2 = mViewBinding3.f62689k) != null) {
            uGCLocalVideoDetailInfoView2.setPageName(getPAGE_NAME());
        }
        iu.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (uGCLocalVideoDetailInfoView = mViewBinding4.f62689k) == null) {
            return;
        }
        uGCLocalVideoDetailInfoView.setParentFragment(this);
    }

    @Override
    protected void H0() {
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f62692n) == null) {
            return;
        }
        uGCVideoDetailPlayListView.setParentFragment(this, UGCVideoPlayFrom.LOCAL_VIDEO);
    }

    @Override
    protected boolean V0(final FloatActionType actionType) {
        final FragmentActivity activity;
        ConstraintLayout constraintLayoutB;
        Intrinsics.h(actionType, "actionType");
        DownloadBean downloadBean = (DownloadBean) c1().i().f();
        if (downloadBean == null) {
            return false;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("VideoFloat", "showFloat2Window， " + downloadBean.getUgcVideoType() + ", " + downloadBean.getUgcVideoId(), true);
        if (!downloadBean.isMusic() && (activity = getActivity()) != null && !activity.isDestroyed() && !activity.isFinishing()) {
            FloatActionType floatActionType = FloatActionType.ICON;
            if (actionType != floatActionType && !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
                c0922a.c("VideoFloat", "设置页pip开关被关闭了", true);
                return false;
            }
            final dw.a aVarU0 = u0();
            if (aVarU0 != null) {
                if (actionType != floatActionType && !aVarU0.f().isPlaying()) {
                    c0922a.c("VideoFloat-pip", "stream 视频暂停，无需触发画中画", true);
                    return false;
                }
                cw.e.a aVar = cw.e.f58665a;
                if (aVar.b().c()) {
                    kn.a aVarY0 = getPlayerControl();
                    if (aVarY0 != null) {
                        aVarY0.hideBottomController(true);
                    }
                    c0922a.c("VideoFloat-pip", "stream 当前可用画中画，使用画中画播放", true);
                    if (Build.VERSION.SDK_INT < 31 || actionType != FloatActionType.HOME) {
                        aVar.b().d(activity, aVarU0, actionType, getCurPlayerUiType() == LongVodUiType.LAND);
                    } else {
                        iu.i mViewBinding = getMViewBinding();
                        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
                            constraintLayoutB.postDelayed(new Runnable() {
                                @Override
                                public final void run() {
                                    UGCLocalVideoDetailFragment.k1(activity, aVarU0, actionType, this);
                                }
                            }, 1000L);
                        }
                    }
                    return true;
                }
                cw.b.f58659a.c().e(activity, aVarU0, actionType == floatActionType, getCurPlayerUiType() == LongVodUiType.LAND, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return UGCLocalVideoDetailFragment.l1(this.f54151a, activity, ((Boolean) obj).booleanValue());
                    }
                }, new b());
            }
        }
        return false;
    }

    @Override
    public String getTAG() {
        return this.TAG;
    }

    @Override
    public void initViewModel() {
        c1().i().j(this, this.playInfoObserver);
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    protected void q0() {
        String str = this.resourceId;
        if (str != null) {
            c1().h(str);
            c1().j(str);
        }
    }

    @Override
    public void receiveArguments() {
        super.receiveArguments();
        Bundle arguments = getArguments();
        T0(arguments != null ? arguments.getString("id") : null);
        Bundle arguments2 = getArguments();
        this.resourceId = arguments2 != null ? arguments2.getString("resource_id") : null;
        Bundle arguments3 = getArguments();
        U0(arguments3 != null ? arguments3.getString("ugcCategory") : null);
        Bundle arguments4 = getArguments();
        Q0(arguments4 != null ? arguments4.getString("parent_video_id") : null);
        super.Q0(getPreviousPageVideoId());
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "receiveArguments: resourceId:" + this.resourceId + ", ugcVideoId=" + getUgcVideoId() + ", previousPageVideoId=" + getPreviousPageVideoId(), false, 4, null);
    }

    @Override
    public void retryLoadData() {
    }

    @Override
    protected dw.a u0() {
        String str;
        DownloadBean downloadBean = (DownloadBean) c1().i().f();
        if (downloadBean == null) {
            return null;
        }
        List<DownloadBean> list = (List) c1().k().f();
        kn.a aVarY0 = getPlayerControl();
        com.transsion.player.orplayer.f player = aVarY0 != null ? aVarY0.getPlayer() : null;
        kn.a aVarY1 = getPlayerControl();
        ORPlayerView playerView = aVarY1 != null ? aVarY1.getOrPlayerView() : null;
        kn.a aVarY2 = getPlayerControl();
        SimpleSubtitleView subtitleView = aVarY2 != null ? aVarY2.getSubtitleView() : null;
        kn.a aVarY3 = getPlayerControl();
        ViewGroup subtitleViewGroup = aVarY3 != null ? aVarY3.getSubtitleViewGroup() : null;
        if (playerView == null || player == null || subtitleView == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            String str2 = "";
            for (DownloadBean downloadBean2 : list) {
                PlayMimeType playMimeType = PlayMimeType.DEFAULT;
                String ugcVideoCollectionName = downloadBean.getUgcVideoCollectionName();
                String str3 = ugcVideoCollectionName == null ? "" : ugcVideoCollectionName;
                String strV0 = getLastPageFrom();
                String str4 = strV0 == null ? "" : strV0;
                String page_name = getPAGE_NAME();
                String cover = downloadBean.getCover();
                String str5 = cover == null ? "" : cover;
                String thumbnail = downloadBean.getThumbnail();
                ln.a aVar = new ln.a("", playMimeType, 0L, 0, 0, str3, null, str4, page_name, null, str5, thumbnail == null ? "" : thumbnail, "", 0, null, false, downloadBean.getUgcVideoName(), downloadBean.getOps(), 49728, null);
                String strA = nn.a.f67319a.a(aVar);
                aVar.x(downloadBean);
                arrayList.add(aVar);
                str2 = strA;
            }
            str = str2;
        } else {
            str = "";
        }
        wf.a.f74274a.c("VideoFloat", "stream-----showFloat, title:" + downloadBean.getUgcVideoName(), true);
        UGCLocalVideoFloatManager.f54214b.n(arrayList);
        kn.a aVarY4 = getPlayerControl();
        ln.c playingStream = aVarY4 != null ? aVarY4.getPlayingStream() : null;
        dw.a aVar2 = new dw.a(playerView, player, subtitleViewGroup, FloatPlayType.STREAM, "", 0, 0, playingStream != null ? playingStream.e() : null, getPAGE_NAME());
        aVar2.I(PlayMimeType.DEFAULT);
        aVar2.C(str);
        DownloadBean downloadBean3 = this.downloadBean;
        aVar2.A(downloadBean3 != null ? downloadBean3.getOps() : null);
        aVar2.y(this.downloadBean);
        aVar2.B(getLastPageFrom());
        return aVar2;
    }

    @Override
    public String getOps() {
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean != null) {
            return downloadBean.getOps();
        }
        return null;
    }

    @Override
    public String getPAGE_NAME() {
        return this.PAGE_NAME;
    }
}
