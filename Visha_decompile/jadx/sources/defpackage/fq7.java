package defpackage;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.regex.Pattern;
import org.slf4j.Marker;

public abstract class fq7 {
    public static int a(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 6 || str.length() > 50) {
            return 1;
        }
        if (!Pattern.compile("[a-z]").matcher(str).find() && !Pattern.compile("[A-Z]").matcher(str).find()) {
            return 2;
        }
        int i = 0;
        boolean z = true;
        boolean z2 = true;
        while (i < str.length() - 1) {
            int i2 = i + 1;
            int iCharAt = str.charAt(i2) - str.charAt(i);
            if (iCharAt != 0) {
                z = false;
            }
            if (iCharAt != 1) {
                z2 = false;
            }
            i = i2;
        }
        if (z) {
            return 3;
        }
        return z2 ? 4 : -1;
    }

    public static String b(long j) {
        if (j <= 0) {
            return "";
        }
        long j2 = j / 1000;
        long j3 = j2 / 60;
        long j4 = j2 % 60;
        StringBuilder sb = new StringBuilder();
        if (j3 < 10) {
            sb.append("0");
        }
        sb.append(j3);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        if (j4 < 10) {
            sb.append("0");
        }
        sb.append(j4);
        return sb.toString();
    }

    public static String c(String str) {
        if (str != null) {
            try {
                if (!"".equals(str) && str.indexOf("@") > 0) {
                    String[] strArrSplit = str.split("@");
                    if (strArrSplit[0].length() < 2) {
                        return strArrSplit[0].charAt(0) + "******" + strArrSplit[1];
                    }
                    return strArrSplit[0].substring(0, 2) + "******@" + strArrSplit[1];
                }
            } catch (Exception e) {
                e.printStackTrace();
                return str;
            }
        }
        return "";
    }

    public static String d(String str) {
        if (str != null) {
            try {
                if (!"".equals(str)) {
                    if (!str.contains("-")) {
                        if (str.length() < 6) {
                            return str;
                        }
                        return str.substring(0, 3) + "****" + str.substring(str.length() - 4);
                    }
                    String[] strArrSplit = str.split("-");
                    if (strArrSplit[1].length() < 6) {
                        return Marker.ANY_NON_NULL_MARKER + strArrSplit[0] + " " + strArrSplit[1];
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(Marker.ANY_NON_NULL_MARKER);
                    sb.append(strArrSplit[0]);
                    sb.append(" ");
                    sb.append(strArrSplit[1].substring(0, 3));
                    sb.append("****");
                    String str2 = strArrSplit[1];
                    sb.append(str2.substring(str2.length() - 4));
                    return sb.toString();
                }
            } catch (Exception e) {
                e.printStackTrace();
                return str;
            }
        }
        return "";
    }

    public static String e(String str) {
        if (str != null) {
            try {
                if (!"".equals(str)) {
                    if (!str.contains("-")) {
                        return str;
                    }
                    String[] strArrSplit = str.split("-");
                    return Marker.ANY_NON_NULL_MARKER + strArrSplit[0] + " " + strArrSplit[1];
                }
            } catch (Exception e) {
                e.printStackTrace();
                return str;
            }
        }
        return "";
    }
}
