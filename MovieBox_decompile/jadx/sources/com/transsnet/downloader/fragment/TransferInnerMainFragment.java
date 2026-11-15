package com.transsnet.downloader.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import com.transsnet.downloader.widget.TransferSelectSeriesListView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u008d\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b*\u0001c\u0018\u0000 m2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001nB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0006J\u000f\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u0006J\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u001f\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!J!\u0010\"\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b\"\u0010!J\u000f\u0010#\u001a\u00020\u0007H\u0016¢\u0006\u0004\b#\u0010\u0006J\u0017\u0010&\u001a\u00020\u00072\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0007H\u0016¢\u0006\u0004\b(\u0010\u0006J\u000f\u0010)\u001a\u00020\u0007H\u0016¢\u0006\u0004\b)\u0010\u0006J\u0017\u0010,\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0007H\u0016¢\u0006\u0004\b.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0007H\u0016¢\u0006\u0004\b/\u0010\u0006J\u0017\u00102\u001a\u00020\u00072\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u001f\u00104\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0016¢\u0006\u0004\b4\u0010\u0016J7\u0010<\u001a\u00020\u00072\u0006\u00105\u001a\u0002002\u0006\u00106\u001a\u0002002\u0006\u00108\u001a\u0002072\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u000209H\u0016¢\u0006\u0004\b<\u0010=J/\u0010>\u001a\u00020\u00072\u0006\u00105\u001a\u0002002\u0006\u00106\u001a\u0002002\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u000209H\u0016¢\u0006\u0004\b>\u0010?J\u0017\u0010@\u001a\u00020\u00072\u0006\u00105\u001a\u000200H\u0016¢\u0006\u0004\b@\u00103J%\u0010D\u001a\u00020\u00072\u0006\u00105\u001a\u0002002\f\u0010C\u001a\b\u0012\u0004\u0012\u00020B0AH\u0016¢\u0006\u0004\bD\u0010EJA\u0010H\u001a\u00020\u00072\u0006\u00106\u001a\u0002002\u0006\u00108\u001a\u0002072\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u0002092\u0006\u0010F\u001a\u0002092\b\u0010G\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\bH\u0010IJ\u0017\u0010J\u001a\u00020\u00072\u0006\u00106\u001a\u000200H\u0016¢\u0006\u0004\bJ\u00103J'\u0010K\u001a\u00020\u00072\u0006\u00106\u001a\u0002002\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u000209H\u0016¢\u0006\u0004\bK\u0010LJ\u0017\u0010N\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0012H\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0007H\u0016¢\u0006\u0004\bP\u0010\u0006J\u000f\u0010Q\u001a\u00020\u0007H\u0016¢\u0006\u0004\bQ\u0010\u0006J\u0017\u0010R\u001a\u00020\u00072\u0006\u00105\u001a\u000200H\u0016¢\u0006\u0004\bR\u00103J\u0017\u0010S\u001a\u00020\u00072\u0006\u00105\u001a\u000200H\u0016¢\u0006\u0004\bS\u00103R\u0018\u0010U\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010TR\u0014\u0010X\u001a\u0002008\u0002X\u0082D¢\u0006\u0006\n\u0004\bV\u0010WR\u0016\u0010[\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0016\u0010\\\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010WR\u001a\u0010^\u001a\b\u0012\u0004\u0012\u0002000A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010]R\u0018\u0010a\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010`R\u0016\u0010b\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010ZR\u0014\u0010f\u001a\u00020c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010l\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010W¨\u0006o"}, d2 = {"Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;", "Lcom/transsnet/downloader/fragment/TransferMainFragment;", "Lcom/transsion/transfer/impl/i;", "Lcom/transsion/transfer/impl/f;", "Lyt/a;", "<init>", "()V", "", "initViewModel", "b1", "d1", "X0", "V0", "i1", "W0", "f1", "e1", "a1", "", "transmittingCount", "failCount", "g1", "(II)V", "Landroid/view/LayoutInflater;", "inflater", "Lbx/l0;", "E0", "(Landroid/view/LayoutInflater;)Lbx/l0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "", "hidden", "onHiddenChanged", "(Z)V", "onStop", "onResume", "Lyt/b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "h", "(Lyt/b;)V", "M", "c", "", "name", "D", "(Ljava/lang/String;)V", "O", "clientIp", "remoteFilePath", "Lcom/transsion/transfer/impl/TaskState;", "state", "", "downloadedLength", "totalLength", "L", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V", "j", "(Ljava/lang/String;Ljava/lang/String;JJ)V", CampaignEx.JSON_KEY_AD_R, "", "Lcom/transsion/transfer/impl/entity/FileData;", "files", TtmlNode.TAG_P, "(Ljava/lang/String;Ljava/util/List;)V", "timeCost", "error", "J", "(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V", CampaignEx.JSON_KEY_AD_Q, "C", "(Ljava/lang/String;JJ)V", "cmdNo", "l", "(I)V", "N", "onDestroy", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "o", "Lyt/b;", "behaviorListener", "m", "Ljava/lang/String;", "logMsgTag", "n", "Z", "isDeviceConnect", "deviceName", "Ljava/util/List;", "clientNames", "Lcom/transsion/transfer/impl/h;", "Lcom/transsion/transfer/impl/h;", "transferServer", "isServerConnected", "com/transsnet/downloader/fragment/TransferInnerMainFragment$serverConnectListener$1", "s", "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$serverConnectListener$1;", "serverConnectListener", "Lcom/transsion/transfer/impl/e;", "t", "Lcom/transsion/transfer/impl/e;", "transferClient", TmcStartParams.KEY_URL_SHORT, "curServerInfo", "v", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TransferInnerMainFragment extends TransferMainFragment implements com.transsion.transfer.impl.i, com.transsion.transfer.impl.f, yt.a {

    public static final Companion INSTANCE = new Companion(null);

    private yt.b behaviorListener;

    private boolean isDeviceConnect;

    private com.transsion.transfer.impl.h transferServer;

    private boolean isServerConnected;

    private com.transsion.transfer.impl.e transferClient;

    private final String logMsgTag = "内部";

    private String deviceName = "";

    private final List clientNames = new ArrayList();

    private final TransferInnerMainFragment$serverConnectListener$1 serverConnectListener = new Function4() {
        public void a(String clientIp, String transferId, boolean z10, String str) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(transferId, "transferId");
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$serverConnectListener$1$invoke$1(this.f56885a, z10, null), 3, null);
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
            a((String) obj, (String) obj2, ((Boolean) obj3).booleanValue(), (String) obj4);
            return Unit.f64096a;
        }
    };

    private String curServerInfo = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TransferInnerMainFragment a() {
            TransferInnerMainFragment transferInnerMainFragment = new TransferInnerMainFragment();
            transferInnerMainFragment.setArguments(androidx.core.os.d.a());
            return transferInnerMainFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56884a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56884a = function;
        }

        @Override
        public final Function a() {
            return this.f56884a;
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
            this.f56884a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void V0() {
        TransferBottomToolsView transferBottomToolsView;
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f16162d) == null) {
            return;
        }
        transferBottomToolsView.clearSelectStatus();
    }

    private final void W0() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, TransferBottomToolsView.TAG, this.logMsgTag + " TransferMainFragment, 已连接，初始化客户端", false, 4, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.transfer.impl.e eVarI = TransferClient.f53593t.i();
            this.transferClient = eVarI;
            if (eVarI.h()) {
                wf.a.C0922a.f(c0922a, TransferBottomToolsView.TAG, this.logMsgTag + "  TransferMainFragment, 初始化客户端，hasConnected true", false, 4, null);
                eVarI.k(this);
                e1();
                f1();
            } else {
                a1();
            }
            Result.m453constructorimpl(eVarI);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void X0() {
        if (getContext() == null) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.v(c0922a, TransferBottomToolsView.TAG, this.logMsgTag + " initTransferServer", false, 4, null);
        zt.h.a aVar = zt.h.f76907s;
        Context context = getContext();
        Intrinsics.e(context);
        com.transsion.transfer.impl.h hVarB = aVar.b(context);
        this.transferServer = hVarB;
        hVarB.a(this);
        hVarB.b(this.serverConnectListener);
        boolean zIsEmpty = hVarB.c().isEmpty();
        boolean z10 = !zIsEmpty;
        wf.a.C0922a.f(c0922a, TransferBottomToolsView.TAG, this.logMsgTag + " --initTransferServer， isConnect：" + z10, false, 4, null);
        this.isServerConnected = z10;
        if (zIsEmpty) {
            d1();
        } else {
            b1();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit Y0(TransferInnerMainFragment transferInnerMainFragment, String str) {
        TransferBottomToolsView transferBottomToolsView;
        bx.l0 l0Var = (bx.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var != null && (transferBottomToolsView = l0Var.f16162d) != null) {
            Intrinsics.e(str);
            transferBottomToolsView.changeStatus(str);
        }
        if (Intrinsics.c(str, TransferBottomToolsView.STATUS_DEFAULT)) {
            transferInnerMainFragment.j0().h0().q(0);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit Z0(TransferInnerMainFragment transferInnerMainFragment, Boolean bool) {
        TransferSelectSeriesListView transferSelectSeriesListView;
        bx.l0 l0Var = (bx.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var != null && (transferSelectSeriesListView = l0Var.f16163e) != null) {
            Intrinsics.e(bool);
            transferSelectSeriesListView.setVisibility(bool.booleanValue() ? 0 : 8);
        }
        return Unit.f64096a;
    }

    private final void a1() {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$onClientDisconnect$1(this, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b1() {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        this.clientNames.clear();
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var != null && (transferBottomToolsView3 = l0Var.f16162d) != null) {
            transferBottomToolsView3.showConnectUI(true);
        }
        bx.l0 l0Var2 = (bx.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView2 = l0Var2.f16162d) != null) {
            transferBottomToolsView2.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_SEND);
        }
        bx.l0 l0Var3 = (bx.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView = l0Var3.f16162d) != null) {
            transferBottomToolsView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    TransferInnerMainFragment.c1(this.f56943a);
                }
            }, 1000L);
        }
        wf.a.C0922a.v(wf.a.f74274a, TransferBottomToolsView.TAG, this.logMsgTag + " TransferConnect ,连接成功", false, 4, null);
        V0();
    }

    public static final void c1(TransferInnerMainFragment transferInnerMainFragment) {
        transferInnerMainFragment.i1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d1() {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var != null && (transferBottomToolsView4 = l0Var.f16162d) != null) {
            transferBottomToolsView4.showConnectUI(true);
        }
        bx.l0 l0Var2 = (bx.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView3 = l0Var2.f16162d) != null) {
            transferBottomToolsView3.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_CLOSE);
        }
        bx.l0 l0Var3 = (bx.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView2 = l0Var3.f16162d) != null) {
            String str = (String) CollectionsKt.k0(this.clientNames);
            if (str == null) {
                str = "";
            }
            transferBottomToolsView2.showConnectContent(false, str);
        }
        bx.l0 l0Var4 = (bx.l0) getMViewBinding();
        if (l0Var4 == null || (transferBottomToolsView = l0Var4.f16162d) == null) {
            return;
        }
        TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView, TransferBottomToolsView.SEND_STATUS_NONE, 0, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e1() {
        String strJ;
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        com.transsion.transfer.impl.e eVar = this.transferClient;
        if (eVar == null || (strJ = eVar.j()) == null) {
            strJ = "";
        }
        wf.a.C0922a.f(wf.a.f74274a, TransferBottomToolsView.TAG, this.logMsgTag + "  TransferMainFragment, 客户端，updateTransferConnectStatus，serverInfo:" + strJ, false, 4, null);
        if (strJ.length() > 0) {
            this.curServerInfo = strJ;
            bx.l0 l0Var = (bx.l0) getMViewBinding();
            if (l0Var != null && (transferBottomToolsView4 = l0Var.f16162d) != null) {
                transferBottomToolsView4.changeStatus(TransferBottomToolsView.STATUS_SEND);
            }
            bx.l0 l0Var2 = (bx.l0) getMViewBinding();
            if (l0Var2 != null && (transferBottomToolsView3 = l0Var2.f16162d) != null) {
                transferBottomToolsView3.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_SEND);
            }
            bx.l0 l0Var3 = (bx.l0) getMViewBinding();
            if (l0Var3 != null && (transferBottomToolsView2 = l0Var3.f16162d) != null) {
                transferBottomToolsView2.showConnectUI(true);
            }
            bx.l0 l0Var4 = (bx.l0) getMViewBinding();
            if (l0Var4 == null || (transferBottomToolsView = l0Var4.f16162d) == null) {
                return;
            }
            transferBottomToolsView.showConnectContent(true, strJ);
        }
    }

    public final void f1() {
        eu.a aVar = eu.a.f59815a;
        int size = aVar.g().size();
        int size2 = aVar.f().size();
        int size3 = aVar.e().size();
        wf.a.C0922a.v(wf.a.f74274a, TransferBottomToolsView.TAG, this.logMsgTag + "  onTaskStateChange 客户端 waitingCount:" + size + ",transferCount:" + size2, false, 4, null);
        g1(size + size2, size3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g1(final int transmittingCount, final int failCount) {
        TransferBottomToolsView transferBottomToolsView;
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f16162d) == null) {
            return;
        }
        transferBottomToolsView.post(new Runnable() {
            @Override
            public final void run() {
                TransferInnerMainFragment.h1(this.f56953a, transmittingCount, failCount);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void h1(TransferInnerMainFragment transferInnerMainFragment, int i10, int i11) {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        wf.a.C0922a.v(wf.a.f74274a, TransferBottomToolsView.TAG, transferInnerMainFragment.logMsgTag + " onTaskStateChange, transmittingCount：" + i10 + ",failCount:" + i11 + " ", false, 4, null);
        if (i10 > 0) {
            if (i11 == 0) {
                bx.l0 l0Var = (bx.l0) transferInnerMainFragment.getMViewBinding();
                if (l0Var == null || (transferBottomToolsView4 = l0Var.f16162d) == null) {
                    return;
                }
                transferBottomToolsView4.setSendIconStatus(TransferBottomToolsView.SEND_STATUS_SENDING, i10);
                return;
            }
            bx.l0 l0Var2 = (bx.l0) transferInnerMainFragment.getMViewBinding();
            if (l0Var2 == null || (transferBottomToolsView3 = l0Var2.f16162d) == null) {
                return;
            }
            transferBottomToolsView3.setSendIconStatus(TransferBottomToolsView.SEND_STATUS_SENDING_FAIL, i10);
            return;
        }
        if (i11 > 0) {
            bx.l0 l0Var3 = (bx.l0) transferInnerMainFragment.getMViewBinding();
            if (l0Var3 == null || (transferBottomToolsView2 = l0Var3.f16162d) == null) {
                return;
            }
            TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView2, TransferBottomToolsView.SEND_STATUS_NONE_FAIL, 0, 2, null);
            return;
        }
        bx.l0 l0Var4 = (bx.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var4 == null || (transferBottomToolsView = l0Var4.f16162d) == null) {
            return;
        }
        TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView, TransferBottomToolsView.SEND_STATUS_NONE, 0, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i1() {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        if (this.clientNames.isEmpty() && this.isServerConnected) {
            com.transsion.transfer.impl.h hVar = this.transferServer;
            if (hVar != null) {
                this.clientNames.addAll(hVar.i());
            }
            wf.a.C0922a.f(wf.a.f74274a, TransferBottomToolsView.TAG, this.logMsgTag + " updateTransferServerNameInfo ," + this.clientNames, false, 4, null);
            bx.l0 l0Var = (bx.l0) getMViewBinding();
            if (l0Var != null && (transferBottomToolsView2 = l0Var.f16162d) != null) {
                transferBottomToolsView2.showConnectUI(true);
            }
            bx.l0 l0Var2 = (bx.l0) getMViewBinding();
            if (l0Var2 == null || (transferBottomToolsView = l0Var2.f16162d) == null) {
                return;
            }
            String str = (String) CollectionsKt.k0(this.clientNames);
            if (str == null) {
                str = "";
            }
            transferBottomToolsView.showConnectContent(true, str);
        }
    }

    private final void initViewModel() {
        j0().a0().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferInnerMainFragment.Y0(this.f56916a, (String) obj);
            }
        }));
        k0().N();
        j0().c0().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferInnerMainFragment.Z0(this.f56930a, (Boolean) obj);
            }
        }));
    }

    @Override
    public void C(String remoteFilePath, long downloadedLength, long totalLength) {
        Intrinsics.h(remoteFilePath, "remoteFilePath");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void D(String name) {
        TransferBottomToolsView transferBottomToolsView;
        Intrinsics.h(name, "name");
        wf.a.C0922a.v(wf.a.f74274a, TransferBottomToolsView.TAG, this.logMsgTag + " ====== setDeviceInfo ,连接成功setDeviceInfo ,连接成功:" + name, false, 4, null);
        this.deviceName = name;
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f16162d) == null) {
            return;
        }
        transferBottomToolsView.showConnectContent(this.isDeviceConnect, name);
    }

    @Override
    public bx.l0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.l0 l0VarC = bx.l0.c(inflater);
        Intrinsics.g(l0VarC, "inflate(...)");
        return l0VarC;
    }

    @Override
    public void J(String remoteFilePath, TaskState state, long downloadedLength, long totalLength, long timeCost, String error) {
        Intrinsics.h(remoteFilePath, "remoteFilePath");
        Intrinsics.h(state, "state");
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$onTaskStateChange$3(state, this, null), 3, null);
    }

    @Override
    public void L(String clientIp, String remoteFilePath, TaskState state, long downloadedLength, long totalLength) {
        com.transsion.transfer.impl.h hVar;
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(remoteFilePath, "remoteFilePath");
        Intrinsics.h(state, "state");
        if (this.clientNames.isEmpty() && (hVar = this.transferServer) != null) {
            this.clientNames.addAll(hVar.i());
        }
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$onTaskStateChange$2(this, state, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void M() {
        bx.l0 l0Var;
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        this.isDeviceConnect = true;
        bx.l0 l0Var2 = (bx.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView4 = l0Var2.f16162d) != null) {
            transferBottomToolsView4.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_SEND);
        }
        bx.l0 l0Var3 = (bx.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView3 = l0Var3.f16162d) != null) {
            TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView3, TransferBottomToolsView.SEND_STATUS_NONE, 0, 2, null);
        }
        bx.l0 l0Var4 = (bx.l0) getMViewBinding();
        if (l0Var4 != null && (transferBottomToolsView2 = l0Var4.f16162d) != null) {
            transferBottomToolsView2.showConnectUI(true);
        }
        if (this.deviceName.length() > 0 && (l0Var = (bx.l0) getMViewBinding()) != null && (transferBottomToolsView = l0Var.f16162d) != null) {
            transferBottomToolsView.showConnectContent(true, this.deviceName);
        }
        wf.a.C0922a.r(wf.a.f74274a, TransferBottomToolsView.TAG, new String[]{this.logMsgTag + " ====== onConnect ,连接成功" + this.deviceName}, false, 4, null);
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        V0();
    }

    @Override
    public void N() {
        a1();
    }

    @Override
    public void O(int transmittingCount, int failCount) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$onStatusChange$1(this, transmittingCount, failCount, null), 3, null);
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        k0().S();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void c() {
        TransferBottomToolsView transferBottomToolsView;
        bx.l0 l0Var;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        this.isDeviceConnect = false;
        wf.a.C0922a.r(wf.a.f74274a, TransferBottomToolsView.TAG, new String[]{this.logMsgTag + " ====== onDisconnect onDisconnect: " + this.deviceName}, false, 4, null);
        bx.l0 l0Var2 = (bx.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView4 = l0Var2.f16162d) != null) {
            transferBottomToolsView4.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_CLOSE);
        }
        bx.l0 l0Var3 = (bx.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView3 = l0Var3.f16162d) != null) {
            transferBottomToolsView3.showConnectUI(true);
        }
        if (this.deviceName.length() > 0 && (l0Var = (bx.l0) getMViewBinding()) != null && (transferBottomToolsView2 = l0Var.f16162d) != null) {
            transferBottomToolsView2.showConnectContent(false, this.deviceName);
        }
        bx.l0 l0Var4 = (bx.l0) getMViewBinding();
        if (l0Var4 == null || (transferBottomToolsView = l0Var4.f16162d) == null) {
            return;
        }
        TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView, TransferBottomToolsView.SEND_STATUS_NONE, 0, 2, null);
    }

    @Override
    public void d(String clientIp) {
        Intrinsics.h(clientIp, "clientIp");
    }

    @Override
    public void h(yt.b listener) {
        Intrinsics.h(listener, "listener");
        this.behaviorListener = listener;
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        initViewModel();
        wf.a.C0922a.r(wf.a.f74274a, TransferBottomToolsView.TAG, new String[]{this.logMsgTag + " TransferMainFragment, initData，内部 监听"}, false, 4, null);
        X0();
        W0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        AppCompatImageView appCompatImageView;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var != null && (appCompatImageView = l0Var.f16164f) != null) {
            uf.c.e(appCompatImageView);
        }
        bx.l0 l0Var2 = (bx.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView3 = l0Var2.f16162d) != null) {
            transferBottomToolsView3.setPageStatus(false);
        }
        bx.l0 l0Var3 = (bx.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView2 = l0Var3.f16162d) != null) {
            transferBottomToolsView2.setParentFragment(this);
        }
        bx.l0 l0Var4 = (bx.l0) getMViewBinding();
        if (l0Var4 == null || (transferBottomToolsView = l0Var4.f16162d) == null) {
            return;
        }
        transferBottomToolsView.setBehaviorListener(this.behaviorListener);
    }

    @Override
    public void j(String clientIp, String remoteFilePath, long downloadedLength, long totalLength) {
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(remoteFilePath, "remoteFilePath");
    }

    @Override
    public void l(int cmdNo) {
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void o(String clientIp) {
        Intrinsics.h(clientIp, "clientIp");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        com.transsion.transfer.impl.h hVar = this.transferServer;
        if (hVar != null) {
            hVar.g(this);
        }
        com.transsion.transfer.impl.h hVar2 = this.transferServer;
        if (hVar2 != null) {
            hVar2.h(this.serverConnectListener);
        }
        com.transsion.transfer.impl.e eVar = this.transferClient;
        if (eVar != null) {
            eVar.g(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onHiddenChanged(boolean hidden) {
        TransferBottomToolsView transferBottomToolsView;
        super.onHiddenChanged(hidden);
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f16162d) == null) {
            return;
        }
        transferBottomToolsView.onPageNotVisible();
    }

    @Override
    public void onResume() {
        super.onResume();
        i1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onStop() {
        TransferBottomToolsView transferBottomToolsView;
        super.onStop();
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f16162d) == null) {
            return;
        }
        transferBottomToolsView.onPageNotVisible();
    }

    @Override
    public void p(String clientIp, List files) {
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(files, "files");
    }

    @Override
    public void q(String remoteFilePath) {
        Intrinsics.h(remoteFilePath, "remoteFilePath");
    }

    @Override
    public void r(String clientIp) {
        Intrinsics.h(clientIp, "clientIp");
    }
}
