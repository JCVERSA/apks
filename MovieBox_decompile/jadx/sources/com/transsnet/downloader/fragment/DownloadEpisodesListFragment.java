package com.transsnet.downloader.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u0000 !2\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0014\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadEpisodesListFragment;", "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;", "<init>", "()V", "", "k1", "n1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewModel", "Lcom/transsnet/downloader/adapter/k;", "adapter", "o0", "(Lcom/transsnet/downloader/adapter/k;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "A0", "(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V", "", "getPageName", "()Ljava/lang/String;", "e1", "()I", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "subjectId", "l", "I", "parentPosition", "m", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadEpisodesListFragment extends DownloadedBaseFragment {

    public static final Companion INSTANCE = new Companion(null);

    private String subjectId;

    private int parentPosition = -1;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadEpisodesListFragment a(String str, int i10) {
            DownloadEpisodesListFragment downloadEpisodesListFragment = new DownloadEpisodesListFragment();
            downloadEpisodesListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_subject_id", str), TuplesKt.a("extra_parent_position", Integer.valueOf(i10))));
            return downloadEpisodesListFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56597a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56597a = function;
        }

        @Override
        public final Function a() {
            return this.f56597a;
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
            this.f56597a.invoke(obj);
        }
    }

    private final void k1() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadEpisodesListFragment.l1(this.f57142a, (yw.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = yw.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit l1(DownloadEpisodesListFragment downloadEpisodesListFragment, yw.a it) {
        Intrinsics.h(it, "it");
        try {
            downloadEpisodesListFragment.s0().U(downloadEpisodesListFragment.subjectId);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f64096a;
    }

    public static final Unit m1(DownloadEpisodesListFragment downloadEpisodesListFragment, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return Unit.f64096a;
        }
        downloadEpisodesListFragment.D0(list);
        return Unit.f64096a;
    }

    private final void n1() {
        List<Object> data;
        com.transsnet.downloader.adapter.k kVarR0 = getMAdapter();
        DownloadBean downloadBean = null;
        Object obj = null;
        downloadBean = null;
        List<Object> data2 = kVarR0 != null ? kVarR0.getData() : null;
        if (data2 == null || data2.isEmpty()) {
            return;
        }
        com.transsnet.downloader.adapter.k kVarR1 = getMAdapter();
        if (kVarR1 != null && (data = kVarR1.getData()) != null) {
            for (Object obj2 : data) {
                if (((DownloadBean) obj2).getStatus() <= 7) {
                    obj = obj2;
                    break;
                }
            }
            downloadBean = (DownloadBean) obj;
        }
        if (downloadBean == null) {
            fh.b.f60176a.e(Utils.a().getString(R$string.no_error_content));
            return;
        }
        Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -1, 67108863, null);
        subject.setSubjectId(downloadBean.getSubjectId());
        subject.setOps(downloadBean.getOps());
        subject.setTitle(downloadBean.getSubjectName());
        subject.setSubjectType(Integer.valueOf(DownloadBean.INSTANCE.a(Integer.valueOf(downloadBean.getType()))));
        if (downloadBean.isShotTV()) {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            downloadManagerApiA.d0((FragmentActivity) context, DownloadPageType.SERIES.getPageName(), (384 & 4) != 0 ? "" : "", subject.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : subject, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
            return;
        }
        DownloadManagerApi downloadManagerApiA2 = DownloadManagerApi.f56187j.a();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        String pageName = DownloadPageType.SERIES.getPageName();
        String groupId = downloadBean.getGroupId();
        String ops = downloadBean.getOps();
        String sourceUrl = downloadBean.getSourceUrl();
        if (sourceUrl == null) {
            sourceUrl = "";
        }
        downloadManagerApiA2.K(fragmentActivityRequireActivity, subject, pageName, (960 & 8) != 0 ? "" : groupId, ops, sourceUrl, (960 & 64) != 0 ? "" : null, (960 & 128) != 0 ? null : null, (960 & 256) != 0 ? null : null, (960 & 512) != 0 ? false : false);
    }

    @Override
    public void A0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        super.A0(adapter, view, position);
        if (view.getId() == R$id.v_all_ep_btn) {
            n1();
        }
    }

    @Override
    public int getParentPosition() {
        return this.parentPosition;
    }

    @Override
    public String getPageName() {
        return DownloadPageType.SERIES.getPageName();
    }

    @Override
    public void initViewModel() {
        super.initViewModel();
        s0().V().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadEpisodesListFragment.m1(this.f57133a, (List) obj);
            }
        }));
    }

    @Override
    public void o0(com.transsnet.downloader.adapter.k adapter) {
        Intrinsics.h(adapter, "adapter");
        super.o0(adapter);
        adapter.l(R$id.v_all_ep_btn);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.subjectId = arguments != null ? arguments.getString("extra_subject_id") : null;
        Bundle arguments2 = getArguments();
        this.parentPosition = arguments2 != null ? arguments2.getInt("extra_parent_position") : -1;
        s0().U(this.subjectId);
        k1();
    }
}
