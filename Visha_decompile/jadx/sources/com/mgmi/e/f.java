package com.mgmi.e;

import android.content.Context;
import android.text.TextUtils;
import cn.com.custommma.mobile.tracking.api.Countly;
import cn.com.custommma.mobile.tracking.viewability.origin.CallBack;
import com.mgadplus.mgutil.SourceKitLogger;
import java.util.Iterator;
import java.util.List;

public final class f {
    public static String a() {
        return "1";
    }

    public static void b(String str, boolean z) {
        if (str == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Countly.l().g(c(str, z), null, 1, new CallBack() {
                @Override
                public void onFailed(String str2) {
                }

                @Override
                public void onSuccess(String str2) {
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static String c(String str, boolean z) {
        if (!z) {
            return str;
        }
        return str + "trackmkmgtv";
    }

    public static void a(Context context) {
        SourceKitLogger.a("lyzzzz", "mma_init");
        Countly countlyL = Countly.l();
        try {
            countlyL.k(false);
            countlyL.d(context, "http://mobile.da.mgtv.com/mmasdk_v2.xml");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(List<String> list, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Countly countlyL = Countly.l();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            try {
                countlyL.g(c(it.next(), z), null, 1, new CallBack() {
                    @Override
                    public void onFailed(String str) {
                    }

                    @Override
                    public void onSuccess(String str) {
                    }
                });
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(String str, boolean z) {
        if (str == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Countly.l().f(c(str, z), new CallBack() {
                @Override
                public void onFailed(String str2) {
                }

                @Override
                public void onSuccess(String str2) {
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
