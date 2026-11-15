package com.hunantv.imgo.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.hunantv.imgo.data.EventClickData;
import com.mgtv.ssp.R;
import com.mgtv.ssp.activity.SspCommonWebActivity;
import java.net.URLEncoder;

public class k {

    public interface a {
        void a();
    }

    public static boolean a(Context context, String str, boolean z) {
        return a(context, str, z, null);
    }

    public static boolean a(Context context, String str, boolean z, a aVar) {
        if (u.f(str)) {
            Activity activityA = com.hunantv.imgo.util.a.a(context);
            if (activityA != null) {
                if (com.hunantv.imgo.util.a.a(activityA, str) != null) {
                    if (z && u.g(str)) {
                        a(activityA, str, aVar);
                        return true;
                    }
                    com.hunantv.imgo.util.a.b(activityA, str);
                    if (aVar == null) {
                        return true;
                    }
                    aVar.a();
                    return true;
                }
            } else if (context != null && com.hunantv.imgo.util.a.a(context, str) != null) {
                com.hunantv.imgo.util.a.b(context, str);
                if (aVar == null) {
                    return true;
                }
                aVar.a();
                return true;
            }
        }
        return false;
    }

    private static void a(final Context context, final String str, final a aVar) {
        try {
            final com.hunantv.imgo.b.b bVar = new com.hunantv.imgo.b.b(context);
            bVar.a(R.string.ssp_confim_leave).b(R.string.ssp_common_cancel).c(R.string.ssp_common_confim).a(new com.hunantv.imgo.b.b.C0127b(bVar) {
                @Override
                public void a() {
                    super.a();
                    bVar.dismiss();
                }

                @Override
                public void b() {
                    super.b();
                    bVar.dismiss();
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    com.hunantv.imgo.util.a.b(context, str);
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                }
            }).b();
        } catch (Exception unused) {
            com.hunantv.imgo.util.a.b(context, str);
        }
    }

    public static void a(Context context, final String str, String str2, int i, final String str3, final String str4, final String str5) {
        String strEncode;
        if (a(context, str, i == 1, new a() {
            @Override
            public void a() {
                String strEncode2;
                try {
                    strEncode2 = URLEncoder.encode("vcode=" + str4 + "&jump=" + URLEncoder.encode(str, "UTF-8") + "&from=" + str5, "UTF-8");
                } catch (Throwable unused) {
                    strEncode2 = "";
                }
                String str6 = strEncode2;
                com.hunantv.imgo.a.e eVar = new com.hunantv.imgo.a.e(null);
                EventClickData eventClickData = new EventClickData(u.a(), "downdiver", "1", str6, str3);
                eventClickData.setCpid(str4);
                eVar.a(eventClickData);
            }
        }) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (u.b(str2)) {
            Intent intent = new Intent(context, (Class<?>) SspCommonWebActivity.class);
            intent.putExtra("vcode", str4);
            intent.putExtra("webUrl", str2);
            com.hunantv.imgo.util.a.a(context, intent);
        } else {
            com.hunantv.imgo.util.a.b(context, str2);
        }
        try {
            strEncode = URLEncoder.encode("vcode=" + str4 + "&jump=" + URLEncoder.encode(str2, "UTF-8") + "&from=" + str5, "UTF-8");
        } catch (Throwable unused) {
            strEncode = "";
        }
        String str6 = strEncode;
        com.hunantv.imgo.a.e eVar = new com.hunantv.imgo.a.e(context);
        EventClickData eventClickData = new EventClickData(u.a(), "downdiver", "1", str6, str3);
        eventClickData.setCpid(str4);
        eVar.a(eventClickData);
    }
}
