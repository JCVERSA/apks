package com.transsnet.downloader.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import bx.k1;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.push.PushConstants;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u000eJ)\u0010\u0016\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u0019¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010$\u001a\u00020!8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00103\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u00104¨\u00065"}, d2 = {"Lcom/transsnet/downloader/widget/TransferSelectSeriesListView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "i", "()V", "f", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/baselib/db/download/DownloadBean;", "data", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, RequestParameters.POSITION, "o", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "curSeriesCollection", "", "n", "(Lcom/transsion/baselib/db/download/DownloadBean;)Z", "setDataList", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setVisibilityWitchAnima", "(Z)V", "", "a", "Ljava/lang/String;", "TAG", "Lbx/k1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lbx/k1;", "viewBinding", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "c", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "downloadViewModel", "Lcom/transsnet/downloader/adapter/x0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/downloader/adapter/x0;", "transferSelectAdapter", "e", "I", "transferTabIndex", "Lcom/transsion/baselib/db/download/DownloadBean;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TransferSelectSeriesListView extends FrameLayout {

    private final String TAG;

    private final k1 viewBinding;

    private final DownloadViewModel downloadViewModel;

    private com.transsnet.downloader.adapter.x0 transferSelectAdapter;

    private int transferTabIndex;

    private DownloadBean curSeriesCollection;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f57958a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57958a = function;
        }

        @Override
        public final Function a() {
            return this.f57958a;
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
            this.f57958a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransferSelectSeriesListView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    private final void f() {
        this.viewBinding.f16142c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TransferSelectSeriesListView.g(this.f58001a, view);
            }
        });
        this.viewBinding.f16145f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TransferSelectSeriesListView.h(this.f58003a, view);
            }
        });
    }

    public static final void g(TransferSelectSeriesListView transferSelectSeriesListView, View view) {
        uf.c.g(transferSelectSeriesListView);
    }

    public static final void h(TransferSelectSeriesListView transferSelectSeriesListView, View view) {
        uf.c.g(transferSelectSeriesListView);
    }

    private final void i() {
        RecyclerView recyclerView = this.viewBinding.f16143d;
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        com.transsnet.downloader.adapter.x0 x0Var = new com.transsnet.downloader.adapter.x0(new ArrayList());
        this.transferSelectAdapter = x0Var;
        x0Var.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                TransferSelectSeriesListView.j(this.f58005a, baseQuickAdapter, view, i10);
            }
        });
        recyclerView.setAdapter(x0Var);
    }

    public static final void j(TransferSelectSeriesListView transferSelectSeriesListView, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        transferSelectSeriesListView.o(item instanceof DownloadBean ? (DownloadBean) item : null, view, i10);
    }

    private final void k() {
        androidx.p009lifecycle.b0 b0VarB0 = this.downloadViewModel.b0();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        b0VarB0.j((FragmentActivity) context, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferSelectSeriesListView.l(this.f58007a, (DownloadBean) obj);
            }
        }));
        androidx.p009lifecycle.b0 b0VarK0 = this.downloadViewModel.k0();
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        b0VarK0.j((FragmentActivity) context2, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferSelectSeriesListView.m(this.f58009a, (Integer) obj);
            }
        }));
    }

    public static final Unit l(TransferSelectSeriesListView transferSelectSeriesListView, DownloadBean downloadBean) {
        transferSelectSeriesListView.curSeriesCollection = downloadBean;
        Intrinsics.e(downloadBean);
        transferSelectSeriesListView.setDataList(downloadBean);
        return Unit.f64096a;
    }

    public static final Unit m(TransferSelectSeriesListView transferSelectSeriesListView, Integer num) {
        Intrinsics.e(num);
        transferSelectSeriesListView.transferTabIndex = num.intValue();
        return Unit.f64096a;
    }

    private final boolean n(DownloadBean curSeriesCollection) {
        List<DownloadBean> seriesList;
        boolean z10 = true;
        if (curSeriesCollection != null && (seriesList = curSeriesCollection.getSeriesList()) != null) {
            Iterator<T> it = seriesList.iterator();
            while (it.hasNext()) {
                if (!((DownloadBean) it.next()).getIsCheck()) {
                    z10 = false;
                }
            }
        }
        return z10;
    }

    private final void o(DownloadBean data, View view, int position) {
        List arrayList;
        List<DownloadBean> seriesList;
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        this.downloadViewModel.a0().q(TransferBottomToolsView.STATUS_SEND);
        androidx.p009lifecycle.b0 b0VarF0 = this.downloadViewModel.f0(this.transferTabIndex);
        if (b0VarF0 == null || (arrayList = (List) b0VarF0.f()) == null) {
            arrayList = new ArrayList();
        }
        Object obj = null;
        boolean z10 = true;
        if (data == null || !data.getIsCheck()) {
            DownloadBean downloadBean = this.curSeriesCollection;
            if (downloadBean != null) {
                downloadBean.setCheck(true);
            }
            if (data != null) {
                data.setCheck(true);
            }
            if (data != null) {
                for (Object obj2 : arrayList) {
                    String subjectId = ((DownloadBean) obj2).getSubjectId();
                    DownloadBean downloadBean2 = this.curSeriesCollection;
                    if (Intrinsics.c(subjectId, downloadBean2 != null ? downloadBean2.getSubjectId() : null)) {
                        obj = obj2;
                        break;
                    }
                }
                if (obj == null) {
                    wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onItemCheckClick 当前不在livedata中", false, 4, null);
                    DownloadBean downloadBean3 = this.curSeriesCollection;
                    if (downloadBean3 != null) {
                        arrayList.add(downloadBean3);
                    }
                }
                DownloadBean downloadBean4 = this.curSeriesCollection;
                if (downloadBean4 != null) {
                    downloadBean4.setSeriesAllCheck(n(downloadBean4));
                }
                androidx.p009lifecycle.b0 b0VarF1 = this.downloadViewModel.f0(this.transferTabIndex);
                if (b0VarF1 != null) {
                    b0VarF1.q(arrayList);
                }
            }
        } else {
            data.setCheck(false);
            DownloadBean downloadBean5 = this.curSeriesCollection;
            if (downloadBean5 != null && (seriesList = downloadBean5.getSeriesList()) != null) {
                for (Object obj3 : seriesList) {
                    if (((DownloadBean) obj3).getIsCheck()) {
                        obj = obj3;
                        break;
                    }
                }
                if (((DownloadBean) obj) != null) {
                    z10 = false;
                }
            }
            DownloadBean downloadBean6 = this.curSeriesCollection;
            if (downloadBean6 != null) {
                downloadBean6.setSeriesAllCheck(false);
            }
            if (z10) {
                DownloadBean downloadBean7 = this.curSeriesCollection;
                if (downloadBean7 != null) {
                    downloadBean7.setCheck(false);
                }
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onItemCheckClick 所有都被取消，移除整个数据", false, 4, null);
                TypeIntrinsics.a(arrayList).remove(this.curSeriesCollection);
                androidx.p009lifecycle.b0 b0VarF2 = this.downloadViewModel.f0(this.transferTabIndex);
                if (b0VarF2 != null) {
                    b0VarF2.q(arrayList);
                }
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onItemCheckClick selectedList size:" + arrayList.size(), false, 4, null);
        this.downloadViewModel.i0().q(this.curSeriesCollection);
        this.downloadViewModel.h0().q(Integer.valueOf(DownloadUtil.f57680a.w(arrayList)));
        com.transsnet.downloader.adapter.x0 x0Var = this.transferSelectAdapter;
        if (x0Var != null) {
            x0Var.notifyItemChanged(position, data);
        }
    }

    private final void setDataList(DownloadBean data) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "setDataList size:" + data.getSeriesList().size(), false, 4, null);
        this.viewBinding.f16144e.setText(data.getTitleName());
        com.transsnet.downloader.adapter.x0 x0Var = this.transferSelectAdapter;
        if (x0Var != null) {
            x0Var.n1(data.getSeriesList());
        }
    }

    public final void setVisibilityWitchAnima(boolean show) {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransferSelectSeriesListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferSelectSeriesListView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "TransferSelect-series";
        View.inflate(getContext(), R$layout.view_transfer_series_list, this);
        k1 k1VarA = k1.a(this);
        Intrinsics.g(k1VarA, "bind(...)");
        this.viewBinding = k1VarA;
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        this.downloadViewModel = (DownloadViewModel) new androidx.p009lifecycle.v0((FragmentActivity) context2).a(DownloadViewModel.class);
        setBackgroundResource(R$color.black_50);
        i();
        f();
        k();
    }
}
