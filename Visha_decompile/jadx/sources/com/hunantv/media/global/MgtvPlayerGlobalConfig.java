package com.hunantv.media.global;

import android.util.Base64;

public class MgtvPlayerGlobalConfig {
    private static Object sLocker = new Object();
    private static byte[] sencryptData;
    private static String stokenA;

    public static class PkgData {
        public String exp;
        public String pkg;
    }

    public static byte[] getEncryptData() {
        byte[] bArr;
        synchronized (sLocker) {
            bArr = sencryptData;
        }
        return bArr;
    }

    public static String getTokenA() {
        String str;
        synchronized (sLocker) {
            str = stokenA;
        }
        return str;
    }

    public static void setValidToken(String str, String str2) {
        synchronized (sLocker) {
            stokenA = str;
            sencryptData = Base64.decode(str2, 0);
        }
    }
}
