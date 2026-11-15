package com.mgadplus.netlib.base;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;

class i {
    public static String a(String str, @Nullable Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                str = a(str, entry.getKey(), entry.getValue());
            }
        }
        return str;
    }

    @NonNull
    private static String b(String str, String str2, String str3) {
        return str + '?' + str2 + str3;
    }

    private static String c(@NonNull String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        if (!str.endsWith("&") && !str.endsWith("?")) {
            sb.append('&');
        }
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String[] strArr = new String[1];
        String strA = a(str, strArr);
        String str4 = str2 + '=';
        int iIndexOf = strA.indexOf(63);
        if (iIndexOf < 0) {
            return b(strA, str4, str3) + strArr[0];
        }
        int iIndexOf2 = strA.indexOf('&' + str4, iIndexOf);
        if (iIndexOf2 == -1) {
            iIndexOf2 = strA.indexOf('?' + str4, iIndexOf);
        }
        if (iIndexOf2 != -1) {
            return a(strA, str3, iIndexOf2 + 1 + str4.length()) + strArr[0];
        }
        return c(strA, str4, str3) + strArr[0];
    }

    private static String a(@NonNull String str, String str2, int i) {
        int iIndexOf = str.indexOf(38, i);
        if (iIndexOf == -1) {
            iIndexOf = str.length();
        }
        StringBuilder sb = new StringBuilder(str);
        sb.replace(i, iIndexOf, str2);
        return sb.toString();
    }

    @NonNull
    private static String a(@NonNull String str, @Nullable String[] strArr) {
        int iIndexOf = str.indexOf(35);
        if (iIndexOf < 0) {
            if (strArr != null) {
                strArr[0] = "";
            }
            return str;
        }
        if (strArr != null) {
            strArr[0] = str.substring(iIndexOf);
        }
        return str.substring(0, iIndexOf);
    }
}
