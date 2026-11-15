package com.yandex.mobile.ads.impl;

import android.util.Log;
import defpackage.g1a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class l92 {
    private static final List<String> a = defpackage.y71.n("The integrated version of the Yandex Mobile Ads SDK is outdated.", "Please update com.yandex.android:mobileads to the latest version.");

    private static String a(int i, String str) {
        return "* " + str + g1a.J(" ", i - str.length()) + " *";
    }

    public static void b() {
        Integer numValueOf;
        List listJ0 = defpackage.i81.J0(defpackage.i81.J0(a, defpackage.y71.n("Learn more about the latest version of the SDK here:", "https://yandex.ru/dev/mobile-ads/doc/android/quick-start/android-ads-component.html")), a());
        Iterator it = listJ0.iterator();
        String strY0 = null;
        if (it.hasNext()) {
            numValueOf = Integer.valueOf(((String) it.next()).length());
            while (it.hasNext()) {
                Integer numValueOf2 = Integer.valueOf(((String) it.next()).length());
                if (numValueOf.compareTo(numValueOf2) < 0) {
                    numValueOf = numValueOf2;
                }
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf != null) {
            int iIntValue = numValueOf.intValue();
            String strJ = g1a.J("*", iIntValue + 4);
            ArrayList arrayList = new ArrayList(defpackage.z71.v(listJ0, 10));
            Iterator it2 = listJ0.iterator();
            while (it2.hasNext()) {
                arrayList.add(a(iIntValue, (String) it2.next()));
            }
            strY0 = defpackage.i81.y0(defpackage.i81.K0(defpackage.i81.J0(defpackage.x71.e(strJ), arrayList), strJ), "\n", null, null, 0, null, null, 62, null);
        }
        Log.e("Yandex Mobile Ads", "Yandex Mobile Ads version validation\n" + strY0 + "\n");
    }

    private static List a() {
        if (hm.a() != null) {
            return defpackage.x71.e("Changelog: " + hm.a());
        }
        return defpackage.y71.k();
    }
}
