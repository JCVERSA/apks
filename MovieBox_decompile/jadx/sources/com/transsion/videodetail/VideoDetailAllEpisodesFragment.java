package com.transsion.videodetail;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.view.BLTextView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.moviedetail.fragment.VideoDetailSeasonsSelectFragment;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.play.detail.fragment.BaseBottomDialogFragment;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J4\u0010'\u001a\u00020\u00052%\u0010&\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u0005\u0018\u00010\"¢\u0006\u0004\b'\u0010(R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010\u0019\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u001b\u00108\u001a\u0002038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00105\u001a\u0004\b;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR5\u0010G\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u0005\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010F¨\u0006H"}, d2 = {"Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;", "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;", "Lxv/b;", "<init>", "()V", "", "K0", "", "season", "G0", "(I)V", "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "playingSource", "J0", "(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V", "y0", "Landroid/view/LayoutInflater;", "inflater", "x0", "(Landroid/view/LayoutInflater;)Lxv/b;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "Lcom/transsion/moviedetailapi/bean/Subject;", "mSubject", "curSeason", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "seasonList", "H0", "(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)V", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", WebConstants.FIELD_ITEM, "callback", "I0", "(Lkotlin/jvm/functions/Function1;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/Subject;", "c", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "Lcom/transsion/videodetail/adapter/b;", "e", "Lcom/transsion/videodetail/adapter/b;", "videoDetailEpisodeAdapter", "Lcom/transsion/videodetail/VideoDetailViewModel;", "f", "Lkotlin/Lazy;", "w0", "()Lcom/transsion/videodetail/VideoDetailViewModel;", "videoDetailViewModel", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "g", "v0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "", "h", "J", "lastClickTime", "i", "Ljava/lang/Integer;", "seasonsCount", "j", "Lkotlin/jvm/functions/Function1;", "episodeSelectCallback", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VideoDetailAllEpisodesFragment extends BaseBottomDialogFragment<xv.b> {

    private Subject mSubject;

    private ResourcesSeasonList seasonList;

    private com.transsion.videodetail.adapter.b videoDetailEpisodeAdapter;

    private long lastClickTime;

    private Integer seasonsCount;

    private Function1 episodeSelectCallback;

    private int curSeason = 1;

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

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f55459a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55459a = function;
        }

        @Override
        public final Function a() {
            return this.f55459a;
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
            this.f55459a.invoke(obj);
        }
    }

    public static final void A0(VideoDetailAllEpisodesFragment videoDetailAllEpisodesFragment, View view) {
        videoDetailAllEpisodesFragment.l0(true);
    }

    public static final void B0(VideoDetailAllEpisodesFragment videoDetailAllEpisodesFragment, com.transsion.videodetail.adapter.b bVar, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        if (videoDetailAllEpisodesFragment.lastClickTime == 0 || System.currentTimeMillis() - videoDetailAllEpisodesFragment.lastClickTime > 1000) {
            videoDetailAllEpisodesFragment.lastClickTime = System.currentTimeMillis();
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) bVar.f0(i10);
            Function1 function1 = videoDetailAllEpisodesFragment.episodeSelectCallback;
            if (function1 != null) {
                function1.invoke(videoDetailMediaSource);
            }
            BaseBottomDialogFragment.m0(videoDetailAllEpisodesFragment, false, 1, null);
        }
    }

    public static final void C0(final VideoDetailAllEpisodesFragment videoDetailAllEpisodesFragment, View view) {
        Integer seNum = videoDetailAllEpisodesFragment.seasonsCount;
        if (seNum == null) {
            Subject subject = videoDetailAllEpisodesFragment.mSubject;
            seNum = subject != null ? subject.getSeNum() : null;
        }
        if (seNum != null) {
            VideoDetailSeasonsSelectFragment.Companion companion = VideoDetailSeasonsSelectFragment.INSTANCE;
            ResourcesSeasonList resourcesSeasonList = videoDetailAllEpisodesFragment.seasonList;
            Subject subject2 = videoDetailAllEpisodesFragment.mSubject;
            VideoDetailSeasonsSelectFragment videoDetailSeasonsSelectFragmentA = companion.a(resourcesSeasonList, subject2 != null ? subject2.getSubjectType() : null);
            videoDetailSeasonsSelectFragmentA.x0(videoDetailAllEpisodesFragment.curSeason);
            videoDetailSeasonsSelectFragmentA.n0(videoDetailAllEpisodesFragment, R$id.fl_season_container);
            videoDetailSeasonsSelectFragmentA.w0(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return VideoDetailAllEpisodesFragment.D0(this.f55693a, ((Integer) obj).intValue());
                }
            });
        }
    }

    public static final Unit D0(VideoDetailAllEpisodesFragment videoDetailAllEpisodesFragment, int i10) {
        videoDetailAllEpisodesFragment.curSeason = i10;
        videoDetailAllEpisodesFragment.G0(i10);
        videoDetailAllEpisodesFragment.K0();
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit E0(VideoDetailAllEpisodesFragment videoDetailAllEpisodesFragment, ResourcesSeasonList resourcesSeasonList) {
        AppCompatTextView appCompatTextView;
        BLTextView bLTextView;
        AppCompatTextView appCompatTextView2;
        BLTextView bLTextView2;
        List<ResourcesSeason> seasons;
        Integer numValueOf = (resourcesSeasonList == null || (seasons = resourcesSeasonList.getSeasons()) == null) ? 1 : Integer.valueOf(seasons.size());
        videoDetailAllEpisodesFragment.seasonsCount = numValueOf;
        if (numValueOf.intValue() == 1) {
            xv.b bVar = (xv.b) videoDetailAllEpisodesFragment.getMViewBinding();
            if (bVar != null && (bLTextView2 = bVar.f75865h) != null) {
                uf.c.h(bLTextView2);
            }
            xv.b bVar2 = (xv.b) videoDetailAllEpisodesFragment.getMViewBinding();
            if (bVar2 != null && (appCompatTextView2 = bVar2.f75864g) != null) {
                uf.c.k(appCompatTextView2);
            }
        } else {
            xv.b bVar3 = (xv.b) videoDetailAllEpisodesFragment.getMViewBinding();
            if (bVar3 != null && (bLTextView = bVar3.f75865h) != null) {
                uf.c.k(bLTextView);
            }
            xv.b bVar4 = (xv.b) videoDetailAllEpisodesFragment.getMViewBinding();
            if (bVar4 != null && (appCompatTextView = bVar4.f75864g) != null) {
                uf.c.h(appCompatTextView);
            }
        }
        videoDetailAllEpisodesFragment.K0();
        return Unit.f64096a;
    }

    public static final Unit F0(VideoDetailAllEpisodesFragment videoDetailAllEpisodesFragment, VideoDetailMediaSource videoDetailMediaSource) {
        videoDetailAllEpisodesFragment.J0(videoDetailMediaSource);
        return Unit.f64096a;
    }

    private final void G0(int season) {
        this.curSeason = season;
        v0().K().q(Integer.valueOf(season));
        com.transsion.videodetail.adapter.b bVar = this.videoDetailEpisodeAdapter;
        if (bVar != null) {
            bVar.n1(com.transsion.videodetail.util.d.f55710a.a(w0(), season));
        }
    }

    private final void J0(VideoDetailMediaSource playingSource) {
        int i10;
        List<ResourcesSeason> seasons;
        com.transsion.videodetail.adapter.b bVar = this.videoDetailEpisodeAdapter;
        if (bVar != null) {
            bVar.F1(playingSource);
        }
        wf.a.C0922a.f(wf.a.f74274a, "VideoDetailEpisode", "setPlayingItem,--------, se:" + (playingSource != null ? Integer.valueOf(playingSource.getSe()) : null) + ", ep:" + (playingSource != null ? Integer.valueOf(playingSource.getEp()) : null), false, 4, null);
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) w0().y().f();
        if (resourcesSeasonList == null || (seasons = resourcesSeasonList.getSeasons()) == null) {
            i10 = 0;
        } else {
            Iterator<ResourcesSeason> it = seasons.iterator();
            i10 = 0;
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
            this.curSeason = playingSource != null ? playingSource.getSe() : 1;
        }
        Map map = (Map) w0().t().f();
        if (map != null) {
            int i11 = 0;
            for (Map.Entry entry : map.entrySet()) {
                if (!((Collection) entry.getValue()).isEmpty()) {
                    IntRange intRange = new IntRange(((VideoDetailMediaSource) CollectionsKt.i0((List) entry.getValue())).getEp(), ((VideoDetailMediaSource) CollectionsKt.u0((List) entry.getValue())).getEp());
                    Integer numValueOf = playingSource != null ? Integer.valueOf(playingSource.getEp()) : null;
                    if (numValueOf != null && intRange.o(numValueOf.intValue())) {
                        wf.a.C0922a.f(wf.a.f74274a, "VideoDetailEpisode", "setPlayingItem,index:" + i11 + ", EpTabTitle:" + entry.getKey(), false, 4, null);
                    }
                }
                i11++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void K0() {
        AppCompatTextView appCompatTextView;
        BLTextView bLTextView;
        AppCompatTextView appCompatTextView2;
        BLTextView bLTextView2;
        Subject subject = this.mSubject;
        if (subject != null) {
            Integer subjectType = subject.getSubjectType();
            int value = SubjectType.EDUCATION.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                xv.b bVar = (xv.b) getMViewBinding();
                if (bVar != null && (bLTextView2 = bVar.f75865h) != null) {
                    Context context = getContext();
                    bLTextView2.setText(context != null ? context.getString(com.transsnet.downloader.R$string.download_video_detail_unit_index, sm.f.a(this.curSeason)) : null);
                }
                xv.b bVar2 = (xv.b) getMViewBinding();
                if (bVar2 == null || (appCompatTextView2 = bVar2.f75864g) == null) {
                    return;
                }
                appCompatTextView2.setText(Utils.a().getString(com.transsnet.downloader.R$string.download_series_all_lessons));
                return;
            }
        }
        xv.b bVar3 = (xv.b) getMViewBinding();
        if (bVar3 != null && (bLTextView = bVar3.f75865h) != null) {
            Context context2 = getContext();
            bLTextView.setText(context2 != null ? context2.getString(com.transsnet.downloader.R$string.download_video_detail_season_index, sm.f.a(this.curSeason)) : null);
        }
        xv.b bVar4 = (xv.b) getMViewBinding();
        if (bVar4 == null || (appCompatTextView = bVar4.f75864g) == null) {
            return;
        }
        appCompatTextView.setText(Utils.a().getString(com.transsnet.downloader.R$string.download_series_all_episodes));
    }

    private final MovieDetailViewModel v0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final VideoDetailViewModel w0() {
        return (VideoDetailViewModel) this.videoDetailViewModel.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void y0() {
        ProgressBar progressBar;
        wf.a.C0922a.f(wf.a.f74274a, "VideoDetailEpisode", "initFirstData,--------", false, 4, null);
        xv.b bVar = (xv.b) getMViewBinding();
        if (bVar != null && (progressBar = bVar.f75862e) != null) {
            uf.c.g(progressBar);
        }
        com.transsion.videodetail.adapter.b bVar2 = this.videoDetailEpisodeAdapter;
        if (bVar2 != null) {
            bVar2.n1(com.transsion.videodetail.util.d.f55710a.a(w0(), this.curSeason));
        }
    }

    public static final Unit z0(VideoDetailAllEpisodesFragment videoDetailAllEpisodesFragment, Integer num) {
        videoDetailAllEpisodesFragment.K0();
        return Unit.f64096a;
    }

    public final void H0(Subject mSubject, int curSeason, ResourcesSeasonList seasonList) {
        Intrinsics.h(mSubject, "mSubject");
        this.mSubject = mSubject;
        this.curSeason = curSeason;
        this.seasonList = seasonList;
    }

    public final void I0(Function1 callback) {
        this.episodeSelectCallback = callback;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initViewData() {
        xv.b bVar = (xv.b) getMViewBinding();
        if (bVar != null) {
            bVar.f75861d.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    VideoDetailAllEpisodesFragment.A0(this.f55547a, view);
                }
            });
            BLTextView bLTextView = bVar.f75865h;
            Context context = getContext();
            bLTextView.setText(context != null ? context.getString(com.transsnet.downloader.R$string.download_video_detail_season_index, sm.f.a(this.curSeason)) : null);
            RecyclerView recyclerView = bVar.f75863f;
            int iA = com.blankj.utilcode.util.a0.a(4.0f);
            recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 6));
            int i10 = iA * 2;
            recyclerView.addItemDecoration(new tf.b(iA, iA, i10, i10));
            final com.transsion.videodetail.adapter.b bVar2 = new com.transsion.videodetail.adapter.b(SubjectType.TV.getValue(), false, R$layout.item_video_detail_episode);
            bVar2.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    VideoDetailAllEpisodesFragment.B0(this.f55551a, bVar2, baseQuickAdapter, view, i11);
                }
            });
            this.videoDetailEpisodeAdapter = bVar2;
            bVar.f75863f.setAdapter(bVar2);
            y0();
            bVar.f75865h.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    VideoDetailAllEpisodesFragment.C0(this.f55680a, view);
                }
            });
        }
        w0().y().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoDetailAllEpisodesFragment.E0(this.f55684a, (ResourcesSeasonList) obj);
            }
        }));
        w0().x().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoDetailAllEpisodesFragment.F0(this.f55687a, (VideoDetailMediaSource) obj);
            }
        }));
        v0().K().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoDetailAllEpisodesFragment.z0(this.f55690a, (Integer) obj);
            }
        }));
    }

    @Override
    public void initViewModel() {
    }

    @Override
    public void retryLoadData() {
    }

    @Override
    public xv.b getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        xv.b bVarC = xv.b.c(inflater);
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }
}
