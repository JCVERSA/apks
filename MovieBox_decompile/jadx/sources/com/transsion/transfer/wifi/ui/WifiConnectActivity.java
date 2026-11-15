package com.transsion.transfer.wifi.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Network;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.zxing.BarcodeFormat;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.transfer.R$string;
import com.transsion.transfer.impl.ClientViewModel;
import com.transsion.transfer.impl.TransferStatusActivity;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsion.transfer.wifi.connect.TransferWifiConnectDialog;
import com.transsion.transfer.wifi.connect.WifiConnectionManager;
import com.transsion.transfer.wifi.permission.PermissionsActivity;
import com.transsion.transfer.wifi.qrcode.QrCodeUtil;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.net.InetAddress;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\nJ\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u001f\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0002H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000bH\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u001eH\u0016¢\u0006\u0004\b'\u0010 J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0004J\r\u0010.\u001a\u00020\u0005¢\u0006\u0004\b.\u0010\u0004R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010@\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00109R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00020J0I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u001a\u0010S\u001a\u00020N8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R¨\u0006T"}, d2 = {"Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lxt/c;", "<init>", "()V", "", "a1", "Ldu/a;", "wifiInfoModel", "m1", "(Ldu/a;)V", "", "scannedText", "g1", "(Ljava/lang/String;)V", "U0", "ip", "W0", "o1", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "marginTop", "l1", "(Landroid/view/View;I)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "", "n0", "()Z", "onPause", "onDestroy", "c1", "()Lxt/c;", "f0", "()Ljava/lang/String;", "setImmersionStatusBar", "l0", "m0", "k0", "p0", "q0", "retryLoadData", "V0", "Lcom/transsion/transfer/impl/ClientViewModel;", "i", "Lkotlin/Lazy;", "b1", "()Lcom/transsion/transfer/impl/ClientViewModel;", "clientViewModel", "j", "Ljava/lang/String;", "serverIp", CampaignEx.JSON_KEY_AD_K, "Z", "clientReleaseTag", "", "l", "J", "onScanNotSupportTime", "m", "transferLaunched", "Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;", "n", "Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;", "loadingDialog", "Laf/a;", "o", "Laf/a;", "callback", "Landroidx/activity/result/b;", "Landroid/content/Intent;", TtmlNode.TAG_P, "Landroidx/activity/result/b;", "permissionResult", "Lqi/b;", CampaignEx.JSON_KEY_AD_Q, "Lqi/b;", "getLogViewConfig", "()Lqi/b;", "logViewConfig", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WifiConnectActivity extends BaseNewActivity<xt.c> {

    private String serverIp;

    private boolean clientReleaseTag;

    private boolean transferLaunched;

    private TransferWifiConnectDialog loadingDialog;

    private final Lazy clientViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return WifiConnectActivity.T0(this.f53867a);
        }
    });

    private long onScanNotSupportTime = System.currentTimeMillis();

    private final af.a callback = new a();

    private androidx.activity.result.b permissionResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
        @Override
        public final void a(Object obj) {
            WifiConnectActivity.k1(this.f53868a, (ActivityResult) obj);
        }
    });

    private final qi.b logViewConfig = new qi.b("wifi_connect_page", false, 2, null);

    public static final class a implements af.a {
        a() {
        }

        @Override
        public void a(List resultPoints) {
            Intrinsics.h(resultPoints, "resultPoints");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void b(af.c result) {
            Intrinsics.h(result, "result");
            if (result.e() != null) {
                ((xt.c) WifiConnectActivity.this.getMViewBinding()).f75443d.pause();
                String strE = result.e();
                WifiConnectActivity wifiConnectActivity = WifiConnectActivity.this;
                Intrinsics.e(strE);
                wifiConnectActivity.g1(strE);
            }
        }
    }

    public static final class b implements com.transsion.transfer.wifi.connect.b {

        final du.a f53850b;

        b(du.a aVar) {
            this.f53850b = aVar;
        }

        @Override
        public void a(Network network) {
            com.transsion.transfer.wifi.connect.b.a.b(this, network);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void b(int i10) {
            com.transsion.transfer.wifi.util.g.h(com.transsion.transfer.wifi.util.g.f53898a, WifiConnectActivity.this.getClassTag() + " --> connectWifi() --> onFail() --> code = " + i10, false, 2, null);
            ((xt.c) WifiConnectActivity.this.getMViewBinding()).f75443d.resume();
            WifiConnectActivity.this.V0();
            fh.b.f60176a.e(WifiConnectActivity.this.getResources().getString(R$string.transfer_wifi_connect_dialog_failed));
        }

        @Override
        public void c(InetAddress inetAddress) {
            com.transsion.transfer.wifi.connect.b.a.e(this, inetAddress);
        }

        @Override
        public void d(int i10) {
            com.transsion.transfer.wifi.connect.b.a.a(this, i10);
        }

        @Override
        public void e(String ip2) {
            Intrinsics.h(ip2, "ip");
            com.transsion.transfer.wifi.connect.b.a.c(this, ip2);
            String strL = WifiUtils.f53888a.l();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onParsingSuccess: ip:");
            sb2.append(ip2);
            sb2.append(", WifiUtils.getLocalIP():");
            sb2.append(strL);
            if (WifiConnectActivity.this.clientReleaseTag) {
                WifiConnectActivity.this.W0(ip2);
            } else {
                WifiConnectActivity.this.serverIp = ip2;
            }
        }

        @Override
        public void onStart() {
            com.transsion.transfer.wifi.connect.b.a.d(this);
            WifiConnectActivity.this.m1(this.f53850b);
        }
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f53851a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f53851a = function;
        }

        @Override
        public final Function a() {
            return this.f53851a;
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
            this.f53851a.invoke(obj);
        }
    }

    public static final ClientViewModel T0(WifiConnectActivity wifiConnectActivity) {
        return (ClientViewModel) new v0(wifiConnectActivity).a(ClientViewModel.class);
    }

    private final void U0(du.a wifiInfoModel) {
        WifiConnectionManager.f53760a.n(this, wifiInfoModel, androidx.p009lifecycle.v.a(this), new b(wifiInfoModel));
    }

    public final void W0(String ip2) {
        TransferClient.a aVar = TransferClient.f53593t;
        TransferClient.a.m(aVar, ip2, WifiUtils.f53888a.l(), null, new Function0() {
            @Override
            public final Object invoke() {
                return WifiConnectActivity.X0(this.f53871a);
            }
        }, 4, null);
        cu.b.f58655a.n(aVar.k());
    }

    public static final Unit X0(final WifiConnectActivity wifiConnectActivity) {
        wifiConnectActivity.b1().k(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return WifiConnectActivity.Y0(this.f53875a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        return Unit.f64096a;
    }

    public static final Unit Y0(final WifiConnectActivity wifiConnectActivity, boolean z10, String error) {
        Intrinsics.h(error, "error");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connectWifi connect res:");
        sb2.append(z10);
        if (z10) {
            cu.b.f58655a.e(TransferClient.f53593t.k());
        } else {
            wifiConnectActivity.b1().k(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return WifiConnectActivity.Z0(this.f53866a, ((Boolean) obj).booleanValue(), (String) obj2);
                }
            });
        }
        return Unit.f64096a;
    }

    public static final Unit Z0(WifiConnectActivity wifiConnectActivity, boolean z10, String autoError) {
        Intrinsics.h(autoError, "autoError");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connectWifi auto retry connect res:");
        sb2.append(z10);
        sb2.append(", autoError:");
        sb2.append(autoError);
        if (z10) {
            cu.b.f58655a.e(TransferClient.f53593t.k());
        } else {
            cu.b.f58655a.d(autoError, TransferClient.f53593t.k());
            wifiConnectActivity.V0();
            WifiConnectionManager.f53760a.s();
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(wifiConnectActivity), y0.c(), null, new WifiConnectActivity$doConnect$1$1$1$1(wifiConnectActivity, null), 2, null);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a1() {
        ((xt.c) getMViewBinding()).f75443d.setDecoderFactory(new af.k(CollectionsKt.o(BarcodeFormat.QR_CODE, BarcodeFormat.CODE_39)));
        ((xt.c) getMViewBinding()).f75443d.initializeFromIntent(getIntent());
        ((xt.c) getMViewBinding()).f75443d.decodeContinuous(this.callback);
    }

    private final ClientViewModel b1() {
        return (ClientViewModel) this.clientViewModel.getValue();
    }

    public static final void d1(WifiConnectActivity wifiConnectActivity, View view) {
        wifiConnectActivity.finish();
    }

    public static final Unit e1(WifiConnectActivity wifiConnectActivity, Boolean bool) {
        if (bool.booleanValue() && !wifiConnectActivity.transferLaunched) {
            cu.b.f58655a.e(TransferClient.f53593t.k());
            wifiConnectActivity.transferLaunched = true;
            wifiConnectActivity.o1();
        }
        return Unit.f64096a;
    }

    public static final Unit f1(WifiConnectActivity wifiConnectActivity) {
        wifiConnectActivity.clientReleaseTag = true;
        String str = wifiConnectActivity.serverIp;
        if (str != null) {
            wifiConnectActivity.W0(str);
        }
        return Unit.f64096a;
    }

    public final void g1(String scannedText) {
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, getClassTag() + " --> onScanSuccess() --> scannedText = " + scannedText + " --> 扫码成功 开始解析 建立连接", false, 2, null);
        QrCodeUtil.f53835a.e(scannedText, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return WifiConnectActivity.h1(this.f53872a, (du.a) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit h1(final WifiConnectActivity wifiConnectActivity, final du.a aVar) {
        if (aVar == null) {
            fh.b.f60176a.e(wifiConnectActivity.getResources().getString(R$string.transfer_wifi_connect_error_tip_no_mb_qr_code, com.blankj.utilcode.util.c.c()));
            ((xt.c) wifiConnectActivity.getMViewBinding()).f75443d.resume();
        } else if (!TextUtils.equals(NetworkUtil.NETWORK_TYPE_5G, aVar.m()) || WifiUtils.f53888a.n()) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, wifiConnectActivity.getClassTag() + " --> onScanSuccess() --> 预期使用" + aVar.m() + "通道，且设备支持 -- 开始连接....", false, 2, null);
            rt.c cVar = rt.c.f71341a;
            if (cVar.c() && cVar.a()) {
                cVar.g(new Function0() {
                    @Override
                    public final Object invoke() {
                        return WifiConnectActivity.i1(this.f53873a, aVar);
                    }
                });
            } else {
                wifiConnectActivity.U0(aVar);
            }
        } else {
            if (System.currentTimeMillis() - wifiConnectActivity.onScanNotSupportTime > 1000) {
                fh.b.f60176a.e(wifiConnectActivity.getResources().getString(R$string.transfer_wifi_connect_error_tip_no_support));
            }
            ((xt.c) wifiConnectActivity.getMViewBinding()).f75443d.resume();
            com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f53898a, wifiConnectActivity.getClassTag() + " --> onScanSuccess() --> 预期使用5G通道，但是设备不支持", false, 2, null);
            wifiConnectActivity.onScanNotSupportTime = System.currentTimeMillis();
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit i1(final WifiConnectActivity wifiConnectActivity, final du.a aVar) {
        ((xt.c) wifiConnectActivity.getMViewBinding()).getRoot().post(new Runnable() {
            @Override
            public final void run() {
                WifiConnectActivity.j1(this.f53876a, aVar);
            }
        });
        return Unit.f64096a;
    }

    public static final void j1(WifiConnectActivity wifiConnectActivity, du.a aVar) {
        wifiConnectActivity.U0(aVar);
    }

    public static final void k1(WifiConnectActivity wifiConnectActivity, ActivityResult result) {
        Intrinsics.h(result, "result");
        if (result.getResultCode() != -1) {
            wifiConnectActivity.finish();
        }
    }

    private final void l1(View view, int marginTop) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).topMargin = marginTop;
        view.setLayoutParams(bVar);
    }

    public final void m1(du.a wifiInfoModel) {
        TransferWifiConnectDialog transferWifiConnectDialog = new TransferWifiConnectDialog();
        transferWifiConnectDialog.p0(new Function0() {
            @Override
            public final Object invoke() {
                return WifiConnectActivity.n1();
            }
        });
        transferWifiConnectDialog.q0(wifiInfoModel);
        this.loadingDialog = transferWifiConnectDialog;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        transferWifiConnectDialog.show(supportFragmentManager, "TransferWifiConnectDialog");
    }

    public static final Unit n1() {
        WifiConnectionManager.f53760a.b(2001);
        return Unit.f64096a;
    }

    private final void o1() {
        finish();
        TransferStatusActivity.INSTANCE.b(this);
    }

    public final void V0() {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            TransferWifiConnectDialog transferWifiConnectDialog = this.loadingDialog;
            if (transferWifiConnectDialog != null) {
                transferWifiConnectDialog.dismissAllowingStateLoss();
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        this.loadingDialog = null;
    }

    @Override
    public xt.c getViewBinding() {
        xt.c cVarC = xt.c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public qi.b getLogViewConfig() {
        return this.logViewConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void k0() {
        ((xt.c) getMViewBinding()).f75441b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                WifiConnectActivity.d1(this.f53865a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void l0() {
        a1();
        b1().o().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return WifiConnectActivity.e1(this.f53869a, (Boolean) obj);
            }
        }));
        int statusBarHeight = ImmersionBar.getStatusBarHeight((Activity) this);
        AppCompatImageView ivClose = ((xt.c) getMViewBinding()).f75441b;
        Intrinsics.g(ivClose, "ivClose");
        l1(ivClose, statusBarHeight);
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
                return WifiConnectActivity.f1(this.f53870a);
            }
        });
        zt.h.f76907s.a();
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        ImmersionBar.with(this).transparentBar().init();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onPause() {
        super.onPause();
        ((xt.c) getMViewBinding()).f75443d.pause();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onResume() {
        super.onResume();
        ((xt.c) getMViewBinding()).f75443d.resume();
    }

    @Override
    public void p0() {
    }

    @Override
    public void q0() {
        super.q0();
        com.transsion.transfer.wifi.permission.d dVar = com.transsion.transfer.wifi.permission.d.f53834a;
        if (dVar.g(dVar.c())) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) PermissionsActivity.class);
        intent.setAction("com.transsion.transfer.wifi.util.receive");
        this.permissionResult.a(intent);
    }

    @Override
    public void retryLoadData() {
    }

    @Override
    public boolean setImmersionStatusBar() {
        return false;
    }
}
