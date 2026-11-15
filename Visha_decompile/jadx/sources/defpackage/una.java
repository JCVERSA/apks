package defpackage;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.TimeZone;
import org.apache.commons.lang3.time.DateUtils;

public abstract class una {
    public static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            String[] strArrSplit = str.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
            if (strArrSplit.length != 3) {
                return 0;
            }
            return (Integer.parseInt(strArrSplit[0]) * 3600) + (Integer.parseInt(strArrSplit[1]) * 60) + Integer.parseInt(strArrSplit[2]);
        } catch (Exception unused) {
            ikd.b().e("TimeUtil", "getDuration wrong,param is " + str);
            return 0;
        }
    }

    public static long b(long j) {
        return j - ((((long) TimeZone.getDefault().getRawOffset()) + j) % DateUtils.MILLIS_PER_HOUR);
    }

    public static long c(long j) {
        return j - ((((long) TimeZone.getDefault().getRawOffset()) + j) % 86400000);
    }
}
