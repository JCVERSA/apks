package cu;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.wifi.util.g;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f58653a = new a();

    private static Network f58654b;

    private a() {
    }

    private final String a() {
        String simpleName = a.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (f58654b != null) {
                f58654b = null;
            }
            Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager != null) {
                connectivityManager.bindProcessToNetwork(null);
            }
            g.b(g.f53898a, f58653a.a() + " --> releaseDefaultNetwork() --> Success", false, 2, null);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f53898a, f58653a.a() + " --> releaseDefaultNetwork() --> it = " + thM456exceptionOrNullimpl, false, 2, null);
    }

    public final boolean c() {
        NetworkInfo networkInfo;
        Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        int i10 = 0;
        boolean z10 = false;
        do {
            i10++;
            Network[] allNetworks = connectivityManager.getAllNetworks();
            Intrinsics.g(allNetworks, "getAllNetworks(...)");
            g.b(g.f53898a, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork size = " + allNetworks.length, false, 2, null);
            int length = allNetworks.length;
            for (int i11 = 0; i11 < length; i11++) {
                Network network = allNetworks[i11];
                try {
                    networkInfo = connectivityManager.getNetworkInfo(network);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    networkInfo = null;
                }
                g gVar = g.f53898a;
                g.b(gVar, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork = " + networkInfo + ", network = " + network, false, 2, null);
                if (networkInfo != null && networkInfo.getType() == 1) {
                    g.b(gVar, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork2 = " + network, false, 2, null);
                    f58654b = network;
                    connectivityManager.bindProcessToNetwork(network);
                    z10 = true;
                }
            }
            if (z10) {
                g.b(g.f53898a, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork OK!", false, 2, null);
                break;
            }
            g.b(g.f53898a, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork failed, start to sleep", false, 2, null);
        } while (i10 < 20);
        return z10;
    }
}
