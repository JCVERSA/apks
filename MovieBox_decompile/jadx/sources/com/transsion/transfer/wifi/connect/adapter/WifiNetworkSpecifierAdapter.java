package com.transsion.transfer.wifi.connect.adapter;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.wifi.WifiNetworkSpecifier;
import android.text.TextUtils;
import androidx.p009lifecycle.f;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.bridge.w;
import com.cloud.tmc.integration.bridge.y;
import com.transsion.transfer.wifi.util.g;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

public final class WifiNetworkSpecifierAdapter extends BaseWifiConnectAdapter {

    private boolean f53803g;

    private final Lazy f53801e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return WifiNetworkSpecifierAdapter.r();
        }
    });

    private ConnectivityManager.NetworkCallback f53802f = new a();

    private final b f53804h = new b();

    public static final class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override
        public void onAvailable(Network network) {
            Object objM453constructorimpl;
            Unit unit;
            Intrinsics.h(network, "network");
            super.onAvailable(network);
            g.b(g.f53898a, WifiNetworkSpecifierAdapter.this.e() + " --> connect() --> onAvailable() --> WifiNetworkSpecifier connect success", false, 2, null);
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter = WifiNetworkSpecifierAdapter.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                wifiNetworkSpecifierAdapter.q().bindProcessToNetwork(network);
                com.transsion.transfer.wifi.connect.b bVarH = wifiNetworkSpecifierAdapter.h();
                if (bVarH != null) {
                    bVarH.c(null);
                    unit = Unit.f64096a;
                } else {
                    unit = null;
                }
                objM453constructorimpl = Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter2 = WifiNetworkSpecifierAdapter.this;
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl == null) {
                return;
            }
            g.d(g.f53898a, wifiNetworkSpecifierAdapter2.e() + " --> connect() --> onAvailable() --> it = " + thM456exceptionOrNullimpl, false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH2 = wifiNetworkSpecifierAdapter2.h();
            if (bVarH2 != null) {
                bVarH2.b(Sdk$SDKMetric.SDKMetricType.AD_WILL_CLOSE_VALUE);
            }
        }

        @Override
        public void onLost(Network network) {
            Object objM453constructorimpl;
            Intrinsics.h(network, "network");
            super.onLost(network);
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter = WifiNetworkSpecifierAdapter.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                wifiNetworkSpecifierAdapter.q().bindProcessToNetwork(null);
                g.b(g.f53898a, wifiNetworkSpecifierAdapter.e() + " --> connect() --> onLost() --> bindProcessToNetwork(null) --> success", false, 2, null);
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter2 = WifiNetworkSpecifierAdapter.this;
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl != null) {
                g.b(g.f53898a, wifiNetworkSpecifierAdapter2.e() + " --> connect() --> onLost() --> bindProcessToNetwork() --> 发生异常 --> it = " + thM456exceptionOrNullimpl, false, 2, null);
            }
            com.transsion.transfer.wifi.connect.b bVarH = WifiNetworkSpecifierAdapter.this.h();
            if (bVarH != null) {
                bVarH.a(network);
            }
        }

        @Override
        public void onUnavailable() {
            super.onUnavailable();
            g.b(g.f53898a, WifiNetworkSpecifierAdapter.this.e() + " --> connect() --> onUnavailable() --> 如果在指定的超时时间内没有找到网络，则调用,用户主动取消也调用这个。", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH = WifiNetworkSpecifierAdapter.this.h();
            if (bVarH != null) {
                bVarH.b(Sdk$SDKMetric.SDKMetricType.APP_TERM_DURING_AD_BEFORE_IMPRESSION_VALUE);
            }
        }
    }

    public static final class b implements f {
        b() {
        }

        @Override
        public void onCreate(u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override
        public void onDestroy(u uVar) {
            androidx.p009lifecycle.e.b(this, uVar);
        }

        @Override
        public void onPause(u uVar) {
            androidx.p009lifecycle.e.c(this, uVar);
        }

        @Override
        public void onResume(u owner) {
            com.transsion.transfer.wifi.connect.b bVarH;
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.d(this, owner);
            if (!WifiNetworkSpecifierAdapter.this.f53803g || (bVarH = WifiNetworkSpecifierAdapter.this.h()) == null) {
                return;
            }
            bVarH.b(2012);
        }

        @Override
        public void onStart(u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override
        public void onStop(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.f(this, owner);
            WifiNetworkSpecifierAdapter.this.f53803g = true;
            g.h(g.f53898a, WifiNetworkSpecifierAdapter.this.e() + " --> observer --> onStop() -- isStop = " + WifiNetworkSpecifierAdapter.this.f53803g, false, 2, null);
        }
    }

    public final ConnectivityManager q() {
        return (ConnectivityManager) this.f53801e.getValue();
    }

    public static final ConnectivityManager r() {
        Object systemService = Utils.a().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        return (ConnectivityManager) systemService;
    }

    @Override
    public void c() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            n0 n0VarG = g();
            if (n0VarG != null) {
                k.d(n0VarG, null, null, new WifiNetworkSpecifierAdapter$doClose$1$1(this, null), 3, null);
            }
            q().unregisterNetworkCallback(this.f53802f);
            q().bindProcessToNetwork(null);
            g.h(g.f53898a, e() + " --> close() --> end", false, 2, null);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f53898a, e() + " --> close() --> 发生异常 --> it = " + thM456exceptionOrNullimpl, false, 2, null);
    }

    @Override
    public void d() {
        String strP;
        String strO;
        g.b(g.f53898a, e() + " --> connect() --> start connect with WifiNetworkSpecifier --> start ....", false, 2, null);
        n0 n0VarG = g();
        if (n0VarG != null) {
            k.d(n0VarG, null, null, new WifiNetworkSpecifierAdapter$doConnect$1(this, null), 3, null);
        }
        WifiNetworkSpecifier.Builder builderA = y.a();
        du.a aVarI = i();
        String str = "";
        if (aVarI == null || (strP = aVarI.p()) == null) {
            strP = "";
        }
        WifiNetworkSpecifier.Builder ssid = builderA.setSsid(strP);
        Intrinsics.g(ssid, "setSsid(...)");
        du.a aVarI2 = i();
        if (!TextUtils.isEmpty(aVarI2 != null ? aVarI2.o() : null)) {
            du.a aVarI3 = i();
            if (aVarI3 != null && (strO = aVarI3.o()) != null) {
                str = strO;
            }
            ssid.setWpa2Passphrase(str);
        }
        q().requestNetwork(new NetworkRequest.Builder().addTransportType(1).removeCapability(12).setNetworkSpecifier(w.a(ssid.build())).build(), this.f53802f);
    }
}
