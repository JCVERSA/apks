package com.mgtv.thirdsdk.playcore.utils;

import java.io.File;
import java.net.URL;
import java.util.Locale;

public class b {
    public static boolean a(String str) {
        String protocol;
        if (str == null) {
            return false;
        }
        try {
            if (!str.startsWith("/")) {
                Locale locale = Locale.US;
                if (!str.toLowerCase(locale).startsWith("file") && (protocol = new URL(str).getProtocol()) != null && !protocol.toLowerCase(locale).startsWith("file")) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
        }
    }

    public static int b(String str) {
        try {
            if (!a(str)) {
                return 0;
            }
            File file = new File(a(a(str, "file:"), "file"));
            if (file.exists()) {
                return file.isDirectory() ? 4 : 0;
            }
            return 2;
        } catch (SecurityException e) {
            e.printStackTrace();
            return 3;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    private static String a(String str, String str2) {
        if (str == null || str2 == null || "".equals(str2.trim()) || !str.toLowerCase(Locale.US).startsWith(str2)) {
            return str;
        }
        try {
            return str.substring(str2.length());
        } catch (Exception unused) {
            return str;
        }
    }
}
