package com.transsion.postdetail.ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.postdetail.R$anim;
import com.transsion.postdetail.viewmodel.LocalVideoDetailViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 T2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00019B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u001f\u0010\u000b\u001a\u00020\u00052\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ)\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0010H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u001f\u0010(\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\t2\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J!\u0010*\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b*\u0010\u001dJ6\u0010/\u001a\u00020\u00052'\u0010.\u001a#\u0012\u0004\u0012\u00020\t\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00050+¢\u0006\u0004\b/\u00100J\u001d\u00104\u001a\u00020\u00052\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u00020\u0010¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020\u00052\b\b\u0002\u00106\u001a\u00020\u001f¢\u0006\u0004\b7\u00108R\u0014\u0010;\u001a\u00020&8\u0002X\u0082D¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010>\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010F\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\"\u0010L\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u00108R\u0016\u0010'\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010:R\u0018\u0010P\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR9\u0010S\u001a%\u0012\u0004\u0012\u00020\t\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0005\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010R¨\u0006U"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lwn/k;", "<init>", "()V", "", "initAdapter", "k0", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "insertList", "u0", "(Ljava/util/List;)V", "bean", "p0", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "", RequestParameters.POSITION, "q0", "(I)V", "Landroid/view/LayoutInflater;", "inflater", "f0", "(Landroid/view/LayoutInflater;)Lwn/k;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "transit", "", "enter", "nextAnim", "Landroid/view/animation/Animation;", "onCreateAnimation", "(IZI)Landroid/view/animation/Animation;", "lazyLoadData", "", "pageFrom", "r0", "(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V", "initData", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "callback", "s0", "(Lkotlin/jvm/functions/Function2;)V", "Landroidx/fragment/app/Fragment;", "fragment", "id", "t0", "(Landroidx/fragment/app/Fragment;I)V", "force", "n0", "(Z)V", "a", "Ljava/lang/String;", "TAG", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "scrollOffset", "Lcom/transsion/postdetail/ui/adapter/c;", "c", "Lcom/transsion/postdetail/ui/adapter/c;", "seriesAdapter", "Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;", "viewModel", "e", "Z", "m0", "()Z", "setRemoved", "isRemoved", "f", "g", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "h", "Lkotlin/jvm/functions/Function2;", "itemClickCallback", "i", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LocalVideoMiddleSeriesListFragment extends BaseFragment<wn.k> {

    public static final Companion INSTANCE = new Companion(null);

    private com.transsion.postdetail.ui.adapter.c seriesAdapter;

    private LocalVideoDetailViewModel viewModel;

    private DownloadBean downloadBean;

    private Function2 itemClickCallback;

    private final String TAG = "LocalVideoMiddleSeriesListFragment";

    private final int scrollOffset = com.blankj.utilcode.util.a0.a(280.0f);

    private boolean isRemoved = true;

    private String pageFrom = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LocalVideoMiddleSeriesListFragment a() {
            return new LocalVideoMiddleSeriesListFragment();
        }

        private Companion() {
        }
    }

    public static final class b extends DiffUtil.e {
        b() {
        }

        @Override
        public boolean areContentsTheSame(DownloadBean oldItem, DownloadBean newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getResourceId(), newItem.getResourceId()) && oldItem.getStatus() == newItem.getStatus() && oldItem.getProgress() == newItem.getProgress() && Intrinsics.c(oldItem.getUpdateTimeStamp(), newItem.getUpdateTimeStamp());
        }

        @Override
        public boolean areItemsTheSame(DownloadBean oldItem, DownloadBean newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getResourceId(), newItem.getResourceId());
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47473a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47473a = function;
        }

        @Override
        public final Function a() {
            return this.f47473a;
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
            this.f47473a.invoke(obj);
        }
    }

    public static final void g0(LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L) || adapter.getData().isEmpty()) {
            return;
        }
        Object obj = adapter.getData().get(i10);
        Intrinsics.f(obj, "null cannot be cast to non-null type com.transsion.baselib.db.download.DownloadBean");
        DownloadBean downloadBean = (DownloadBean) obj;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = localVideoMiddleSeriesListFragment.TAG;
        DownloadBean downloadBean2 = localVideoMiddleSeriesListFragment.downloadBean;
        Integer numValueOf = downloadBean2 != null ? Integer.valueOf(downloadBean2.getEpse()) : null;
        DownloadBean downloadBean3 = localVideoMiddleSeriesListFragment.downloadBean;
        String resourceId = downloadBean3 != null ? downloadBean3.getResourceId() : null;
        wf.a.C0922a.f(c0922a, str, "item click, current epse = " + numValueOf + ",resourceId=" + resourceId + ",  click epse = " + downloadBean.getEpse() + ",resourceId=" + downloadBean.getResourceId(), false, 4, null);
        String resourceId2 = downloadBean.getResourceId();
        DownloadBean downloadBean4 = localVideoMiddleSeriesListFragment.downloadBean;
        if (Intrinsics.c(resourceId2, downloadBean4 != null ? downloadBean4.getResourceId() : null)) {
            return;
        }
        if (downloadBean.getCanPlay()) {
            localVideoMiddleSeriesListFragment.downloadBean = downloadBean;
        }
        Function2 function2 = localVideoMiddleSeriesListFragment.itemClickCallback;
        if (function2 != null) {
            function2.invoke(downloadBean, Integer.valueOf(i10));
        }
    }

    public static final Unit h0(LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment, List list) {
        wf.a.C0922a.f(wf.a.f74274a, localVideoMiddleSeriesListFragment.TAG, "2--fragment, on get series from local, size = " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        localVideoMiddleSeriesListFragment.u0(list);
        DownloadBean downloadBean = localVideoMiddleSeriesListFragment.downloadBean;
        if (downloadBean != null) {
            localVideoMiddleSeriesListFragment.p0(downloadBean);
        }
        return Unit.f64096a;
    }

    public static final Unit i0(LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment, DownloadBean downloadBean) {
        com.transsion.postdetail.ui.adapter.c cVar;
        List<Object> data;
        List<Object> data2;
        int size = 0;
        if (downloadBean != null) {
            downloadBean.setPlaying(false);
        }
        com.transsion.postdetail.ui.adapter.c cVar2 = localVideoMiddleSeriesListFragment.seriesAdapter;
        int i10 = -1;
        if (cVar2 != null && (data2 = cVar2.getData()) != null) {
            Iterator<Object> it = data2.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), downloadBean != null ? downloadBean.getResourceId() : null)) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        if (i10 >= 0) {
            com.transsion.postdetail.ui.adapter.c cVar3 = localVideoMiddleSeriesListFragment.seriesAdapter;
            if (cVar3 != null && (data = cVar3.getData()) != null) {
                size = data.size();
            }
            if (i10 < size && (cVar = localVideoMiddleSeriesListFragment.seriesAdapter) != null) {
                cVar.notifyItemChanged(i10, Boolean.FALSE);
            }
        }
        return Unit.f64096a;
    }

    private final void initAdapter() {
        com.transsion.postdetail.ui.adapter.c cVar = new com.transsion.postdetail.ui.adapter.c(new ArrayList(), true);
        cVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                LocalVideoMiddleSeriesListFragment.g0(this.f47572a, baseQuickAdapter, view, i10);
            }
        });
        cVar.R0(new b());
        this.seriesAdapter = cVar;
    }

    public static final Unit j0(LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment, DownloadBean downloadBean) {
        com.transsion.postdetail.ui.adapter.c cVar;
        List<Object> data;
        List<Object> data2;
        if (downloadBean != null) {
            downloadBean.setPlaying(true);
        }
        com.transsion.postdetail.ui.adapter.c cVar2 = localVideoMiddleSeriesListFragment.seriesAdapter;
        int i10 = -1;
        int size = 0;
        if (cVar2 != null && (data2 = cVar2.getData()) != null) {
            Iterator<Object> it = data2.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), downloadBean != null ? downloadBean.getResourceId() : null)) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        if (i10 >= 0) {
            com.transsion.postdetail.ui.adapter.c cVar3 = localVideoMiddleSeriesListFragment.seriesAdapter;
            if (cVar3 != null && (data = cVar3.getData()) != null) {
                size = data.size();
            }
            if (i10 < size && (cVar = localVideoMiddleSeriesListFragment.seriesAdapter) != null) {
                cVar.notifyItemChanged(i10, Boolean.TRUE);
            }
        }
        return Unit.f64096a;
    }

    private final void k0() {
        RecyclerView recyclerView;
        wn.k mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f74432c) == null) {
            return;
        }
        int iA = com.blankj.utilcode.util.a0.a(4.0f);
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
        int i10 = iA * 2;
        int i11 = iA * 3;
        recyclerView.addItemDecoration(new tf.a(i10, i10, i11, i11));
        recyclerView.setAdapter(this.seriesAdapter);
    }

    public static final void l0(LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment, View view) {
        o0(localVideoMiddleSeriesListFragment, false, 1, null);
    }

    public static void o0(LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        localVideoMiddleSeriesListFragment.n0(z10);
    }

    private final void p0(DownloadBean bean) {
        List<Object> data;
        List<Object> data2;
        com.transsion.postdetail.ui.adapter.c cVar = this.seriesAdapter;
        int i10 = -1;
        int size = 0;
        if (cVar != null && (data2 = cVar.getData()) != null) {
            Iterator<Object> it = data2.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), bean.getResourceId())) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        if (i10 > 0) {
            com.transsion.postdetail.ui.adapter.c cVar2 = this.seriesAdapter;
            if (cVar2 != null && (data = cVar2.getData()) != null) {
                size = data.size();
            }
            if (i10 < size) {
                q0(i10);
            }
        }
    }

    private final void q0(int position) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        wf.a.C0922a.v(wf.a.f74274a, this.TAG, "seriesScrollToPosition = " + position, false, 4, null);
        if (position < 0) {
            return;
        }
        try {
            wn.k mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView2 = mViewBinding.f74432c) != null) {
                recyclerView2.scrollToPosition(position);
            }
            wn.k mViewBinding2 = getMViewBinding();
            RecyclerView.m layoutManager = (mViewBinding2 == null || (recyclerView = mViewBinding2.f74432c) == null) ? null : recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                ((GridLayoutManager) layoutManager).scrollToPositionWithOffset(position, this.scrollOffset);
            }
        } catch (Throwable unused) {
        }
    }

    private final void u0(List insertList) {
        List<Object> listL;
        ArrayList arrayList;
        List<Object> data;
        List<Object> data2;
        com.transsion.postdetail.ui.adapter.c cVar = this.seriesAdapter;
        if (cVar != null && (data2 = cVar.getData()) != null && data2.isEmpty()) {
            com.transsion.postdetail.ui.adapter.c cVar2 = this.seriesAdapter;
            if (cVar2 != null) {
                cVar2.n1(insertList);
                return;
            }
            return;
        }
        com.transsion.postdetail.ui.adapter.c cVar3 = this.seriesAdapter;
        if (cVar3 == null || (listL = cVar3.getData()) == null) {
            listL = CollectionsKt.l();
        }
        Integer numValueOf = null;
        if (insertList != null) {
            arrayList = new ArrayList();
            for (Object obj : insertList) {
                if (!listL.contains((DownloadBean) obj)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "全部去重了~", false, 4, null);
            return;
        }
        com.transsion.postdetail.ui.adapter.c cVar4 = this.seriesAdapter;
        if (cVar4 != null) {
            cVar4.q(arrayList);
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.TAG;
        com.transsion.postdetail.ui.adapter.c cVar5 = this.seriesAdapter;
        if (cVar5 != null && (data = cVar5.getData()) != null) {
            numValueOf = Integer.valueOf(data.size());
        }
        wf.a.C0922a.f(c0922a, str, "3--fragment, on get series from net, totalSize = " + numValueOf, false, 4, null);
    }

    @Override
    public wn.k getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        wn.k kVarC = wn.k.c(inflater);
        Intrinsics.g(kVarC, "inflate(...)");
        return kVarC;
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        androidx.p009lifecycle.b0 b0VarE;
        androidx.p009lifecycle.b0 b0VarF;
        androidx.p009lifecycle.b0 b0VarI;
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            LocalVideoDetailViewModel localVideoDetailViewModel = (LocalVideoDetailViewModel) new androidx.p009lifecycle.v0(activity, new androidx.lifecycle.v0.d()).a(LocalVideoDetailViewModel.class);
            this.viewModel = localVideoDetailViewModel;
            if (localVideoDetailViewModel != null && (b0VarI = localVideoDetailViewModel.i()) != null) {
                b0VarI.j(activity, new c(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return LocalVideoMiddleSeriesListFragment.h0(this.f47758a, (List) obj);
                    }
                }));
            }
            LocalVideoDetailViewModel localVideoDetailViewModel2 = this.viewModel;
            if (localVideoDetailViewModel2 != null && (b0VarF = localVideoDetailViewModel2.f()) != null) {
                b0VarF.j(activity, new c(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return LocalVideoMiddleSeriesListFragment.i0(this.f47765a, (DownloadBean) obj);
                    }
                }));
            }
            LocalVideoDetailViewModel localVideoDetailViewModel3 = this.viewModel;
            if (localVideoDetailViewModel3 == null || (b0VarE = localVideoDetailViewModel3.e()) == null) {
                return;
            }
            b0VarE.j(activity, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LocalVideoMiddleSeriesListFragment.j0(this.f47775a, (DownloadBean) obj);
                }
            }));
        }
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        AppCompatImageView appCompatImageView;
        Intrinsics.h(view, "view");
        initAdapter();
        k0();
        wn.k mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f74431b) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LocalVideoMiddleSeriesListFragment.l0(this.f47781a, view2);
            }
        });
    }

    @Override
    public void lazyLoadData() {
    }

    public final boolean getIsRemoved() {
        return this.isRemoved;
    }

    public final void n0(boolean force) {
        if (!this.isRemoved || force) {
            this.isRemoved = true;
            try {
                FragmentManager parentFragmentManager = getParentFragmentManager();
                parentFragmentManager.g1();
                androidx.fragment.app.w wVarP = parentFragmentManager.p();
                Intrinsics.g(wVarP, "beginTransaction(...)");
                wVarP.r(this);
                wVarP.j();
                Intrinsics.e(parentFragmentManager);
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public Animation onCreateAnimation(int transit, boolean enter, int nextAnim) {
        return enter ? AnimationUtils.loadAnimation(getActivity(), R$anim.enter_bottom_menu) : AnimationUtils.loadAnimation(getActivity(), R$anim.exit_bottom_menu);
    }

    public final void r0(DownloadBean bean, String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.downloadBean = bean;
        this.pageFrom = pageFrom;
    }

    public final void s0(Function2 callback) {
        Intrinsics.h(callback, "callback");
        this.itemClickCallback = callback;
    }

    public final void t0(Fragment fragment, int id2) {
        Intrinsics.h(fragment, "fragment");
        if (this.isRemoved) {
            this.isRemoved = false;
            try {
                FragmentManager childFragmentManager = fragment.getChildFragmentManager();
                Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
                androidx.fragment.app.w wVarP = childFragmentManager.p();
                Intrinsics.g(wVarP, "beginTransaction()");
                wVarP.t(id2, this, "LocalVideoMiddleSeriesList");
                wVarP.j();
            } catch (Throwable unused) {
            }
        }
    }
}
