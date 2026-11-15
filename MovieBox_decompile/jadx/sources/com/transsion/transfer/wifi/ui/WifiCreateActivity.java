package com.transsion.transfer.wifi.ui;

import android.content.Intent;
import android.location.LocationManager;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.SwitchButton;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.transfer.R$string;
import com.transsion.transfer.impl.TransferStatusActivity;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsion.transfer.wifi.create.WifiCreateManager;
import com.transsion.transfer.wifi.permission.PermissionsActivity;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001f\u0010\u001dJ\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0014¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004R\u0018\u0010*\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001b\u00100\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0016\u00103\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u001c\u00108\u001a\b\u0012\u0004\u0012\u000205048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010:\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00102R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010@\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00102R\u001a\u0010F\u001a\u00020A8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E¨\u0006G"}, d2 = {"Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lxt/d;", "<init>", "()V", "", "Q0", "Ldu/a;", "wifiInfoModel", "", "duration", "P0", "(Ldu/a;J)V", "", "code", "O0", "(IJ)V", "c1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "S0", "()Lxt/d;", "", "f0", "()Ljava/lang/String;", "", "n0", "()Z", "isTranslucent", "isStatusDark", "l0", "m0", "k0", "p0", "q0", "retryLoadData", "onDestroy", "finish", "i", "Ldu/a;", "mWifiInfoModel", "Lcom/transsion/transfer/impl/k;", "j", "Lkotlin/Lazy;", "R0", "()Lcom/transsion/transfer/impl/k;", "serverViewModel", CampaignEx.JSON_KEY_AD_K, "Z", "p2pInUseTag", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "l", "Landroidx/activity/result/b;", "permissionResult", "m", "isCanceled", "Lfu/c;", "n", "Lfu/c;", "shareManager", "o", "is5GChannel", "Lqi/b;", TtmlNode.TAG_P, "Lqi/b;", "getLogViewConfig", "()Lqi/b;", "logViewConfig", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class WifiCreateActivity extends BaseNewActivity<xt.d> {

    private du.a mWifiInfoModel;

    private final Lazy serverViewModel;

    private boolean p2pInUseTag;

    private boolean is5GChannel;

    private androidx.activity.result.b permissionResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
        @Override
        public final void a(Object obj) {
            WifiCreateActivity.b1(this.f53884a, (ActivityResult) obj);
        }
    });

    private boolean isCanceled = true;

    private final fu.c shareManager = new fu.c();

    private final qi.b logViewConfig = new qi.b("wifi_create_page", false, 2, null);

    public static final class a implements com.transsion.transfer.wifi.create.a {
        a() {
        }

        @Override
        public void a(du.a aVar, long j10) {
            WifiCreateActivity.this.P0(aVar, j10);
        }

        @Override
        public void b(int i10, long j10) {
            WifiCreateActivity.this.O0(i10, j10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onStart() {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, WifiCreateActivity.this.getClassTag() + " --> createWifi() --> start .... --> WifiCreateActivity.hashCode() = " + WifiCreateActivity.this.hashCode(), false, 2, null);
            ((xt.d) WifiCreateActivity.this.getMViewBinding()).f75451h.setVisibility(0);
            ((xt.d) WifiCreateActivity.this.getMViewBinding()).f75448e.setImageBitmap(null);
            ((xt.d) WifiCreateActivity.this.getMViewBinding()).f75445b.setVisibility(8);
            ((xt.d) WifiCreateActivity.this.getMViewBinding()).f75446c.setVisibility(0);
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f53861a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f53861a = function;
        }

        @Override
        public final Function a() {
            return this.f53861a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f53861a.invoke(obj);
        }
    }

    public WifiCreateActivity() {
        final Function0 function0 = null;
        this.serverViewModel = new ViewModelLazy(Reflection.b(com.transsion.transfer.impl.k.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void O0(int code, long duration) {
        com.transsion.transfer.wifi.util.g.h(com.transsion.transfer.wifi.util.g.f53898a, getClassTag() + " --> createWifi() --> 热点创建 失败 --> code = " + code, false, 2, null);
        ((xt.d) getMViewBinding()).f75451h.setVisibility(8);
        ((xt.d) getMViewBinding()).f75446c.setVisibility(8);
        ((xt.d) getMViewBinding()).f75445b.setVisibility(0);
        this.isCanceled = false;
        cu.c.f58656a.i(code);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void P0(du.a wifiInfoModel, long duration) {
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, getClassTag() + " --> createWifi() --> successFun() --> Wi-Fi创建成功 -- 刷新UI --> 展示二维码等信息", false, 2, null);
        this.mWifiInfoModel = wifiInfoModel;
        R0().A();
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new WifiCreateActivity$createSuccess$1(wifiInfoModel, this, duration, null), 3, null);
        ((xt.d) getMViewBinding()).f75460q.setText(wifiInfoModel != null ? wifiInfoModel.p() : null);
    }

    private final void Q0() {
        com.transsion.transfer.impl.l.f53697a.b(this.is5GChannel ? "5g" : "2.4g");
        WifiCreateManager.f53810a.g(du.a.f59084r.c(this.is5GChannel), androidx.p009lifecycle.v.a(this), new a());
    }

    private final com.transsion.transfer.impl.k R0() {
        return (com.transsion.transfer.impl.k) this.serverViewModel.getValue();
    }

    public static final void T0(WifiCreateActivity wifiCreateActivity, View view) {
        ShareMbApkDialog shareMbApkDialog = new ShareMbApkDialog();
        shareMbApkDialog.r0(wifiCreateActivity.mWifiInfoModel);
        FragmentManager supportFragmentManager = wifiCreateActivity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        shareMbApkDialog.show(supportFragmentManager, "ShareMbApkDialog");
    }

    public static final void U0(WifiCreateActivity wifiCreateActivity, View view) {
        wifiCreateActivity.shareManager.i(wifiCreateActivity);
    }

    public static final void V0(WifiCreateActivity wifiCreateActivity, View view) {
        Object systemService = wifiCreateActivity.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.location.LocationManager");
        if (((LocationManager) systemService).isProviderEnabled("gps")) {
            wifiCreateActivity.q0();
        } else {
            Toast.makeText(wifiCreateActivity, wifiCreateActivity.getResources().getString(R$string.transfer_wifi_positioning_tip), 0).show();
        }
    }

    public static final void W0(WifiCreateActivity wifiCreateActivity, SwitchButton switchButton, boolean z10) {
        wifiCreateActivity.is5GChannel = z10;
        wifiCreateActivity.q0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit X0(final WifiCreateActivity wifiCreateActivity) {
        ((xt.d) wifiCreateActivity.getMViewBinding()).getRoot().post(new Runnable() {
            @Override
            public final void run() {
                WifiCreateActivity.Y0(this.f53885a);
            }
        });
        return Unit.f64096a;
    }

    public static final void Y0(WifiCreateActivity wifiCreateActivity) {
        wifiCreateActivity.Q0();
    }

    public static final Unit Z0() {
        return Unit.f64096a;
    }

    public static final Unit a1(WifiCreateActivity wifiCreateActivity, Pair pair) {
        if (((Boolean) pair.getSecond()).booleanValue()) {
            cu.b.f58655a.o(wifiCreateActivity.R0().t());
            wifiCreateActivity.c1();
        }
        return Unit.f64096a;
    }

    public static final void b1(WifiCreateActivity wifiCreateActivity, ActivityResult result) {
        Intrinsics.h(result, "result");
        if (result.getResultCode() == -1) {
            wifiCreateActivity.q0();
        } else {
            wifiCreateActivity.finish();
        }
    }

    private final void c1() {
        if (eu.b.f59817a.i()) {
            com.transsion.transfer.wifi.util.g.h(com.transsion.transfer.wifi.util.g.f53898a, getClassTag() + " -->startServerSendData  没有数据，连接成功关闭页面", false, 2, null);
        } else {
            com.transsion.transfer.wifi.util.g.h(com.transsion.transfer.wifi.util.g.f53898a, getClassTag() + " -->startServerSendData  有数据，发送数据", false, 2, null);
        }
        this.p2pInUseTag = true;
        TransferStatusActivity.INSTANCE.c(this);
        finish();
    }

    @Override
    public xt.d getViewBinding() {
        xt.d dVarC = xt.d.c(getLayoutInflater());
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public void finish() {
        super.finish();
        if (this.p2pInUseTag) {
            return;
        }
        WifiCreateManager.f53810a.j();
    }

    @Override
    public qi.b getLogViewConfig() {
        return this.logViewConfig;
    }

    @Override
    public boolean isStatusDark() {
        return !ij.y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void k0() {
        ((xt.d) getMViewBinding()).f75458o.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                WifiCreateActivity.T0(this.f53879a, view);
            }
        });
        ((xt.d) getMViewBinding()).f75457n.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                WifiCreateActivity.U0(this.f53880a, view);
            }
        });
        ((xt.d) getMViewBinding()).f75455l.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                WifiCreateActivity.V0(this.f53881a, view);
            }
        });
        ((xt.d) getMViewBinding()).f75452i.setChecked(this.is5GChannel);
        ((xt.d) getMViewBinding()).f75452i.setOnCheckedChangeListener(new SwitchButton.d() {
            @Override
            public final void a(SwitchButton switchButton, boolean z10) {
                WifiCreateActivity.W0(this.f53882a, switchButton, z10);
            }
        });
        if (WifiUtils.f53888a.n()) {
            return;
        }
        ((xt.d) getMViewBinding()).f75452i.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void l0() {
        TitleLayout titleLayout = ((xt.d) getMViewBinding()).f75453j;
        String string = getResources().getString(R$string.transfer_wifi_create_connect_device);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setTitleText(string);
        this.shareManager.g(this);
    }

    @Override
    public void m0() {
    }

    @Override
    public boolean n0() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        TransferClient.f53593t.e(new Function0() {
            @Override
            public final Object invoke() {
                return WifiCreateActivity.Z0();
            }
        });
        zt.h.f76907s.a();
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        com.transsion.transfer.impl.k kVarR0 = R0();
        Function4 function4R = R0().r();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("loadDefaultData: serverViewModel.getConnectEventSource().observe:");
        sb2.append(kVarR0);
        sb2.append(",");
        sb2.append(function4R);
        R0().x();
        R0().o().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return WifiCreateActivity.a1(this.f53883a, (Pair) obj);
            }
        }));
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (this.isCanceled) {
            com.transsion.transfer.wifi.permission.d dVar = com.transsion.transfer.wifi.permission.d.f53834a;
            if (dVar.g(dVar.e())) {
                cu.c.f58656a.h();
            }
        }
    }

    @Override
    public void p0() {
    }

    @Override
    public void q0() {
        super.q0();
        com.transsion.transfer.wifi.permission.d dVar = com.transsion.transfer.wifi.permission.d.f53834a;
        if (!dVar.g(dVar.e())) {
            Intent intent = new Intent(this, (Class<?>) PermissionsActivity.class);
            intent.setAction("com.transsion.transfer.wifi.util.send");
            this.permissionResult.a(intent);
        } else {
            if (R0().y() && R0().j()) {
                c1();
                return;
            }
            rt.c cVar = rt.c.f71341a;
            if (cVar.d() && cVar.b()) {
                cVar.h(new Function0() {
                    @Override
                    public final Object invoke() {
                        return WifiCreateActivity.X0(this.f53878a);
                    }
                });
            } else {
                Q0();
            }
        }
    }

    @Override
    public void retryLoadData() {
    }
}
