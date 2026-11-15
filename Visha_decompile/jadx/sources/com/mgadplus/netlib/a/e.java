package com.mgadplus.netlib.a;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import defpackage.g4d;
import defpackage.mpd;
import defpackage.n4d;
import defpackage.r7d;

public class e {
    public static String a(String str) {
        String str2;
        String[] strArrSplit = str.split("&");
        if (strArrSplit != null && strArrSplit.length > 0) {
            int i = 0;
            while (true) {
                if (i >= strArrSplit.length) {
                    str2 = null;
                    break;
                }
                if (strArrSplit[i].startsWith("id=")) {
                    str2 = strArrSplit[i];
                    break;
                }
                i++;
            }
        } else {
            str2 = null;
            break;
        }
        if (str2 == null) {
            return str2;
        }
        try {
            return str2.length() > 3 ? str2.substring(3) : str2;
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static void a(Context context, com.mgmi.net.a.a aVar) {
        try {
            String host = Uri.parse(aVar.a()).getHost();
            if (!host.contains(ImgoP2pConstants.MANGO_FIXED_HOST) && !host.contains("mgtv.com")) {
                return;
            }
            String strI = g4d.i(mpd.F(context));
            String strA = a(aVar.a());
            String strJ = null;
            if (!TextUtils.isEmpty(strA)) {
                try {
                    strJ = n4d.j(strI + "^" + String.valueOf(System.currentTimeMillis() / 1000), strA);
                } catch (Exception unused) {
                }
            }
            if (TextUtils.isEmpty(strJ)) {
                return;
            }
            aVar.a(aVar.a() + "&auver=v1");
            aVar.a(aVar.a() + "&au=" + g4d.b(strJ));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static String a(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String host = Uri.parse(str).getHost();
        if (!host.contains(ImgoP2pConstants.MANGO_FIXED_HOST) && !host.contains("mgtv.com")) {
            return str;
        }
        String strI = g4d.i(mpd.F(context));
        String strA = a(str);
        String strJ = null;
        if (!TextUtils.isEmpty(strA)) {
            try {
                strJ = n4d.j(strI + "^" + String.valueOf(System.currentTimeMillis() / 1000), strA);
            } catch (Exception unused) {
            }
        }
        if (TextUtils.isEmpty(strJ)) {
            return str;
        }
        return (str + "&auver=v1") + "&au=" + g4d.b(strJ);
    }

    public static void a(@NonNull com.mgmi.net.a.a aVar, com.mgadplus.netlib.base.b bVar) {
        a(com.mgmi.ads.api.c.a(), aVar);
        b.c().a(aVar, bVar);
    }

    public static void a(Context context, a aVar, com.mgadplus.netlib.base.b bVar) {
        b.c().a(context, aVar, bVar);
    }

    public static void a(r7d r7dVar) {
        b.c().a(r7dVar);
    }
}
