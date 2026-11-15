package defpackage;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Locale;

public final class uk1 {
    public static final uk1 a = new uk1();

    public final String a(Context context) {
        y45.j(context, "context");
        Object systemService = context.getSystemService("phone");
        y45.h(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        TelephonyManager telephonyManager = (TelephonyManager) systemService;
        String simCountryIso = telephonyManager.getSimCountryIso();
        if (TextUtils.isEmpty(simCountryIso)) {
            simCountryIso = telephonyManager.getNetworkCountryIso();
        }
        if (TextUtils.isEmpty(simCountryIso)) {
            simCountryIso = laa.a.a("persist.sys.oobe_country");
        }
        y45.g(simCountryIso);
        String upperCase = simCountryIso.toUpperCase(Locale.ROOT);
        y45.i(upperCase, "toUpperCase(...)");
        return upperCase;
    }
}
