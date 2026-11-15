package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;

public class r6d {
    public static r6d c;
    public SharedPreferences a;
    public Context b;

    public r6d(Context context) {
        this.b = context.getApplicationContext();
    }

    public static synchronized r6d b(Context context) {
        try {
            if (c == null) {
                c = new r6d(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public int a(String str) {
        Context context = this.b;
        if (context == null) {
            return -1;
        }
        if (this.a == null) {
            this.a = e(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return -1;
        }
        try {
            return sharedPreferences.getInt(str, 0);
        } catch (Exception unused) {
            return -1;
        }
    }

    public void c(String str, int i) {
        Context context = this.b;
        if (context == null) {
            return;
        }
        if (this.a == null) {
            this.a = e(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putInt(str, i).apply();
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
        }
    }

    public void d(String str, String str2) {
        Context context = this.b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.a == null) {
            this.a = e(context);
        }
        if (this.a == null) {
            throw new Exception("sp is null");
        }
        try {
            if (!nw8.b().a(this.b)) {
                throw new Exception("keystore encrypt error");
            }
            lw8 lw8Var = new lw8();
            String strC = lw8Var.c(lw8Var.e(str2));
            if (TextUtils.isEmpty(strC)) {
                throw new Exception("rsaCrypter encrypt error");
            }
            SharedPreferences.Editor editorEdit = this.a.edit();
            editorEdit.putString(str, strC);
            editorEdit.apply();
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
            throw e;
        }
    }

    public final SharedPreferences e(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(p6d.k(context) + "_tcrypto", 0);
            this.a = sharedPreferences;
            return sharedPreferences;
        } catch (Exception unused) {
            return null;
        }
    }

    public String f(String str) throws Exception {
        Context context = this.b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.a == null) {
            this.a = e(context);
        }
        if (this.a == null) {
            throw new Exception("sp is null");
        }
        try {
            if (!nw8.b().a(this.b)) {
                throw new Exception("keystore decrypt error");
            }
            String string = this.a.getString(str, "");
            if (!TextUtils.isEmpty(string) && !string.contains("_")) {
                lw8 lw8Var = new lw8();
                String str2 = new String(lw8Var.d(lw8Var.a(string)));
                if (TextUtils.isEmpty(str2)) {
                    throw new Exception("rsaCrypter decrypt error");
                }
                return str2;
            }
            return "";
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
            throw e;
        }
    }

    public void g(String str, String str2) {
        Context context = this.b;
        if (context == null) {
            return;
        }
        if (this.a == null) {
            this.a = e(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putString(str, str2).apply();
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
        }
    }

    public String h(String str) {
        Context context = this.b;
        if (context == null) {
            return "";
        }
        if (this.a == null) {
            this.a = e(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return "";
        }
        try {
            return sharedPreferences.getString(str, "");
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
            return "";
        }
    }
}
