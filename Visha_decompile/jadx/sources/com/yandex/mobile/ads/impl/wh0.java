package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.commons.lang3.CharEncoding;
import org.apache.commons.lang3.time.TimeZones;

public final class wh0 {
    public static Map<String, String> a(tm.a aVar) {
        if (aVar == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        String str = aVar.b;
        if (str != null) {
            map.put(HttpHeaders.HEAD_KEY_IF_NONE_MATCH, str);
        }
        long j = aVar.d;
        if (j > 0) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
            map.put(HttpHeaders.HEAD_KEY_IF_MODIFIED_SINCE, simpleDateFormat.format(new Date(j)));
        }
        return map;
    }

    @Nullable
    public static tm.a a(xc1 xc1Var) {
        boolean z;
        long j;
        long j2;
        long j3;
        long j4;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = xc1Var.c;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        long jA = str != null ? a(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(StringUtils.COMMA, 0);
            z = false;
            j = 0;
            j2 = 0;
            while (i < strArrSplit.length) {
                String strTrim = strArrSplit[i].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j2 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    z = true;
                }
                i++;
            }
            i = 1;
        } else {
            z = false;
            j = 0;
            j2 = 0;
        }
        String str3 = map.get("Expires");
        long jA2 = str3 != null ? a(str3) : 0L;
        String str4 = map.get(HttpHeaders.HEAD_KEY_LAST_MODIFIED);
        long jA3 = str4 != null ? a(str4) : 0L;
        String str5 = map.get(HttpHeaders.HEAD_KEY_E_TAG);
        if (i != 0) {
            j4 = jCurrentTimeMillis + (j * 1000);
            if (z) {
                j3 = j4;
            } else {
                j3 = j4;
                j4 = (j2 * 1000) + j4;
            }
        } else {
            j3 = 0;
            if (jA <= 0 || jA2 < jA) {
                j4 = 0;
            } else {
                j4 = jCurrentTimeMillis + (jA2 - jA);
                j3 = j4;
            }
        }
        tm.a aVar = new tm.a();
        aVar.a = xc1Var.b;
        aVar.b = str5;
        aVar.f = j3;
        aVar.e = j4;
        aVar.c = jA;
        aVar.d = jA3;
        aVar.g = map;
        aVar.h = xc1Var.d;
        return aVar;
    }

    public static String a(@Nullable Map<String, String> map) {
        String str;
        if (map != null && (str = map.get("Content-Type")) != null) {
            String[] strArrSplit = str.split(ProcessInfo.SPLIT_NEW_VERSION, 0);
            for (int i = 1; i < strArrSplit.length; i++) {
                String[] strArrSplit2 = strArrSplit[i].trim().split("=", 0);
                if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                    return strArrSplit2[1];
                }
            }
        }
        return CharEncoding.ISO_8859_1;
    }

    public static long a(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException unused) {
            if (!"0".equals(str) && !"-1".equals(str)) {
                boolean z = ti2.a;
                sp0.c(str);
                return 0L;
            }
            boolean z2 = ti2.a;
            sp0.e(str);
            return 0L;
        }
    }
}
