package com.transsnet.downloader.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.downloader.viewmodel.LocalFileViewModel;
import com.transsnet.downloader.viewmodel.TransferReceivedViewModel;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\u0018\u0000 ^2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00019B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u001d\u0010\u000e\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J)\u0010\u0019\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0015H\u0002¢\u0006\u0004\b!\u0010 J\u000f\u0010\"\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\"\u0010 J\u0017\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u001cH\u0016¢\u0006\u0004\b(\u0010\u001eJ\u000f\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020)H\u0016¢\u0006\u0004\b,\u0010+J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\u001cH\u0016¢\u0006\u0004\b.\u0010\u001eJ\u000f\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b/\u0010\u0004J\u000f\u00100\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u0010\u0004J\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u0004J\u0017\u00103\u001a\u00020\u00052\u0006\u00102\u001a\u00020)H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u0010\u0004J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108R\u0014\u0010;\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\u0006\n\u0004\b9\u0010:R\u001b\u0010A\u001a\u00020<8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u001b\u0010F\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010>\u001a\u0004\bD\u0010ER\u001b\u0010K\u001a\u00020G8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bH\u0010>\u001a\u0004\bI\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010P\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010:R\u0016\u0010S\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0018\u0010W\u001a\u0004\u0018\u00010T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR.\u0010]\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u001c Z*\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010Y0Y0X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010\\¨\u0006_"}, d2 = {"Lcom/transsnet/downloader/fragment/TransferSelectListFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lbx/m0;", "<init>", "()V", "", "F0", "I0", "L0", "K0", "u0", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "V0", "(Ljava/util/List;)V", "C0", "(Ljava/util/List;)Ljava/util/List;", "data", "S0", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "R0", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "U0", "", "getPageName", "()Ljava/lang/String;", "y0", "()Landroid/view/View;", "D0", "w0", "Landroid/view/LayoutInflater;", "inflater", "E0", "(Landroid/view/LayoutInflater;)Lbx/m0;", "receiveArguments", "getPageStateLayoutTitle", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewData", "getEmptyDescText", "initViewModel", "initListener", "retryLoadData", "hidden", "onHiddenChanged", "(Z)V", "loadDefaultData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "a", "Ljava/lang/String;", "TAG", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "v0", "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "downloadViewModel", "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "c", "A0", "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "mLocalFileViewModel", "Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "B0", "()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "mTransferViewModel", "e", "Landroid/view/View;", "mEmptyView", "f", "tabName", "g", "I", "tabIndex", "Lcom/transsnet/downloader/adapter/x0;", "h", "Lcom/transsnet/downloader/adapter/x0;", "transferSelectAdapter", "Landroidx/activity/result/b;", "", "kotlin.jvm.PlatformType", "i", "Landroidx/activity/result/b;", "requestMultiplePermission", "j", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TransferSelectListFragment extends PageStatusFragment<bx.m0> {

    public static final Companion INSTANCE = new Companion(null);

    private View mEmptyView;

    private int tabIndex;

    private com.transsnet.downloader.adapter.x0 transferSelectAdapter;

    private final androidx.activity.result.b requestMultiplePermission;

    private final String TAG = TransferBottomToolsView.TAG;

    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(DownloadViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy mLocalFileViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(LocalFileViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy mTransferViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(TransferReceivedViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private String tabName = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TransferSelectListFragment a(int i10, String tabName) {
            Intrinsics.h(tabName, "tabName");
            TransferSelectListFragment transferSelectListFragment = new TransferSelectListFragment();
            transferSelectListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_download_out_file_tab_name", tabName), TuplesKt.a("extra_page_index", Integer.valueOf(i10))));
            return transferSelectListFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56903a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56903a = function;
        }

        @Override
        public final Function a() {
            return this.f56903a;
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
            this.f56903a.invoke(obj);
        }
    }

    public TransferSelectListFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.h(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                TransferSelectListFragment.T0(this.f57132a, (Map) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestMultiplePermission = bVarRegisterForActivityResult;
    }

    private final LocalFileViewModel A0() {
        return (LocalFileViewModel) this.mLocalFileViewModel.getValue();
    }

    private final TransferReceivedViewModel B0() {
        return (TransferReceivedViewModel) this.mTransferViewModel.getValue();
    }

    private final List C0(List list) {
        List<Object> data;
        Object next;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DownloadBean downloadBean = (DownloadBean) it.next();
            com.transsnet.downloader.adapter.x0 x0Var = this.transferSelectAdapter;
            if (x0Var != null && (data = x0Var.getData()) != null) {
                Iterator<T> it2 = data.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                    DownloadBean downloadBean2 = (DownloadBean) next;
                    if (!downloadBean2.isInnerRes()) {
                        if (Intrinsics.c(downloadBean2.getPath(), downloadBean.getPath()) && Intrinsics.c(downloadBean2.getResourceId(), downloadBean.getResourceId())) {
                            break;
                        }
                    } else if (Intrinsics.c(downloadBean2.getSubjectId(), downloadBean.getSubjectId()) && downloadBean2.getResolution() == downloadBean.getResolution() && downloadBean2.getEp() == downloadBean.getEp() && downloadBean2.getSe() == downloadBean.getSe()) {
                        break;
                    }
                }
                DownloadBean downloadBean3 = (DownloadBean) next;
                if (downloadBean3 != null) {
                    arrayList.add(downloadBean3);
                }
            }
            arrayList.add(downloadBean);
        }
        return arrayList;
    }

    private final View D0() {
        if (this.mEmptyView == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            StateView stateView = new StateView(contextRequireContext);
            String string = Utils.a().getString(R$string.download_transfer_received_empty_tips);
            Intrinsics.g(string, "getString(...)");
            stateView.showData(2, 2, false, "", string);
            this.mEmptyView = stateView;
        }
        View view = this.mEmptyView;
        Intrinsics.e(view);
        return view;
    }

    private final void F0() {
        v0().O().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferSelectListFragment.G0(this.f57151a, (List) obj);
            }
        }));
        v0().i0().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferSelectListFragment.H0(this.f57162a, (DownloadBean) obj);
            }
        }));
    }

    public static final Unit G0(TransferSelectListFragment transferSelectListFragment, List list) {
        SwipeRefreshLayout swipeRefreshLayout;
        bx.m0 mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        bx.m0 mViewBinding2 = transferSelectListFragment.getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f16173c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = transferSelectListFragment.getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f16173c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            com.transsnet.downloader.adapter.x0 x0Var = transferSelectListFragment.transferSelectAdapter;
            if (x0Var != null) {
                x0Var.Y0(transferSelectListFragment.w0());
            }
        } else {
            transferSelectListFragment.V0(CollectionsKt.U0(list2));
        }
        return Unit.f64096a;
    }

    public static final Unit H0(TransferSelectListFragment transferSelectListFragment, DownloadBean downloadBean) {
        List<Object> data;
        com.transsnet.downloader.adapter.x0 x0Var = transferSelectListFragment.transferSelectAdapter;
        if (x0Var != null && (data = x0Var.getData()) != null) {
            Iterator<Object> it = data.iterator();
            int i10 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i10 = -1;
                    break;
                }
                DownloadBean downloadBean2 = (DownloadBean) it.next();
                boolean zC = true;
                if (downloadBean2.isInnerRes()) {
                    if (!Intrinsics.c(downloadBean2.getSubjectId(), downloadBean != null ? downloadBean.getSubjectId() : null) || downloadBean == null || downloadBean2.getResolution() != downloadBean.getResolution() || downloadBean == null || downloadBean2.getEp() != downloadBean.getEp() || downloadBean == null || downloadBean2.getSe() != downloadBean.getSe()) {
                        zC = false;
                    }
                } else {
                    zC = Intrinsics.c(downloadBean2.getResourceId(), downloadBean != null ? downloadBean.getResourceId() : null);
                }
                if (zC) {
                    break;
                }
                i10++;
            }
            if (i10 >= 0) {
                wf.a.C0922a.f(wf.a.f74274a, transferSelectListFragment.TAG, "外部列表，刷新index:" + i10, false, 4, null);
                com.transsnet.downloader.adapter.x0 x0Var2 = transferSelectListFragment.transferSelectAdapter;
                if (x0Var2 != null) {
                    x0Var2.notifyItemChanged(i10, downloadBean);
                }
            }
        }
        return Unit.f64096a;
    }

    private final void I0() {
        A0().i().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferSelectListFragment.J0(this.f56931a, (List) obj);
            }
        }));
    }

    public static final Unit J0(TransferSelectListFragment transferSelectListFragment, List list) {
        SwipeRefreshLayout swipeRefreshLayout;
        bx.m0 mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        bx.m0 mViewBinding2 = transferSelectListFragment.getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f16173c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = transferSelectListFragment.getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f16173c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        wf.a.C0922a.f(wf.a.f74274a, transferSelectListFragment.TAG, "获取到外部数据all:" + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        transferSelectListFragment.showContentView();
        if (!com.transsnet.downloader.viewmodel.a0.f57862a.a()) {
            transferSelectListFragment.U0();
            return Unit.f64096a;
        }
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            transferSelectListFragment.V0(list);
            return Unit.f64096a;
        }
        com.transsnet.downloader.adapter.x0 x0Var = transferSelectListFragment.transferSelectAdapter;
        if (x0Var != null) {
            x0Var.Y0(transferSelectListFragment.y0());
        }
        return Unit.f64096a;
    }

    private final void K0() {
    }

    private final void L0() {
        B0().j().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferSelectListFragment.M0(this.f56917a, (List) obj);
            }
        }));
    }

    public static final Unit M0(TransferSelectListFragment transferSelectListFragment, List list) {
        SwipeRefreshLayout swipeRefreshLayout;
        bx.m0 mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        bx.m0 mViewBinding2 = transferSelectListFragment.getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f16173c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = transferSelectListFragment.getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f16173c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        transferSelectListFragment.showContentView();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            com.transsnet.downloader.adapter.x0 x0Var = transferSelectListFragment.transferSelectAdapter;
            if (x0Var != null) {
                x0Var.Y0(transferSelectListFragment.D0());
            }
        } else {
            transferSelectListFragment.V0(list);
        }
        return Unit.f64096a;
    }

    public static final void N0(TransferSelectListFragment transferSelectListFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        DownloadBean downloadBean = item instanceof DownloadBean ? (DownloadBean) item : null;
        if (downloadBean == null || !downloadBean.isSeriesCollection()) {
            transferSelectListFragment.R0(downloadBean, view, i10);
        } else {
            transferSelectListFragment.S0(downloadBean);
        }
    }

    public static final void O0(TransferSelectListFragment transferSelectListFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (view.getId() == R$id.v_more) {
            Object item = adapter.getItem(i10);
            transferSelectListFragment.R0(item instanceof DownloadBean ? (DownloadBean) item : null, view, i10);
        }
    }

    public static final void P0(TransferSelectListFragment transferSelectListFragment) {
        transferSelectListFragment.u0();
    }

    public static final Unit Q0(TransferSelectListFragment transferSelectListFragment, Boolean bool) {
        List<Object> data;
        com.transsnet.downloader.adapter.x0 x0Var = transferSelectListFragment.transferSelectAdapter;
        if (x0Var != null && (data = x0Var.getData()) != null) {
            Iterator<T> it = data.iterator();
            while (it.hasNext()) {
                DownloadBean downloadBean = (DownloadBean) it.next();
                if (downloadBean.isSeriesCollection()) {
                    Iterator<T> it2 = downloadBean.getSeriesList().iterator();
                    while (it2.hasNext()) {
                        ((DownloadBean) it2.next()).setCheck(false);
                    }
                }
                downloadBean.setCheck(false);
            }
        }
        com.transsnet.downloader.adapter.x0 x0Var2 = transferSelectListFragment.transferSelectAdapter;
        if (x0Var2 != null) {
            x0Var2.notifyDataSetChanged();
        }
        return Unit.f64096a;
    }

    private final void R0(DownloadBean data, View view, int position) {
        List arrayList;
        boolean zC;
        Object next;
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        v0().a0().q(TransferBottomToolsView.STATUS_SEND);
        androidx.p009lifecycle.b0 b0VarF0 = v0().f0(this.tabIndex);
        if (b0VarF0 == null || (arrayList = (List) b0VarF0.f()) == null) {
            arrayList = new ArrayList();
        }
        if (data == null || !data.getIsCheck()) {
            if (data != null) {
                data.setCheck(true);
            }
            if (data != null) {
                arrayList.add(data);
                DownloadUtil.f57680a.I(true, data);
                androidx.p009lifecycle.b0 b0VarF1 = v0().f0(this.tabIndex);
                if (b0VarF1 != null) {
                    b0VarF1.q(arrayList);
                }
            }
        } else if (DownloadUtil.f57680a.C(data)) {
            data.setCheck(false);
            Iterator it = arrayList.iterator();
            int i10 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i10 = -1;
                    break;
                }
                DownloadBean downloadBean = (DownloadBean) it.next();
                if (downloadBean.isSeries()) {
                    zC = Intrinsics.c(downloadBean.getSubjectId(), data.getSubjectId()) && downloadBean.getResolution() == data.getResolution() && downloadBean.getEp() == data.getEp() && downloadBean.getSe() == data.getSe();
                } else {
                    zC = Intrinsics.c(downloadBean.getResourceId(), data.getResourceId());
                }
                if (zC) {
                    break;
                } else {
                    i10++;
                }
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                if (i10 >= 0) {
                    arrayList.remove(i10);
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            DownloadUtil.f57680a.I(false, data);
            androidx.p009lifecycle.b0 b0VarF2 = v0().f0(this.tabIndex);
            if (b0VarF2 != null) {
                b0VarF2.q(arrayList);
            }
        } else {
            Iterator it2 = arrayList.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!Intrinsics.c((DownloadBean) next, data));
            if (next == null) {
                arrayList.add(data);
            }
            DownloadUtil.f57680a.I(true, data);
            androidx.p009lifecycle.b0 b0VarF3 = v0().f0(this.tabIndex);
            if (b0VarF3 != null) {
                b0VarF3.q(arrayList);
            }
        }
        v0().h0().q(Integer.valueOf(DownloadUtil.f57680a.w(arrayList)));
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onItemCheckClick selectedList size:" + arrayList.size(), false, 4, null);
        com.transsnet.downloader.adapter.x0 x0Var = this.transferSelectAdapter;
        if (x0Var != null) {
            x0Var.notifyItemChanged(position, data);
        }
    }

    private final void S0(DownloadBean data) {
        v0().c0().q(Boolean.TRUE);
        v0().b0().q(data);
    }

    public static final void T0(TransferSelectListFragment transferSelectListFragment, Map result) {
        Intrinsics.h(result, "result");
        if (!com.transsion.baselib.helper.e.f42126a.c(transferSelectListFragment.requireContext())) {
            transferSelectListFragment.U0();
        } else {
            transferSelectListFragment.showLoadingView();
            transferSelectListFragment.A0().j(true);
        }
    }

    private final void U0() {
        com.transsnet.downloader.adapter.x0 x0Var = this.transferSelectAdapter;
        if (x0Var != null) {
            x0Var.Y0(y0());
        }
    }

    private final void V0(List list) {
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        bx.m0 mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        bx.m0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f16173c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f16173c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.TAG;
        int i10 = this.tabIndex;
        int size = list.size();
        com.transsnet.downloader.adapter.x0 x0Var = this.transferSelectAdapter;
        wf.a.C0922a.f(c0922a, str, "updateList tabIndex:" + i10 + ", size:" + size + ", curSize:" + ((x0Var == null || (data = x0Var.getData()) == null) ? null : Integer.valueOf(data.size())), false, 4, null);
        com.transsnet.downloader.adapter.x0 x0Var2 = this.transferSelectAdapter;
        if (x0Var2 != null) {
            x0Var2.n1(C0(list));
        }
    }

    private final String getPageName() {
        String lowerCase;
        int i10 = this.tabIndex;
        if (i10 == 0) {
            lowerCase = "mb";
        } else if (i10 == 1) {
            lowerCase = IntegrationConstants.NAVIGATION_BAR_ALL_ACTION;
        } else if (i10 != 2) {
            lowerCase = this.tabName.toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = "received";
        }
        return "transfer_tab_" + lowerCase;
    }

    private final void u0() {
        loadDefaultData();
    }

    private final DownloadViewModel v0() {
        return (DownloadViewModel) this.downloadViewModel.getValue();
    }

    private final View w0() {
        if (this.mEmptyView == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            StateView stateView = new StateView(contextRequireContext);
            String string = stateView.getContext().getString(R$string.download_no_historical_tips);
            Intrinsics.g(string, "getString(...)");
            stateView.showData(4, 2, false, "", string);
            String string2 = stateView.getContext().getString(R$string.download_empty_find_free_source);
            Intrinsics.g(string2, "getString(...)");
            stateView.setReTryTxt(string2);
            stateView.retry(new Function0() {
                @Override
                public final Object invoke() {
                    return TransferSelectListFragment.x0(this.f57106a);
                }
            });
            this.mEmptyView = stateView;
        }
        View view = this.mEmptyView;
        Intrinsics.e(view);
        return view;
    }

    public static final Unit x0(TransferSelectListFragment transferSelectListFragment) {
        Navigator.x(TheRouter.c("/home/movieFilter").F("tabId", 2), transferSelectListFragment.requireContext(), null, 2, null);
        return Unit.f64096a;
    }

    private final View y0() {
        View emptyView;
        if (this.mEmptyView == null) {
            if (com.transsnet.downloader.viewmodel.a0.f57862a.a()) {
                emptyView = super.getEmptyView(false);
            } else {
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                StateView stateView = new StateView(contextRequireContext);
                stateView.updateNoContentResId(R$mipmap.ic_no_permission);
                String string = Utils.a().getString(R$string.download_file_permission_tips);
                Intrinsics.g(string, "getString(...)");
                stateView.showData(4, 2, false, "", string);
                String string2 = Utils.a().getString(R$string.download_no_permission_btn);
                Intrinsics.g(string2, "getString(...)");
                stateView.setReTryTxt(string2);
                stateView.retry(new Function0() {
                    @Override
                    public final Object invoke() {
                        return TransferSelectListFragment.z0(this.f56944a);
                    }
                });
                emptyView = stateView;
            }
            this.mEmptyView = emptyView;
        }
        View view = this.mEmptyView;
        Intrinsics.e(view);
        return view;
    }

    public static final Unit z0(TransferSelectListFragment transferSelectListFragment) {
        FragmentActivity activity = transferSelectListFragment.getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return Unit.f64096a;
        }
        com.transsnet.downloader.viewmodel.a0 a0Var = com.transsnet.downloader.viewmodel.a0.f57862a;
        if (a0Var.p(activity)) {
            a0Var.x();
        } else {
            transferSelectListFragment.requestMultiplePermission.a(com.transsion.baselib.helper.e.f42126a.a());
        }
        return Unit.f64096a;
    }

    @Override
    public bx.m0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.m0 m0VarC = bx.m0.c(inflater);
        Intrinsics.g(m0VarC, "inflate(...)");
        return m0VarC;
    }

    @Override
    public String getEmptyDescText() {
        int i10 = this.tabIndex;
        if (i10 == 0) {
            String string = getString(R$string.newcomer_guide_download_tips);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        if (i10 == 1) {
            String string2 = getString(R$string.download_no_local_file_tips_2);
            Intrinsics.g(string2, "getString(...)");
            return string2;
        }
        if (i10 != 2) {
            String string3 = getString(R$string.download_no_local_file_tips_2);
            Intrinsics.g(string3, "getString(...)");
            return string3;
        }
        String string4 = getString(R$string.download_transfer_received_empty_tips);
        Intrinsics.g(string4, "getString(...)");
        return string4;
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
        SwipeRefreshLayout swipeRefreshLayout;
        RecyclerView recyclerView;
        int i10 = this.tabIndex;
        if (i10 != 0 && i10 != 2 && !com.transsnet.downloader.viewmodel.a0.f57862a.a()) {
            U0();
        }
        bx.m0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f16172b) != null) {
            recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
            com.transsnet.downloader.adapter.x0 x0Var = new com.transsnet.downloader.adapter.x0(new ArrayList());
            this.transferSelectAdapter = x0Var;
            x0Var.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    TransferSelectListFragment.N0(this.f57100a, baseQuickAdapter, view, i11);
                }
            });
            x0Var.l(R$id.v_more);
            x0Var.s1(new r6.b() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    TransferSelectListFragment.O0(this.f57115a, baseQuickAdapter, view, i11);
                }
            });
            recyclerView.setAdapter(x0Var);
        }
        bx.m0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (swipeRefreshLayout = mViewBinding2.f16173c) == null) {
            return;
        }
        swipeRefreshLayout.setProgressBackgroundColorSchemeColor(androidx.core.content.b.getColor(swipeRefreshLayout.getContext(), R$color.bg_01));
        swipeRefreshLayout.setColorSchemeColors(androidx.core.content.b.getColor(swipeRefreshLayout.getContext(), R$color.main_gradient_center), androidx.core.content.b.getColor(swipeRefreshLayout.getContext(), R$color.main_gradient_start));
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
            @Override
            public final void a() {
                TransferSelectListFragment.P0(this.f57124a);
            }
        });
    }

    @Override
    public void initViewModel() {
        int i10 = this.tabIndex;
        if (i10 == 0) {
            F0();
        } else if (i10 == 1) {
            I0();
        } else if (i10 != 2) {
            K0();
        } else {
            L0();
        }
        v0().e0().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferSelectListFragment.Q0(this.f57141a, (Boolean) obj);
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
    public void loadDefaultData() {
        super.loadDefaultData();
        int i10 = this.tabIndex;
        if (i10 == 0) {
            v0().M(true);
        } else if (i10 == 1) {
            A0().j(true);
        } else {
            if (i10 != 2) {
                return;
            }
            B0().h(true);
        }
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
            loadDefaultData();
        }
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void receiveArguments() {
        String string;
        super.receiveArguments();
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("extra_download_out_file_tab_name")) == null) {
            string = "";
        }
        this.tabName = string;
        Bundle arguments2 = getArguments();
        this.tabIndex = arguments2 != null ? arguments2.getInt("extra_page_index") : 0;
    }

    @Override
    public void retryLoadData() {
    }
}
