package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import java.util.Locale;

public final class v96 {
    public static final v96 a = new v96();

    public final String a() {
        return "";
    }

    public final String b(Context context) {
        y45.j(context, "context");
        Object systemService = context.getSystemService("connectivity");
        y45.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return null;
        }
        Object systemService2 = context.getSystemService("phone");
        y45.h(systemService2, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        return ((TelephonyManager) systemService2).getNetworkCountryIso();
    }

    public final String c() {
        String strF = pp3.f("persist.sys.oobe_country");
        y45.g(strF);
        return strF.length() == 0 ? pp3.f("persist.tr_oobe.country") : strF;
    }

    public final String d(Context context) {
        y45.j(context, "context");
        Object systemService = context.getSystemService("phone");
        y45.h(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        String simCountryIso = ((TelephonyManager) systemService).getSimCountryIso();
        y45.g(simCountryIso);
        if (j1a.o0(simCountryIso)) {
            return null;
        }
        String upperCase = simCountryIso.toUpperCase(Locale.ROOT);
        y45.i(upperCase, "toUpperCase(...)");
        return upperCase;
    }
}
