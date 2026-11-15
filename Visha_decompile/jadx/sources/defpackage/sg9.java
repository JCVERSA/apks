package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class sg9 {
    public static Map c = new HashMap();
    public static final Set d = new HashSet(0);
    public static final Object e = null;
    public static Context f = null;
    public SharedPreferences a;
    public SharedPreferences.Editor b;

    public sg9(String str) {
        Context context = f;
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            this.a = sharedPreferences;
            if (sharedPreferences != null) {
                this.b = sharedPreferences.edit();
            }
        }
    }

    public static void a(Context context) {
        f = context;
    }

    public static synchronized sg9 e(String str) {
        sg9 sg9Var;
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("please make sure you have valid file name");
        }
        sg9Var = (sg9) c.get(str);
        if (sg9Var == null) {
            sg9Var = new sg9(str);
            c.put(str, sg9Var);
        }
        return sg9Var;
    }

    public boolean b(String str) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) {
            return false;
        }
        return sharedPreferences.getBoolean(str, false);
    }

    public boolean c(String str, boolean z) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? z : sharedPreferences.getBoolean(str, z);
    }

    public float d(String str, float f2) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? f2 : sharedPreferences.getFloat(str, f2);
    }

    public int f(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return g(str, 0);
    }

    public int g(String str, int i) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? i : sharedPreferences.getInt(str, i);
    }

    public long h(String str) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) {
            return 0L;
        }
        return sharedPreferences.getLong(str, 0L);
    }

    public long i(String str, long j) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? j : sharedPreferences.getLong(str, j);
    }

    public String j(String str) {
        return !TextUtils.isEmpty(str) ? k(str, "") : "";
    }

    public String k(String str, String str2) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? str2 : sharedPreferences.getString(str, str2);
    }

    public Set l(String str, Set set) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? set : sharedPreferences.getStringSet(str, set);
    }

    public void m(String str, boolean z) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.b) == null) {
            return;
        }
        editor.putBoolean(str, z);
        this.b.apply();
    }

    public void n(String str, boolean z) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.b) == null) {
            return;
        }
        editor.putBoolean(str, z);
        this.b.commit();
    }

    public void o(String str, float f2) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.b) == null) {
            return;
        }
        editor.putFloat(str, f2);
        this.b.apply();
    }

    public void p(String str, int i) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.b) == null) {
            return;
        }
        editor.putInt(str, i);
        this.b.apply();
    }

    public void q(String str, long j) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.b) == null) {
            return;
        }
        editor.putLong(str, j);
        this.b.apply();
    }

    public void r(String str, String str2) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (editor = this.b) == null) {
            return;
        }
        editor.putString(str, str2);
        this.b.apply();
    }

    public void s(String str, Set set) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.b) == null) {
            return;
        }
        editor.putStringSet(str, set);
        this.b.apply();
    }

    public void t(String str) {
        SharedPreferences.Editor editor = this.b;
        if (editor != null) {
            editor.remove(str);
            this.b.apply();
        }
    }
}
