package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;

public class d19 {
    public static d19 b;
    public static Context c;
    public SharedPreferences a;

    public d19(Context context) {
        c = context.getApplicationContext();
        c(context);
    }

    public static synchronized d19 a(Context context) {
        try {
            if (b == null) {
                b = new d19(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return b;
    }

    public String b(String str) {
        if (c == null || !ow8.b().a(c)) {
            return "";
        }
        if (this.a == null) {
            this.a = c(c);
        }
        if (this.a == null) {
            return "";
        }
        try {
            mw8 mw8Var = new mw8(c);
            String string = this.a.getString(str, "");
            if (TextUtils.isEmpty(string)) {
                return "";
            }
            String[] strArrSplit = string.split("_");
            if (strArrSplit.length != 2) {
                Log.d("tcrypto", "data length not correct");
            }
            byte[] bArrD = mw8Var.d(mw8Var.a(strArrSplit[1]));
            if (bArrD.length != 48) {
                Log.d("tcrypto", "data length not correct");
            }
            byte[] bArr = new byte[32];
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArrD, 0, bArr, 0, 32);
            System.arraycopy(bArrD, 32, bArr2, 0, 16);
            t9 t9Var = new t9(bArr, bArr2);
            return new String(t9Var.d(t9Var.a(strArrSplit[0])));
        } catch (Exception unused) {
            return "";
        }
    }

    public final SharedPreferences c(Context context) {
        try {
            if (((UserManager) context.getSystemService("user")).isUserUnlocked()) {
                SharedPreferences sharedPreferences = context.getSharedPreferences("tcrypto", 0);
                this.a = sharedPreferences;
                return sharedPreferences;
            }
            SharedPreferences sharedPreferences2 = context.createDeviceProtectedStorageContext().getSharedPreferences("tcrypto", 0);
            this.a = sharedPreferences2;
            return sharedPreferences2;
        } catch (Exception unused) {
            return null;
        }
    }

    public void d(String str, String str2) throws Exception {
        if (c == null) {
            throw new Exception("context is null");
        }
        if (!ow8.b().a(c)) {
            throw new Exception("key not created");
        }
        if (this.a == null) {
            this.a = c(c);
        }
        if (this.a == null) {
            throw new Exception("sp is null");
        }
        try {
            u9 u9Var = new u9();
            mw8 mw8Var = new mw8(c);
            String strC = u9Var.c(u9Var.e(str2));
            String strC2 = mw8Var.c(mw8Var.e(u9Var.i()));
            this.a.edit().putString(str, strC + "_" + strC2).apply();
        } catch (Exception unused) {
        }
    }
}
