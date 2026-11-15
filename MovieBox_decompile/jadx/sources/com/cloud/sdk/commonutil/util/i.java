package com.cloud.sdk.commonutil.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class i {

    private static Map f22531c = new HashMap();

    private static final Set f22532d = new HashSet(0);

    private static final Object f22533e = null;

    private static Context f22534f = null;

    private SharedPreferences f22535a;

    private SharedPreferences.Editor f22536b;

    private i(String str) {
        Context context = f22534f;
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            this.f22535a = sharedPreferences;
            if (sharedPreferences != null) {
                this.f22536b = sharedPreferences.edit();
            }
        }
    }

    public static void a(Context context) {
        f22534f = context;
    }

    public static synchronized i d(String str) {
        i iVar;
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("please make sure you have valid file name");
        }
        iVar = (i) f22531c.get(str);
        if (iVar == null) {
            iVar = new i(str);
            f22531c.put(str, iVar);
        }
        return iVar;
    }

    public void b() {
        SharedPreferences.Editor editor = this.f22536b;
        if (editor != null) {
            editor.clear();
            this.f22536b.apply();
        }
    }

    public boolean c(String str, boolean z10) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f22535a) == null) ? z10 : sharedPreferences.getBoolean(str, z10);
    }

    public int e(String str, int i10) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f22535a) == null) ? i10 : sharedPreferences.getInt(str, i10);
    }

    public long f(String str, long j10) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f22535a) == null) ? j10 : sharedPreferences.getLong(str, j10);
    }

    public String g(String str, String str2) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f22535a) == null) ? str2 : sharedPreferences.getString(str, str2);
    }

    public Set h(String str, Set set) {
        SharedPreferences sharedPreferences;
        return (TextUtils.isEmpty(str) || (sharedPreferences = this.f22535a) == null) ? set : sharedPreferences.getStringSet(str, set);
    }

    public void i(String str, boolean z10) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.f22536b) == null) {
            return;
        }
        editor.putBoolean(str, z10);
        this.f22536b.apply();
    }

    public void j(String str, int i10) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.f22536b) == null) {
            return;
        }
        editor.putInt(str, i10);
        this.f22536b.apply();
    }

    public void k(String str, long j10) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || (editor = this.f22536b) == null) {
            return;
        }
        editor.putLong(str, j10);
        this.f22536b.apply();
    }

    public void l(String str, String str2) {
        SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (editor = this.f22536b) == null) {
            return;
        }
        editor.putString(str, str2);
        this.f22536b.apply();
    }

    public void m(String str) {
        SharedPreferences.Editor editor = this.f22536b;
        if (editor != null) {
            editor.remove(str);
            this.f22536b.apply();
        }
    }
}
