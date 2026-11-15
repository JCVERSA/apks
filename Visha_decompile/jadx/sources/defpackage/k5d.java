package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.taaneh.athena;

public class k5d {
    public static k5d c;
    public SharedPreferences a;
    public final Context b;

    public k5d(Context context) {
        this.b = context.getApplicationContext();
    }

    public static synchronized k5d a(Context context) {
        try {
            if (c == null) {
                c = new k5d(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public String b(String str) throws Exception {
        Context context = this.b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.a == null) {
            this.a = d(context);
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

    public void c(String str, String str2) throws Exception {
        Context context = this.b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.a == null) {
            this.a = d(context);
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
            c4d.d(Log.getStackTraceString(e));
            throw e;
        }
    }

    public final SharedPreferences d(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(athena.t(context) + "_tcrypto", 0);
            this.a = sharedPreferences;
            return sharedPreferences;
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }
}
