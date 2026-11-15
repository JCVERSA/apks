package com.blankj.utilcode.util;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;

public final class x {

    private static final Map f19504b = new HashMap();

    private SharedPreferences f19505a;

    private x(String str, int i10) {
        this.f19505a = Utils.a().getSharedPreferences(str, i10);
    }

    public static x a(String str) {
        return b(str, 0);
    }

    public static x b(String str, int i10) {
        if (e(str)) {
            str = "spUtils";
        }
        Map map = f19504b;
        x xVar = (x) map.get(str);
        if (xVar == null) {
            synchronized (x.class) {
                try {
                    xVar = (x) map.get(str);
                    if (xVar == null) {
                        xVar = new x(str, i10);
                        map.put(str, xVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return xVar;
    }

    private static boolean e(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isWhitespace(str.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public String c(String str) {
        return d(str, "");
    }

    public String d(String str, String str2) {
        return this.f19505a.getString(str, str2);
    }

    public void f(String str, String str2) {
        g(str, str2, false);
    }

    public void g(String str, String str2, boolean z10) {
        if (z10) {
            this.f19505a.edit().putString(str, str2).commit();
        } else {
            this.f19505a.edit().putString(str, str2).apply();
        }
    }

    public void h(String str) {
        i(str, false);
    }

    public void i(String str, boolean z10) {
        if (z10) {
            this.f19505a.edit().remove(str).commit();
        } else {
            this.f19505a.edit().remove(str).apply();
        }
    }
}
