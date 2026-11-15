package com.android.net.toolbox;

import com.android.net.v;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import org.apache.commons.lang3.CharEncoding;
import org.apache.commons.lang3.time.TimeZones;

public final class g {
    private static long a(String str) {
        try {
            return a().parse(str).getTime();
        } catch (ParseException e) {
            v.a(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    public static List<com.android.net.g> b(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new com.android.net.g(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    public static com.android.net.b.a a(com.android.net.k kVar) {
        boolean z;
        long j;
        long j2;
        long j3;
        long j4;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = kVar.c;
        String str = map.get("Date");
        long jA = str != null ? a(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(StringUtils.COMMA);
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
            j3 = z ? j4 : (j2 * 1000) + j4;
        } else {
            j3 = 0;
            if (jA <= 0 || jA2 < jA) {
                j4 = 0;
            } else {
                j4 = jCurrentTimeMillis + (jA2 - jA);
                j3 = j4;
            }
        }
        com.android.net.b.a aVar = new com.android.net.b.a();
        aVar.a = kVar.b;
        aVar.b = str5;
        aVar.f = j4;
        aVar.e = j3;
        aVar.c = jA;
        aVar.d = jA3;
        aVar.g = map;
        aVar.h = kVar.d;
        return aVar;
    }

    public static String a(Map<String, String> map) {
        String str = map.get("Content-Type");
        if (str == null) {
            return CharEncoding.ISO_8859_1;
        }
        String[] strArrSplit = str.split(ProcessInfo.SPLIT_NEW_VERSION);
        for (int i = 1; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].trim().split("=");
            if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                return strArrSplit2[1];
            }
        }
        return CharEncoding.ISO_8859_1;
    }

    public static SimpleDateFormat a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
        return simpleDateFormat;
    }

    public static Map<String, String> a(List<com.android.net.g> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (com.android.net.g gVar : list) {
            treeMap.put(gVar.a, gVar.b);
        }
        return treeMap;
    }
}
