package com.transsion.core.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class f {

    private static Map f42896c = new HashMap();

    private static final Set f42897d = new HashSet(0);

    private static final Object f42898e = null;

    private static Context f42899f = null;

    private SharedPreferences f42900a;

    private SharedPreferences.Editor f42901b;

    private f(String str) {
        Context context = f42899f;
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            this.f42900a = sharedPreferences;
            if (sharedPreferences != null) {
                this.f42901b = sharedPreferences.edit();
            }
        }
    }

    public static void a(Context context) {
        f42899f = context;
    }

    public static synchronized f e(String str) {
        f fVar;
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("please make sure you have valid file name");
        }
        fVar = (f) f42896c.get(str);
        if (fVar == null) {
            fVar = new f(str);
            f42896c.put(str, fVar);
        }
        return fVar;
    }

    public boolean b(String str) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str) || (sharedPreferences = this.f42900a) == null) {
            return false;
        }
        return sharedPreferences.getBoolean(str, false);
    }

    public boolean c(String str, boolean z10) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f42900a) == null) ? z10 : sharedPreferences.getBoolean(str, z10);
    }

    public float d(String str, float f10) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f42900a) == null) ? f10 : sharedPreferences.getFloat(str, f10);
    }

    public int f(String str, int i10) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f42900a) == null) ? i10 : sharedPreferences.getInt(str, i10);
    }

    public long g(String str) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str) || (sharedPreferences = this.f42900a) == null) {
            return 0L;
        }
        return sharedPreferences.getLong(str, 0L);
    }

    public long h(String str, long j10) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f42900a) == null) ? j10 : sharedPreferences.getLong(str, j10);
    }

    public String i(String str) {
        return !TextUtils.isEmpty(str) ? j(str, "") : "";
    }

    public String j(String str, String str2) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f42900a) == null) ? str2 : sharedPreferences.getString(str, str2);
    }

    public Set k(String str, Set set) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f42900a) == null) ? set : sharedPreferences.getStringSet(str, set);
    }

    public void l(String str, boolean z10) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.f42901b) == null) {
            return;
        }
        editor.putBoolean(str, z10);
        this.f42901b.apply();
    }

    public void m(String str, float f10) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.f42901b) == null) {
            return;
        }
        editor.putFloat(str, f10);
        this.f42901b.apply();
    }

    public void n(String str, int i10) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.f42901b) == null) {
            return;
        }
        editor.putInt(str, i10);
        this.f42901b.apply();
    }

    public void o(String str, long j10) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.f42901b) == null) {
            return;
        }
        editor.putLong(str, j10);
        this.f42901b.apply();
    }

    public void p(String str, String str2) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (editor = this.f42901b) == null) {
            return;
        }
        editor.putString(str, str2);
        this.f42901b.apply();
    }

    public void q(String str, Set set) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.f42901b) == null) {
            return;
        }
        editor.putStringSet(str, set);
        this.f42901b.apply();
    }

    public void r(String str) {
        SharedPreferences.Editor editor = this.f42901b;
        if (editor != null) {
            editor.remove(str);
            this.f42901b.apply();
        }
    }
}
