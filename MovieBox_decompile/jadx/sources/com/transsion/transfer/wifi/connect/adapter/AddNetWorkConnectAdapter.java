package com.transsion.transfer.wifi.connect.adapter;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.os.Build;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.R$string;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.g;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

public final class AddNetWorkConnectAdapter extends BaseWifiConnectAdapter {

    private boolean f53772f;

    private int f53773g;

    private boolean f53774h;

    private Network f53775i;

    private List f53779m;

    private int f53771e = -1;

    private int f53776j = 10;

    private int f53777k = -1;

    private int f53778l = -1;

    private long f53780n = 1000;

    private final Object f53781o = new Object();

    private int f53782p = 5;

    private int f53783q = 15;

    private final int m(int i10, String str, String str2) {
        g.b(g.f53898a, e() + " --> blindConnect() --> Connect Step 4 No Need Scan Result,Force Connect ", false, 2, null);
        if (i10 != -1) {
            return i10;
        }
        String string = Utils.a().getApplicationContext().getString(R$string.wifi_direct_prefix);
        Intrinsics.g(string, "getString(...)");
        if (StringsKt.W(str, string, false, 2, null)) {
            int iV = v(str, str2, "PSK");
            if (iV == -1) {
                iV = v(str, str2, "EAP");
            }
            return iV == -1 ? v(str, str2, "WEP") : iV;
        }
        if (TextUtils.isEmpty(str2)) {
            return v(str, str2, "OPEN");
        }
        int iV2 = v(str, str2, "PSK");
        if (iV2 == -1) {
            iV2 = v(str, str2, "EAP");
        }
        return iV2 == -1 ? v(str, str2, "WEP") : iV2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(Continuation continuation) {
        AddNetWorkConnectAdapter$connectNetWork$1 addNetWorkConnectAdapter$connectNetWork$1;
        Object objM453constructorimpl;
        Object objM453constructorimpl2;
        if (continuation instanceof AddNetWorkConnectAdapter$connectNetWork$1) {
            addNetWorkConnectAdapter$connectNetWork$1 = (AddNetWorkConnectAdapter$connectNetWork$1) continuation;
            int i10 = addNetWorkConnectAdapter$connectNetWork$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                addNetWorkConnectAdapter$connectNetWork$1.label = i10 - Integer.MIN_VALUE;
            } else {
                addNetWorkConnectAdapter$connectNetWork$1 = new AddNetWorkConnectAdapter$connectNetWork$1(this, continuation);
            }
        } else {
            addNetWorkConnectAdapter$connectNetWork$1 = new AddNetWorkConnectAdapter$connectNetWork$1(this, continuation);
        }
        Object obj = addNetWorkConnectAdapter$connectNetWork$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = addNetWorkConnectAdapter$connectNetWork$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            addNetWorkConnectAdapter$connectNetWork$1.label = 1;
            if (u0.a(500L, addNetWorkConnectAdapter$connectNetWork$1) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        s();
        try {
            Result.Companion companion = Result.INSTANCE;
            Ref.IntRef intRef = new Ref.IntRef();
            this.f53771e = -1;
            this.f53772f = false;
            g gVar = g.f53898a;
            String strE = e();
            du.a aVarI = i();
            g.b(gVar, strE + " --> connectNetWork() --> 连接网络 --> Connect Step 1 START_CONNECT --> Target SSID = " + (aVarI != null ? aVarI.p() : null), false, 2, null);
            while (true) {
                WifiUtils wifiUtils = WifiUtils.f53888a;
                if (wifiUtils.m().getWifiState() == 3 || intRef.element >= this.f53776j * 2 || this.f53774h) {
                    break;
                }
                try {
                    Result.Companion companion2 = Result.INSTANCE;
                    g.b(g.f53898a, e() + " --> connectNetWork() --> wait wifi open, time = " + intRef.element, false, 2, null);
                    wifiUtils.m().setWifiEnabled(true);
                    Thread.sleep(350L);
                    objM453constructorimpl2 = Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM453constructorimpl2 = Result.m453constructorimpl(ResultKt.a(th2));
                }
                if (Result.m456exceptionOrNullimpl(objM453constructorimpl2) != null) {
                    return Unit.f64096a;
                }
                intRef.element++;
            }
            t();
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th3));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            g.d(g.f53898a, e() + " --> connectNetWork() --> it = " + thM456exceptionOrNullimpl, false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH = h();
            if (bVarH != null) {
                bVarH.b(2030);
            }
        }
        return Unit.f64096a;
    }

    private final int o(String str, String str2, String str3) throws Throwable {
        int i10 = -1;
        try {
            synchronized (this.f53781o) {
                try {
                    WifiUtils wifiUtils = WifiUtils.f53888a;
                    if (wifiUtils.j().equals(str)) {
                        g.b(g.f53898a, "Current MB SSID had Connected. current SSID = " + wifiUtils.j(), false, 2, null);
                        return 0;
                    }
                    this.f53778l = this.f53777k;
                    WifiConfiguration wifiConfiguration = new WifiConfiguration();
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                    String str4 = String.format("\"%s\"", Arrays.copyOf(new Object[]{str}, 1));
                    Intrinsics.g(str4, "format(...)");
                    wifiConfiguration.SSID = str4;
                    wifiConfiguration.priority = 1000000;
                    com.transsion.transfer.wifi.util.a.f53890a.f(wifiConfiguration, str3, str2);
                    int i11 = 0;
                    int iAddNetwork = -1;
                    while (i11 < this.f53782p && !this.f53774h && (iAddNetwork = WifiUtils.f53888a.m().addNetwork(wifiConfiguration)) == -1) {
                        try {
                            i11++;
                            try {
                                Thread.sleep(350L);
                            } catch (InterruptedException e10) {
                                g.d(g.f53898a, e() + " --> connectToWifi() --> addNetwork Interrupt = " + e10, false, 2, null);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    g gVar = g.f53898a;
                    g.h(gVar, e() + " --> connectToWifi() --> new network id:" + iAddNetwork, false, 2, null);
                    try {
                        if (iAddNetwork == -1) {
                            g.h(gVar, e() + " --> connectToWifi() --> add ssid to network failure!", false, 2, null);
                            return iAddNetwork;
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            com.transsion.transfer.wifi.util.a.f53890a.g(WifiUtils.f53888a.m(), wifiConfiguration);
                        }
                        WifiUtils wifiUtils2 = WifiUtils.f53888a;
                        if (wifiUtils2.m() != null) {
                            wifiUtils2.m().disconnect();
                        }
                        this.f53777k = iAddNetwork;
                        int i12 = this.f53778l;
                        if (i12 != -1 && i12 != iAddNetwork) {
                            wifiUtils2.m().disableNetwork(this.f53778l);
                        }
                        if (!(wifiUtils2.m() != null ? wifiUtils2.m().enableNetwork(iAddNetwork, true) : false)) {
                            wifiUtils2.m().reassociate();
                        }
                        x();
                        Unit unit = Unit.f64096a;
                        return iAddNetwork;
                    } catch (Exception e11) {
                        e = e11;
                        i10 = iAddNetwork;
                        e.printStackTrace();
                        return i10;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    private final Method p(int i10) {
        Class<?>[] parameterTypes;
        WifiUtils wifiUtils = WifiUtils.f53888a;
        if (wifiUtils.m() == null) {
            return null;
        }
        Iterator itA = ArrayIteratorKt.a(wifiUtils.m().getClass().getDeclaredMethods());
        Method method = null;
        while (itA.hasNext()) {
            Method method2 = (Method) itA.next();
            if (StringsKt.H("connect", method2.getName(), true) && (parameterTypes = method2.getParameterTypes()) != null && parameterTypes.length > 0 && StringsKt.H("int", parameterTypes[0].getName(), true)) {
                method = method2;
            }
        }
        if (method != null) {
            try {
                method.invoke(WifiUtils.f53888a.m(), Integer.valueOf(i10), null);
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        return method;
    }

    private final void q() {
        String strP;
        boolean zC;
        String strO;
        int i10 = this.f53771e;
        du.a aVarI = i();
        String str = "";
        if (aVarI == null || (strP = aVarI.p()) == null) {
            strP = "";
        }
        du.a aVarI2 = i();
        if (aVarI2 != null && (strO = aVarI2.o()) != null) {
            str = strO;
        }
        this.f53771e = m(i10, strP, str);
        g gVar = g.f53898a;
        g.b(gVar, e() + " --> doBlindConnect() --> Connect Step 5 No Need Scan Result,Force Connect Result=" + this.f53771e, false, 2, null);
        if (this.f53771e != -1) {
            String strJ = WifiUtils.f53888a.j();
            du.a aVarI3 = i();
            if (Intrinsics.c(strJ, aVarI3 != null ? aVarI3.p() : null)) {
                String strE = e();
                du.a aVarI4 = i();
                String strP2 = aVarI4 != null ? aVarI4.p() : null;
                g.b(gVar, strE + " --> doBlindConnect() --> Connect Step 6.0 connected wifi = " + strP2 + " -- netId = " + this.f53771e + "  --  isOkRetryConnect:", false, 2, null);
            } else {
                try {
                    Thread.sleep(350L);
                    String strE2 = e();
                    du.a aVarI5 = i();
                    String strP3 = aVarI5 != null ? aVarI5.p() : null;
                    g.b(gVar, strE2 + " --> doBlindConnect() --> Connect Step 6.1 didn't connect wifi，reEnableNetWork ssid: " + strP3 + " -- netId = " + this.f53771e + " ", false, 2, null);
                    w(this.f53771e);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        } else {
            this.f53779m = null;
        }
        NetworkInfo.DetailedState detailedStateR = r();
        boolean z10 = detailedStateR == null || detailedStateR == NetworkInfo.DetailedState.CONNECTING || detailedStateR == NetworkInfo.DetailedState.AUTHENTICATING;
        for (int i11 = 0; z10 && i11 < this.f53783q && !this.f53774h; i11++) {
            try {
                Thread.sleep(350L);
                NetworkInfo.DetailedState detailedStateR2 = r();
                if (detailedStateR2 != null) {
                    z10 = detailedStateR2 == NetworkInfo.DetailedState.CONNECTING || detailedStateR2 == NetworkInfo.DetailedState.AUTHENTICATING;
                }
            } catch (InterruptedException e11) {
                e11.printStackTrace();
            }
        }
        WifiUtils wifiUtils = WifiUtils.f53888a;
        String strJ2 = wifiUtils.j();
        if (TextUtils.isEmpty(strJ2)) {
            zC = false;
        } else {
            du.a aVarI6 = i();
            zC = Intrinsics.c(strJ2, aVarI6 != null ? aVarI6.p() : null);
        }
        if (zC) {
            if (this.f53771e != -1) {
                g.b(g.f53898a, e() + " --> doBlindConnect() --> Connect Step 9 addNetSucceed", false, 2, null);
                com.transsion.transfer.wifi.connect.b bVarH = h();
                if (bVarH != null) {
                    bVarH.d(this.f53771e);
                    return;
                }
                return;
            }
            g.b(g.f53898a, e() + " --> doBlindConnect() --> Connect Step 9 SHOW_RETRY", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH2 = h();
            if (bVarH2 != null) {
                bVarH2.b(2033);
                return;
            }
            return;
        }
        g gVar2 = g.f53898a;
        g.b(gVar2, e() + " --> doBlindConnect() --> Connect Step 9.1 blindConnectCounts：" + this.f53773g, false, 2, null);
        if (this.f53773g >= this.f53782p) {
            g.d(gVar2, e() + " --> doBlindConnect() --> Connect Step 9.1 SHOW_RETRY", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH3 = h();
            if (bVarH3 != null) {
                bVarH3.b(2033);
                return;
            }
            return;
        }
        wifiUtils.m().startScan();
        try {
            Thread.sleep(this.f53780n);
        } catch (InterruptedException e12) {
            g.b(g.f53898a, e() + " --> doBlindConnect() --> blindConnectCounts InterruptedException: " + e12, false, 2, null);
        }
        this.f53771e = -1;
        this.f53772f = false;
        this.f53773g++;
        t();
    }

    private final void s() {
        com.transsion.transfer.wifi.util.c cVar = com.transsion.transfer.wifi.util.c.f53892a;
        if (cVar.e()) {
            Context applicationContext = Utils.a().getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            if (cVar.d(applicationContext) < 2097152) {
                g.b(g.f53898a, e() + " --> initParameter() --> Transsion Phone lowMemLimit", false, 2, null);
                this.f53780n = 1500L;
                this.f53783q = 30;
                this.f53776j = 20;
                this.f53782p = 8;
            }
        }
    }

    private final void t() {
        Object objM453constructorimpl;
        g gVar = g.f53898a;
        String strE = e();
        du.a aVarI = i();
        g.b(gVar, strE + " --> processWifiConnect() --> Connect Step 2 CONNECTION_INITIALIZED --> ssid = " + (aVarI != null ? aVarI.p() : null) + " --> startScan()", false, 2, null);
        WifiUtils wifiUtils = WifiUtils.f53888a;
        wifiUtils.m().startScan();
        int networkId = wifiUtils.m().getConnectionInfo().getNetworkId();
        List<WifiConfiguration> configuredNetworks = wifiUtils.m().getConfiguredNetworks();
        Intrinsics.g(configuredNetworks, "getConfiguredNetworks(...)");
        g.b(gVar, e() + " --> processWifiConnect() --> Connect Step 2.1  --> currentConnectId = " + networkId + " --> existingConfigs.size = " + configuredNetworks.size(), false, 2, null);
        for (WifiConfiguration wifiConfiguration : configuredNetworks) {
            String SSID = wifiConfiguration.SSID;
            Intrinsics.g(SSID, "SSID");
            String strQ = StringsKt.Q(SSID, "\"", "", false, 4, null);
            String str = wifiConfiguration.preSharedKey;
            if (!TextUtils.isEmpty(strQ)) {
                du.a aVarI2 = i();
                if (StringsKt.I(aVarI2 != null ? aVarI2.p() : null, strQ, false, 2, null)) {
                    this.f53771e = wifiConfiguration.networkId;
                    g gVar2 = g.f53898a;
                    g.b(gVar2, e() + " --> processWifiConnect() --> Connect Step 2.2  currentConnectId = " + networkId + " -- netId = " + this.f53771e + " -- pwd = " + str, false, 2, null);
                    String string = Utils.a().getApplicationContext().getString(R$string.wifi_direct_prefix);
                    Intrinsics.g(string, "getString(...)");
                    if (!StringsKt.W(strQ, string, false, 2, null) || !TextUtils.isEmpty(str)) {
                        g.b(gVar2, e() + " --> processWifiConnect() --> Connect Step 2.4  reEnableNetWork WifiConfiguration SSID = " + strQ + ", netId = " + this.f53771e, false, 2, null);
                        this.f53778l = networkId;
                        WifiUtils.f53888a.m().disconnect();
                        w(this.f53771e);
                        this.f53772f = true;
                        break;
                    }
                    g.b(gVar2, e() + " --> processWifiConnect() --> Connect Step 2.3  error pwd type save WifiConfiguration SSID = " + strQ + ", netId = " + this.f53771e, false, 2, null);
                    this.f53771e = -1;
                    this.f53772f = false;
                    break;
                }
            }
        }
        g.b(g.f53898a, e() + " --> processWifiConnect() --> Connect Step 2.4-1  列表遍历结束 --> netId = " + this.f53771e + " -- findOldConfig = " + this.f53772f, false, 2, null);
        if (!this.f53772f) {
            int i10 = this.f53776j;
            for (int i11 = 0; i11 < i10; i11++) {
                List<ScanResult> scanResults = WifiUtils.f53888a.m().getScanResults();
                this.f53779m = scanResults;
                if (scanResults != null) {
                    g gVar3 = g.f53898a;
                    String strE2 = e();
                    List list = this.f53779m;
                    g.b(gVar3, strE2 + " --> processWifiConnect() --> Connect Step 2.5  Start WifiScan Retry counts:+ i +, ScanResultList Size: " + (list != null ? Integer.valueOf(list.size()) : null), false, 2, null);
                    for (ScanResult scanResult : scanResults) {
                        du.a aVarI3 = i();
                        if (StringsKt.I(aVarI3 != null ? aVarI3.p() : null, scanResult.SSID, false, 2, null)) {
                            g gVar4 = g.f53898a;
                            g.b(gVar4, e() + " --> processWifiConnect() --> Connect Step 3 Find XShare HotSpot , Start Connect to Target WIFI , SSID = " + scanResult.SSID + " +  capabilities =  " + scanResult.capabilities, false, 2, null);
                            du.a aVarI4 = i();
                            String strP = aVarI4 != null ? aVarI4.p() : null;
                            du.a aVarI5 = i();
                            this.f53771e = o(strP, aVarI5 != null ? aVarI5.o() : null, scanResult.capabilities);
                            g.d(gVar4, e() + " --> processWifiConnect() --> Connect Step 3.1 Connect to Target WIFI Finished -- netId = " + this.f53771e, false, 2, null);
                            if (this.f53771e != -1) {
                                break;
                            }
                        }
                    }
                }
                if (this.f53771e != -1) {
                    break;
                }
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Thread.sleep(this.f53780n);
                    if (i11 % 3 == 0) {
                        WifiUtils.f53888a.m().startScan();
                    }
                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    g.d(g.f53898a, e() + " --> processWifiConnect() --> CONFIGURED_WIFI InterruptedException --> it = " + thM456exceptionOrNullimpl, false, 2, null);
                    com.transsion.transfer.wifi.connect.b bVarH = h();
                    if (bVarH != null) {
                        bVarH.b(2031);
                        return;
                    }
                    return;
                }
            }
        }
        u();
    }

    private final void u() {
        boolean zC;
        g.b(g.f53898a, e() + " --> processWifiScanResult() --> Connect Step 4 processWifiScanResult findOldConfig = " + this.f53772f, false, 2, null);
        if (!this.f53772f) {
            q();
            return;
        }
        NetworkInfo.DetailedState detailedStateR = r();
        boolean z10 = detailedStateR == null || detailedStateR == NetworkInfo.DetailedState.CONNECTING || detailedStateR == NetworkInfo.DetailedState.AUTHENTICATING;
        for (int i10 = 0; z10 && i10 < this.f53783q && !this.f53774h; i10++) {
            try {
                Thread.sleep(350L);
                NetworkInfo.DetailedState detailedStateR2 = r();
                if (detailedStateR2 != null) {
                    z10 = detailedStateR2 == NetworkInfo.DetailedState.CONNECTING || detailedStateR2 == NetworkInfo.DetailedState.AUTHENTICATING;
                }
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
        WifiUtils wifiUtils = WifiUtils.f53888a;
        String strJ = wifiUtils.j();
        if (TextUtils.isEmpty(strJ)) {
            zC = false;
        } else {
            du.a aVarI = i();
            zC = Intrinsics.c(strJ, aVarI != null ? aVarI.p() : null);
        }
        if (zC) {
            if (this.f53771e != -1) {
                g.b(g.f53898a, e() + " --> processWifiScanResult() --> Connect Step 7 addNetSucceed", false, 2, null);
                com.transsion.transfer.wifi.connect.b bVarH = h();
                if (bVarH != null) {
                    bVarH.d(this.f53771e);
                    return;
                }
                return;
            }
            g.b(g.f53898a, e() + " --> processWifiScanResult() --> Connect Step 7 SHOW_RETRY", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH2 = h();
            if (bVarH2 != null) {
                bVarH2.b(2032);
                return;
            }
            return;
        }
        g gVar = g.f53898a;
        g.b(gVar, e() + " --> processWifiScanResult() --> Connect Step 7.1 blindConnectCounts = " + this.f53773g, false, 2, null);
        if (this.f53773g >= this.f53782p) {
            g.d(gVar, e() + " --> processWifiScanResult() --> Connect Step 7.1 SHOW_RETRY", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH3 = h();
            if (bVarH3 != null) {
                bVarH3.b(2032);
                return;
            }
            return;
        }
        wifiUtils.m().startScan();
        try {
            Thread.sleep(this.f53780n);
        } catch (InterruptedException e11) {
            g.d(g.f53898a, e() + " --> processWifiScanResult() --> blindConnectCounts InterruptedException: " + e11, false, 2, null);
        }
        this.f53771e = -1;
        this.f53772f = false;
        this.f53773g++;
        q();
    }

    private final int v(String str, String str2, String str3) {
        try {
            g.b(g.f53898a, e() + " --> reConnect() --> ssid:" + str + ", pass:" + str2 + ", type:" + str3, false, 2, null);
            Thread.sleep(300L);
            return o(str, str2, str3);
        } catch (InterruptedException e10) {
            g.d(g.f53898a, e() + " --> reConnect() --> reConnect InterruptedException: " + e10, false, 2, null);
            return -1;
        }
    }

    private final void w(int i10) {
        try {
            this.f53777k = i10;
            j("reEnableNetWork() --> set network id = " + i10);
            int i11 = this.f53778l;
            if (i11 != -1 && i11 != this.f53777k) {
                WifiUtils.f53888a.m().disableNetwork(this.f53778l);
            }
            boolean zEnableNetwork = (Build.VERSION.SDK_INT > 23 || p(i10) == null) ? WifiUtils.f53888a.m().enableNetwork(i10, true) : false;
            if (!zEnableNetwork) {
                WifiUtils.f53888a.m().reassociate();
            }
            x();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void x() {
        synchronized (this.f53781o) {
            j("removeOldNetwork() --> removeOldNetwork mLastNetworkId = " + this.f53778l + " --> mCurrentNetworkId = " + this.f53777k);
            int i10 = this.f53778l;
            if (i10 != -1 && i10 != this.f53777k) {
                j("removeOldNetwork() --> remove network id:" + i10);
                boolean zRemoveNetwork = false;
                for (int i11 = 0; i11 < 10 && !zRemoveNetwork; i11++) {
                    try {
                        zRemoveNetwork = WifiUtils.f53888a.m().removeNetwork(this.f53778l);
                        j("removeOldNetwork() --> removeNetwork Result = " + zRemoveNetwork);
                    } catch (Exception unused) {
                    }
                }
                WifiUtils.f53888a.m().saveConfiguration();
            }
            Unit unit = Unit.f64096a;
        }
    }

    @Override
    public void c() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (this.f53775i != null) {
                this.f53775i = null;
            }
            Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ((ConnectivityManager) systemService).bindProcessToNetwork(null);
            g.b(g.f53898a, e() + " --> releaseDefaultNetwork() --> end", false, 2, null);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f53898a, e() + " --> releaseDefaultNetwork() --> it = " + thM456exceptionOrNullimpl, false, 2, null);
    }

    @Override
    public void d() {
        this.f53773g = 0;
        this.f53774h = false;
        g.b(g.f53898a, e() + " --> connect() --> 系统级接入方开始添加网络 = " + i(), false, 2, null);
        n0 n0VarG = g();
        if (n0VarG != null) {
            k.d(n0VarG, null, null, new AddNetWorkConnectAdapter$doConnect$1(this, null), 3, null);
        }
    }

    public final NetworkInfo.DetailedState r() {
        Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return activeNetworkInfo.getDetailedState();
        }
        return null;
    }
}
