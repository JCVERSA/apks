package com.transsion.transfer.wifi.create;

import android.provider.Settings;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.wifi.create.adapter.P2PWifiAdapter;
import com.transsion.transfer.wifi.create.adapter.b;
import com.transsion.transfer.wifi.create.adapter.c;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.f;
import com.transsion.transfer.wifi.util.g;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

public final class WifiCreateManager implements a {

    public static final WifiCreateManager f53810a = new WifiCreateManager();

    private static a f53811b;

    private static b f53812c;

    private static long f53813d;

    private WifiCreateManager() {
    }

    private final String h() {
        String simpleName = WifiCreateManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final b i() {
        if (WifiUtils.f53888a.q()) {
            g.b(g.f53898a, h() + " --> initWifiAdapterWithAndroidVersion() --> wifiManager.isP2pSupported -> P2pWifiAdapter()", false, 2, null);
            return new P2PWifiAdapter();
        }
        if (Settings.System.canWrite(Utils.a().getApplicationContext())) {
            g.b(g.f53898a, h() + " --> initWifiAdapterWithAndroidVersion() --> checkCanWriteSetting(TransBaseApplication.CONTEXT) -> ApWifiAdapter()", false, 2, null);
            return new com.transsion.transfer.wifi.create.adapter.a();
        }
        g.b(g.f53898a, h() + " --> initWifiAdapterWithAndroidVersion() --> else -> LocalHostWifiAdapter()", false, 2, null);
        return new c();
    }

    @Override
    public void a(du.a aVar, long j10) {
        a aVar2 = f53811b;
        if (aVar2 != null) {
            aVar2.a(aVar, System.currentTimeMillis() - f53813d);
        }
    }

    @Override
    public void b(int i10, long j10) {
        a aVar = f53811b;
        if (aVar != null) {
            aVar.b(i10, System.currentTimeMillis() - f53813d);
        }
        j();
    }

    public final void g(du.a wifiInfoModel, n0 scope, a listener) {
        Intrinsics.h(wifiInfoModel, "wifiInfoModel");
        Intrinsics.h(scope, "scope");
        Intrinsics.h(listener, "listener");
        k.d(scope, null, null, new WifiCreateManager$createWifi$1(listener, wifiInfoModel, scope, null), 3, null);
    }

    public final void j() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            f53811b = null;
            g gVar = g.f53898a;
            WifiCreateManager wifiCreateManager = f53810a;
            g.h(gVar, wifiCreateManager.h() + " --> releaseWifi() --> 发送端开始释放资源", false, 2, null);
            WifiUtils.f53888a.x();
            cu.a.f58653a.b();
            f.f53895a.c();
            b bVar = f53812c;
            if (bVar != null) {
                bVar.f();
            } else {
                g.b(gVar, wifiCreateManager.h() + " --> releaseWifi() --> wifiAdapter == null", false, 2, null);
            }
            f53812c = null;
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f53898a, f53810a.h() + " --> releaseWifi() --> exception = " + thM456exceptionOrNullimpl, false, 2, null);
    }

    @Override
    public void onStart() {
        f53813d = System.currentTimeMillis();
        cu.c.f58656a.k();
        a aVar = f53811b;
        if (aVar != null) {
            aVar.onStart();
        }
    }
}
