package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

public class c19 {
    public static c19 c;
    public SharedPreferences a;
    public Context b;

    public c19(Context context) {
        this.b = context.getApplicationContext();
    }

    public static synchronized c19 a(Context context) {
        try {
            if (c == null) {
                c = new c19(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public long b(String str) {
        Context context = this.b;
        if (context == null) {
            return -1L;
        }
        if (this.a == null) {
            this.a = c(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return -1L;
        }
        try {
            return sharedPreferences.getLong(str, 0L);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final SharedPreferences c(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("gateway_core", 0);
            this.a = sharedPreferences;
            return sharedPreferences;
        } catch (Exception unused) {
            return null;
        }
    }

    public void d(String str, long j) {
        Context context = this.b;
        if (context == null) {
            return;
        }
        if (this.a == null) {
            this.a = c(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putLong(str, j).apply();
        } catch (Exception unused) {
        }
    }
}
