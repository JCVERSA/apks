package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class im4 {
    public static Map c = new HashMap();
    public static final Set d = new HashSet(0);
    public static final Object e = null;
    public static Context f = null;
    public SharedPreferences a;
    public SharedPreferences.Editor b;

    public im4(String str) {
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

    public static synchronized im4 d(String str) {
        im4 im4Var;
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("please make sure you have valid file name");
        }
        im4Var = (im4) c.get(str);
        if (im4Var == null) {
            im4Var = new im4(str);
            c.put(str, im4Var);
        }
        return im4Var;
    }

    public void b() {
        SharedPreferences.Editor editor = this.b;
        if (editor != null) {
            editor.clear();
            this.b.apply();
        }
    }

    public boolean c(String str, boolean z) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? z : sharedPreferences.getBoolean(str, z);
    }

    public int e(String str, int i) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? i : sharedPreferences.getInt(str, i);
    }

    public long f(String str, long j) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? j : sharedPreferences.getLong(str, j);
    }

    public String g(String str, String str2) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? str2 : sharedPreferences.getString(str, str2);
    }

    public Set h(String str, Set set) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.a) == null) ? set : sharedPreferences.getStringSet(str, set);
    }

    public void i(String str, boolean z) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.b) == null) {
            return;
        }
        editor.putBoolean(str, z);
        this.b.apply();
    }

    public void j(String str, int i) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.b) == null) {
            return;
        }
        editor.putInt(str, i);
        this.b.apply();
    }

    public void k(String str, long j) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.b) == null) {
            return;
        }
        editor.putLong(str, j);
        this.b.apply();
    }

    public void l(String str, String str2) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (editor = this.b) == null) {
            return;
        }
        editor.putString(str, str2);
        this.b.apply();
    }

    public void m(String str) {
        SharedPreferences.Editor editor = this.b;
        if (editor != null) {
            editor.remove(str);
            this.b.apply();
        }
    }
}
