package com.transsnet.downloader.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010&\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010!R\u0018\u0010)\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006,"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorPathSettingFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lbx/d0;", "<init>", "()V", "", "P0", "Lyw/b;", "info", "", RequestParameters.POSITION, "M0", "(Lyw/b;I)V", "Landroid/view/LayoutInflater;", "inflater", "L0", "(Landroid/view/LayoutInflater;)Lbx/d0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lcom/transsnet/downloader/adapter/n;", "l", "Lcom/transsnet/downloader/adapter/n;", "listAdapter", "m", "I", "pageType", "n", "selectedPosition", "o", "itemClickedPosition", TtmlNode.TAG_P, "Lyw/b;", "selectedInfo", CampaignEx.JSON_KEY_AD_Q, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadReDetectorPathSettingFragment extends DownloadReDetectorBaseFragment<bx.d0> {

    public static final Companion INSTANCE = new Companion(null);

    private com.transsnet.downloader.adapter.n listAdapter;

    private int pageType = 1;

    private int selectedPosition = -1;

    private int itemClickedPosition = -1;

    private yw.b selectedInfo;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorPathSettingFragment a(int i10) {
            DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment = new DownloadReDetectorPathSettingFragment();
            downloadReDetectorPathSettingFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_download_page_type", Integer.valueOf(i10))));
            return downloadReDetectorPathSettingFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56762a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56762a = function;
        }

        @Override
        public final Function a() {
            return this.f56762a;
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
            this.f56762a.invoke(obj);
        }
    }

    private final void M0(yw.b info, int position) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, StringsKt.n("\n            path， handleItemClick, position = " + position + ", selectedPosition = " + this.itemClickedPosition + " \n                pathName =  " + (info != null ? info.d() : null) + " ,downloadPath =  " + (info != null ? info.b() : null) + " ,downloadShowPath =  " + (info != null ? info.c() : null) + "\n        "), false, 4, null);
        int i10 = this.itemClickedPosition;
        if (i10 == position) {
            return;
        }
        if (i10 >= 0) {
            com.transsnet.downloader.adapter.n nVar = this.listAdapter;
            yw.b bVar = nVar != null ? (yw.b) nVar.getItem(i10) : null;
            if (bVar != null) {
                bVar.g(false);
            }
            com.transsnet.downloader.adapter.n nVar2 = this.listAdapter;
            if (nVar2 != null) {
                nVar2.notifyItemChanged(this.itemClickedPosition, Boolean.FALSE);
            }
        }
        this.itemClickedPosition = position;
        if (info != null) {
            info.g(true);
        }
        com.transsnet.downloader.adapter.n nVar3 = this.listAdapter;
        if (nVar3 != null) {
            nVar3.notifyItemChanged(position, Boolean.TRUE);
        }
        this.selectedInfo = info;
    }

    public static final void N0(DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment, View view) {
        androidx.p009lifecycle.b0 b0VarP;
        List<Object> data;
        com.transsnet.downloader.adapter.n nVar = downloadReDetectorPathSettingFragment.listAdapter;
        int size = (nVar == null || (data = nVar.getData()) == null) ? 0 : data.size();
        int i10 = downloadReDetectorPathSettingFragment.selectedPosition;
        if (size > i10) {
            com.transsnet.downloader.adapter.n nVar2 = downloadReDetectorPathSettingFragment.listAdapter;
            downloadReDetectorPathSettingFragment.M0(nVar2 != null ? (yw.b) nVar2.getItem(i10) : null, downloadReDetectorPathSettingFragment.selectedPosition);
        }
        if (downloadReDetectorPathSettingFragment.pageType == 4) {
            downloadReDetectorPathSettingFragment.m0();
            return;
        }
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorPathSettingFragment.getViewModel();
        if (viewModel == null || (b0VarP = viewModel.p()) == null) {
            return;
        }
        b0VarP.q(Integer.valueOf(downloadReDetectorPathSettingFragment.pageType));
    }

    public static final void O0(DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment, View view) {
        androidx.p009lifecycle.b0 b0VarP;
        androidx.p009lifecycle.b0 b0VarB;
        wf.a.C0922a.f(wf.a.f74274a, "DownloadReDetector", "Confirm click ----selectedInfo = " + downloadReDetectorPathSettingFragment.selectedInfo, false, 4, null);
        yw.b bVar = downloadReDetectorPathSettingFragment.selectedInfo;
        if (bVar != null) {
            com.transsion.baselib.report.launch.b bVar2 = com.transsion.baselib.report.launch.b.f42221a;
            bVar2.b().putString("download_root_path", bVar.b());
            bVar2.b().putString("download_root_path_name", bVar.d());
            bVar2.b().putInt("download_root_path_type", bVar.e());
            DownloadEsHelper.a aVar = DownloadEsHelper.f57201m;
            aVar.a().X(bVar.b());
            aVar.a().Y(bVar.d());
            aVar.a().Z(bVar.e());
        }
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorPathSettingFragment.getViewModel();
        if (viewModel != null && (b0VarB = viewModel.B()) != null) {
            b0VarB.q(downloadReDetectorPathSettingFragment.selectedInfo);
        }
        downloadReDetectorPathSettingFragment.selectedPosition = downloadReDetectorPathSettingFragment.itemClickedPosition;
        if (downloadReDetectorPathSettingFragment.pageType == 4) {
            downloadReDetectorPathSettingFragment.m0();
            return;
        }
        DownloadResourcesDetectorViewModel viewModel2 = downloadReDetectorPathSettingFragment.getViewModel();
        if (viewModel2 == null || (b0VarP = viewModel2.p()) == null) {
            return;
        }
        b0VarP.q(Integer.valueOf(downloadReDetectorPathSettingFragment.pageType));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void P0() {
        bx.z0 z0Var;
        RecyclerView recyclerView;
        com.transsnet.downloader.adapter.n nVar = new com.transsnet.downloader.adapter.n(false, new ArrayList());
        nVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                DownloadReDetectorPathSettingFragment.Q0(this.f57027a, baseQuickAdapter, view, i10);
            }
        });
        this.listAdapter = nVar;
        bx.d0 d0Var = (bx.d0) getMViewBinding();
        if (d0Var == null || (z0Var = d0Var.f15992b) == null || (recyclerView = z0Var.f16333g) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = q0();
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.listAdapter);
    }

    public static final void Q0(DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        yw.b bVar = item instanceof yw.b ? (yw.b) item : null;
        if (bVar == null || bVar.getItemType() != 4) {
            downloadReDetectorPathSettingFragment.M0(bVar, i10);
        }
    }

    public static final Unit R0(DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment, List list) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = downloadReDetectorPathSettingFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.r(c0922a, tag, new String[]{"path setting size = " + list.size() + " "}, false, 4, null);
        Intrinsics.e(list);
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            yw.b bVar = (yw.b) obj;
            if (bVar.f()) {
                downloadReDetectorPathSettingFragment.selectedPosition = i10;
                downloadReDetectorPathSettingFragment.itemClickedPosition = i10;
                downloadReDetectorPathSettingFragment.selectedInfo = bVar;
            }
            i10 = i11;
        }
        com.transsnet.downloader.adapter.n nVar = downloadReDetectorPathSettingFragment.listAdapter;
        if (nVar != null) {
            nVar.n1(list);
        }
        return Unit.f64096a;
    }

    @Override
    public bx.d0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.d0 d0VarC = bx.d0.c(inflater);
        Intrinsics.g(d0VarC, "inflate(...)");
        return d0VarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initListener() {
        bx.z0 z0Var;
        AppCompatTextView appCompatTextView;
        bx.z0 z0Var2;
        ImageView imageView;
        bx.d0 d0Var = (bx.d0) getMViewBinding();
        if (d0Var != null && (z0Var2 = d0Var.f15992b) != null && (imageView = z0Var2.f16329c) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorPathSettingFragment.N0(this.f57039a, view);
                }
            });
        }
        bx.d0 d0Var2 = (bx.d0) getMViewBinding();
        if (d0Var2 == null || (z0Var = d0Var2.f15992b) == null || (appCompatTextView = z0Var.f16334h) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadReDetectorPathSettingFragment.O0(this.f57051a, view);
            }
        });
    }

    @Override
    public void initViewData() {
        Bundle arguments = getArguments();
        this.pageType = arguments != null ? arguments.getInt("extra_download_page_type") : 1;
        P0();
    }

    @Override
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarR;
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            wf.a.C0922a.r(c0922a, tag, new String[]{"initViewModel "}, false, 4, null);
            DownloadResourcesDetectorViewModel viewModel = getViewModel();
            if (viewModel != null && (b0VarR = viewModel.r()) != null) {
                b0VarR.j(parentFragment, new b(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return DownloadReDetectorPathSettingFragment.R0(this.f57061a, (List) obj);
                    }
                }));
            }
        }
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null) {
            viewModel2.v();
        }
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
    public void retryLoadData() {
    }
}
