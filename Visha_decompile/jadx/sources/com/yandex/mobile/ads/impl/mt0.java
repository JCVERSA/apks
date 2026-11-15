package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import defpackage.j1a;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

public final class mt0 {
    public static String a(Context context) {
        y45.j(context, "context");
        return (String) a(context, nt0.f.a());
    }

    public static ArrayList b(Context context) {
        List listO0;
        y45.j(context, "context");
        String str = (String) a(context, nt0.g.a());
        if (str != null && (listO0 = j1a.O0(str, new String[]{StringUtils.COMMA}, false, 0, 6, null)) != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : listO0) {
                if (!j1a.o0((String) obj)) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
        }
        return null;
    }

    public static Boolean c(Context context) {
        y45.j(context, "context");
        return (Boolean) a(context, nt0.d.a());
    }

    public static boolean d(Context context) {
        y45.j(context, "context");
        Boolean bool = (Boolean) a(context, nt0.h.a());
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public static boolean e(Context context) {
        y45.j(context, "context");
        Boolean bool = (Boolean) a(context, nt0.c.a());
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public static Boolean f(Context context) {
        y45.j(context, "context");
        return (Boolean) a(context, nt0.e.a());
    }

    public static boolean g(Context context) {
        y45.j(context, "context");
        Boolean bool = (Boolean) a(context, nt0.i.a());
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private static Object a(Context context, String str) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Object obj;
        try {
            try {
                applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            } catch (Throwable unused) {
                sp0.c(new Object[0]);
                applicationInfo = null;
            }
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey(str) || (obj = bundle.get(str)) == null) {
                return null;
            }
            return obj;
        } catch (Throwable unused2) {
            sp0.c(new Object[0]);
            return null;
        }
    }
}
