package bk;

import ak.b;
import ak.d;
import ak.e;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.UserManager;
import android.text.TextUtils;
import com.transsion.athena.attribution.AttrConstant;

public class a {

    private static a f15837b;

    private static Context f15838c;

    private SharedPreferences f15839a;

    private a(Context context) {
        f15838c = context.getApplicationContext();
        c(context);
    }

    public static synchronized a a(Context context) {
        try {
            if (f15837b == null) {
                f15837b = new a(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f15837b;
    }

    private SharedPreferences c(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            SharedPreferences sharedPreferences = this.f15839a;
            if (sharedPreferences != null) {
                return sharedPreferences;
            }
            if (context == null) {
                return null;
            }
            try {
                this.f15839a = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
            } catch (Exception unused) {
            }
            return this.f15839a;
        }
        try {
            if (((UserManager) context.getSystemService("user")).isUserUnlocked()) {
                SharedPreferences sharedPreferences2 = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
                this.f15839a = sharedPreferences2;
                return sharedPreferences2;
            }
            SharedPreferences sharedPreferences3 = context.createDeviceProtectedStorageContext().getSharedPreferences(AttrConstant.SP_NAME, 0);
            this.f15839a = sharedPreferences3;
            return sharedPreferences3;
        } catch (Exception unused2) {
            return null;
        }
    }

    public String b(String str) {
        if (f15838c == null || !e.b().a(f15838c)) {
            return "";
        }
        if (this.f15839a == null) {
            this.f15839a = c(f15838c);
        }
        if (this.f15839a == null) {
            return "";
        }
        try {
            d dVar = new d(f15838c);
            String string = this.f15839a.getString(str, "");
            if (TextUtils.isEmpty(string)) {
                return "";
            }
            String[] strArrSplit = string.split("_");
            int length = strArrSplit.length;
            byte[] bArrD = dVar.d(dVar.a(strArrSplit[1]));
            int length2 = bArrD.length;
            byte[] bArr = new byte[32];
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArrD, 0, bArr, 0, 32);
            System.arraycopy(bArrD, 32, bArr2, 0, 16);
            ak.a aVar = new ak.a(bArr, bArr2);
            return new String(aVar.d(aVar.a(strArrSplit[0])));
        } catch (Exception unused) {
            return "";
        }
    }

    public void d(String str, String str2) throws Exception {
        if (f15838c == null) {
            throw new Exception("context is null");
        }
        if (!e.b().a(f15838c)) {
            throw new Exception("key not created");
        }
        if (this.f15839a == null) {
            this.f15839a = c(f15838c);
        }
        if (this.f15839a == null) {
            throw new Exception("sp is null");
        }
        try {
            b bVar = new b();
            d dVar = new d(f15838c);
            String strC = bVar.c(bVar.e(str2));
            String strC2 = dVar.c(dVar.e(bVar.i()));
            this.f15839a.edit().putString(str, strC + "_" + strC2).apply();
        } catch (Exception unused) {
        }
    }
}
