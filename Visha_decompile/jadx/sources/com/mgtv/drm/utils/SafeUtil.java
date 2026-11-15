package com.mgtv.drm.utils;

import java.io.Closeable;

public class SafeUtil {
    public static void safeClose(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static boolean safeEqualIgnoreCase(String str, String str2) {
        return (str == null || str2 == null || !str.equalsIgnoreCase(str2)) ? false : true;
    }
}
