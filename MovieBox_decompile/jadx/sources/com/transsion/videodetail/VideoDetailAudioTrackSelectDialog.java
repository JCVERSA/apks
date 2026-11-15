package com.transsion.videodetail;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.play.detail.fragment.BaseBottomDialogFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J2\u0010\f\u001a\u00020\n2#\u0010\u000b\u001a\u001f\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001b\u0010\u0004R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010%\u001a\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R3\u00104\u001a\u001f\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u00065"}, d2 = {"Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;", "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;", "Lxv/c;", "<init>", "()V", "Lkotlin/Function1;", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "Lkotlin/ParameterName;", "name", "info", "", "callback", "z0", "(Lkotlin/jvm/functions/Function1;)V", "", "subjectId", "A0", "(Ljava/lang/String;)V", "Landroid/view/LayoutInflater;", "inflater", "u0", "(Landroid/view/LayoutInflater;)Lxv/c;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "mSubjectId", "Lcom/transsion/videodetail/adapter/a;", "c", "Lcom/transsion/videodetail/adapter/a;", "adapter", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "s0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lcom/transsion/player/longvideo/helper/n0;", "e", "t0", "()Lcom/transsion/player/longvideo/helper/n0;", "subtitleViewModel", "", "f", "J", "lastClickTime", "g", "Lkotlin/jvm/functions/Function1;", "audioSelectCallback", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VideoDetailAudioTrackSelectDialog extends BaseBottomDialogFragment<xv.c> {

    private String mSubjectId;

    private com.transsion.videodetail.adapter.a adapter;

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

    private long lastClickTime;

    private Function1 audioSelectCallback;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f55466a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55466a = function;
        }

        @Override
        public final Function a() {
            return this.f55466a;
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
            this.f55466a.invoke(obj);
        }
    }

    private final MovieDetailViewModel s0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final com.transsion.player.longvideo.helper.n0 t0() {
        return (com.transsion.player.longvideo.helper.n0) this.subtitleViewModel.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit v0(VideoDetailAudioTrackSelectDialog videoDetailAudioTrackSelectDialog, List list) {
        ProgressBar progressBar;
        wf.a.f74274a.c("Audio_Subtitle", "AudioTrack ---- use subtitle " + (list != null ? Integer.valueOf(list.size()) : null), true);
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ht.a aVar = (ht.a) it.next();
                DubsInfo dubsInfo = new DubsInfo(null, aVar.b().getLanName(), aVar.b().getLan(), false, 9, null);
                dubsInfo.setSelected(aVar.f());
                dubsInfo.setSubtitle(true);
                arrayList.add(dubsInfo);
            }
        }
        xv.c cVar = (xv.c) videoDetailAudioTrackSelectDialog.getMViewBinding();
        if (cVar != null && (progressBar = cVar.f75869d) != null) {
            uf.c.g(progressBar);
        }
        com.transsion.videodetail.adapter.a aVar2 = videoDetailAudioTrackSelectDialog.adapter;
        if (aVar2 != null) {
            aVar2.n1(arrayList);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit w0(VideoDetailAudioTrackSelectDialog videoDetailAudioTrackSelectDialog, Pair pair) {
        List listL;
        ProgressBar progressBar;
        List<DubsInfo> dubs;
        Subject subject = (Subject) pair.getSecond();
        if (subject == null || (dubs = subject.getDubs()) == null) {
            listL = CollectionsKt.l();
        } else {
            List<DubsInfo> list = dubs;
            listL = new ArrayList(CollectionsKt.v(list, 10));
            for (DubsInfo dubsInfo : list) {
                wf.a.C0922a.g(wf.a.f74274a, "The dubsInfo.id is " + dubsInfo.getSubjectId() + ", the subjectId: $" + videoDetailAudioTrackSelectDialog.mSubjectId, false, 2, null);
                dubsInfo.setSelected(Intrinsics.c(dubsInfo.getSubjectId(), videoDetailAudioTrackSelectDialog.mSubjectId));
                listL.add(dubsInfo);
            }
        }
        if (listL.size() > 1) {
            xv.c cVar = (xv.c) videoDetailAudioTrackSelectDialog.getMViewBinding();
            if (cVar != null && (progressBar = cVar.f75869d) != null) {
                uf.c.g(progressBar);
            }
            com.transsion.videodetail.adapter.a aVar = videoDetailAudioTrackSelectDialog.adapter;
            if (aVar != null) {
                aVar.n1(listL);
            }
        }
        return Unit.f64096a;
    }

    public static final void x0(VideoDetailAudioTrackSelectDialog videoDetailAudioTrackSelectDialog, View view) {
        BaseBottomDialogFragment.m0(videoDetailAudioTrackSelectDialog, false, 1, null);
    }

    public static final void y0(VideoDetailAudioTrackSelectDialog videoDetailAudioTrackSelectDialog, com.transsion.videodetail.adapter.a aVar, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        if (videoDetailAudioTrackSelectDialog.lastClickTime == 0 || System.currentTimeMillis() - videoDetailAudioTrackSelectDialog.lastClickTime > 1000) {
            videoDetailAudioTrackSelectDialog.lastClickTime = System.currentTimeMillis();
            DubsInfo dubsInfo = (DubsInfo) aVar.getItem(i10);
            if (dubsInfo.getIsSubtitle()) {
                List<ht.a> list = (List) videoDetailAudioTrackSelectDialog.t0().c().f();
                if (list != null) {
                    for (ht.a aVar2 : list) {
                        if (Intrinsics.c(aVar2.b().getLan(), dubsInfo.getLanCode())) {
                            aVar2.l(true);
                            wf.a.f74274a.c("Audio_Subtitle", "详情页 字幕选择了, name:" + aVar2.b().getLanName() + ", " + aVar2.b().getLan() + ", " + aVar2.d(), true);
                            videoDetailAudioTrackSelectDialog.t0().b().n(aVar2);
                        } else {
                            aVar2.l(false);
                        }
                    }
                }
            } else {
                Function1 function1 = videoDetailAudioTrackSelectDialog.audioSelectCallback;
                if (function1 != null) {
                    function1.invoke(aVar.getItem(i10));
                }
            }
            BaseBottomDialogFragment.m0(videoDetailAudioTrackSelectDialog, false, 1, null);
        }
    }

    public final void A0(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.mSubjectId = subjectId;
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
        List<DubsInfo> dubs;
        xv.c cVar = (xv.c) getMViewBinding();
        int size = 0;
        if (cVar != null) {
            cVar.f75868c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    VideoDetailAudioTrackSelectDialog.x0(this.f55696a, view);
                }
            });
            ProgressBar pbLoading = cVar.f75869d;
            Intrinsics.g(pbLoading, "pbLoading");
            uf.c.k(pbLoading);
            RecyclerView recyclerView = cVar.f75870e;
            Context context = getContext();
            recyclerView.setLayoutManager((context == null || !com.transsion.baseui.util.b.a(context)) ? new NpaLinearLayoutManager(requireContext(), 1, false) : new NpaGridLayoutManager(requireContext(), 2));
            RecyclerView recyclerView2 = cVar.f75870e;
            final com.transsion.videodetail.adapter.a aVar = new com.transsion.videodetail.adapter.a();
            this.adapter = aVar;
            aVar.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    VideoDetailAudioTrackSelectDialog.y0(this.f55699a, aVar, baseQuickAdapter, view, i10);
                }
            });
            recyclerView2.setAdapter(aVar);
        }
        MovieDetailViewModel movieDetailViewModelS0 = s0();
        movieDetailViewModelS0.F().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoDetailAudioTrackSelectDialog.w0(this.f55702a, (Pair) obj);
            }
        }));
        Pair pair = (Pair) movieDetailViewModelS0.F().f();
        if (pair != null) {
            Subject subject = (Subject) pair.getSecond();
            List<DubsInfo> dubs2 = subject != null ? subject.getDubs() : null;
            if (dubs2 != null && !dubs2.isEmpty()) {
                Subject subject2 = (Subject) pair.getSecond();
                if (subject2 != null && (dubs = subject2.getDubs()) != null) {
                    size = dubs.size();
                }
                if (size > 1) {
                    return;
                }
            }
        }
        wf.a.f74274a.c("Audio_Subtitle", "AudioTrack try use subtitle~~~", true);
        t0().c().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoDetailAudioTrackSelectDialog.v0(this.f55712a, (List) obj);
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
    public xv.c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        xv.c cVarC = xv.c.c(inflater);
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    public final void z0(Function1 callback) {
        this.audioSelectCallback = callback;
    }
}
