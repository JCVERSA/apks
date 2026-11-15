package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Base64;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j1a;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class oa {
    private static final long a = (long) (Math.floor(Math.random() * MuxerUtil.UNSIGNED_INT_MAX_VALUE) + ((double) 1));
    public static final int b = 0;

    private static String a(String str, Map map) {
        if (map == null) {
            return str;
        }
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            Uri uri = Uri.parse("?" + ((String) entry.getKey()) + "=" + ((String) entry.getValue()));
            for (String str2 : uri.getQueryParameterNames()) {
                builderBuildUpon.appendQueryParameter(str2, uri.getQueryParameter(str2));
            }
        }
        String string = builderBuildUpon.build().toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public static final ArrayList a(o8 o8Var, Map map) {
        fy1 fy1Var;
        y45.j(o8Var, "adResponse");
        List<String> listL = o8Var.l();
        List<Long> listF = o8Var.f();
        List<Integer> listQ = o8Var.q();
        ArrayList arrayList = new ArrayList();
        if (listL != null && listF != null && listQ != null) {
            int size = listL.size();
            int i = 0;
            while (i < size) {
                String strA = a(listL.get(i), map);
                long jLongValue = listF.size() > i ? listF.get(i).longValue() : 0L;
                int iIntValue = listQ.size() > i ? listQ.get(i).intValue() : 0;
                y45.j(strA, "url");
                if (j1a.X(strA, "/rtbcount/", false, 2, null)) {
                    fy1Var = fy1.c;
                } else if (j1a.X(strA, "/count/", false, 2, null)) {
                    fy1Var = fy1.b;
                } else {
                    fy1Var = fy1.d;
                }
                arrayList.add(new ey1(iIntValue, jLongValue, fy1Var, strA));
                i++;
            }
        }
        return arrayList;
    }

    public static Bitmap a(String str) {
        y45.j(str, "data");
        try {
            String strSubstring = str.substring(j1a.m0(str, StringUtils.COMMA, 0, false, 6, null) + 1);
            y45.i(strSubstring, "substring(...)");
            if (strSubstring.length() <= 0) {
                return null;
            }
            byte[] bArrDecode = Base64.decode(strSubstring, 0);
            return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Exception unused) {
            return null;
        }
    }

    public static final <T> String a(T t) {
        String string = t != null ? t.toString() : null;
        return string == null ? "" : string;
    }

    public static boolean a(ro roVar) {
        return roVar == null || roVar.a();
    }

    public static final boolean a(Context context) {
        y45.j(context, "context");
        try {
            return sj2.a(context) != null;
        } catch (Throwable unused) {
        }
    }

    public static long a() {
        return a;
    }
}
