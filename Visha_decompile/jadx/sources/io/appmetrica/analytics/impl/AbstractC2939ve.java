package io.appmetrica.analytics.impl;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.Locale;

public abstract class AbstractC2939ve {
    public static final SafePackageManager a = new SafePackageManager();
    public static final C2815qe b = new C2815qe();
    public static final C2839re c = new C2839re();
    public static final C2864se d = new C2864se(2);

    public static String a(Locale locale) {
        String language = locale.getLanguage();
        String country = locale.getCountry();
        StringBuilder sb = new StringBuilder(language);
        String script = locale.getScript();
        if (!TextUtils.isEmpty(script)) {
            sb.append('-');
            sb.append(script);
        }
        if (!TextUtils.isEmpty(country)) {
            sb.append('_');
            sb.append(country);
        }
        return sb.toString();
    }

    public static EnumC2914ue a(ConnectivityManager connectivityManager) {
        NetworkInfo networkInfo;
        EnumC2914ue enumC2914ue = EnumC2914ue.UNDEFINED;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (!AndroidUtils.isApiAchieved(29) ? !(activeNetwork != null && ((networkInfo = connectivityManager.getNetworkInfo(activeNetwork)) == null || networkInfo.isConnected())) : activeNetwork == null) {
            return EnumC2914ue.OFFLINE;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
        if (networkCapabilities == null) {
            return enumC2914ue;
        }
        for (Integer num : c.a.keySet()) {
            if (networkCapabilities.hasTransport(num.intValue())) {
                return (EnumC2914ue) c.a(num);
            }
        }
        return enumC2914ue;
    }
}
