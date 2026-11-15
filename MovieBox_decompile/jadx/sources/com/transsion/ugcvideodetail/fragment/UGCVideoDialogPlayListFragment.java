package com.transsion.ugcvideodetail.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.transsion.ugcvideodetail.hepler.UGCVideoPlayFrom;
import com.transsion.ugcvideodetail.viewmodel.UGCLocalVideoDetailViewModel;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
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
import kotlin.jvm.internal.TypeIntrinsics;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 ]2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\r\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0004J\r\u0010\u0010\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010#\u001a\u00020\u00152\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 H\u0002¢\u0006\u0004\b#\u0010$J\u001f\u0010'\u001a\u00020\f2\u0006\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u0015H\u0002¢\u0006\u0004\b'\u0010(J1\u0010*\u001a\u00020\f2\u0006\u0010%\u001a\u00020\u00152\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0)2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002¢\u0006\u0004\b*\u0010+J\u0019\u0010-\u001a\u00020\f2\b\u0010,\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b-\u0010.J%\u00101\u001a\u00020\f2\b\u0010/\u001a\u0004\u0018\u00010\t2\n\b\u0002\u00100\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\fH\u0002¢\u0006\u0004\b3\u0010\u0004J\u000f\u00104\u001a\u00020\fH\u0002¢\u0006\u0004\b4\u0010\u0004J\u0019\u00106\u001a\u00020\f2\b\u00105\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b6\u0010.R\u001b\u0010<\u001a\u0002078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u001b\u0010A\u001a\u00020=8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u00109\u001a\u0004\b?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010L\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010P\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010R\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010GR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010X\u001a\u00020S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010UR\u0016\u0010Z\u001a\u00020S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010UR\u0014\u0010\\\u001a\u00020S8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010U¨\u0006^"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Liu/l;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "u0", "(Landroid/view/LayoutInflater;)Liu/l;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "receiveArguments", "initViewData", "s0", "K0", "initViewModel", "initListener", "retryLoadData", "onPause", "", "hidden", "onHiddenChanged", "(Z)V", "showLoading", "hideLoading", "initExposureHelper", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "playList", "x0", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;)V", "", "Lui/i1;", "items", "G0", "(Ljava/util/List;)Z", "isLoadDown", "hasMore", "w0", "(ZZ)V", "", "N0", "(ZLjava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;)V", "clickedVideoId", "L0", "(Ljava/lang/String;)V", "videoId", "previousVideoId", "O0", "(Ljava/lang/String;Ljava/lang/String;)V", "J0", "M0", "ugcVideoId", "H0", "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "a", "Lkotlin/Lazy;", "v0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "viewModel", "Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "t0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", "localViewModel", "Lcom/transsion/ugcvideodetail/adapter/g;", "c", "Lcom/transsion/ugcvideodetail/adapter/g;", "playListAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "currentPlayingId", "Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;", "e", "Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;", "videoPlayFrom", "Lbj/b;", "f", "Lbj/b;", "exposureHelper", "g", "pageName", "", "h", "I", "tabIndex", "i", "tabStartPosition", "j", "tabEndPosition", CampaignEx.JSON_KEY_AD_K, "scrollOffset", "l", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDialogPlayListFragment extends PageStatusFragment<iu.l> {

    public static final Companion INSTANCE = new Companion(null);

    private com.transsion.ugcvideodetail.adapter.g playListAdapter;

    private String currentPlayingId;

    private bj.b exposureHelper;

    private String pageName;

    private int tabIndex;

    private final Lazy viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy localViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCLocalVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private UGCVideoPlayFrom videoPlayFrom = UGCVideoPlayFrom.ON_LINE_VIDEO;

    private int tabStartPosition = 1;

    private int tabEndPosition = 50;

    private final int scrollOffset = (com.blankj.utilcode.util.y.e() / 2) - lj.a.b(80);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCVideoDialogPlayListFragment a(int i10, int i11, int i12, UGCVideoPlayFrom videoFrom) {
            Intrinsics.h(videoFrom, "videoFrom");
            UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment = new UGCVideoDialogPlayListFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("tab_index", i10);
            bundle.putInt("tab_start_position", i11);
            bundle.putInt("tab_end_position", i12);
            bundle.putInt("video_from", videoFrom.getValue());
            uGCVideoDialogPlayListFragment.setArguments(bundle);
            return uGCVideoDialogPlayListFragment;
        }

        private Companion() {
        }
    }

    public class b {

        public static final int[] f54111a;

        static {
            int[] iArr = new int[UGCVideoPlayFrom.values().length];
            try {
                iArr[UGCVideoPlayFrom.LOCAL_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UGCVideoPlayFrom.ON_LINE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f54111a = iArr;
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f54112a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54112a = function;
        }

        @Override
        public final Function a() {
            return this.f54112a;
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
            this.f54112a.invoke(obj);
        }
    }

    public static final void A0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment) {
        uGCVideoDialogPlayListFragment.J0();
    }

    public static final void B0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment) {
        if (yg.l.f76264a.e()) {
            uGCVideoDialogPlayListFragment.M0();
        }
    }

    public static final Unit C0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment, List list) {
        String ugcVideoId;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return Unit.f64096a;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            int playListPosition = ((UGCVideo) obj).getPlayListPosition();
            int i10 = uGCVideoDialogPlayListFragment.tabStartPosition;
            if (playListPosition <= uGCVideoDialogPlayListFragment.tabEndPosition && i10 <= playListPosition) {
                arrayList.add(obj);
            }
        }
        com.transsion.ugcvideodetail.adapter.g gVar = uGCVideoDialogPlayListFragment.playListAdapter;
        List<Object> data = gVar != null ? gVar.getData() : null;
        if ((data == null || data.isEmpty()) && !arrayList.isEmpty()) {
            com.transsion.ugcvideodetail.adapter.g gVar2 = uGCVideoDialogPlayListFragment.playListAdapter;
            if (gVar2 != null) {
                gVar2.n1(CollectionsKt.U0(arrayList));
            }
            UGCVideo uGCVideo = (UGCVideo) uGCVideoDialogPlayListFragment.v0().G().f();
            if (uGCVideo != null && (ugcVideoId = uGCVideo.getUgcVideoId()) != null) {
                P0(uGCVideoDialogPlayListFragment, ugcVideoId, null, 2, null);
                uGCVideoDialogPlayListFragment.H0(ugcVideoId);
            }
            uGCVideoDialogPlayListFragment.hideLoading();
        }
        return Unit.f64096a;
    }

    public static final Unit D0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment, UGCVideoList uGCVideoList) {
        if (uGCVideoList != null) {
            uGCVideoDialogPlayListFragment.x0(uGCVideoList);
        }
        return Unit.f64096a;
    }

    public static final Unit E0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment, List list) {
        String ugcVideoId;
        Integer ugcVideoPosition;
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                DownloadBean downloadBean = (DownloadBean) obj;
                int iIntValue = 0;
                if (downloadBean != null && (ugcVideoPosition = downloadBean.getUgcVideoPosition()) != null) {
                    iIntValue = ugcVideoPosition.intValue();
                }
                int i10 = uGCVideoDialogPlayListFragment.tabStartPosition;
                if (iIntValue <= uGCVideoDialogPlayListFragment.tabEndPosition && i10 <= iIntValue) {
                    arrayList.add(obj);
                }
            }
            com.transsion.ugcvideodetail.adapter.g gVar = uGCVideoDialogPlayListFragment.playListAdapter;
            if (gVar != null) {
                List listU0 = CollectionsKt.U0(arrayList);
                Intrinsics.f(listU0, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.baselib.db.download.UGCVideoPlayable>");
                gVar.n1(TypeIntrinsics.c(listU0));
            }
            DownloadBean downloadBean2 = (DownloadBean) uGCVideoDialogPlayListFragment.t0().i().f();
            if (downloadBean2 != null && (ugcVideoId = downloadBean2.getUgcVideoId()) != null) {
                P0(uGCVideoDialogPlayListFragment, ugcVideoId, null, 2, null);
                uGCVideoDialogPlayListFragment.H0(ugcVideoId);
            }
            uGCVideoDialogPlayListFragment.hideLoading();
        }
        return Unit.f64096a;
    }

    public static final Unit F0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment, DownloadBean downloadBean) {
        String ugcVideoId;
        if (downloadBean != null && (ugcVideoId = downloadBean.getUgcVideoId()) != null) {
            P0(uGCVideoDialogPlayListFragment, ugcVideoId, null, 2, null);
            uGCVideoDialogPlayListFragment.H0(ugcVideoId);
        }
        return Unit.f64096a;
    }

    private final boolean G0(List items) {
        if (items.isEmpty()) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = items.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((ui.i1) it.next()).videoUGCPosition()));
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        Integer num = (Integer) CollectionsKt.y0(arrayList);
        int iIntValue = num != null ? num.intValue() : 0;
        Integer num2 = (Integer) CollectionsKt.w0(arrayList);
        int iIntValue2 = num2 != null ? num2.intValue() : 0;
        int i10 = this.tabEndPosition;
        boolean z10 = iIntValue <= i10 && iIntValue2 >= this.tabStartPosition;
        wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "isDataForCurrentTab: data range[" + iIntValue + "-" + iIntValue2 + "], tab range[" + this.tabStartPosition + "-" + i10 + "], hasIntersection=" + z10, false, 4, null);
        return z10;
    }

    private final void H0(final String ugcVideoId) {
        iu.l mViewBinding;
        RecyclerView recyclerView;
        if (ugcVideoId == null || ugcVideoId.length() == 0 || getMViewBinding() == null || this.playListAdapter == null || (mViewBinding = getMViewBinding()) == null || (recyclerView = mViewBinding.f62718c) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                UGCVideoDialogPlayListFragment.I0(this.f54176a, ugcVideoId);
            }
        }, 200L);
    }

    public static final void I0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment, String str) {
        RecyclerView recyclerView;
        List<Object> data;
        List<Object> data2;
        com.transsion.ugcvideodetail.adapter.g gVar = uGCVideoDialogPlayListFragment.playListAdapter;
        int i10 = -1;
        if (gVar != null && (data2 = gVar.getData()) != null) {
            Iterator<Object> it = data2.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (Intrinsics.c(((ui.i1) it.next()).videoUGCId(), str)) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        com.transsion.ugcvideodetail.adapter.g gVar2 = uGCVideoDialogPlayListFragment.playListAdapter;
        wf.a.C0922a.f(c0922a, "UGCVideoDialogPlayListFragment", "listScrollToPosition id:" + str + ", position:" + i10 + ", dataSize:" + ((gVar2 == null || (data = gVar2.getData()) == null) ? 0 : data.size()), false, 4, null);
        if (i10 < 0) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            iu.l mViewBinding = uGCVideoDialogPlayListFragment.getMViewBinding();
            Unit unit = null;
            RecyclerView.m layoutManager = (mViewBinding == null || (recyclerView = mViewBinding.f62718c) == null) ? null : recyclerView.getLayoutManager();
            LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            if (linearLayoutManager != null) {
                int i12 = uGCVideoDialogPlayListFragment.scrollOffset;
                linearLayoutManager.scrollToPositionWithOffset(i10, i12 > 0 ? i12 : 0);
                unit = Unit.f64096a;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void J0() {
        List<Object> listL;
        int playListPosition;
        t6.f fVarH0;
        t6.f fVarH1;
        String str = (String) v0().B().f();
        if (str == null) {
            return;
        }
        com.transsion.ugcvideodetail.adapter.g gVar = this.playListAdapter;
        if (gVar == null || (listL = gVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        ui.i1 i1Var = (ui.i1) CollectionsKt.v0(listL);
        if (i1Var != null) {
            playListPosition = i1Var instanceof UGCVideo ? ((UGCVideo) i1Var).getPlayListPosition() : 0;
        } else {
            playListPosition = this.tabStartPosition - 1;
        }
        int i10 = this.tabEndPosition;
        if (playListPosition >= i10) {
            com.transsion.ugcvideodetail.adapter.g gVar2 = this.playListAdapter;
            if (gVar2 != null && (fVarH1 = gVar2.h0()) != null) {
                t6.f.u(fVarH1, false, 1, null);
            }
            com.transsion.ugcvideodetail.adapter.g gVar3 = this.playListAdapter;
            if (gVar3 != null && (fVarH0 = gVar3.h0()) != null) {
                fVarH0.z(false);
            }
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "loadMoreData: reached tab end position " + this.tabEndPosition + ", stop loading", false, 4, null);
            return;
        }
        int i11 = playListPosition + 1;
        int iMin = Math.min(playListPosition + 9, i10);
        wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "loadMoreData: tabIndex=" + this.tabIndex + ", startPosition=" + i11 + ", endPosition=" + iMin + ", tabRange=[" + this.tabStartPosition + "-" + this.tabEndPosition + "]", false, 4, null);
        v0().X(str, i11, iMin, true);
    }

    private final void L0(String clickedVideoId) {
        List<Object> listL;
        if (clickedVideoId == null || clickedVideoId.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "syncTabDataToDetailPlayList: clickedVideoId is empty, skipping sync", false, 4, null);
            return;
        }
        com.transsion.ugcvideodetail.adapter.g gVar = this.playListAdapter;
        if (gVar == null || (listL = gVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        if (listL.isEmpty()) {
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "syncTabDataToDetailPlayList: Tab data is empty, skipping sync", false, 4, null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listL.iterator();
        while (it.hasNext()) {
            ui.i1 i1Var = (ui.i1) it.next();
            UGCVideo uGCVideo = i1Var instanceof UGCVideo ? (UGCVideo) i1Var : null;
            if (uGCVideo != null) {
                arrayList.add(uGCVideo);
            }
        }
        if (arrayList.isEmpty()) {
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "syncTabDataToDetailPlayList: No UGCVideo items, skipping sync", false, 4, null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "syncTabDataToDetailPlayList: Syncing " + arrayList.size() + " items from tab[" + this.tabStartPosition + "-" + this.tabEndPosition + "] to detail play list via ViewModel for video " + clickedVideoId, false, 4, null);
        v0().i0(arrayList, clickedVideoId);
    }

    private final void M0() {
        List<Object> listL;
        int playListPosition;
        t6.g gVarO0;
        t6.g gVarO1;
        t6.g gVarO2;
        String str = (String) v0().B().f();
        if (str == null) {
            return;
        }
        com.transsion.ugcvideodetail.adapter.g gVar = this.playListAdapter;
        if (gVar == null || (listL = gVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        ui.i1 i1Var = (ui.i1) CollectionsKt.k0(listL);
        if (i1Var != null) {
            playListPosition = i1Var instanceof UGCVideo ? ((UGCVideo) i1Var).getPlayListPosition() : 0;
        } else {
            playListPosition = this.tabStartPosition;
        }
        if (playListPosition <= this.tabStartPosition) {
            com.transsion.ugcvideodetail.adapter.g gVar2 = this.playListAdapter;
            if (gVar2 != null && (gVarO2 = gVar2.o0()) != null) {
                gVarO2.d(false);
            }
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "upFetchData: reached tab start position " + this.tabStartPosition + ", stop loading", false, 4, null);
            return;
        }
        if (playListPosition <= 1) {
            com.transsion.ugcvideodetail.adapter.g gVar3 = this.playListAdapter;
            if (gVar3 == null || (gVarO1 = gVar3.o0()) == null) {
                return;
            }
            gVarO1.d(false);
            return;
        }
        com.transsion.ugcvideodetail.adapter.g gVar4 = this.playListAdapter;
        if (gVar4 != null && (gVarO0 = gVar4.o0()) != null) {
            gVarO0.e(true);
        }
        int i10 = playListPosition - 1;
        int iMax = Math.max(playListPosition - 9, this.tabStartPosition);
        wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "upFetchData: tabIndex=" + this.tabIndex + ", startPosition=" + iMax + ", endPosition=" + i10 + ", tabRange=[" + this.tabStartPosition + "-" + this.tabEndPosition + "]", false, 4, null);
        v0().X(str, iMax, i10, false);
    }

    private final void N0(boolean isLoadDown, List items, UGCVideoList playList) {
        String str;
        t6.g gVarO0;
        t6.f fVarH0;
        t6.f fVarH1;
        t6.f fVarH2;
        Pager pager;
        com.transsion.ugcvideodetail.adapter.g gVar = this.playListAdapter;
        List<Object> data = gVar != null ? gVar.getData() : null;
        if ((data == null || data.isEmpty()) && (str = this.currentPlayingId) != null) {
            P0(this, str, null, 2, null);
        }
        if (isLoadDown) {
            if ((playList == null || (pager = playList.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.TRUE)) {
                com.transsion.ugcvideodetail.adapter.g gVar2 = this.playListAdapter;
                if (gVar2 != null && (fVarH2 = gVar2.h0()) != null) {
                    fVarH2.s();
                }
            } else {
                com.transsion.ugcvideodetail.adapter.g gVar3 = this.playListAdapter;
                if (gVar3 != null && (fVarH1 = gVar3.h0()) != null) {
                    t6.f.u(fVarH1, false, 1, null);
                }
                com.transsion.ugcvideodetail.adapter.g gVar4 = this.playListAdapter;
                if (gVar4 != null && (fVarH0 = gVar4.h0()) != null) {
                    fVarH0.z(false);
                }
            }
            com.transsion.ugcvideodetail.adapter.g gVar5 = this.playListAdapter;
            if (gVar5 != null) {
                gVar5.q(items);
            }
        } else {
            com.transsion.ugcvideodetail.adapter.g gVar6 = this.playListAdapter;
            if (gVar6 != null) {
                gVar6.o(0, items);
            }
            com.transsion.ugcvideodetail.adapter.g gVar7 = this.playListAdapter;
            if (gVar7 != null && (gVarO0 = gVar7.o0()) != null) {
                gVarO0.e(false);
            }
        }
        if (!items.isEmpty()) {
            hideLoading();
        }
        if (this.videoPlayFrom == UGCVideoPlayFrom.ON_LINE_VIDEO) {
            ArrayList arrayList = new ArrayList();
            Iterator it = items.iterator();
            while (it.hasNext()) {
                ui.i1 i1Var = (ui.i1) it.next();
                UGCVideo uGCVideo = i1Var instanceof UGCVideo ? (UGCVideo) i1Var : null;
                if (uGCVideo != null) {
                    arrayList.add(uGCVideo);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            v0().u(arrayList, isLoadDown);
        }
    }

    private final void O0(String videoId, String previousVideoId) {
        if (previousVideoId == null) {
            int i10 = b.f54111a[this.videoPlayFrom.ordinal()];
            if (i10 == 1) {
                previousVideoId = this.currentPlayingId;
            } else {
                if (i10 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                previousVideoId = v0().E();
            }
        }
        int i11 = b.f54111a[this.videoPlayFrom.ordinal()];
        if (i11 == 1) {
            t0().f().q(videoId);
        } else {
            if (i11 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            v0().f0(videoId);
        }
        this.currentPlayingId = videoId;
        com.transsion.ugcvideodetail.adapter.g gVar = this.playListAdapter;
        if (gVar != null) {
            gVar.E1(videoId, previousVideoId);
        }
    }

    static void P0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        uGCVideoDialogPlayListFragment.O0(str, str2);
    }

    private final void hideLoading() {
        ProgressBar progressBar;
        iu.l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f62717b) == null) {
            return;
        }
        uf.c.g(progressBar);
    }

    private final void initExposureHelper() {
        if (this.videoPlayFrom != UGCVideoPlayFrom.ON_LINE_VIDEO || getMViewBinding() == null) {
            return;
        }
        Fragment parentFragment = getParentFragment();
        UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = parentFragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) parentFragment : null;
        com.transsion.ugcvideodetail.hepler.g gVar = com.transsion.ugcvideodetail.hepler.g.f54286a;
        iu.l mViewBinding = getMViewBinding();
        Intrinsics.e(mViewBinding);
        RecyclerView recyclerView = mViewBinding.f62718c;
        Intrinsics.g(recyclerView, "recyclerView");
        this.exposureHelper = gVar.a(recyclerView, v0(), this.pageName, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCVideoDialogPlayListFragment.y0(this.f54173a, ((Integer) obj).intValue());
            }
        }, (128 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (128 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (128 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (128 & 128) != 0 ? null : null);
    }

    private final void showLoading() {
        ProgressBar progressBar;
        iu.l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f62717b) == null) {
            return;
        }
        uf.c.k(progressBar);
    }

    private final UGCLocalVideoDetailViewModel t0() {
        return (UGCLocalVideoDetailViewModel) this.localViewModel.getValue();
    }

    private final UGCVideoDetailViewModel v0() {
        return (UGCVideoDetailViewModel) this.viewModel.getValue();
    }

    private final void w0(boolean isLoadDown, boolean hasMore) {
        t6.f fVarH0;
        t6.f fVarH1;
        t6.f fVarH2;
        if (isLoadDown) {
            if (hasMore) {
                com.transsion.ugcvideodetail.adapter.g gVar = this.playListAdapter;
                if (gVar == null || (fVarH2 = gVar.h0()) == null) {
                    return;
                }
                fVarH2.s();
                return;
            }
            wf.a.C0922a.v(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "handleLoadMoreState false", false, 4, null);
            com.transsion.ugcvideodetail.adapter.g gVar2 = this.playListAdapter;
            if (gVar2 != null && (fVarH1 = gVar2.h0()) != null) {
                t6.f.u(fVarH1, false, 1, null);
            }
            com.transsion.ugcvideodetail.adapter.g gVar3 = this.playListAdapter;
            if (gVar3 == null || (fVarH0 = gVar3.h0()) == null) {
                return;
            }
            fVarH0.z(false);
        }
    }

    private final void x0(UGCVideoList playList) {
        List<Object> listL;
        List<UGCVideo> items = playList.getItems();
        if (items == null) {
            return;
        }
        com.transsion.ugcvideodetail.adapter.g gVar = this.playListAdapter;
        if (gVar == null || (listL = gVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        if (items.isEmpty()) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.v(c0922a, "UGCVideoDialogPlayListFragment", "handlePlayListData isEmpty", false, 4, null);
            if (!G0(items)) {
                wf.a.C0922a.f(c0922a, "UGCVideoDialogPlayListFragment", "handlePlayListData: Empty data not for current tab, ignoring", false, 4, null);
                return;
            }
            boolean isLoadDown = playList.getIsLoadDown();
            Pager pager = playList.getPager();
            w0(isLoadDown, pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.TRUE) : false);
            return;
        }
        if (!G0(items)) {
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "handlePlayListData: Data not for current tab (tab range: " + this.tabStartPosition + "-" + this.tabEndPosition + "), ignoring", false, 4, null);
            return;
        }
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        UGCVideo uGCVideo = (UGCVideo) CollectionsKt.k0(items);
        wf.a.C0922a.v(c0922a2, "UGCVideoDialogPlayListFragment", "handlePlayListData playListPosition:" + (uGCVideo != null ? Integer.valueOf(uGCVideo.getPlayListPosition()) : null), false, 4, null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : items) {
            int iVideoUGCPosition = ((UGCVideo) obj).videoUGCPosition();
            int i10 = this.tabStartPosition;
            if (iVideoUGCPosition <= this.tabEndPosition && i10 <= iVideoUGCPosition) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            wf.a.C0922a.v(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "当前 tab 没有新数据，只处理 loadmore 状态", false, 4, null);
            boolean isLoadDown2 = playList.getIsLoadDown();
            Pager pager2 = playList.getPager();
            w0(isLoadDown2, pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.TRUE) : false);
            return;
        }
        if (listL.isEmpty()) {
            N0(playList.getIsLoadDown(), CollectionsKt.U0(arrayList), playList);
            hideLoading();
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = listL.iterator();
        while (it.hasNext()) {
            String strVideoUGCId = ((ui.i1) it.next()).videoUGCId();
            if (strVideoUGCId != null) {
                arrayList2.add(strVideoUGCId);
            }
        }
        Set setW0 = CollectionsKt.W0(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!CollectionsKt.b0(setW0, ((UGCVideo) obj2).videoUGCId())) {
                arrayList3.add(obj2);
            }
        }
        if (!arrayList3.isEmpty()) {
            N0(playList.getIsLoadDown(), CollectionsKt.U0(arrayList3), playList);
            hideLoading();
        } else {
            boolean isLoadDown3 = playList.getIsLoadDown();
            Pager pager3 = playList.getPager();
            w0(isLoadDown3, pager3 != null ? Intrinsics.c(pager3.getHasMore(), Boolean.TRUE) : false);
        }
    }

    public static final UGCVideo y0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment, int i10) {
        List<Object> data;
        com.transsion.ugcvideodetail.adapter.g gVar = uGCVideoDialogPlayListFragment.playListAdapter;
        ui.i1 i1Var = (gVar == null || (data = gVar.getData()) == null) ? null : (ui.i1) CollectionsKt.l0(data, i10);
        if (i1Var instanceof UGCVideo) {
            return (UGCVideo) i1Var;
        }
        return null;
    }

    public static final void z0(UGCVideoDialogPlayListFragment uGCVideoDialogPlayListFragment, com.transsion.ugcvideodetail.adapter.g gVar, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        com.transsion.ugcvideodetail.adapter.g gVar2;
        List<Object> data;
        ui.i1 i1Var;
        String strE;
        String strE2;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L) || (gVar2 = uGCVideoDialogPlayListFragment.playListAdapter) == null || (data = gVar2.getData()) == null || (i1Var = (ui.i1) CollectionsKt.l0(data, i10)) == null) {
            return;
        }
        String strVideoUGCId = i1Var.videoUGCId();
        UGCVideoPlayFrom uGCVideoPlayFrom = uGCVideoDialogPlayListFragment.videoPlayFrom;
        int[] iArr = b.f54111a;
        int i11 = iArr[uGCVideoPlayFrom.ordinal()];
        if (i11 == 1) {
            strE = uGCVideoDialogPlayListFragment.currentPlayingId;
        } else {
            if (i11 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            strE = uGCVideoDialogPlayListFragment.v0().E();
        }
        if (!Intrinsics.c(strVideoUGCId, strE) || strVideoUGCId == null || strVideoUGCId.length() == 0) {
            Fragment parentFragment = uGCVideoDialogPlayListFragment.getParentFragment();
            UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = parentFragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) parentFragment : null;
            if (strE != null && strE.length() != 0 && uGCVideoDetailBaseFragment != null) {
                uGCVideoDetailBaseFragment.M0();
            }
            int i12 = iArr[uGCVideoDialogPlayListFragment.videoPlayFrom.ordinal()];
            if (i12 == 1) {
                String strVideoResourceId = i1Var.videoResourceId();
                if (strVideoResourceId != null) {
                    uGCVideoDialogPlayListFragment.t0().h(strVideoResourceId);
                }
            } else {
                if (i12 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                UGCVideoDetailViewModel uGCVideoDetailViewModelV0 = uGCVideoDialogPlayListFragment.v0();
                String strVideoUGCId2 = i1Var.videoUGCId();
                if (strVideoUGCId2 == null) {
                    strVideoUGCId2 = "";
                }
                uGCVideoDetailViewModelV0.c0(strVideoUGCId2, (String) uGCVideoDialogPlayListFragment.v0().B().f());
                if (i1Var instanceof UGCVideo) {
                    com.transsion.ugcvideodetail.hepler.g.f54286a.c((UGCVideo) i1Var, i10, uGCVideoDialogPlayListFragment.pageName, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null);
                }
            }
            int i13 = iArr[uGCVideoDialogPlayListFragment.videoPlayFrom.ordinal()];
            if (i13 == 1) {
                strE2 = uGCVideoDialogPlayListFragment.currentPlayingId;
            } else {
                if (i13 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                strE2 = uGCVideoDialogPlayListFragment.v0().E();
            }
            gVar.E1(i1Var.videoUGCId(), strE2);
            String strVideoUGCId3 = i1Var.videoUGCId();
            if (strVideoUGCId3 != null) {
                uGCVideoDialogPlayListFragment.H0(strVideoUGCId3);
            }
            if (uGCVideoDialogPlayListFragment.videoPlayFrom == UGCVideoPlayFrom.ON_LINE_VIDEO) {
                uGCVideoDialogPlayListFragment.L0(i1Var.videoUGCId());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0026  */
    public final void K0() {
        String ugcVideoId;
        List<Object> listL;
        int i10 = b.f54111a[this.videoPlayFrom.ordinal()];
        if (i10 == 1) {
            DownloadBean downloadBean = (DownloadBean) t0().i().f();
            if (downloadBean != null) {
                ugcVideoId = downloadBean.getUgcVideoId();
            } else {
                ugcVideoId = null;
            }
        } else {
            if (i10 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            UGCVideo uGCVideo = (UGCVideo) v0().G().f();
            if (uGCVideo != null) {
                ugcVideoId = uGCVideo.getUgcVideoId();
            } else {
                ugcVideoId = null;
            }
        }
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            return;
        }
        com.transsion.ugcvideodetail.adapter.g gVar = this.playListAdapter;
        if (gVar == null || (listL = gVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        if (listL.isEmpty()) {
            return;
        }
        List<Object> list = listL;
        if ((list instanceof Collection) && list.isEmpty()) {
            return;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((ui.i1) it.next()).videoUGCId(), ugcVideoId)) {
                P0(this, ugcVideoId, null, 2, null);
                H0(ugcVideoId);
                return;
            }
        }
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
        RecyclerView recyclerView;
        final com.transsion.ugcvideodetail.adapter.g gVar = new com.transsion.ugcvideodetail.adapter.g(true);
        gVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UGCVideoDialogPlayListFragment.z0(this.f54162a, gVar, baseQuickAdapter, view, i10);
            }
        });
        if (this.videoPlayFrom == UGCVideoPlayFrom.ON_LINE_VIDEO) {
            gVar.h0().z(true);
            gVar.h0().y(true);
            gVar.h0().E(3);
            gVar.h0().D(new r6.f() {
                @Override
                public final void a() {
                    UGCVideoDialogPlayListFragment.A0(this.f54167a);
                }
            });
            gVar.o0().d(true);
            gVar.o0().c(2);
            gVar.o0().b(new r6.g() {
                @Override
                public final void a() {
                    UGCVideoDialogPlayListFragment.B0(this.f54170a);
                }
            });
        }
        this.playListAdapter = gVar;
        iu.l mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f62718c) != null) {
            recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
            recyclerView.setAdapter(this.playListAdapter);
        }
        initExposureHelper();
    }

    @Override
    public void initViewModel() {
        int i10 = b.f54111a[this.videoPlayFrom.ordinal()];
        if (i10 == 1) {
            t0().k().j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCVideoDialogPlayListFragment.E0(this.f54156a, (List) obj);
                }
            }));
            t0().i().j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCVideoDialogPlayListFragment.F0(this.f54159a, (DownloadBean) obj);
                }
            }));
        } else {
            if (i10 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            v0().C().j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCVideoDialogPlayListFragment.C0(this.f54149a, (List) obj);
                }
            }));
            v0().M().j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCVideoDialogPlayListFragment.D0(this.f54153a, (UGCVideoList) obj);
                }
            }));
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        bj.b bVar;
        super.onHiddenChanged(hidden);
        if (!hidden || (bVar = this.exposureHelper) == null) {
            return;
        }
        bVar.f();
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
        Fragment parentFragment;
        super.receiveArguments();
        Bundle arguments = getArguments();
        this.tabIndex = arguments != null ? arguments.getInt("tab_index", 0) : 0;
        Bundle arguments2 = getArguments();
        this.tabStartPosition = arguments2 != null ? arguments2.getInt("tab_start_position", 1) : 1;
        Bundle arguments3 = getArguments();
        this.tabEndPosition = arguments3 != null ? arguments3.getInt("tab_end_position", 50) : 50;
        Bundle arguments4 = getArguments();
        int i10 = arguments4 != null ? arguments4.getInt("video_from") : UGCVideoPlayFrom.ON_LINE_VIDEO.getValue();
        UGCVideoPlayFrom uGCVideoPlayFrom = UGCVideoPlayFrom.ON_LINE_VIDEO;
        if (i10 != uGCVideoPlayFrom.getValue()) {
            uGCVideoPlayFrom = UGCVideoPlayFrom.LOCAL_VIDEO;
        }
        this.videoPlayFrom = uGCVideoPlayFrom;
        Fragment parentFragment2 = getParentFragment();
        String page_name = null;
        if (parentFragment2 != null && (parentFragment = parentFragment2.getParentFragment()) != null && (parentFragment instanceof UGCVideoDetailBaseFragment)) {
            page_name = ((UGCVideoDetailBaseFragment) parentFragment).getPAGE_NAME();
        }
        this.pageName = page_name;
    }

    @Override
    public void retryLoadData() {
    }

    public final void s0() {
        List<Object> listL;
        if (this.videoPlayFrom != UGCVideoPlayFrom.ON_LINE_VIDEO) {
            return;
        }
        com.transsion.ugcvideodetail.adapter.g gVar = this.playListAdapter;
        if (gVar == null || (listL = gVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        if (!listL.isEmpty()) {
            hideLoading();
            return;
        }
        List listL2 = (List) v0().C().f();
        if (listL2 == null) {
            listL2 = CollectionsKt.l();
        }
        List list = listL2;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int playListPosition = ((UGCVideo) it.next()).getPlayListPosition();
                int i10 = this.tabStartPosition;
                if (playListPosition <= this.tabEndPosition && i10 <= playListPosition) {
                    hideLoading();
                    return;
                }
            }
        }
        showLoading();
        String str = (String) v0().B().f();
        if (str == null) {
            return;
        }
        int iMin = Math.min(this.tabStartPosition + 8, this.tabEndPosition);
        wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDialogPlayListFragment", "checkAndLoadDataIfNeeded: tabIndex=" + this.tabIndex + ", requesting data range=[" + this.tabStartPosition + "-" + iMin + "]", false, 4, null);
        v0().X(str, this.tabStartPosition, iMin, true);
    }

    @Override
    public iu.l getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        iu.l lVarC = iu.l.c(inflater);
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }
}
