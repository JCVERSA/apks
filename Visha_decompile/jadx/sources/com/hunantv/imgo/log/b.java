package com.hunantv.imgo.log;

import android.text.TextUtils;
import com.hunantv.imgo.log.entity.LogData;
import com.hunantv.imgo.util.n;

public class b {
    public static boolean a = false;
    public static boolean b = false;
    public static boolean c = false;
    public static String d;

    private static boolean a() {
        return c || b;
    }

    private static com.hunantv.imgo.log.entity.b b(com.hunantv.imgo.log.c.c cVar) {
        LogData logData = new LogData(cVar);
        return new com.hunantv.imgo.log.entity.b(logData.b(), logData.a());
    }

    public static void a(com.hunantv.imgo.log.c.c cVar) {
        n.a(cVar.a(), cVar.toString());
        if (a && a()) {
            com.hunantv.imgo.log.a.a.a().a(b(cVar));
        }
    }

    public static void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        n.b(a(str, str2), str3);
        if (a && a()) {
            com.hunantv.imgo.log.a.a.a().a(a((byte) 3, str, str2, str3));
        }
    }

    private static String a(String str, String str2) {
        return "(" + str + ")" + str2;
    }

    private static com.hunantv.imgo.log.entity.b a(byte b2, String str, String str2, String str3) {
        LogData logData = new LogData(b2, "[(" + str + ")/" + str2 + "]", str3);
        return new com.hunantv.imgo.log.entity.b(logData.b(), logData.a());
    }
}
