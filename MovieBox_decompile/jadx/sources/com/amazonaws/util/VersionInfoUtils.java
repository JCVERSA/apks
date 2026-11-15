package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;

public class VersionInfoUtils {

    private static volatile String f18401a = "2.22.5";

    private static volatile String f18402b = "android";

    private static volatile String f18403c;

    private static final Log f18404d = LogFactory.b(VersionInfoUtils.class);

    public static String a() {
        return f18402b;
    }

    public static String b() {
        if (f18403c == null) {
            synchronized (VersionInfoUtils.class) {
                try {
                    if (f18403c == null) {
                        d();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f18403c;
    }

    public static String c() {
        return f18401a;
    }

    private static void d() {
        f18403c = f();
    }

    private static String e(String str) {
        return str.replace(' ', '_');
    }

    static String f() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("aws-sdk-");
        sb2.append(StringUtils.b(a()));
        sb2.append("/");
        sb2.append(c());
        sb2.append(" ");
        sb2.append(e(System.getProperty("os.name")));
        sb2.append("/");
        sb2.append(e(System.getProperty("os.version")));
        sb2.append(" ");
        sb2.append(e(System.getProperty("java.vm.name")));
        sb2.append("/");
        sb2.append(e(System.getProperty("java.vm.version")));
        sb2.append("/");
        sb2.append(e(System.getProperty("java.version")));
        String property = System.getProperty("user.language");
        String property2 = System.getProperty("user.region");
        if (property != null && property2 != null) {
            sb2.append(" ");
            sb2.append(e(property));
            sb2.append("_");
            sb2.append(e(property2));
        }
        return sb2.toString();
    }
}
