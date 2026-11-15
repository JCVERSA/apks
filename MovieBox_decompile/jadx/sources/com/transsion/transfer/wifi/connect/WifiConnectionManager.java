package com.transsion.transfer.wifi.connect;

import android.app.Application;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.blankj.utilcode.util.ToastUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.R$string;
import com.transsion.transfer.wifi.connect.adapter.AddNetWorkConnectAdapter;
import com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter;
import com.transsion.transfer.wifi.connect.adapter.DirectConnectAdapter;
import com.transsion.transfer.wifi.connect.adapter.WifiNetworkSpecifierAdapter;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.f;
import com.transsion.transfer.wifi.util.g;
import cu.c;
import java.net.InetAddress;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

public final class WifiConnectionManager implements b {

    public static final WifiConnectionManager f53760a = new WifiConnectionManager();

    private static AppCompatActivity f53761b;

    private static n0 f53762c;

    private static du.a f53763d;

    private static b f53764e;

    private static DirectConnectAdapter f53765f;

    private static WifiNetworkSpecifierAdapter f53766g;

    private static AddNetWorkConnectAdapter f53767h;

    private static long f53768i;

    private static volatile boolean f53769j;

    private WifiConnectionManager() {
    }

    private final void m() {
        g.b(g.f53898a, o() + " --> connect() --> SDK_INT或targetSdkVersion版本 < (Q = 29) Android 10", false, 2, null);
        if (f53767h == null) {
            f53767h = new AddNetWorkConnectAdapter();
        }
        AddNetWorkConnectAdapter addNetWorkConnectAdapter = f53767h;
        if (addNetWorkConnectAdapter != null) {
            BaseWifiConnectAdapter.b(addNetWorkConnectAdapter, null, f53763d, f53762c, this, 1, null);
        }
    }

    public final String o() {
        String simpleName = WifiConnectionManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final Object p(Continuation continuation) {
        return i.g(y0.b(), new WifiConnectionManager$getCorrectAddNetAddress$2(null), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0039  */
    public final void q() {
        boolean z10;
        String strP;
        g gVar = g.f53898a;
        g.b(gVar, o() + " --> innerConnect() --> 建立 Wi-Fi 连接 --> start ....", false, 2, null);
        du.a aVar = f53763d;
        if (aVar != null && (strP = aVar.p()) != null) {
            z10 = StringsKt.W(strP, "DIRECT-", false, 2, null) && WifiUtils.f53888a.q();
        }
        du.a aVar2 = f53763d;
        if (TextUtils.isEmpty(aVar2 != null ? aVar2.p() : null)) {
            g.d(gVar, o() + " --> innerConnect() --> wifiInfoModel.wifiSsid is empty --> return", false, 2, null);
            b(2000);
            return;
        }
        WifiUtils wifiUtils = WifiUtils.f53888a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        boolean zR = wifiUtils.r(applicationA);
        if (z10 && !zR) {
            r();
        } else if (zR) {
            m();
        } else {
            w();
        }
    }

    private final void r() {
        g.b(g.f53898a, o() + " --> connect() --> 支持(Wi-Fi P2P) 且SDK_INT或targetSdkVersion版本 >= (Q = 29) -- Android 10", false, 2, null);
        Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ((ConnectivityManager) systemService).bindProcessToNetwork(null);
        if (f53765f == null) {
            f53765f = new DirectConnectAdapter();
        }
        DirectConnectAdapter directConnectAdapter = f53765f;
        if (directConnectAdapter != null) {
            BaseWifiConnectAdapter.b(directConnectAdapter, null, f53763d, f53762c, this, 1, null);
        }
    }

    public final void t() {
        f.f53895a.c();
        WifiUtils.f53888a.x();
        DirectConnectAdapter directConnectAdapter = f53765f;
        if (directConnectAdapter != null) {
            directConnectAdapter.k();
        }
        f53765f = null;
        AddNetWorkConnectAdapter addNetWorkConnectAdapter = f53767h;
        if (addNetWorkConnectAdapter != null) {
            addNetWorkConnectAdapter.k();
        }
        f53767h = null;
        WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter = f53766g;
        if (wifiNetworkSpecifierAdapter != null) {
            wifiNetworkSpecifierAdapter.k();
        }
        f53766g = null;
    }

    private final void u(int i10) {
        g.b(g.f53898a, o() + " --> resolveIP(netId: Int) --> 成功建立连接 --> 开始解析IP地址 -- netId = " + i10, false, 2, null);
        n0 n0Var = f53762c;
        if (n0Var != null) {
            k.d(n0Var, y0.c(), null, new WifiConnectionManager$resolveIP$2(null), 2, null);
        }
    }

    private final void v(InetAddress inetAddress) {
        String hostAddress;
        g gVar = g.f53898a;
        g.b(gVar, o() + " --> resolveIP(address: InetAddress?) --> 成功建立连接 --> 开始解析IP地址", false, 2, null);
        if (TextUtils.isEmpty(inetAddress != null ? inetAddress.getHostAddress() : null)) {
            n0 n0Var = f53762c;
            if (n0Var != null) {
                k.d(n0Var, y0.c(), null, new WifiConnectionManager$resolveIP$1(null), 2, null);
                return;
            }
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - f53768i;
        g.b(gVar, o() + " --> resolveIP(address: InetAddress?) --> 非系统级应用P2P连接成功耗时 = " + jCurrentTimeMillis + " -- ip = " + (inetAddress != null ? inetAddress.getHostAddress() : null), false, 2, null);
        if (inetAddress == null || (hostAddress = inetAddress.getHostAddress()) == null) {
            hostAddress = "";
        }
        e(hostAddress);
    }

    private final void w() {
        if (Build.VERSION.SDK_INT >= 29) {
            g.b(g.f53898a, o() + " --> connect() --> 不支持(Wi-Fi P2P) 且SDK_INT或targetSdkVersion版本 >= (Q = 29) -- Android 10", false, 2, null);
            if (f53766g == null) {
                f53766g = new WifiNetworkSpecifierAdapter();
            }
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter = f53766g;
            if (wifiNetworkSpecifierAdapter != null) {
                wifiNetworkSpecifierAdapter.a(f53761b, f53763d, f53762c, this);
            }
        }
    }

    @Override
    public void a(Network network) {
        b.a.b(this, network);
    }

    @Override
    public void b(int i10) {
        g.d(g.f53898a, o() + " --> onFail() --> code = " + i10, false, 2, null);
        if (i10 == 2001 || i10 == 2012) {
            c.f58656a.d();
        } else {
            c.f58656a.e(i10);
        }
        n0 n0Var = f53762c;
        if (n0Var != null) {
            k.d(n0Var, null, null, new WifiConnectionManager$onFail$1(i10, null), 3, null);
        }
    }

    @Override
    public void c(InetAddress inetAddress) {
        v(inetAddress);
    }

    @Override
    public void d(int i10) {
        u(i10);
    }

    @Override
    public void e(String ip2) {
        Intrinsics.h(ip2, "ip");
        b.a.c(this, ip2);
        c.f58656a.f(System.currentTimeMillis() - f53768i);
        f53769j = false;
        b bVar = f53764e;
        if (bVar != null) {
            bVar.e(ip2);
        }
    }

    public final void n(AppCompatActivity appCompatActivity, du.a aVar, n0 n0Var, b bVar) {
        if (f53769j) {
            ToastUtils.s(Utils.a().getResources().getString(R$string.transfer_wifi_connect_error_tip), new Object[0]);
            g.b(g.f53898a, o() + " --> connectWifi() --> 已经有一个任务在连接了，请稍后", false, 2, null);
            return;
        }
        f53769j = true;
        f53768i = System.currentTimeMillis();
        f53762c = n0Var;
        f53763d = aVar;
        f53761b = appCompatActivity;
        f53764e = bVar;
        onStart();
        n0 n0Var2 = f53762c;
        if (n0Var2 != null) {
            k.d(n0Var2, null, null, new WifiConnectionManager$connect$1(null), 3, null);
        }
    }

    @Override
    public void onStart() {
        c.f58656a.g();
        b bVar = f53764e;
        if (bVar != null) {
            bVar.onStart();
        }
    }

    public final void s() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            g gVar = g.f53898a;
            WifiConnectionManager wifiConnectionManager = f53760a;
            g.h(gVar, wifiConnectionManager.o() + " --> release() --> 接收端开始释放资源", false, 2, null);
            f53764e = null;
            f53762c = null;
            f53769j = false;
            f53768i = 0L;
            wifiConnectionManager.t();
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f53898a, f53760a.o() + " --> release() --> it = " + thM456exceptionOrNullimpl, false, 2, null);
    }
}
