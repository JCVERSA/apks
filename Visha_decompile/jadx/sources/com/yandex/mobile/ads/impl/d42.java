package com.yandex.mobile.ads.impl;

import android.os.Build;
import com.mgtv.easydatasource.flowreporter.BuildConfig;
import defpackage.y45;

public final class d42 implements b92 {
    @Override
    public final String a() {
        String property;
        String property2 = null;
        try {
            property = System.getProperty("http.agent");
        } catch (Exception unused) {
            sp0.b(new Object[0]);
            property = null;
        }
        if (property != null && property.length() != 0) {
            return property;
        }
        StringBuilder sb = new StringBuilder(64);
        sb.append("Dalvik/");
        try {
            property2 = System.getProperty("java.vm.version");
        } catch (Exception unused2) {
            sp0.b(new Object[0]);
        }
        if (property2 == null || property2.length() == 0) {
            property2 = "1.0.0";
        }
        sb.append(property2);
        sb.append(" (Linux; U; Android ");
        String str = Build.VERSION.RELEASE;
        if (str.length() == 0) {
            str = BuildConfig.VERSION_NAME;
        }
        sb.append(str);
        if (y45.e("REL", Build.VERSION.CODENAME)) {
            String str2 = Build.MODEL;
            y45.g(str2);
            if (str2.length() > 0) {
                sb.append("; ");
                sb.append(str2);
            }
        }
        String str3 = Build.ID;
        y45.g(str3);
        if (str3.length() > 0) {
            sb.append(" Build/");
            sb.append(str3);
        }
        sb.append(")");
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }
}
