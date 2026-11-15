package com.transsion.videodetail;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.amazonaws.services.s3.model.BucketVersioningConfiguration;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetail.fragment.ResourceDetectorDialogFragment;
import com.transsion.moviedetail.fragment.VideoDetailSeasonsSelectFragment;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;

@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u0000 f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u001f\u0010\u0012\u001a\u00020\u00072\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001c\u0010\u001aJ\u0019\u0010\u001e\u001a\u00020\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u001e\u0010\u0016J\u0017\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0019\u0010%\u001a\u00020\u00072\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b%\u0010&J!\u0010)\u001a\u00020\u00072\u0006\u0010(\u001a\u00020'2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b)\u0010*J!\u0010+\u001a\u00020\u00072\u0006\u0010(\u001a\u00020'2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b+\u0010*J\u000f\u0010,\u001a\u00020\u0007H\u0016¢\u0006\u0004\b,\u0010\u0004J2\u00103\u001a\u00020\u00072#\u00102\u001a\u001f\u0012\u0013\u0012\u00110.¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(1\u0012\u0004\u0012\u00020\u0007\u0018\u00010-¢\u0006\u0004\b3\u00104R\u001b\u0010:\u001a\u0002058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u001b\u0010?\u001a\u00020;8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u00107\u001a\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u001b\u0010T\u001a\u00020P8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u00107\u001a\u0004\bR\u0010SR\u0016\u0010W\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR3\u0010Z\u001a\u001f\u0012\u0013\u0012\u00110.¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(1\u0012\u0004\u0012\u00020\u0007\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010]\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010_\u001a\u00020L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010NR\u0016\u0010a\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010VR\u0016\u0010c\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010\\R\u0014\u0010e\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010\\¨\u0006g"}, d2 = {"Lcom/transsion/videodetail/VideoEpisodeFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lxv/d;", "<init>", "()V", "", "showGrid", "", "C0", "(Z)V", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "seasonsList", "u0", "(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)V", "R0", "", "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "list", "S0", "(Ljava/util/List;)V", WebConstants.FIELD_ITEM, "M0", "(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V", "", RequestParameters.POSITION, "O0", "(I)V", "season", "N0", "playingSource", "Q0", "Landroid/view/LayoutInflater;", "inflater", "t0", "(Landroid/view/LayoutInflater;)Lxv/d;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "Lkotlin/Function1;", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "Lkotlin/ParameterName;", "name", "info", "callback", "P0", "(Lkotlin/jvm/functions/Function1;)V", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "a", "Lkotlin/Lazy;", "q0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lcom/transsion/videodetail/VideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "s0", "()Lcom/transsion/videodetail/VideoDetailViewModel;", "videoDetailViewModel", "Lcom/transsion/videodetail/adapter/b;", "c", "Lcom/transsion/videodetail/adapter/b;", "videoDetailEpisodeAdapter", "Lcom/transsion/moviedetailapi/bean/Subject;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "", "e", "J", "lastClickTime", "", "f", "Ljava/lang/String;", "moduleName", "Lcom/transsion/player/longvideo/helper/n0;", "g", "r0", "()Lcom/transsion/player/longvideo/helper/n0;", "subtitleViewModel", "h", "Z", "isAudioDubs", "i", "Lkotlin/jvm/functions/Function1;", "audioSelectCallback", "j", "I", "curSeason", CampaignEx.JSON_KEY_AD_K, "curEpTabTitle", "l", "isSeasonTab", "m", "seasonsCount", "n", "scrollOffset", "o", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VideoEpisodeFragment extends BaseFragment<xv.d> {

    private com.transsion.videodetail.adapter.b videoDetailEpisodeAdapter;

    private Subject mMovieDetailBean;

    private long lastClickTime;

    private String moduleName;

    private boolean isAudioDubs;

    private Function1 audioSelectCallback;

    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy videoDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(VideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy subtitleViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.player.longvideo.helper.n0.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private int curSeason = 1;

    private String curEpTabTitle = "1-50";

    private boolean isSeasonTab = true;

    private int seasonsCount = 1;

    private final int scrollOffset = (com.blankj.utilcode.util.y.e() / 2) - com.blankj.utilcode.util.a0.a(88.0f);

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f55505a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55505a = function;
        }

        @Override
        public final Function a() {
            return this.f55505a;
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
            this.f55505a.invoke(obj);
        }
    }

    public static final Unit A0(VideoEpisodeFragment videoEpisodeFragment, Pair pair) {
        BLTextView bLTextView;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "VideoDetailEpisode", "字幕选择了, name:" + pair.getFirst() + ", " + pair.getSecond(), false, 4, null);
        if (videoEpisodeFragment.isAudioDubs) {
            wf.a.C0922a.f(c0922a, "VideoDetailEpisode", "字幕选择了, 是多配音，不展示字幕", false, 4, null);
            return Unit.f64096a;
        }
        if (Intrinsics.c(pair.getFirst(), BucketVersioningConfiguration.OFF)) {
            wf.a.C0922a.f(c0922a, "VideoDetailEpisode", "关闭了字幕，文案不更改", false, 4, null);
            return Unit.f64096a;
        }
        xv.d mViewBinding = videoEpisodeFragment.getMViewBinding();
        if (mViewBinding != null && (bLTextView = mViewBinding.f75880i) != null) {
            bLTextView.setText((CharSequence) pair.getFirst());
        }
        return Unit.f64096a;
    }

    public static final Unit B0(VideoEpisodeFragment videoEpisodeFragment, List list) {
        BLTextView bLTextView;
        BLTextView bLTextView2;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            xv.d mViewBinding = videoEpisodeFragment.getMViewBinding();
            if (mViewBinding != null && (bLTextView = mViewBinding.f75880i) != null) {
                uf.c.g(bLTextView);
            }
            return Unit.f64096a;
        }
        xv.d mViewBinding2 = videoEpisodeFragment.getMViewBinding();
        if (mViewBinding2 != null && (bLTextView2 = mViewBinding2.f75880i) != null) {
            uf.c.k(bLTextView2);
        }
        return Unit.f64096a;
    }

    private final void C0(boolean showGrid) {
        RecyclerView recyclerView;
        Integer subjectType;
        xv.d mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f75879h) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new tf.e(8.0f, 0.0f, showGrid ? 0.0f : 4.0f, 12.0f, 2, null));
        Subject subject = this.mMovieDetailBean;
        final com.transsion.videodetail.adapter.b bVar = new com.transsion.videodetail.adapter.b((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue(), showGrid, R$layout.item_video_detail_episode);
        bVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                VideoEpisodeFragment.D0(this.f55537a, bVar, baseQuickAdapter, view, i10);
            }
        });
        this.videoDetailEpisodeAdapter = bVar;
        recyclerView.setAdapter(bVar);
    }

    public static final void D0(VideoEpisodeFragment videoEpisodeFragment, com.transsion.videodetail.adapter.b bVar, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        if (videoEpisodeFragment.lastClickTime == 0 || System.currentTimeMillis() - videoEpisodeFragment.lastClickTime > 1000) {
            videoEpisodeFragment.lastClickTime = System.currentTimeMillis();
            videoEpisodeFragment.s0().B((VideoDetailMediaSource) bVar.f0(i10));
        }
    }

    public static final void E0(final VideoEpisodeFragment videoEpisodeFragment, View view) {
        String subjectId;
        Fragment parentFragment;
        wf.a.C0922a.f(wf.a.f74274a, "VideoEpisodeFragment", "innerTvTitle click then switch audio track", false, 4, null);
        Subject subject = videoEpisodeFragment.mMovieDetailBean;
        if (subject == null || (subjectId = subject.getSubjectId()) == null || (parentFragment = videoEpisodeFragment.getParentFragment()) == null) {
            return;
        }
        VideoDetailAudioTrackSelectDialog videoDetailAudioTrackSelectDialog = new VideoDetailAudioTrackSelectDialog();
        videoDetailAudioTrackSelectDialog.A0(subjectId);
        videoDetailAudioTrackSelectDialog.n0(parentFragment, R$id.fl_bottom_dialog_container);
        videoDetailAudioTrackSelectDialog.z0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoEpisodeFragment.F0(this.f55540a, (DubsInfo) obj);
            }
        });
    }

    public static final Unit F0(VideoEpisodeFragment videoEpisodeFragment, DubsInfo it) {
        Intrinsics.h(it, "it");
        Function1 function1 = videoEpisodeFragment.audioSelectCallback;
        if (function1 != null) {
            function1.invoke(it);
        }
        return Unit.f64096a;
    }

    public static final void G0(final VideoEpisodeFragment videoEpisodeFragment, View view) {
        Fragment parentFragment = videoEpisodeFragment.getParentFragment();
        if (parentFragment != null) {
            VideoDetailSeasonsSelectFragment.Companion aVar = VideoDetailSeasonsSelectFragment.INSTANCE;
            ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) videoEpisodeFragment.s0().y().f();
            Subject subject = videoEpisodeFragment.mMovieDetailBean;
            VideoDetailSeasonsSelectFragment videoDetailSeasonsSelectFragmentA = aVar.a(resourcesSeasonList, subject != null ? subject.getSubjectType() : null);
            videoDetailSeasonsSelectFragmentA.x0(videoEpisodeFragment.curSeason);
            videoDetailSeasonsSelectFragmentA.n0(parentFragment, R$id.fl_bottom_dialog_container);
            videoDetailSeasonsSelectFragmentA.w0(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return VideoEpisodeFragment.H0(this.f55533a, ((Integer) obj).intValue());
                }
            });
        }
    }

    public static final Unit H0(VideoEpisodeFragment videoEpisodeFragment, int i10) {
        wf.a.C0922a.f(wf.a.f74274a, "VideoDetailEpisode", "setSeasonSelectCallback, season:" + i10, false, 4, null);
        videoEpisodeFragment.curSeason = i10;
        videoEpisodeFragment.N0(i10);
        videoEpisodeFragment.R0();
        return Unit.f64096a;
    }

    public static final void I0(final VideoEpisodeFragment videoEpisodeFragment, View view) {
        Fragment parentFragment;
        Subject subject = videoEpisodeFragment.mMovieDetailBean;
        if (subject == null || (parentFragment = videoEpisodeFragment.getParentFragment()) == null) {
            return;
        }
        VideoDetailAllEpisodesFragment videoDetailAllEpisodesFragment = new VideoDetailAllEpisodesFragment();
        videoDetailAllEpisodesFragment.H0(subject, videoEpisodeFragment.curSeason, (ResourcesSeasonList) videoEpisodeFragment.s0().y().f());
        videoDetailAllEpisodesFragment.n0(parentFragment, R$id.fl_bottom_dialog_container);
        videoDetailAllEpisodesFragment.I0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoEpisodeFragment.J0(this.f55530a, (VideoDetailMediaSource) obj);
            }
        });
    }

    public static final Unit J0(VideoEpisodeFragment videoEpisodeFragment, VideoDetailMediaSource videoDetailMediaSource) {
        if (videoEpisodeFragment.lastClickTime == 0 || System.currentTimeMillis() - videoEpisodeFragment.lastClickTime > 1000) {
            videoEpisodeFragment.lastClickTime = System.currentTimeMillis();
            videoEpisodeFragment.M0(videoDetailMediaSource);
        }
        return Unit.f64096a;
    }

    public static final void K0(VideoEpisodeFragment videoEpisodeFragment, View view) {
        List<ResourceDetectors> resourceDetectors;
        ResourceDetectors resourceDetectors2;
        String title;
        Subject subject = videoEpisodeFragment.mMovieDetailBean;
        if (subject == null || (resourceDetectors = subject.getResourceDetectors()) == null || (resourceDetectors2 = (ResourceDetectors) CollectionsKt.k0(resourceDetectors)) == null) {
            return;
        }
        ResourceDetectorDialogFragment.Companion companion = ResourceDetectorDialogFragment.INSTANCE;
        Subject subject2 = videoEpisodeFragment.mMovieDetailBean;
        if (subject2 == null || (title = subject2.getTitle()) == null) {
            title = "";
        }
        ResourceDetectorDialogFragment resourceDetectorDialogFragmentA = companion.a(title, resourceDetectors2);
        FragmentManager childFragmentManager = videoEpisodeFragment.getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        resourceDetectorDialogFragmentA.show(childFragmentManager, "ResourceDetectorFragment --> ");
    }

    public static final void L0(VideoEpisodeFragment videoEpisodeFragment, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DETAIL");
        Subject subject = videoEpisodeFragment.mMovieDetailBean;
        Navigator.x(navigatorK.K("subject_id", subject != null ? subject.getSubjectId() : null), videoEpisodeFragment.getContext(), null, 2, null);
    }

    private final void M0(VideoDetailMediaSource item) {
        List<Object> data;
        s0().B(item);
        com.transsion.videodetail.adapter.b bVar = this.videoDetailEpisodeAdapter;
        int i10 = -1;
        if (bVar != null && (data = bVar.getData()) != null) {
            Iterator<Object> it = data.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) it.next();
                if (item != null && videoDetailMediaSource.getSe() == item.getSe() && videoDetailMediaSource.getEp() == item.getEp()) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        if (i10 >= 0) {
            com.transsion.videodetail.adapter.b bVar2 = this.videoDetailEpisodeAdapter;
            if (i10 < (bVar2 != null ? bVar2.getItemCount() : 0)) {
                O0(i10);
            }
        }
    }

    private final void N0(int season) {
        this.curSeason = season;
        q0().K().q(Integer.valueOf(season));
        com.transsion.videodetail.adapter.b bVar = this.videoDetailEpisodeAdapter;
        if (bVar != null) {
            bVar.n1(com.transsion.videodetail.util.d.f55710a.a(s0(), season));
        }
    }

    private final void O0(int position) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        if (position < 0) {
            return;
        }
        try {
            xv.d mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView2 = mViewBinding.f75879h) != null) {
                recyclerView2.scrollToPosition(position);
            }
            xv.d mViewBinding2 = getMViewBinding();
            RecyclerView.m layoutManager = (mViewBinding2 == null || (recyclerView = mViewBinding2.f75879h) == null) ? null : recyclerView.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                int i10 = this.scrollOffset;
                if (i10 <= 0) {
                    i10 = 0;
                }
                linearLayoutManager.scrollToPositionWithOffset(position, i10);
            }
        } catch (Throwable unused) {
        }
    }

    private final void Q0(VideoDetailMediaSource playingSource) {
        List<ResourcesSeason> seasons;
        com.transsion.videodetail.adapter.b bVar = this.videoDetailEpisodeAdapter;
        if (bVar != null) {
            bVar.F1(playingSource);
        }
        wf.a.C0922a.f(wf.a.f74274a, "VideoDetailEpisode", "setPlayingItem,--------, se:" + (playingSource != null ? Integer.valueOf(playingSource.getSe()) : null) + ", ep:" + (playingSource != null ? Integer.valueOf(playingSource.getEp()) : null), false, 4, null);
        int i10 = 0;
        if (!this.isSeasonTab) {
            Map map = (Map) s0().t().f();
            if (map != null) {
                int i11 = 0;
                for (Map.Entry entry : map.entrySet()) {
                    if (!((Collection) entry.getValue()).isEmpty()) {
                        IntRange intRange = new IntRange(((VideoDetailMediaSource) CollectionsKt.i0((List) entry.getValue())).getEp(), ((VideoDetailMediaSource) CollectionsKt.u0((List) entry.getValue())).getEp());
                        Integer numValueOf = playingSource != null ? Integer.valueOf(playingSource.getEp()) : null;
                        if (numValueOf != null && intRange.o(numValueOf.intValue())) {
                            String str = (String) entry.getKey();
                            this.curEpTabTitle = str;
                            wf.a.C0922a.f(wf.a.f74274a, "VideoDetailEpisode", "setPlayingItem,index:" + i11 + ", EpTabTitle:" + str, false, 4, null);
                        }
                    }
                    i11++;
                }
                return;
            }
            return;
        }
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) s0().y().f();
        if (resourcesSeasonList != null && (seasons = resourcesSeasonList.getSeasons()) != null) {
            Iterator<ResourcesSeason> it = seasons.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i10 = -1;
                    break;
                }
                ResourcesSeason next = it.next();
                if (playingSource != null && next.getSe() == playingSource.getSe()) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        if (i10 > 0) {
            int se2 = playingSource != null ? playingSource.getSe() : 1;
            this.curSeason = se2;
            wf.a.C0922a.f(wf.a.f74274a, "VideoDetailEpisode", "setPlayingItem,  curSeason：" + se2, false, 4, null);
            N0(this.curSeason);
        }
    }

    private final void R0() {
        xv.d mViewBinding;
        BLTextView bLTextView;
        BLTextView bLTextView2;
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.isTvType()) {
            xv.d mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (bLTextView2 = mViewBinding2.f75877f) == null) {
                return;
            }
            Context context = getContext();
            bLTextView2.setText(context != null ? context.getString(com.transsnet.downloader.R$string.download_video_detail_season_index, sm.f.a(this.curSeason)) : null);
            return;
        }
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 == null || !subject2.isEduType() || (mViewBinding = getMViewBinding()) == null || (bLTextView = mViewBinding.f75877f) == null) {
            return;
        }
        Context context2 = getContext();
        bLTextView.setText(context2 != null ? context2.getString(com.transsnet.downloader.R$string.download_video_detail_unit_index, sm.f.a(this.curSeason)) : null);
    }

    private final void S0(List list) {
        BLTextView bLTextView;
        Subject subject;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        if (list.size() > 1 && (subject = this.mMovieDetailBean) != null && subject.isMovieType()) {
            xv.d mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView2 = mViewBinding.f75879h) != null && recyclerView2.getItemDecorationCount() > 0) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    recyclerView2.removeItemDecorationAt(0);
                    Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m453constructorimpl(ResultKt.a(th2));
                }
            }
            xv.d mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (recyclerView = mViewBinding2.f75879h) != null) {
                recyclerView.addItemDecoration(new tf.e(8.0f, 0.0f, 12.0f, list.size() > 6 ? 12.0f : 0.0f, 2, null));
            }
        }
        xv.d mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (bLTextView = mViewBinding3.f75881j) != null) {
            bLTextView.setVisibility(list.size() > 6 ? 0 : 8);
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) CollectionsKt.k0(list);
        if (videoDetailMediaSource != null && videoDetailMediaSource.getSe() == 0 && videoDetailMediaSource.getEp() == 0) {
            Subject subject2 = this.mMovieDetailBean;
            videoDetailMediaSource.setName(subject2 != null ? subject2.getTitle() : null);
        }
        com.transsion.videodetail.adapter.b bVar = this.videoDetailEpisodeAdapter;
        if (bVar != null) {
            bVar.n1(com.transsion.videodetail.util.d.f55710a.a(s0(), this.curSeason));
        }
    }

    private final MovieDetailViewModel q0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final com.transsion.player.longvideo.helper.n0 r0() {
        return (com.transsion.player.longvideo.helper.n0) this.subtitleViewModel.getValue();
    }

    private final VideoDetailViewModel s0() {
        return (VideoDetailViewModel) this.videoDetailViewModel.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    private final void u0(ResourcesSeasonList seasonsList) {
        int se2;
        List<ResourcesSeason> seasons;
        List<ResourcesSeason> seasons2;
        if (seasonsList == null || (seasons2 = seasonsList.getSeasons()) == null || !seasons2.isEmpty()) {
            if (seasonsList == null || (seasons = seasonsList.getSeasons()) == null) {
                se2 = this.curSeason;
            } else {
                Iterator<T> it = seasons.iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
                Object next = it.next();
                if (it.hasNext()) {
                    int se3 = ((ResourcesSeason) next).getSe();
                    do {
                        Object next2 = it.next();
                        int se4 = ((ResourcesSeason) next2).getSe();
                        if (se3 > se4) {
                            next = next2;
                            se3 = se4;
                        }
                    } while (it.hasNext());
                }
                ResourcesSeason resourcesSeason = (ResourcesSeason) next;
                if (resourcesSeason != null) {
                    se2 = resourcesSeason.getSe();
                } else {
                    se2 = this.curSeason;
                }
            }
            wf.a.C0922a.f(wf.a.f74274a, "VideoDetailEpisode", "initCurSeason, minSeason:" + se2 + "， curSeason：" + this.curSeason, false, 4, null);
            if (this.curSeason < se2) {
                this.curSeason = se2;
                R0();
            }
        }
    }

    public static final Unit v0(VideoEpisodeFragment videoEpisodeFragment, ResourcesSeasonList resourcesSeasonList) {
        Subject subject;
        videoEpisodeFragment.u0(resourcesSeasonList);
        videoEpisodeFragment.hideLoading();
        Subject subject2 = videoEpisodeFragment.mMovieDetailBean;
        boolean z10 = true;
        if ((subject2 == null || !subject2.isTvType()) && ((subject = videoEpisodeFragment.mMovieDetailBean) == null || !subject.isEduType())) {
            z10 = false;
        }
        videoEpisodeFragment.C0(z10);
        return Unit.f64096a;
    }

    public static final Unit w0(VideoEpisodeFragment videoEpisodeFragment, List list) {
        videoEpisodeFragment.S0(list);
        return Unit.f64096a;
    }

    public static final Unit x0(VideoEpisodeFragment videoEpisodeFragment, VideoDetailMediaSource videoDetailMediaSource) {
        videoEpisodeFragment.Q0(videoDetailMediaSource);
        return Unit.f64096a;
    }

    public static final Unit y0(VideoEpisodeFragment videoEpisodeFragment, Integer num) {
        videoEpisodeFragment.R0();
        return Unit.f64096a;
    }

    public static final Unit z0(VideoEpisodeFragment videoEpisodeFragment, ResourcesSeasonList resourcesSeasonList) {
        BLTextView bLTextView;
        BLTextView bLTextView2;
        BLTextView bLTextView3;
        List<ResourcesSeason> seasons;
        int size = (resourcesSeasonList == null || (seasons = resourcesSeasonList.getSeasons()) == null) ? 1 : seasons.size();
        videoEpisodeFragment.seasonsCount = size;
        xv.d mViewBinding = videoEpisodeFragment.getMViewBinding();
        if (mViewBinding != null && (bLTextView = mViewBinding.f75877f) != null && bLTextView.getVisibility() == 0) {
            if (size == 1) {
                xv.d mViewBinding2 = videoEpisodeFragment.getMViewBinding();
                if (mViewBinding2 != null && (bLTextView3 = mViewBinding2.f75877f) != null) {
                    uf.c.g(bLTextView3);
                }
            } else {
                xv.d mViewBinding3 = videoEpisodeFragment.getMViewBinding();
                if (mViewBinding3 != null && (bLTextView2 = mViewBinding3.f75877f) != null) {
                    uf.c.k(bLTextView2);
                }
            }
        }
        return Unit.f64096a;
    }

    public final void P0(Function1 callback) {
        this.audioSelectCallback = callback;
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Subject subject;
        BLTextView bLTextView;
        BLTextView bLTextView2;
        Object next;
        BLTextView bLTextView3;
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        s0().y().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoEpisodeFragment.v0(this.f55681a, (ResourcesSeasonList) obj);
            }
        }));
        s0().s().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoEpisodeFragment.w0(this.f55685a, (List) obj);
            }
        }));
        s0().x().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoEpisodeFragment.x0(this.f55688a, (VideoDetailMediaSource) obj);
            }
        }));
        q0().K().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoEpisodeFragment.y0(this.f55691a, (Integer) obj);
            }
        }));
        s0().y().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoEpisodeFragment.z0(this.f55694a, (ResourcesSeasonList) obj);
            }
        }));
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 != null) {
            String subjectId = subject2.getSubjectId();
            List<DubsInfo> dubs = subject2.getDubs();
            this.isAudioDubs = dubs != null && (dubs.isEmpty() ^ true) && dubs.size() > 1;
            if (dubs != null) {
                Iterator<T> it = dubs.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((DubsInfo) next).getSubjectId(), subjectId));
                DubsInfo dubsInfo = (DubsInfo) next;
                if (dubsInfo != null && this.isAudioDubs) {
                    dubsInfo.setSelected(true);
                    xv.d mViewBinding = getMViewBinding();
                    if (mViewBinding != null && (bLTextView3 = mViewBinding.f75880i) != null) {
                        bLTextView3.setText(dubsInfo.getLanName());
                    }
                }
            }
        }
        Subject subject3 = this.mMovieDetailBean;
        if ((subject3 == null || !subject3.isMovieType()) && ((subject = this.mMovieDetailBean) == null || !subject.isTvType())) {
            xv.d mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (bLTextView = mViewBinding2.f75880i) != null) {
                uf.c.g(bLTextView);
            }
        } else {
            xv.d mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (bLTextView2 = mViewBinding3.f75880i) != null) {
                bLTextView2.setVisibility(this.isAudioDubs ? 0 : 8);
            }
        }
        r0().d().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoEpisodeFragment.A0(this.f55520a, (Pair) obj);
            }
        }));
        r0().c().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoEpisodeFragment.B0(this.f55526a, (List) obj);
            }
        }));
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        BLTextView bLTextView;
        BLTextView bLTextView2;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        List<ResourceDetectors> resourceDetectors;
        ResourceDetectors resourceDetectors2;
        xv.d mViewBinding;
        AppCompatTextView appCompatTextView3;
        BLTextView bLTextView3;
        Intrinsics.h(view, "view");
        xv.d mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (bLTextView3 = mViewBinding2.f75881j) != null) {
            bLTextView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    VideoEpisodeFragment.I0(this.f55517a, view2);
                }
            });
        }
        Subject subject = this.mMovieDetailBean;
        if (subject != null && (resourceDetectors = subject.getResourceDetectors()) != null && (resourceDetectors2 = (ResourceDetectors) CollectionsKt.k0(resourceDetectors)) != null && (mViewBinding = getMViewBinding()) != null && (appCompatTextView3 = mViewBinding.f75875d) != null) {
            appCompatTextView3.setText(resourceDetectors2.getUploadBy());
        }
        View.OnClickListener onClickListener = new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                VideoEpisodeFragment.K0(this.f55542a, view2);
            }
        };
        xv.d mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (appCompatTextView2 = mViewBinding3.f75874c) != null) {
            appCompatTextView2.setOnClickListener(onClickListener);
        }
        xv.d mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatTextView = mViewBinding4.f75875d) != null) {
            appCompatTextView.setOnClickListener(onClickListener);
        }
        xv.d mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (appCompatImageView = mViewBinding5.f75873b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    VideoEpisodeFragment.L0(this.f55545a, view2);
                }
            });
        }
        xv.d mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (bLTextView2 = mViewBinding6.f75880i) != null) {
            bLTextView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    VideoEpisodeFragment.E0(this.f55548a, view2);
                }
            });
        }
        xv.d mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (bLTextView = mViewBinding7.f75877f) != null) {
            bLTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    VideoEpisodeFragment.G0(this.f55553a, view2);
                }
            });
        }
        xv.d mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null) {
            Subject subject2 = this.mMovieDetailBean;
            if (subject2 != null && subject2.isTvType()) {
                BLTextView ivSeasons = mViewBinding8.f75877f;
                Intrinsics.g(ivSeasons, "ivSeasons");
                uf.c.k(ivSeasons);
                BLTextView bLTextView4 = mViewBinding8.f75877f;
                Context context = getContext();
                bLTextView4.setText(context != null ? context.getString(com.transsnet.downloader.R$string.download_video_detail_season_index, sm.f.a(this.curSeason)) : null);
                return;
            }
            Subject subject3 = this.mMovieDetailBean;
            if (subject3 == null || !subject3.isEduType()) {
                BLTextView ivSeasons2 = mViewBinding8.f75877f;
                Intrinsics.g(ivSeasons2, "ivSeasons");
                uf.c.g(ivSeasons2);
            } else {
                BLTextView ivSeasons3 = mViewBinding8.f75877f;
                Intrinsics.g(ivSeasons3, "ivSeasons");
                uf.c.k(ivSeasons3);
                BLTextView bLTextView5 = mViewBinding8.f75877f;
                Context context2 = getContext();
                bLTextView5.setText(context2 != null ? context2.getString(com.transsnet.downloader.R$string.download_video_detail_unit_index, sm.f.a(this.curSeason)) : null);
            }
        }
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("data_key_resource_detectors") : null;
        this.mMovieDetailBean = serializable instanceof Subject ? (Subject) serializable : null;
        Bundle arguments2 = getArguments();
        this.moduleName = arguments2 != null ? arguments2.getString("module_name") : null;
        Bundle arguments3 = getArguments();
        this.curSeason = arguments3 != null ? arguments3.getInt("season") : 1;
    }

    @Override
    public xv.d getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        xv.d dVarC = xv.d.c(inflater);
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }
}
