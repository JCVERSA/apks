package com.mbridge.msdk.advanced.common;

import java.util.HashMap;
import java.util.Map;

public class c {

    private static Map<String, Boolean> f33226a = new HashMap();

    public static void a(String str, boolean z10) {
        f33226a.put(str, Boolean.valueOf(z10));
    }

    public static void b(String str) {
        f33226a.remove(str);
    }

    public static boolean a(String str) {
        if (f33226a.containsKey(str)) {
            return f33226a.get(str).booleanValue();
        }
        return false;
    }
}
