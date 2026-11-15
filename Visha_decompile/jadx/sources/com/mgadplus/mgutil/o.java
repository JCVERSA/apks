package com.mgadplus.mgutil;

import android.text.TextUtils;
import com.mgmi.ads.api.c;
import com.mgmi.platform.b.b;
import defpackage.g4d;
import defpackage.h2d;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public abstract class o {
    public static String a(String str) {
        String[] strArrK = g4d.k(str);
        if (strArrK == null || strArrK.length <= 0) {
            return "";
        }
        for (String str2 : strArrK) {
            if (!g4d.n(str2) && !g4d.m(str2) && g4d.r(str2)) {
                return str2;
            }
        }
        return "";
    }

    public static void b(String str, String str2) {
        String strA = a(str);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        if (g(strA)) {
            h(str2);
        } else {
            i("0", str2);
        }
    }

    public static void c(String str, List list) {
        String strA = a(str);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        if (g(strA)) {
            d(list);
        } else {
            j("0", list);
        }
    }

    public static void d(final List list) {
        int iF;
        if (list == null || list.size() == 0 || (iF = b.a().f()) <= 0) {
            return;
        }
        new Timer(true).schedule(new TimerTask() {
            @Override
            public void run() {
                if (c.a() == null) {
                    return;
                }
                if (h2d.i(c.a())) {
                    o.j("1", list);
                } else {
                    o.j("2", list);
                }
            }
        }, iF * 1000);
    }

    public static boolean g(String str) {
        return h2d.b(c.a(), str) != null;
    }

    public static void h(final String str) {
        int iF;
        if (!TextUtils.isEmpty(str) && (iF = b.a().f()) > 0) {
            new Timer(true).schedule(new TimerTask() {
                @Override
                public void run() {
                    if (c.a() == null) {
                        return;
                    }
                    if (h2d.i(c.a())) {
                        o.i("1", str);
                    } else {
                        o.i("2", str);
                    }
                }
            }, iF * 1000);
        }
    }

    public static void i(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        com.mgmi.net.b.a().b().a(str2.replace("[EV_KEY]", "app_status").replace("[EV_V1]", str));
    }

    public static void j(String str, List list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i(str, (String) it.next());
        }
    }
}
