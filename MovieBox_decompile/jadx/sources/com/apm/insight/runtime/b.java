package com.apm.insight.runtime;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

public final class b {

    private static long f19165a = -30000;

    private static File f19166b;

    public static void a(long j10) throws Throwable {
        if (j10 - f19165a < 30000) {
            return;
        }
        f19165a = j10;
        try {
            if (f19166b == null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                f19166b = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/TrackInfo/" + ((jCurrentTimeMillis - (jCurrentTimeMillis % 86400000)) / 86400000) + "/" + com.apm.insight.e.f());
            }
            com.apm.insight.l.f.a(f19166b, String.valueOf(System.currentTimeMillis()), false);
        } catch (IOException unused) {
        }
    }

    public static String a(long j10, String str) {
        try {
            return com.apm.insight.l.f.a(new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/TrackInfo/" + ((j10 - (j10 % 86400000)) / 86400000) + "/" + str), "\n");
        } catch (Throwable th2) {
            return th2.getMessage();
        }
    }

    public static void a() {
        File file = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/TrackInfo/");
        String[] list = file.list();
        if (list != null && list.length > 5) {
            Arrays.sort(list);
            for (int i10 = 0; i10 < list.length - 5; i10++) {
                com.apm.insight.l.f.a(new File(file, list[i10]));
            }
        }
    }
}
