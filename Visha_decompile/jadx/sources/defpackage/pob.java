package defpackage;

import android.text.TextUtils;

public abstract class pob {
    public static int a(String str, String str2) {
        if (str.equals(str2)) {
            return 0;
        }
        return b(str.split("\\.")) > b(str2.split("\\.")) ? 1 : -1;
    }

    public static int b(String[] strArr) {
        if (strArr.length == 0) {
            return 0;
        }
        int iC = 0;
        for (String str : strArr) {
            iC += c(str);
        }
        return iC;
    }

    public static int c(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int iPow = 0;
        for (int i = 0; i < length; i++) {
            char c = charArray[i];
            iPow = (int) (((double) iPow) + (((double) (c >= '0' ? c - '0' : 0)) * Math.pow(10.0d, (length - 1) - i)));
        }
        return iPow;
    }
}
