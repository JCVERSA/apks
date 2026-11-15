package com.hunantv.media.report.c;

import java.io.Closeable;

public class f {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static boolean a(String str, String str2) {
        return (str == null || str2 == null || !str.equalsIgnoreCase(str2)) ? false : true;
    }
}
