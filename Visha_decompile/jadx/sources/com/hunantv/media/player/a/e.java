package com.hunantv.media.player.a;

import com.hunantv.media.utils.CharUtil;
import java.util.ArrayList;
import java.util.regex.Pattern;

public class e {
    private static final boolean a(int i, int i2, int i3) {
        return i >= i2 && i <= i3;
    }

    public static boolean b(String str) {
        if (!f(str)) {
            return false;
        }
        try {
            return Pattern.compile("^((25[0-5]|2[0-4]\\d|[01]?\\d\\d?)\\.){3}(25[0-5]|2[0-4]\\d|[01]?\\d\\d?)$").matcher(str).matches();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean c(String str) {
        if (!f(str)) {
            return false;
        }
        try {
            return Pattern.compile("(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))").matcher(str).matches();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static final boolean d(String str) {
        if (str != null && !"".equals(str.trim())) {
            try {
                if (!b(str)) {
                    return false;
                }
                String[] strArrSplit = str.split("\\.");
                if (strArrSplit.length == 4) {
                    int[] iArr = new int[strArrSplit.length];
                    for (int i = 0; i < strArrSplit.length; i++) {
                        iArr[i] = Integer.parseInt(strArrSplit[i]);
                    }
                    if (iArr[0] == 10 && a(iArr[1], 0, 255) && a(iArr[2], 0, 255) && a(iArr[3], 0, 255)) {
                        return true;
                    }
                    if (iArr[0] == 172 && a(iArr[1], 16, 31) && a(iArr[2], 0, 255) && a(iArr[3], 0, 255)) {
                        return true;
                    }
                    if (iArr[0] == 192 && iArr[1] == 168 && a(iArr[2], 0, 255) && a(iArr[3], 0, 255)) {
                        return true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static boolean e(String str) {
        return (str == null || "".equals(str) || !a(str)) ? false : true;
    }

    private static boolean f(String str) {
        if (str == null || "".equals(str.trim())) {
            return false;
        }
        for (char c : str.toCharArray()) {
            if (!CharUtil.isIPChar(c)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(String str) {
        return b(str) || c(str);
    }

    public static String[] a(String[] strArr) {
        String[] strArr2 = null;
        if (strArr != null && strArr.length > 0) {
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                if (b(str)) {
                    arrayList.add(str);
                }
            }
            int size = arrayList.size();
            if (size > 0) {
                strArr2 = new String[size];
                for (int i = 0; i < size; i++) {
                    strArr2[i] = (String) arrayList.get(i);
                }
            }
        }
        return strArr2;
    }
}
