package com.transsion.moviedetail.fragment;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.activity.MovieDetailActivity;
import com.transsion.moviedetail.view.WatchModeTipsView;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.util.DownloadUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
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
import okhttp3.internal.http2.Settings;

@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 k2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001?B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J)\u0010\u001b\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0002¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\tJ\u000f\u0010#\u001a\u00020\u0005H\u0002¢\u0006\u0004\b#\u0010\u0004J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b&\u0010'J'\u0010,\u001a\u00020\u00052\f\u0010*\u001a\b\u0012\u0004\u0012\u00020)0(2\b\u0010+\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b,\u0010-J)\u0010.\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010*\u001a\u00020)2\b\u0010+\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b.\u0010/J5\u00101\u001a\u00020\u00052\b\u0010*\u001a\u0004\u0018\u00010)2\b\u0010+\u001a\u0004\u0018\u00010$2\b\b\u0002\u00100\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0005H\u0002¢\u0006\u0004\b3\u0010\u0004J\u000f\u00104\u001a\u00020\u0005H\u0002¢\u0006\u0004\b4\u0010\u0004J\u000f\u00105\u001a\u00020\u0005H\u0002¢\u0006\u0004\b5\u0010\u0004J\u000f\u00106\u001a\u00020\u0005H\u0002¢\u0006\u0004\b6\u0010\u0004J\u001d\u00109\u001a\u00020\u00052\f\u00108\u001a\b\u0012\u0004\u0012\u0002070(H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010<\u001a\u00020\u00052\u0006\u0010;\u001a\u000207H\u0002¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\u0005H\u0002¢\u0006\u0004\b>\u0010\u0004R\u0018\u0010A\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u001b\u0010K\u001a\u00020F8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010@R\u0016\u0010P\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010R\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010@R(\u0010V\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\b\u0012\u0004\u0012\u00020)0(0S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010]\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010_\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010\\R\u0016\u0010a\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010OR\u0016\u0010c\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010OR\u001b\u0010h\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010H\u001a\u0004\bf\u0010gR\u0016\u0010j\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010O¨\u0006l"}, d2 = {"Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Llm/m;", "<init>", "()V", "", "receiveArguments", "", "isMonitorNetworkState", "()Z", "isAudioShowNoNetworkLayout", "Landroid/view/LayoutInflater;", "inflater", "I0", "(Landroid/view/LayoutInflater;)Llm/m;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "seasonList", "", "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;", "seasons", "e1", "(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;Ljava/util/List;)V", CampaignEx.JSON_KEY_TITLE, "j1", "(Ljava/lang/String;)V", "V0", "k1", "c1", "J0", "", RequestParameters.POSITION, "h1", "(I)V", "", "Lcom/transsion/moviedetailapi/DownloadItem;", "downloadItem", "totalEpisode", "m1", "(Ljava/util/List;Ljava/lang/Integer;)V", "i1", "(ILcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/Integer;)V", "isMultiResolution", "F0", "(Lcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/Integer;II)V", "D0", "T0", "showLoading", "hideLoading", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "audioTracks", "M0", "(Ljava/util/List;)V", "info", "d1", "(Lcom/transsion/moviedetailapi/bean/DubsInfo;)V", "l1", "a", "Ljava/lang/String;", "moduleName", "Lcom/transsion/moviedetailapi/bean/Subject;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "c", "Lkotlin/Lazy;", "G0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "ops", "e", "Z", "autoPlay", "f", "autoPlayResourceId", "", "g", "Ljava/util/Map;", "resMap", "Lcom/transsion/moviedetail/adapter/n;", "h", "Lcom/transsion/moviedetail/adapter/n;", "resAdapter", "i", "I", "curSeason", "j", "curResolution", CampaignEx.JSON_KEY_AD_K, "isPreloadDownloadResResponse", "l", "isSeasonResponse", "Lcom/transsion/player/longvideo/helper/n0;", "m", "H0", "()Lcom/transsion/player/longvideo/helper/n0;", "subtitleViewModel", "n", "isAudioDubs", "o", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ResourceDetectorFragment extends PageStatusFragment<lm.m> {

    private String moduleName;

    private Subject mMovieDetailBean;

    private String ops;

    private boolean autoPlay;

    private String autoPlayResourceId;

    private com.transsion.moviedetail.adapter.n resAdapter;

    private boolean isPreloadDownloadResResponse;

    private boolean isSeasonResponse;

    private boolean isAudioDubs;

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

    private Map resMap = new LinkedHashMap();

    private int curSeason = 1;

    private int curResolution = 480;

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

    public static final class b implements im.a {

        final int f45337b;

        final DownloadItem f45338c;

        final List f45339d;

        final com.transsion.moviedetail.adapter.p f45340e;

        b(int i10, DownloadItem downloadItem, List list, com.transsion.moviedetail.adapter.p pVar) {
            this.f45337b = i10;
            this.f45338c = downloadItem;
            this.f45339d = list;
            this.f45340e = pVar;
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
            if (!ResourceDetectorFragment.this.isAdded() || ResourceDetectorFragment.this.isDetached()) {
                return;
            }
            ResourceDetectorFragment.this.i1(this.f45337b, this.f45338c, ((ResourceDetectors) this.f45339d.get(0)).getTotalEpisode());
        }

        @Override
        public void f(MemberCheckResult memberCheckResult) {
            im.a.C0761a.a(this, memberCheckResult);
        }

        @Override
        public void onFail(String errorMsg) {
            String resourceId;
            Context context;
            Intrinsics.h(errorMsg, "errorMsg");
            im.a.C0761a.b(this, errorMsg);
            wf.a.C0922a.f(wf.a.f74274a, "co_mem", "ResourceDetectorFragment --> immediateShowList() --> 单集多分辨率 --> " + errorMsg, false, 4, null);
            if (!yg.l.f76264a.e()) {
                fh.b.f60176a.d(R$string.no_network_toast);
            }
            if (!ResourceDetectorFragment.this.isAdded() || ResourceDetectorFragment.this.isDetached()) {
                return;
            }
            DownloadManagerApi.a aVar = DownloadManagerApi.f56187j;
            DownloadManagerApi downloadManagerApiA = aVar.a();
            String resourceId2 = this.f45338c.getResourceId();
            Subject mMovieDetailBean = this.f45340e.getMMovieDetailBean();
            if (!DownloadManagerApi.x0(downloadManagerApiA, null, resourceId2, mMovieDetailBean != null ? mMovieDetailBean.isSeries() : false, false, 8, null) || (resourceId = this.f45338c.getResourceId()) == null || (context = this.f45340e.getContext()) == null) {
                return;
            }
            aVar.a().y0(null, context, "subjectdetail", resourceId);
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f45341a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45341a = function;
        }

        @Override
        public final Function a() {
            return this.f45341a;
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
            this.f45341a.invoke(obj);
        }
    }

    public static final class d extends RecyclerView.l {
        d() {
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            if (childAdapterPosition == 0) {
                outRect.left = 0;
                outRect.right = lj.a.b(4);
            } else if (childAdapterPosition == itemCount - 1) {
                outRect.left = lj.a.b(4);
                outRect.right = 0;
            } else {
                outRect.left = lj.a.b(4);
                outRect.right = lj.a.b(4);
            }
        }
    }

    private final void D0() {
        RecyclerView recyclerView;
        if (this.autoPlay) {
            this.autoPlay = false;
            lm.m mViewBinding = getMViewBinding();
            if (mViewBinding == null || (recyclerView = mViewBinding.f65837k) == null) {
                return;
            }
            recyclerView.post(new Runnable() {
                @Override
                public final void run() {
                    ResourceDetectorFragment.E0(this.f45485a);
                }
            });
        }
    }

    public static final void E0(ResourceDetectorFragment resourceDetectorFragment) {
        Context context;
        String str = resourceDetectorFragment.autoPlayResourceId;
        if (str == null || (context = resourceDetectorFragment.getContext()) == null) {
            return;
        }
        DownloadManagerApi.f56187j.a().y0(null, context, "subjectdetail", str);
    }

    private final void F0(DownloadItem downloadItem, Integer totalEpisode, int isMultiResolution, int position) {
        String uploadBy;
        String sourceUrl;
        String str;
        String resourceId;
        List<ResourceDetectors> resourceDetectors;
        String resourceLink;
        Integer subjectType;
        Integer resolution;
        Integer epse;
        Cover cover;
        String name;
        String resourceId2;
        String url;
        try {
            Result.Companion companion = Result.INSTANCE;
            String str2 = (downloadItem == null || (url = downloadItem.getUrl()) == null) ? "" : url;
            String str3 = (downloadItem == null || (resourceId2 = downloadItem.getResourceId()) == null) ? "" : resourceId2;
            String str4 = (downloadItem == null || (name = downloadItem.getName()) == null) ? "" : name;
            Subject subject = this.mMovieDetailBean;
            DownloadBean downloadBean = new DownloadBean(str2, str3, str4, (subject == null || (cover = subject.getCover()) == null) ? null : cover.getUrl(), downloadItem != null ? downloadItem.getSize() : null, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            if (downloadItem == null || (uploadBy = downloadItem.getUploadBy()) == null) {
                uploadBy = "";
            }
            downloadBean.setUploadBy(uploadBy);
            if (downloadItem == null || (sourceUrl = downloadItem.getSourceUrl()) == null) {
                sourceUrl = "";
            }
            downloadBean.setSourceUrl(sourceUrl);
            downloadBean.setPostId(downloadItem != null ? downloadItem.getPostId() : null);
            downloadBean.setEpse((downloadItem == null || (epse = downloadItem.getEpse()) == null) ? 0 : epse.intValue());
            downloadBean.setEp(downloadItem != null ? downloadItem.getEp() : 0);
            downloadBean.setSe(downloadItem != null ? downloadItem.getSe() : 0);
            downloadBean.setResolution((downloadItem == null || (resolution = downloadItem.getResolution()) == null) ? 0 : resolution.intValue());
            downloadBean.setRequireMemberType(downloadItem != null ? downloadItem.getRequireMemberType() : null);
            downloadBean.setMultiresolution(isMultiResolution);
            Subject subject2 = this.mMovieDetailBean;
            downloadBean.setSubjectId(subject2 != null ? subject2.getSubjectId() : null);
            Subject subject3 = this.mMovieDetailBean;
            downloadBean.setSubjectName(subject3 != null ? subject3.getTitle() : null);
            downloadBean.setResourcePosition(position + 1);
            DownloadBean.Companion companion2 = DownloadBean.INSTANCE;
            Subject subject4 = this.mMovieDetailBean;
            downloadBean.setType(companion2.c(subject4 != null ? subject4.getSubjectType() : null));
            Subject subject5 = this.mMovieDetailBean;
            downloadBean.setSubjectType((subject5 == null || (subjectType = subject5.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue());
            downloadBean.setTotalEpisode(totalEpisode != null ? totalEpisode.intValue() : 1);
            Subject subject6 = this.mMovieDetailBean;
            if (subject6 == null || (resourceDetectors = subject6.getResourceDetectors()) == null) {
                str = "";
            } else {
                if (resourceDetectors.isEmpty() || (resourceLink = resourceDetectors.get(0).getResourceLink()) == null) {
                    resourceLink = "";
                }
                str = resourceLink;
            }
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            DownloadManagerApi.N(downloadManagerApiA, fragmentActivityRequireActivity, this.mMovieDetailBean, "subjectdetail", null, this.ops, str, (downloadItem == null || (resourceId = downloadItem.getResourceId()) == null) ? "" : resourceId, this.moduleName, null, false, this.curSeason, false, 776, null);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final MovieDetailViewModel G0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final com.transsion.player.longvideo.helper.n0 H0() {
        return (com.transsion.player.longvideo.helper.n0) this.subtitleViewModel.getValue();
    }

    private final void J0() {
        final List<ResourceDetectors> resourceDetectors;
        lm.m mViewBinding;
        RecyclerView recyclerView;
        Subject subject = this.mMovieDetailBean;
        if (subject == null || (resourceDetectors = subject.getResourceDetectors()) == null || resourceDetectors.isEmpty() || (mViewBinding = getMViewBinding()) == null || (recyclerView = mViewBinding.f65837k) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        recyclerView.addItemDecoration(new tf.j(com.blankj.utilcode.util.a0.a(8.0f)));
        if (resourceDetectors.get(0).isMultiResolution()) {
            final com.transsion.moviedetail.adapter.p pVar = new com.transsion.moviedetail.adapter.p(this.mMovieDetailBean, resourceDetectors.get(0).getResolutionList());
            pVar.l(R$id.itemRoot);
            pVar.s1(new r6.b() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    ResourceDetectorFragment.K0(pVar, this, resourceDetectors, baseQuickAdapter, view, i10);
                }
            });
            recyclerView.setAdapter(pVar);
            return;
        }
        com.transsion.moviedetail.adapter.l lVar = new com.transsion.moviedetail.adapter.l(this.mMovieDetailBean, resourceDetectors);
        lVar.l(R$id.itemRoot);
        lVar.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ResourceDetectorFragment.L0(this.f45496a, baseQuickAdapter, view, i10);
            }
        });
        recyclerView.setAdapter(lVar);
    }

    public static final void K0(com.transsion.moviedetail.adapter.p pVar, ResourceDetectorFragment resourceDetectorFragment, List list, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        DownloadItem downloadItem = (DownloadItem) pVar.getData().get(i10);
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.g(downloadItem.getResolution(), resourceDetectorFragment.new b(i10, downloadItem, list, pVar));
        }
    }

    public static final void L0(ResourceDetectorFragment resourceDetectorFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        resourceDetectorFragment.h1(i10);
    }

    private final void M0(List audioTracks) {
    }

    public static final void N0(ResourceDetectorFragment resourceDetectorFragment, View view) {
        List<ResourceDetectors> resourceDetectors;
        String title;
        Subject subject = resourceDetectorFragment.mMovieDetailBean;
        if (subject == null || (resourceDetectors = subject.getResourceDetectors()) == null || resourceDetectors.isEmpty()) {
            return;
        }
        ResourceDetectors resourceDetectors2 = resourceDetectors.get(0);
        ResourceDetectorDialogFragment.Companion companion = ResourceDetectorDialogFragment.INSTANCE;
        Subject subject2 = resourceDetectorFragment.mMovieDetailBean;
        if (subject2 == null || (title = subject2.getTitle()) == null) {
            title = "";
        }
        ResourceDetectorDialogFragment resourceDetectorDialogFragmentA = companion.a(title, resourceDetectors2);
        FragmentManager childFragmentManager = resourceDetectorFragment.getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        resourceDetectorDialogFragmentA.show(childFragmentManager, "ResourceDetectorFragment --> ");
    }

    public static final void O0(ResourceDetectorFragment resourceDetectorFragment, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DETAIL");
        Subject subject = resourceDetectorFragment.mMovieDetailBean;
        Navigator.x(navigatorK.K("subject_id", subject != null ? subject.getSubjectId() : null), resourceDetectorFragment.requireContext(), null, 2, null);
    }

    public static final void P0(ResourceDetectorFragment resourceDetectorFragment, View view) {
        resourceDetectorFragment.l1();
    }

    public static final void Q0(final ResourceDetectorFragment resourceDetectorFragment, View view) {
        String subjectId;
        Fragment parentFragment;
        wv.a aVar;
        wf.a.C0922a.f(wf.a.f74274a, "VideoEpisodeFragment", "tvLanguage click then switch audio track", false, 4, null);
        Subject subject = resourceDetectorFragment.mMovieDetailBean;
        if (subject == null || (subjectId = subject.getSubjectId()) == null || (parentFragment = resourceDetectorFragment.getParentFragment()) == null || (aVar = (wv.a) TheRouter.d(wv.a.class, new Object[0])) == null) {
            return;
        }
        aVar.c(parentFragment, R$id.fl_bottom_dialog_container, subjectId, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ResourceDetectorFragment.R0(this.f45474a, (DubsInfo) obj);
            }
        });
    }

    public static final Unit R0(ResourceDetectorFragment resourceDetectorFragment, DubsInfo info) {
        Intrinsics.h(info, "info");
        resourceDetectorFragment.d1(info);
        return Unit.f64096a;
    }

    public static final void S0(ResourceDetectorFragment resourceDetectorFragment, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DETAIL");
        Subject subject = resourceDetectorFragment.mMovieDetailBean;
        Navigator.x(navigatorK.K("subject_id", subject != null ? subject.getSubjectId() : null), resourceDetectorFragment.requireContext(), null, 2, null);
    }

    private final void T0() {
        FrameLayout frameLayout;
        lm.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (frameLayout = mViewBinding.f65833g) == null) {
            return;
        }
        frameLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ResourceDetectorFragment.U0(view);
            }
        });
    }

    public static final void U0(View view) {
        fh.b.f60176a.d(com.transsion.moviedetail.R$string.movie_detail_res_loading);
    }

    private final void V0() {
        List<ResourcesSeason> seasons;
        if (this.isSeasonResponse && this.isPreloadDownloadResResponse && this.curSeason > 1) {
            k1();
            ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) G0().L().f();
            if (resourcesSeasonList == null || (seasons = resourcesSeasonList.getSeasons()) == null) {
                return;
            }
            int iT = DownloadUtil.f57680a.t(seasons, this.curSeason);
            if (iT <= 0) {
                iT = this.curResolution;
            }
            int i10 = iT;
            wf.a.f74274a.c("ResourceDetectorFragment --> ", "initOtherSe se:" + this.curSeason + " resolution:" + i10, true);
            MovieDetailViewModel movieDetailViewModelG0 = G0();
            Subject subject = this.mMovieDetailBean;
            movieDetailViewModelG0.x(subject != null ? subject.getSubjectId() : null, this.curSeason, 1, 3, i10);
        }
    }

    public static final Unit W0(ResourceDetectorFragment resourceDetectorFragment, Integer num) {
        wf.a.C0922a.f(wf.a.f74274a, "ResourceDetectorFragment --> ", "seObserve:" + resourceDetectorFragment.curSeason, false, 4, null);
        resourceDetectorFragment.k1();
        return Unit.f64096a;
    }

    public static final Unit X0(ResourceDetectorFragment resourceDetectorFragment, Pair pair) {
        BLTextView bLTextView;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "ResourceDetectorFragment --> ", "字幕选择了, name:" + pair.getFirst() + ", " + pair.getSecond(), false, 4, null);
        if (resourceDetectorFragment.isAudioDubs) {
            wf.a.C0922a.f(c0922a, "ResourceDetectorFragment --> ", "字幕选择了, 是多配音，不展示字幕", false, 4, null);
            return Unit.f64096a;
        }
        lm.m mViewBinding = resourceDetectorFragment.getMViewBinding();
        if (mViewBinding != null && (bLTextView = mViewBinding.f65838l) != null) {
            bLTextView.setText((CharSequence) pair.getFirst());
        }
        return Unit.f64096a;
    }

    public static final Unit Y0(ResourceDetectorFragment resourceDetectorFragment, List list) {
        BLTextView bLTextView;
        BLTextView bLTextView2;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            lm.m mViewBinding = resourceDetectorFragment.getMViewBinding();
            if (mViewBinding != null && (bLTextView = mViewBinding.f65838l) != null) {
                uf.c.g(bLTextView);
            }
            return Unit.f64096a;
        }
        lm.m mViewBinding2 = resourceDetectorFragment.getMViewBinding();
        if (mViewBinding2 != null && (bLTextView2 = mViewBinding2.f65838l) != null) {
            uf.c.k(bLTextView2);
        }
        return Unit.f64096a;
    }

    public static final Unit Z0(ResourceDetectorFragment resourceDetectorFragment, ResourcesSeasonList resourcesSeasonList) {
        resourceDetectorFragment.isSeasonResponse = true;
        resourceDetectorFragment.e1(resourcesSeasonList, resourcesSeasonList != null ? resourcesSeasonList.getSeasons() : null);
        wf.a.C0922a.f(wf.a.f74274a, "ResourceDetectorFragment --> ", "seasonListObserve:" + resourceDetectorFragment.curSeason, false, 4, null);
        resourceDetectorFragment.V0();
        return Unit.f64096a;
    }

    public static final Unit a1(ResourceDetectorFragment resourceDetectorFragment, DownloadListBean downloadListBean) {
        List<DownloadItem> items;
        Integer resolution;
        wf.a.C0922a.f(wf.a.f74274a, "ResourceDetectorFragment --> ", "downloadListPreload Observe:" + resourceDetectorFragment.curSeason, false, 4, null);
        resourceDetectorFragment.isPreloadDownloadResResponse = true;
        if (resourceDetectorFragment.c1()) {
            resourceDetectorFragment.curResolution = (downloadListBean == null || (resolution = downloadListBean.getResolution()) == null) ? 480 : resolution.intValue();
            if (downloadListBean != null && (items = downloadListBean.getItems()) != null && !items.isEmpty()) {
                resourceDetectorFragment.resMap.put(Integer.valueOf(resourceDetectorFragment.curSeason), items);
                resourceDetectorFragment.m1(items, downloadListBean.getTotalEpisode());
            }
            resourceDetectorFragment.V0();
        }
        return Unit.f64096a;
    }

    public static final Unit b1(ResourceDetectorFragment resourceDetectorFragment, DownloadListBean downloadListBean) {
        List<DownloadItem> items;
        Integer resolution;
        resourceDetectorFragment.hideLoading();
        MovieDetailActivity.INSTANCE.a("获取到数据之后展示数据");
        if (resourceDetectorFragment.c1()) {
            resourceDetectorFragment.curResolution = (downloadListBean == null || (resolution = downloadListBean.getResolution()) == null) ? 480 : resolution.intValue();
            if (downloadListBean != null && (items = downloadListBean.getItems()) != null && !items.isEmpty()) {
                resourceDetectorFragment.resMap.put(Integer.valueOf(resourceDetectorFragment.curSeason), items);
                resourceDetectorFragment.m1(items, downloadListBean.getTotalEpisode());
            }
        }
        return Unit.f64096a;
    }

    private final boolean c1() {
        List<ResourceDetectors> resourceDetectors;
        Subject subject = this.mMovieDetailBean;
        if (subject == null || (resourceDetectors = subject.getResourceDetectors()) == null || resourceDetectors.isEmpty()) {
            return false;
        }
        return resourceDetectors.get(0).isCollection();
    }

    private final void d1(DubsInfo info) {
        G0().P().q(info);
    }

    private final void e1(final ResourcesSeasonList seasonList, final List seasons) {
        lm.m mViewBinding;
        BLTextView bLTextView;
        BLTextView bLTextView2;
        if ((seasons != null ? seasons.size() : 0) <= 1) {
            lm.m mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (bLTextView2 = mViewBinding2.f65832f) == null) {
                return;
            }
            uf.c.g(bLTextView2);
            return;
        }
        if (seasons == null || (mViewBinding = getMViewBinding()) == null || (bLTextView = mViewBinding.f65832f) == null) {
            return;
        }
        uf.c.k(bLTextView);
        bLTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ResourceDetectorFragment.f1(seasonList, this, seasons, view);
            }
        });
    }

    public static final void f1(ResourcesSeasonList resourcesSeasonList, final ResourceDetectorFragment resourceDetectorFragment, final List list, View view) {
        VideoDetailSeasonsSelectFragment.Companion companion = VideoDetailSeasonsSelectFragment.INSTANCE;
        Subject subject = resourceDetectorFragment.mMovieDetailBean;
        VideoDetailSeasonsSelectFragment videoDetailSeasonsSelectFragmentA = companion.a(resourcesSeasonList, subject != null ? subject.getSubjectType() : null);
        videoDetailSeasonsSelectFragmentA.x0(resourceDetectorFragment.curSeason);
        Fragment parentFragment = resourceDetectorFragment.getParentFragment();
        if (parentFragment != null) {
            videoDetailSeasonsSelectFragmentA.n0(parentFragment, R$id.fl_bottom_dialog_container);
        }
        videoDetailSeasonsSelectFragmentA.w0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ResourceDetectorFragment.g1(list, resourceDetectorFragment, ((Integer) obj).intValue());
            }
        });
    }

    public static final Unit g1(List list, ResourceDetectorFragment resourceDetectorFragment, int i10) {
        Object next;
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((ResourcesSeason) next).getSe() != i10);
        ResourcesSeason resourcesSeason = (ResourcesSeason) next;
        if (resourcesSeason == null) {
            return Unit.f64096a;
        }
        resourceDetectorFragment.curSeason = resourcesSeason.getSe();
        resourceDetectorFragment.k1();
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "ResourceDetectorFragment --> ", "seChange:" + resourceDetectorFragment.curSeason, false, 4, null);
        resourceDetectorFragment.G0().K().q(Integer.valueOf(resourceDetectorFragment.curSeason));
        resourceDetectorFragment.j1(com.transsion.baseui.util.n.a(resourcesSeason.getSe()));
        if (resourceDetectorFragment.resMap.containsKey(Integer.valueOf(resourcesSeason.getSe()))) {
            wf.a.C0922a.f(c0922a, "ResourceDetectorFragment --> ", "se:" + resourceDetectorFragment.curSeason + " 已有缓存, 直接设数据", false, 4, null);
            List list2 = (List) resourceDetectorFragment.resMap.get(Integer.valueOf(resourcesSeason.getSe()));
            if (list2 != null) {
                resourceDetectorFragment.m1(list2, Integer.valueOf(resourcesSeason.getMaxEp()));
            }
        } else {
            resourceDetectorFragment.showLoading();
            int iT = DownloadUtil.f57680a.t(list, resourceDetectorFragment.curSeason);
            if (iT <= 0) {
                iT = resourceDetectorFragment.curResolution;
            }
            int i11 = iT;
            c0922a.c("ResourceDetectorFragment --> ", "se:" + resourceDetectorFragment.curSeason + " 无缓存，请求数据, resolution:" + i11, true);
            MovieDetailViewModel movieDetailViewModelG0 = resourceDetectorFragment.G0();
            Subject subject = resourceDetectorFragment.mMovieDetailBean;
            movieDetailViewModelG0.x(subject != null ? subject.getSubjectId() : null, resourcesSeason.getSe(), 1, 3, i11);
        }
        return Unit.f64096a;
    }

    private final void h1(int position) {
        String str;
        boolean z10;
        List<ResourceDetectors> resourceDetectors;
        String subjectId;
        Context context;
        List<ResourceDetectors> resourceDetectors2;
        String resourceLink;
        Subject subject = this.mMovieDetailBean;
        String str2 = "";
        if (subject == null || (resourceDetectors2 = subject.getResourceDetectors()) == null) {
            str = "";
            z10 = false;
        } else {
            if (resourceDetectors2.isEmpty()) {
                resourceLink = "";
            } else {
                resourceLink = resourceDetectors2.get(0).getResourceLink();
                if (resourceLink == null) {
                    resourceLink = "";
                }
                String resourceId = resourceDetectors2.get(0).getResourceId();
                str2 = resourceId != null ? resourceId : "";
                if (resourceDetectors2.get(0).isMultiResolution()) {
                    z10 = true;
                }
                str = resourceLink;
            }
            z10 = false;
            str = resourceLink;
        }
        DownloadManagerApi.a aVar = DownloadManagerApi.f56187j;
        DownloadManagerApi downloadManagerApiA = aVar.a();
        Subject subject2 = this.mMovieDetailBean;
        String subjectId2 = subject2 != null ? subject2.getSubjectId() : null;
        Subject subject3 = this.mMovieDetailBean;
        if (downloadManagerApiA.w0(subjectId2, str2, subject3 != null ? subject3.isSeries() : false, z10)) {
            Subject subject4 = this.mMovieDetailBean;
            if (subject4 == null || (subjectId = subject4.getSubjectId()) == null || (context = getContext()) == null) {
                return;
            }
            DownloadManagerApi.z0(aVar.a(), subjectId, context, "subjectdetail", null, 8, null);
            return;
        }
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 == null || (resourceDetectors = subject5.getResourceDetectors()) == null || resourceDetectors.isEmpty()) {
            return;
        }
        ResourceDetectors resourceDetectors3 = resourceDetectors.get(0);
        if (resourceDetectors3 == null || !resourceDetectors3.isMultiResolution()) {
            DownloadManagerApi downloadManagerApiA2 = aVar.a();
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            DownloadManagerApi.N(downloadManagerApiA2, fragmentActivityRequireActivity, this.mMovieDetailBean, "subjectdetail", null, this.ops, str, null, this.moduleName, null, false, this.curSeason, false, 840, null);
            return;
        }
        List<DownloadItem> resolutionList = resourceDetectors3.getResolutionList();
        DownloadItem downloadItem = resolutionList != null ? resolutionList.get(position) : null;
        if (downloadItem != null) {
            F0(downloadItem, 1, 1, position);
        }
    }

    private final void hideLoading() {
        FrameLayout frameLayout;
        lm.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (frameLayout = mViewBinding.f65833g) == null) {
            return;
        }
        uf.c.g(frameLayout);
    }

    public final void i1(int position, DownloadItem downloadItem, Integer totalEpisode) {
        List<ResourceDetectors> resourceDetectors;
        Context context;
        DownloadManagerApi.a aVar = DownloadManagerApi.f56187j;
        DownloadManagerApi downloadManagerApiA = aVar.a();
        String resourceId = downloadItem.getResourceId();
        Subject subject = this.mMovieDetailBean;
        if (DownloadManagerApi.x0(downloadManagerApiA, null, resourceId, subject != null ? subject.isSeries() : false, false, 8, null)) {
            String resourceId2 = downloadItem.getResourceId();
            if (resourceId2 == null || (context = getContext()) == null) {
                return;
            }
            aVar.a().y0(null, context, "subjectdetail", resourceId2);
            return;
        }
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 == null || (resourceDetectors = subject2.getResourceDetectors()) == null || resourceDetectors.isEmpty()) {
            return;
        }
        ResourceDetectors resourceDetectors2 = resourceDetectors.get(0);
        if (resourceDetectors2 == null || !resourceDetectors2.isMultiResolution()) {
            F0(downloadItem, totalEpisode, 0, position);
            return;
        }
        List<DownloadItem> resolutionList = resourceDetectors2.getResolutionList();
        DownloadItem downloadItem2 = resolutionList != null ? resolutionList.get(position) : null;
        if (downloadItem2 != null) {
            F0(downloadItem2, totalEpisode, 1, position);
        }
    }

    private final void j1(String title) {
        qi.h hVar = qi.h.f69682a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "season_tab");
        linkedHashMap.put(CampaignEx.JSON_KEY_TITLE, title);
        Unit unit = Unit.f64096a;
        hVar.o("subjectdetail", linkedHashMap);
    }

    private final void k1() {
        lm.m mViewBinding;
        BLTextView bLTextView;
        BLTextView bLTextView2;
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.isTvType()) {
            lm.m mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (bLTextView2 = mViewBinding2.f65832f) == null) {
                return;
            }
            Context context = getContext();
            bLTextView2.setText(context != null ? context.getString(com.transsnet.downloader.R$string.download_video_detail_season_index, sm.f.a(this.curSeason)) : null);
            return;
        }
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 == null || !subject2.isEduType() || (mViewBinding = getMViewBinding()) == null || (bLTextView = mViewBinding.f65832f) == null) {
            return;
        }
        Context context2 = getContext();
        bLTextView.setText(context2 != null ? context2.getString(com.transsnet.downloader.R$string.download_video_detail_unit_index, sm.f.a(this.curSeason)) : null);
    }

    private final void l1() {
        List<ResourceDetectors> resourceDetectors;
        String resourceLink;
        Subject subject = this.mMovieDetailBean;
        String str = "";
        if (subject != null && (resourceDetectors = subject.getResourceDetectors()) != null && !resourceDetectors.isEmpty() && (resourceLink = resourceDetectors.get(0).getResourceLink()) != null) {
            str = resourceLink;
        }
        DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        DownloadManagerApi.N(downloadManagerApiA, fragmentActivityRequireActivity, this.mMovieDetailBean, "subjectdetail", null, this.ops, str, null, this.moduleName, null, false, this.curSeason, false, 840, null);
    }

    private final void m1(List downloadItem, final Integer totalEpisode) {
        RecyclerView recyclerView;
        String title;
        RecyclerView recyclerView2;
        BLTextView bLTextView;
        List arrayList = new ArrayList();
        Context context = getContext();
        int i10 = (context == null || !com.transsion.baseui.util.b.a(context)) ? 3 : 6;
        if (downloadItem.size() > i10) {
            arrayList = downloadItem.subList(0, i10);
            lm.m mViewBinding = getMViewBinding();
            if (mViewBinding != null && (bLTextView = mViewBinding.f65839m) != null) {
                uf.c.k(bLTextView);
            }
        } else {
            arrayList.addAll(downloadItem);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.moviedetail.adapter.n nVar = this.resAdapter;
            if (nVar != null) {
                if (nVar != null) {
                    nVar.n1(arrayList);
                    return;
                }
                return;
            }
            lm.m mViewBinding2 = getMViewBinding();
            RecyclerView recyclerView3 = null;
            if (mViewBinding2 != null && (recyclerView = mViewBinding2.f65837k) != null) {
                recyclerView.setLayoutManager(new GridLayoutManager(requireContext(), i10));
                recyclerView.addItemDecoration(new d());
                Subject subject = this.mMovieDetailBean;
                if (subject == null || (title = subject.getTitle()) == null) {
                    title = "";
                }
                Subject subject2 = this.mMovieDetailBean;
                String str = (subject2 != null ? subject2.getDuration() : null);
                Subject subject3 = this.mMovieDetailBean;
                com.transsion.moviedetail.adapter.n nVar2 = new com.transsion.moviedetail.adapter.n(title, str, arrayList, subject3 != null ? subject3.getSubjectType() : null);
                this.resAdapter = nVar2;
                nVar2.l(R$id.itemRoot);
                nVar2.s1(new r6.b() {
                    @Override
                    public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                        ResourceDetectorFragment.n1(this.f45479a, totalEpisode, baseQuickAdapter, view, i11);
                    }
                });
                recyclerView.setAdapter(nVar2);
                lm.m mViewBinding3 = getMViewBinding();
                if (mViewBinding3 != null && (recyclerView2 = mViewBinding3.f65837k) != null) {
                    recyclerView2.setItemAnimator(null);
                }
                recyclerView3 = recyclerView;
            }
            Result.m453constructorimpl(recyclerView3);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void n1(ResourceDetectorFragment resourceDetectorFragment, Integer num, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (adapter.getItemCount() > i10) {
            Object objF0 = adapter.f0(i10);
            DownloadItem downloadItem = objF0 instanceof DownloadItem ? (DownloadItem) objF0 : null;
            if (downloadItem == null) {
                return;
            }
            resourceDetectorFragment.i1(i10, downloadItem, num);
        }
    }

    private final void showLoading() {
        FrameLayout frameLayout;
        lm.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (frameLayout = mViewBinding.f65833g) == null) {
            return;
        }
        uf.c.k(frameLayout);
    }

    @Override
    public lm.m getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        lm.m mVarC = lm.m.c(inflater);
        Intrinsics.g(mVarC, "inflate(...)");
        return mVarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
        AppCompatImageView appCompatImageView;
        BLTextView bLTextView;
        BLTextView bLTextView2;
        AppCompatImageView appCompatImageView2;
        AppCompatTextView appCompatTextView;
        lm.m mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatTextView = mViewBinding.f65829c) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ResourceDetectorFragment.N0(this.f45462a, view);
                }
            });
        }
        lm.m mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView2 = mViewBinding2.f65828b) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ResourceDetectorFragment.O0(this.f45511a, view);
                }
            });
        }
        lm.m mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (bLTextView2 = mViewBinding3.f65839m) != null) {
            bLTextView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ResourceDetectorFragment.P0(this.f45513a, view);
                }
            });
        }
        lm.m mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (bLTextView = mViewBinding4.f65838l) != null) {
            bLTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ResourceDetectorFragment.Q0(this.f45516a, view);
                }
            });
        }
        lm.m mViewBinding5 = getMViewBinding();
        if (mViewBinding5 == null || (appCompatImageView = mViewBinding5.f65828b) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ResourceDetectorFragment.S0(this.f45520a, view);
            }
        });
    }

    @Override
    public void initViewData() {
        WatchModeTipsView watchModeTipsView;
        ResourceDetectors resourceDetectors;
        lm.m mViewBinding;
        AppCompatTextView appCompatTextView;
        BLTextView bLTextView;
        List<DubsInfo> dubs;
        Object obj = null;
        if (c1()) {
            MovieDetailViewModel movieDetailViewModelG0 = G0();
            Subject subject = this.mMovieDetailBean;
            movieDetailViewModelG0.z(subject != null ? subject.getSubjectId() : null);
        } else {
            J0();
        }
        D0();
        T0();
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 != null && (dubs = subject2.getDubs()) != null) {
            M0(dubs);
        }
        Subject subject3 = this.mMovieDetailBean;
        if (subject3 != null) {
            String subjectId = subject3.getSubjectId();
            List<DubsInfo> dubs2 = subject3.getDubs();
            this.isAudioDubs = dubs2 != null && (dubs2.isEmpty() ^ true) && dubs2.size() > 1;
            wf.a.C0922a.f(wf.a.f74274a, "ResourceDetectorFragment --> ", "video res-dubs size: " + (dubs2 != null ? Integer.valueOf(dubs2.size()) : null), false, 4, null);
            if (this.isAudioDubs && dubs2 != null) {
                for (Object obj2 : dubs2) {
                    if (Intrinsics.c(((DubsInfo) obj2).getSubjectId(), subjectId)) {
                        obj = obj2;
                        break;
                    }
                }
                DubsInfo dubsInfo = (DubsInfo) obj;
                if (dubsInfo != null) {
                    dubsInfo.setSelected(true);
                    lm.m mViewBinding2 = getMViewBinding();
                    if (mViewBinding2 != null && (bLTextView = mViewBinding2.f65838l) != null) {
                        bLTextView.setText(dubsInfo.getLanName());
                    }
                }
            }
            List<ResourceDetectors> resourceDetectors2 = subject3.getResourceDetectors();
            if (resourceDetectors2 != null && (resourceDetectors = (ResourceDetectors) CollectionsKt.k0(resourceDetectors2)) != null && (mViewBinding = getMViewBinding()) != null && (appCompatTextView = mViewBinding.f65830d) != null) {
                appCompatTextView.setText(resourceDetectors.getUploadBy());
            }
        }
        lm.m mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (watchModeTipsView = mViewBinding3.f65836j) == null) {
            return;
        }
        watchModeTipsView.checkShow();
    }

    @Override
    public void initViewModel() {
        Subject subject;
        BLTextView bLTextView;
        BLTextView bLTextView2;
        G0().L().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ResourceDetectorFragment.Z0(this.f45524a, (ResourcesSeasonList) obj);
            }
        }));
        G0().y().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ResourceDetectorFragment.a1(this.f45528a, (DownloadListBean) obj);
            }
        }));
        G0().w().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ResourceDetectorFragment.b1(this.f45423a, (DownloadListBean) obj);
            }
        }));
        G0().K().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ResourceDetectorFragment.W0(this.f45428a, (Integer) obj);
            }
        }));
        G0().K().q(Integer.valueOf(this.curSeason));
        Subject subject2 = this.mMovieDetailBean;
        if ((subject2 == null || !subject2.isMovieType()) && ((subject = this.mMovieDetailBean) == null || !subject.isTvType())) {
            lm.m mViewBinding = getMViewBinding();
            if (mViewBinding != null && (bLTextView = mViewBinding.f65838l) != null) {
                uf.c.g(bLTextView);
            }
        } else {
            lm.m mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (bLTextView2 = mViewBinding2.f65838l) != null) {
                bLTextView2.setVisibility(this.isAudioDubs ? 0 : 8);
            }
        }
        H0().d().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ResourceDetectorFragment.X0(this.f45433a, (Pair) obj);
            }
        }));
        H0().c().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ResourceDetectorFragment.Y0(this.f45467a, (List) obj);
            }
        }));
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
    public void receiveArguments() {
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("data_key_resource_detectors") : null;
        this.mMovieDetailBean = serializable instanceof Subject ? (Subject) serializable : null;
        Bundle arguments2 = getArguments();
        this.ops = arguments2 != null ? arguments2.getString("ops") : null;
        Bundle arguments3 = getArguments();
        this.autoPlay = arguments3 != null ? arguments3.getBoolean("auto_play") : false;
        Bundle arguments4 = getArguments();
        this.autoPlayResourceId = arguments4 != null ? arguments4.getString("auto_play_resource_id") : null;
        Bundle arguments5 = getArguments();
        this.moduleName = arguments5 != null ? arguments5.getString("module_name") : null;
        Bundle arguments6 = getArguments();
        int i10 = arguments6 != null ? arguments6.getInt("season") : 1;
        this.curSeason = i10;
        if (i10 <= 0) {
            this.curSeason = 1;
        }
    }

    @Override
    public void retryLoadData() {
    }
}
