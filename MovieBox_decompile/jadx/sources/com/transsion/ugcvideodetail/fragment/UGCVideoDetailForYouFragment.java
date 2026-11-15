package com.transsion.ugcvideodetail.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDetailParams;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u0000 Q2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001f\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J%\u0010\u0013\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u001d\u0010\u0016\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u0018\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0011H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0004J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0011H\u0016¢\u0006\u0004\b,\u0010\u001aJ\u000f\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/R\u001b\u00105\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010F\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010CR\u0018\u0010J\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010CR\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010P\u001a\u0004\u0018\u00010 8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bO\u0010\"¨\u0006R"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Liu/e;", "<init>", "()V", "", "initExposureHelper", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", WebConstants.FIELD_ITEM, "", RequestParameters.POSITION, "A0", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V", "z0", "C0", "", "items", "", "hasMore", "D0", "(Ljava/util/List;Z)V", "v0", "E0", "(Ljava/util/List;)V", "q0", "F0", "(Z)V", "r0", "Landroid/view/LayoutInflater;", "inflater", "u0", "(Landroid/view/LayoutInflater;)Liu/e;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isShowPageStateLayoutTitle", "()Z", "receiveArguments", "initViewData", "initViewModel", "initListener", "retryLoadData", "onPause", "hidden", "onHiddenChanged", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "a", "Lkotlin/Lazy;", "s0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "mViewModel", "Lcom/transsion/ugcvideodetail/adapter/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ugcvideodetail/adapter/f;", "forYouAdapter", "Lbj/b;", "c", "Lbj/b;", "exposureHelper", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDetailParams;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDetailParams;", "videoParams", "e", "Ljava/lang/String;", "pageName", "f", "playFromType", "g", "outSideVideoName", "h", "fromOptId", "", "i", "J", "pageLoadStartTime", "t0", "ugcVideoId", "j", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDetailForYouFragment extends PageStatusFragment<iu.e> {

    public static final Companion INSTANCE = new Companion(null);

    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private com.transsion.ugcvideodetail.adapter.f forYouAdapter;

    private bj.b exposureHelper;

    private UGCVideoDetailParams videoParams;

    private String pageName;

    private String playFromType;

    private String outSideVideoName;

    private String fromOptId;

    private long pageLoadStartTime;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCVideoDetailForYouFragment a() {
            return new UGCVideoDetailForYouFragment();
        }

        private Companion() {
        }
    }

    public static final class b implements bj.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            UGCVideo uGCVideo;
            String str;
            UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment = UGCVideoDetailForYouFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.ugcvideodetail.adapter.f fVar = uGCVideoDetailForYouFragment.forYouAdapter;
                if (fVar != null && (uGCVideo = (UGCVideo) fVar.getItem(i10)) != null && (str = uGCVideoDetailForYouFragment.pageName) != null) {
                    Fragment parentFragment = uGCVideoDetailForYouFragment.getParentFragment();
                    UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = parentFragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) parentFragment : null;
                    com.transsion.ugcvideodetail.hepler.h.f54294a.d(str, uGCVideo, i10, j10, uGCVideoDetailForYouFragment.t0(), uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null);
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f54080a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54080a = function;
        }

        @Override
        public final Function a() {
            return this.f54080a;
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
            this.f54080a.invoke(obj);
        }
    }

    private final void A0(UGCVideo item, int position) {
        Fragment parentFragment = getParentFragment();
        UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = parentFragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) parentFragment : null;
        final String trackId = uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null;
        hu.b.a(item, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCVideoDetailForYouFragment.B0(this.f54182a, trackId, (Navigator) obj);
            }
        });
        String str = this.pageName;
        if (str != null) {
            com.transsion.ugcvideodetail.hepler.h.f54294a.c(str, item, position, t0(), uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null);
        }
    }

    public static final Navigator B0(UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment, String str, Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return navigator.K("parent_video_id", uGCVideoDetailForYouFragment.t0()).K("parent_track_id", str);
    }

    private final void C0() {
        s0().U(false, t0(), this.outSideVideoName);
    }

    private final void D0(List items, boolean hasMore) {
        List<Object> data;
        if (items.isEmpty()) {
            v0();
            return;
        }
        com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
        if (fVar == null || (data = fVar.getData()) == null || !data.isEmpty()) {
            q0(items);
        } else {
            E0(items);
        }
        F0(hasMore);
    }

    private final void E0(List items) {
        com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
        if (fVar != null) {
            fVar.n1(items);
        }
        showContentView();
    }

    private final void F0(boolean hasMore) {
        t6.f fVarH0;
        t6.f fVarH1;
        if (hasMore) {
            com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
            if (fVar == null || (fVarH1 = fVar.h0()) == null) {
                return;
            }
            fVarH1.s();
            return;
        }
        com.transsion.ugcvideodetail.adapter.f fVar2 = this.forYouAdapter;
        if (fVar2 == null || (fVarH0 = fVar2.h0()) == null) {
            return;
        }
        fVarH0.t(false);
    }

    private final void initExposureHelper() {
        RecyclerView recyclerView;
        bj.b bVar = new bj.b(0.6f, new b(), false, 4, null);
        bVar.n(2);
        iu.e mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f62644b) != null) {
            recyclerView.addOnScrollListener(bVar);
        }
        this.exposureHelper = bVar;
    }

    private final void q0(List items) {
        com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
        if (fVar != null) {
            fVar.q(items);
        }
    }

    private final void r0() {
        HashMap mapG;
        if (this.pageLoadStartTime > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.pageLoadStartTime;
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
                return;
            }
        }
    }

    private final UGCVideoDetailViewModel s0() {
        return (UGCVideoDetailViewModel) this.mViewModel.getValue();
    }

    public final String t0() {
        UGCVideoDetailParams uGCVideoDetailParams = this.videoParams;
        if (uGCVideoDetailParams != null) {
            return uGCVideoDetailParams.getUgcVideoId();
        }
        return null;
    }

    private final void v0() {
        t6.f fVarH0;
        List<Object> data;
        com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
        if (fVar != null && (data = fVar.getData()) != null && data.isEmpty()) {
            showContentView();
            com.transsion.ugcvideodetail.adapter.f fVar2 = this.forYouAdapter;
            if (fVar2 != null) {
                fVar2.Y0(getEmptyView(false));
            }
        }
        com.transsion.ugcvideodetail.adapter.f fVar3 = this.forYouAdapter;
        if (fVar3 == null || (fVarH0 = fVar3.h0()) == null) {
            return;
        }
        fVarH0.t(false);
    }

    public static final void w0(UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L)) {
            return;
        }
        Object item = adapter.getItem(i10);
        UGCVideo uGCVideo = item instanceof UGCVideo ? (UGCVideo) item : null;
        if (uGCVideo == null) {
            return;
        }
        uGCVideoDetailForYouFragment.A0(uGCVideo, i10);
    }

    public static final void x0(UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment) {
        uGCVideoDetailForYouFragment.z0();
    }

    public static final Unit y0(UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment, UGCContentList uGCContentList) {
        ArrayList arrayList;
        Pager pager;
        List<UGCContent> items;
        uGCVideoDetailForYouFragment.r0();
        qi.b logViewConfig = uGCVideoDetailForYouFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        if (uGCContentList == null || (items = uGCContentList.getItems()) == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList();
            Iterator<T> it = items.iterator();
            while (it.hasNext()) {
                UGCVideo video = ((UGCContent) it.next()).getVideo();
                if (video != null) {
                    arrayList.add(video);
                }
            }
        }
        List listU0 = CollectionsKt.U0(arrayList);
        String nextPage = (uGCContentList == null || (pager = uGCContentList.getPager()) == null) ? null : pager.getNextPage();
        uGCVideoDetailForYouFragment.D0(listU0, !(nextPage == null || nextPage.length() == 0));
        return Unit.f64096a;
    }

    private final void z0() {
        s0().U(false, t0(), this.outSideVideoName);
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
        qi.b logViewConfig;
        HashMap mapG;
        qi.b logViewConfig2;
        HashMap mapG2;
        HashMap mapG3;
        qi.b logViewConfig3;
        HashMap mapG4;
        HashMap mapG5;
        HashMap mapG6;
        String subjectId;
        HashMap mapG7;
        String collectionId;
        HashMap mapG8;
        HashMap mapG9;
        HashMap mapG10;
        RecyclerView recyclerView;
        initExposureHelper();
        com.transsion.ugcvideodetail.adapter.f fVar = new com.transsion.ugcvideodetail.adapter.f();
        fVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UGCVideoDetailForYouFragment.w0(this.f54175a, baseQuickAdapter, view, i10);
            }
        });
        fVar.h0().z(true);
        fVar.h0().y(true);
        fVar.h0().E(3);
        fVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                UGCVideoDetailForYouFragment.x0(this.f54179a);
            }
        });
        this.forYouAdapter = fVar;
        iu.e mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f62644b) != null) {
            recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
            recyclerView.setAdapter(this.forYouAdapter);
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG10 = logViewConfig4.g()) != null) {
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG9 = logViewConfig5.g()) != null) {
            UGCVideoDetailParams uGCVideoDetailParams = this.videoParams;
        }
        qi.b logViewConfig6 = getLogViewConfig();
        String str = "";
        if (logViewConfig6 != null && (mapG8 = logViewConfig6.g()) != null) {
            String strT0 = t0();
            if (strT0 == null) {
                strT0 = "";
            }
        }
        qi.b logViewConfig7 = getLogViewConfig();
        if (logViewConfig7 != null && (mapG7 = logViewConfig7.g()) != null) {
            UGCVideoDetailParams uGCVideoDetailParams2 = this.videoParams;
            if (uGCVideoDetailParams2 == null || (collectionId = uGCVideoDetailParams2.getCollectionId()) == null) {
                collectionId = "";
            }
        }
        qi.b logViewConfig8 = getLogViewConfig();
        if (logViewConfig8 != null && (mapG6 = logViewConfig8.g()) != null) {
            UGCVideoDetailParams uGCVideoDetailParams3 = this.videoParams;
            if (uGCVideoDetailParams3 != null && (subjectId = uGCVideoDetailParams3.getSubjectId()) != null) {
                str = subjectId;
            }
        }
        qi.b logViewConfig9 = getLogViewConfig();
        if (logViewConfig9 != null && (mapG5 = logViewConfig9.g()) != null) {
        }
        String str2 = this.fromOptId;
        if (str2 != null && (logViewConfig3 = getLogViewConfig()) != null && (mapG4 = logViewConfig3.g()) != null) {
        }
        Fragment parentFragment = getParentFragment();
        UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = parentFragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) parentFragment : null;
        if (uGCVideoDetailBaseFragment != null) {
            qi.b logViewConfig10 = getLogViewConfig();
            if (logViewConfig10 != null && (mapG3 = logViewConfig10.g()) != null) {
            }
            String previousTrackId = uGCVideoDetailBaseFragment.getPreviousTrackId();
            if (previousTrackId != null && (logViewConfig2 = getLogViewConfig()) != null && (mapG2 = logViewConfig2.g()) != null) {
            }
            String previousPageVideoId = uGCVideoDetailBaseFragment.getPreviousPageVideoId();
            if (previousPageVideoId != null && (logViewConfig = getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
            }
        }
        C0();
    }

    @Override
    public void initViewModel() {
        s0().I().j(getViewLifecycleOwner(), new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCVideoDetailForYouFragment.y0(this.f54172a, (UGCContentList) obj);
            }
        }));
    }

    @Override
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override
    public qi.b newLogViewConfig() {
        String str = this.pageName;
        if (str == null) {
            str = "/ugc_video/detail";
        }
        return new qi.b(str, false, 2, null);
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                bj.b bVar = this.exposureHelper;
                if (bVar != null) {
                    bVar.f();
                }
                logPause();
            } else {
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void onPause() {
        super.onPause();
        bj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override
    public void receiveArguments() {
        String string;
        this.pageLoadStartTime = System.currentTimeMillis();
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("video_params") : null;
        this.videoParams = serializable instanceof UGCVideoDetailParams ? (UGCVideoDetailParams) serializable : null;
        Bundle arguments2 = getArguments();
        this.pageName = arguments2 != null ? arguments2.getString("page_name") : null;
        Bundle arguments3 = getArguments();
        if (arguments3 == null || (string = arguments3.getString(NativeComponentConstants.KEY_COMPONENT_TYPE)) == null) {
            string = "TYPE_ONLINE";
        }
        this.playFromType = string;
        Bundle arguments4 = getArguments();
        this.fromOptId = arguments4 != null ? arguments4.getString("from_opt_id") : null;
        if (Intrinsics.c(this.playFromType, "TYPE_LOCAL_OUT")) {
            Bundle arguments5 = getArguments();
            this.outSideVideoName = arguments5 != null ? arguments5.getString("content_name") : null;
        }
    }

    @Override
    public void retryLoadData() {
    }

    @Override
    public iu.e getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        iu.e eVarC = iu.e.c(inflater);
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }
}
