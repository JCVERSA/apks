package com.bytedance.sdk.component.Sj;

import android.text.TextUtils;

class kF {
    private static boolean Sj;

    static String Sj(Throwable th2) {
        StringBuilder sb2 = new StringBuilder("{\"code\":");
        sb2.append(th2 instanceof TzV ? ((TzV) th2).Sj : 0);
        sb2.append("}");
        return sb2.toString();
    }

    static String Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return "{\"code\":1}";
        }
        String strSubstring = Sj ? str.substring(1, str.length() - 1) : "";
        String strConcat = "{\"code\":1,\"__data\":".concat(String.valueOf(str));
        if (strSubstring.isEmpty()) {
            return strConcat + "}";
        }
        return strConcat + "," + strSubstring + "}";
    }

    static String Sj() {
        return "";
    }

    static void Sj(boolean z10) {
        Sj = z10;
    }
}
