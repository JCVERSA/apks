package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;

public class e4d {
    public static e4d c;
    public SharedPreferences a;
    public Context b;

    public e4d(Context context) {
        this.b = context.getApplicationContext();
    }

    public static synchronized e4d a(Context context) {
        try {
            if (c == null) {
                c = new e4d(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public void b(String str, int i) {
        Context context = this.b;
        if (context == null) {
            return;
        }
        if (this.a == null) {
            this.a = f(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putInt(str, i).apply();
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    public void c(String str, String str2) throws Exception {
        Context context = this.b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.a == null) {
            this.a = f(context);
        }
        if (this.a == null) {
            throw new Exception("sp is null");
        }
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
    }

    public boolean d(String str) {
        if (this.a == null) {
            this.a = f(this.b);
        }
        SharedPreferences sharedPreferences = this.a;
        return sharedPreferences != null && sharedPreferences.contains(str);
    }

    public int e(String str) {
        Context context = this.b;
        if (context == null) {
            return -1;
        }
        if (this.a == null) {
            this.a = f(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return -1;
        }
        try {
            return sharedPreferences.getInt(str, 0);
        } catch (Exception e) {
            c4d.d(e.getMessage());
            return -1;
        }
    }

    public final SharedPreferences f(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tcrypto", 0);
            this.a = sharedPreferences;
            return sharedPreferences;
        } catch (Exception e) {
            c4d.d(e.getMessage());
            return null;
        }
    }

    public void g(String str, String str2) {
        Context context = this.b;
        if (context == null) {
            return;
        }
        if (this.a == null) {
            this.a = f(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putString(str, str2).apply();
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    public String h(String str) throws Exception {
        Context context = this.b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.a == null) {
            this.a = f(context);
        }
        if (this.a == null) {
            throw new Exception("sp is null");
        }
        if (!nw8.b().a(this.b)) {
            throw new Exception("keystore decrypt error");
        }
        String string = this.a.getString(str, "");
        if (TextUtils.isEmpty(string) || string.contains("_")) {
            return "";
        }
        lw8 lw8Var = new lw8();
        String str2 = new String(lw8Var.d(lw8Var.a(string)));
        if (TextUtils.isEmpty(str2)) {
            throw new Exception("rsaCrypter decrypt error");
        }
        return str2;
    }

    public String i(String str) {
        Context context = this.b;
        if (context == null) {
            return "";
        }
        if (this.a == null) {
            this.a = f(context);
        }
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null) {
            return "";
        }
        try {
            return sharedPreferences.getString(str, "");
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return "";
        }
    }
}
