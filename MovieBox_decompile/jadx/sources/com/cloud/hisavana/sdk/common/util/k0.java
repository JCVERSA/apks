package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.b4;
import java.util.TimeZone;

public class k0 {
    public static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length != 3) {
                return 0;
            }
            return (Integer.parseInt(strArrSplit[0]) * 3600) + (Integer.parseInt(strArrSplit[1]) * 60) + Integer.parseInt(strArrSplit[2]);
        } catch (Exception unused) {
            b4.b().e("TimeUtil", "getDuration wrong,param is " + str);
            return 0;
        }
    }

    public static long b(long j10) {
        return j10 - ((((long) TimeZone.getDefault().getRawOffset()) + j10) % 3600000);
    }

    public static long c(long j10) {
        return j10 - ((((long) TimeZone.getDefault().getRawOffset()) + j10) % 86400000);
    }
}
