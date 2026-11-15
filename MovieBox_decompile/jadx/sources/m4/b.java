package m4;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.attribution.AttrConstant;
import com.transsion.athena.taaneh.aethna;
import com.transsion.athena.taaneh.athena;
import rp.c;

public class b {

    private static b f66249c;

    private SharedPreferences f66250a;

    private final Context f66251b;

    private b(Context context) {
        this.f66251b = context.getApplicationContext();
    }

    public static synchronized b b(Context context) {
        try {
            if (f66249c == null) {
                f66249c = new b(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f66249c;
    }

    private SharedPreferences d(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(athena.d(context) + "_" + AttrConstant.SP_NAME, 0);
                this.f66250a = sharedPreferences;
                return sharedPreferences;
            } catch (Exception e10) {
                aethna.b(Log.getStackTraceString(e10));
                return null;
            }
        }
        SharedPreferences sharedPreferences2 = this.f66250a;
        if (sharedPreferences2 != null) {
            return sharedPreferences2;
        }
        if (context == null) {
            return null;
        }
        try {
            this.f66250a = context.getSharedPreferences(athena.d(context) + "_" + AttrConstant.SP_NAME, 0);
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
        }
        return this.f66250a;
    }

    public String a(String str) throws Exception {
        Context context = this.f66251b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f66250a == null) {
            this.f66250a = d(context);
        }
        if (this.f66250a == null) {
            throw new Exception("sp is null");
        }
        if (!c.b().a(this.f66251b)) {
            throw new Exception("keystore decrypt error");
        }
        String string = this.f66250a.getString(str, "");
        if (TextUtils.isEmpty(string) || string.contains("_")) {
            return "";
        }
        rp.b bVar = new rp.b();
        String str2 = new String(bVar.d(bVar.a(string)));
        if (TextUtils.isEmpty(str2)) {
            throw new Exception("rsaCrypter decrypt error");
        }
        return str2;
    }

    public void c(String str, String str2) throws Exception {
        Context context = this.f66251b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f66250a == null) {
            this.f66250a = d(context);
        }
        if (this.f66250a == null) {
            throw new Exception("sp is null");
        }
        try {
            if (!c.b().a(this.f66251b)) {
                throw new Exception("keystore encrypt error");
            }
            rp.b bVar = new rp.b();
            String strC = bVar.c(bVar.e(str2));
            if (TextUtils.isEmpty(strC)) {
                throw new Exception("rsaCrypter encrypt error");
            }
            SharedPreferences.Editor editorEdit = this.f66250a.edit();
            editorEdit.putString(str, strC);
            editorEdit.apply();
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
            throw e10;
        }
    }
}
