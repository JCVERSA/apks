package defpackage;

import com.lzy.okgo.model.HttpHeaders;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

public abstract class ane {
    public static long a(String str) {
        try {
            return d("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e) {
            if ("0".equals(str) || "-1".equals(str)) {
                nme.d("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            nme.c(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    public static xle b(fme fmeVar) {
        boolean z;
        long j;
        long j2;
        long j3;
        long j4;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map map = fmeVar.c;
        if (map == null) {
            return null;
        }
        String str = (String) map.get("Date");
        long jA = str != null ? a(str) : 0L;
        String str2 = (String) map.get("Cache-Control");
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
                        j2 = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j = Long.parseLong(strTrim.substring(23));
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
        String str3 = (String) map.get("Expires");
        long jA2 = str3 != null ? a(str3) : 0L;
        String str4 = (String) map.get(HttpHeaders.HEAD_KEY_LAST_MODIFIED);
        long jA3 = str4 != null ? a(str4) : 0L;
        String str5 = (String) map.get(HttpHeaders.HEAD_KEY_E_TAG);
        if (i != 0) {
            j4 = jCurrentTimeMillis + (j2 * 1000);
            j3 = z ? j4 : (j * 1000) + j4;
        } else {
            j3 = 0;
            if (jA <= 0 || jA2 < jA) {
                j4 = 0;
            } else {
                j4 = jCurrentTimeMillis + (jA2 - jA);
                j3 = j4;
            }
        }
        xle xleVar = new xle();
        xleVar.a = fmeVar.b;
        xleVar.b = str5;
        xleVar.f = j4;
        xleVar.e = j3;
        xleVar.c = jA;
        xleVar.d = jA3;
        xleVar.g = map;
        xleVar.h = fmeVar.d;
        return xleVar;
    }

    public static String c(long j) {
        return d("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j));
    }

    public static SimpleDateFormat d(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
        return simpleDateFormat;
    }
}
