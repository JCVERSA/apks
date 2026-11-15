package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

public class pz6 extends ConnectivityManager.NetworkCallback {
    public final vz6 a;
    public Context b;

    public pz6(Context context, vz6 vz6Var) {
        this.a = vz6Var;
        this.b = context;
    }

    public static int a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (!b(context) || activeNetworkInfo == null) {
            return 0;
        }
        if (activeNetworkInfo.getType() == 1) {
            return 1;
        }
        if (activeNetworkInfo.getType() != 0) {
            return 0;
        }
        int subtype = activeNetworkInfo.getSubtype();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (subtype == 20) {
            return 5;
        }
        if (subtype == 13 && telephonyManager != null && !telephonyManager.isNetworkRoaming()) {
            return 4;
        }
        int i = 3;
        if (subtype != 3 && subtype != 8 && subtype != 14 && subtype != 10 && subtype != 15 && subtype != 5 && subtype != 6 && subtype != 12) {
            i = 2;
            if (subtype != 1 && subtype != 2 && subtype != 7 && subtype != 4 && subtype != 11) {
                return 6;
            }
        }
        return i;
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) ? false : true;
    }

    public static boolean c(int i) {
        return i == 2 || i == 3 || i == 4 || i == 5;
    }

    @Override
    public void onAvailable(Network network) {
        super.onAvailable(network);
    }

    @Override
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        super.onCapabilitiesChanged(network, networkCapabilities);
        if (networkCapabilities.hasCapability(16)) {
            if (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(5)) {
                vz6 vz6Var = this.a;
                if (vz6Var != null) {
                    vz6Var.onConnect(1);
                    return;
                }
                return;
            }
            if (networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(3)) {
                vz6 vz6Var2 = this.a;
                if (vz6Var2 != null) {
                    vz6Var2.onConnect(a(this.b));
                    return;
                }
                return;
            }
            if (this.a != null) {
                if (e07.e(this.b)) {
                    this.a.unknowNet();
                } else {
                    this.a.onDisconnect();
                }
            }
        }
    }

    @Override
    public void onLost(Network network) {
        super.onLost(network);
        vz6 vz6Var = this.a;
        if (vz6Var != null) {
            vz6Var.onDisconnect();
        }
    }
}
