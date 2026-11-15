package yg;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.lib.util.networkinfo.NetworkType;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class k extends ConnectivityManager.NetworkCallback {

    public static final a f76255g = new a(null);

    private static final Lazy f76256h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return k.A();
        }
    });

    private static final Lazy f76257i = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return k.j();
        }
    });

    private volatile Boolean f76259b;

    private volatile Boolean f76260c;

    private NetworkType f76261d;

    private final CopyOnWriteArrayList f76258a = new CopyOnWriteArrayList();

    private final Function0 f76262e = new Function0() {
        @Override
        public final Object invoke() {
            return k.z(this.f76249a);
        }
    };

    private final Function0 f76263f = new Function0() {
        @Override
        public final Object invoke() {
            return k.H(this.f76250a);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final k a() {
            return (k) k.f76257i.getValue();
        }

        public final Handler b() {
            return (Handler) k.f76256h.getValue();
        }

        private a() {
        }
    }

    public static final Handler A() {
        return new Handler(Looper.getMainLooper());
    }

    public static final void C(k kVar) {
        Context applicationContext;
        try {
            Application applicationA = Utils.a();
            Object systemService = (applicationA == null || (applicationContext = applicationA.getApplicationContext()) == null) ? null : applicationContext.getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), kVar);
            }
        } catch (SecurityException unused) {
        }
    }

    private final void E() {
        Boolean bool = Boolean.FALSE;
        this.f76259b = bool;
        this.f76260c = bool;
        this.f76261d = null;
    }

    private final void F() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(t());
        sb2.append(" --> startTimer() --> 开启定时任务");
        Handler handlerB = f76255g.b();
        final Function0 function0 = this.f76263f;
        handlerB.postDelayed(new Runnable() {
            @Override
            public final void run() {
                k.G(function0);
            }
        }, TmcConstants.DEBUG_REQUEST_TIME_INTERVAL);
    }

    public static final void G(Function0 function0) {
        function0.invoke();
    }

    public static final Unit H(k kVar) {
        l lVar = l.f76264a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        kVar.f76260c = Boolean.valueOf(lVar.i(applicationA));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(kVar.t());
        sb2.append(" --> timerRunnable --> isValidated = ");
        sb2.append(kVar.f76260c);
        kVar.F();
        return Unit.f64096a;
    }

    public static final k j() {
        return new k();
    }

    private final void m(final Network network, final NetworkCapabilities networkCapabilities) {
        if (networkCapabilities.hasCapability(12)) {
            Boolean bool = this.f76259b;
            Boolean bool2 = Boolean.TRUE;
            if (Intrinsics.c(bool, bool2)) {
                return;
            }
            this.f76259b = bool2;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(t());
            sb2.append(" --> onCapabilitiesChanged --> disposeConnect --> 表示是否连接上了互联网（不关心是否可以上网");
            f76255g.b().post(new Runnable() {
                @Override
                public final void run() {
                    k.n(this.f76246a, network, networkCapabilities);
                }
            });
        }
    }

    public static final void n(k kVar, Network network, NetworkCapabilities networkCapabilities) {
        for (m mVar : kVar.f76258a) {
            if (Intrinsics.c(kVar.f76259b, Boolean.TRUE)) {
                mVar.onConnected(network, networkCapabilities);
            }
        }
    }

    private final void o(NetworkCapabilities networkCapabilities) {
        NetworkType networkTypeV;
        if (networkCapabilities.hasTransport(1)) {
            networkTypeV = NetworkType.NETWORK_WIFI;
        } else {
            networkTypeV = networkCapabilities.hasTransport(0) ? v() : NetworkType.NETWORK_UNKNOWN;
        }
        if (this.f76261d == networkTypeV) {
            return;
        }
        this.f76261d = networkTypeV;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("当前网络类型是 mNetworkType = ");
        sb2.append(this.f76261d);
    }

    private final void p() {
        a aVar = f76255g;
        Handler handlerB = aVar.b();
        final Function0 function0 = this.f76262e;
        handlerB.removeCallbacks(new Runnable() {
            @Override
            public final void run() {
                k.q(function0);
            }
        });
        Handler handlerB2 = aVar.b();
        final Function0 function1 = this.f76262e;
        handlerB2.postDelayed(new Runnable() {
            @Override
            public final void run() {
                k.r(function1);
            }
        }, 1000L);
    }

    public static final void q(Function0 function0) {
        function0.invoke();
    }

    public static final void r(Function0 function0) {
        function0.invoke();
    }

    private final void s(NetworkCapabilities networkCapabilities) {
        this.f76260c = Boolean.valueOf(networkCapabilities.hasCapability(16));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(t());
        sb2.append(" --> disposeValidated() --> isValidated = ");
        sb2.append(this.f76260c);
        sb2.append(" netState = ");
        sb2.append(u());
    }

    private final String t() {
        String simpleName = k.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final NetworkType v() {
        if (Build.VERSION.SDK_INT < 24) {
            return l.f76264a.d();
        }
        if (androidx.core.content.b.checkSelfPermission(Utils.a(), "android.permission.READ_PHONE_STATE") != 0) {
            return l.f76264a.d();
        }
        TelephonyManager telephonyManager = (TelephonyManager) Utils.a().getSystemService("phone");
        Integer numValueOf = telephonyManager != null ? Integer.valueOf(telephonyManager.getDataNetworkType()) : null;
        if ((numValueOf != null && numValueOf.intValue() == 1) || ((numValueOf != null && numValueOf.intValue() == 2) || ((numValueOf != null && numValueOf.intValue() == 4) || ((numValueOf != null && numValueOf.intValue() == 11) || (numValueOf != null && numValueOf.intValue() == 7))))) {
            return NetworkType.NETWORK_2G;
        }
        if ((numValueOf != null && numValueOf.intValue() == 5) || ((numValueOf != null && numValueOf.intValue() == 6) || ((numValueOf != null && numValueOf.intValue() == 12) || ((numValueOf != null && numValueOf.intValue() == 8) || ((numValueOf != null && numValueOf.intValue() == 9) || ((numValueOf != null && numValueOf.intValue() == 10) || ((numValueOf != null && numValueOf.intValue() == 15) || (numValueOf != null && numValueOf.intValue() == 14)))))))) {
            return NetworkType.NETWORK_3G;
        }
        if ((numValueOf != null && numValueOf.intValue() == 13) || (numValueOf != null && numValueOf.intValue() == 19)) {
            return NetworkType.NETWORK_4G;
        }
        if (numValueOf != null && numValueOf.intValue() == 20) {
            return NetworkType.NETWORK_5G;
        }
        return (numValueOf != null && numValueOf.intValue() == 0) ? NetworkType.NETWORK_UNKNOWN : NetworkType.NETWORK_UNKNOWN;
    }

    private final boolean y() {
        if (this.f76260c != null) {
            return Intrinsics.c(this.f76260c, Boolean.TRUE);
        }
        l lVar = l.f76264a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return lVar.i(applicationA);
    }

    public static final Unit z(k kVar) {
        l lVar = l.f76264a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        boolean zJ = lVar.j(applicationA);
        Application applicationA2 = Utils.a();
        Intrinsics.g(applicationA2, "getApp(...)");
        kVar.f76260c = Boolean.valueOf(lVar.i(applicationA2));
        int iU = kVar.u();
        if (zJ) {
            kVar.f76259b = Boolean.TRUE;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(kVar.t());
            sb2.append(" --> onLost() --> disposeOnLost --> lostRunnable --> networkConnected = ");
            sb2.append(zJ);
            sb2.append(" netState = ");
            sb2.append(iU);
            sb2.append(" --  网络重新连接了");
            for (m mVar : kVar.f76258a) {
                if (Intrinsics.c(kVar.f76259b, Boolean.TRUE)) {
                    mVar.onConnected();
                }
            }
        } else {
            kVar.E();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(kVar.t());
            sb3.append(" --> onLost() --> disposeOnLost --> lostRunnable --> networkConnected = ");
            sb3.append(zJ);
            sb3.append(" netState = ");
            sb3.append(iU);
            sb3.append(" -- 网络断开了");
            for (m mVar2 : kVar.f76258a) {
                if (Intrinsics.c(kVar.f76259b, Boolean.FALSE)) {
                    mVar2.onDisconnected();
                }
            }
        }
        return Unit.f64096a;
    }

    public final void B() {
        Context applicationContext;
        try {
            Application applicationA = Utils.a();
            Object systemService = (applicationA == null || (applicationContext = applicationA.getApplicationContext()) == null) ? null : applicationContext.getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), this);
            }
        } catch (SecurityException unused) {
            f76255g.b().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    k.C(this.f76251a);
                }
            }, 500L);
        }
        F();
    }

    public final void D(m mVar) {
        if (mVar == null || this.f76258a.contains(mVar)) {
            return;
        }
        this.f76258a.add(mVar);
    }

    public final void I(m mVar) {
        if (mVar != null) {
            this.f76258a.remove(mVar);
        }
    }

    @Override
    public void onAvailable(Network network) {
        Intrinsics.h(network, "network");
        super.onAvailable(network);
    }

    @Override
    public void onBlockedStatusChanged(Network network, boolean z10) {
        Intrinsics.h(network, "network");
        super.onBlockedStatusChanged(network, z10);
    }

    @Override
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        Object objM453constructorimpl;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onCapabilitiesChanged(network, networkCapabilities);
        try {
            Result.Companion companion = Result.INSTANCE;
            m(network, networkCapabilities);
            s(networkCapabilities);
            o(networkCapabilities);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        Log.e("net_log", t() + " --> it = " + thM456exceptionOrNullimpl);
    }

    @Override
    public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        Intrinsics.h(network, "network");
        Intrinsics.h(linkProperties, "linkProperties");
        super.onLinkPropertiesChanged(network, linkProperties);
    }

    @Override
    public void onLosing(Network network, int i10) {
        Intrinsics.h(network, "network");
        super.onLosing(network, i10);
    }

    @Override
    public void onLost(Network network) {
        Intrinsics.h(network, "network");
        super.onLost(network);
        p();
    }

    @Override
    public void onUnavailable() {
        super.onUnavailable();
    }

    public final int u() {
        if (x() && y()) {
            return 2;
        }
        if (x()) {
            return 1;
        }
        return !x() ? 0 : 3;
    }

    public final NetworkType w() {
        NetworkType networkType = this.f76261d;
        if (networkType != null) {
            return networkType;
        }
        l lVar = l.f76264a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        if (lVar.k(applicationA)) {
            NetworkType networkType2 = NetworkType.NETWORK_WIFI;
            this.f76261d = networkType2;
            return networkType2;
        }
        NetworkType networkTypeV = v();
        this.f76261d = networkTypeV;
        return networkTypeV;
    }

    public final boolean x() {
        if (this.f76259b == null) {
            l lVar = l.f76264a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            return lVar.j(applicationA);
        }
        if (!Intrinsics.c(this.f76259b, Boolean.FALSE)) {
            return Intrinsics.c(this.f76259b, Boolean.TRUE);
        }
        l lVar2 = l.f76264a;
        Application applicationA2 = Utils.a();
        Intrinsics.g(applicationA2, "getApp(...)");
        return lVar2.j(applicationA2);
    }
}
