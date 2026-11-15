package defpackage;

import android.content.SharedPreferences;
import com.blankj.utilcode.util.Utils;
import java.util.HashMap;
import java.util.Map;

public final class az8 {
    public static final Map b = new HashMap();
    public final SharedPreferences a;

    public az8(String str, int i) {
        this.a = Utils.a().getSharedPreferences(str, i);
    }

    public static az8 a() {
        return b("", 0);
    }

    public static az8 b(String str, int i) {
        if (f(str)) {
            str = "spUtils";
        }
        Map map = b;
        az8 az8Var = (az8) map.get(str);
        if (az8Var == null) {
            synchronized (az8.class) {
                try {
                    az8Var = (az8) map.get(str);
                    if (az8Var == null) {
                        az8Var = new az8(str, i);
                        map.put(str, az8Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return az8Var;
    }

    public static boolean f(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public long c(String str, long j) {
        return this.a.getLong(str, j);
    }

    public String d(String str) {
        return e(str, "");
    }

    public String e(String str, String str2) {
        return this.a.getString(str, str2);
    }

    public void g(String str, long j) {
        h(str, j, false);
    }

    public void h(String str, long j, boolean z) {
        if (z) {
            this.a.edit().putLong(str, j).commit();
        } else {
            this.a.edit().putLong(str, j).apply();
        }
    }

    public void i(String str, String str2) {
        j(str, str2, false);
    }

    public void j(String str, String str2, boolean z) {
        if (z) {
            this.a.edit().putString(str, str2).commit();
        } else {
            this.a.edit().putString(str, str2).apply();
        }
    }
}
