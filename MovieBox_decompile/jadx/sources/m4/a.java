package m4;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.attribution.AttrConstant;
import com.transsion.athena.taaneh.aethna;
import rp.c;

public class a {

    private static a f66246c;

    private SharedPreferences f66247a;

    private Context f66248b;

    private a(Context context) {
        this.f66248b = context.getApplicationContext();
    }

    public static synchronized a a(Context context) {
        try {
            if (f66246c == null) {
                f66246c = new a(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f66246c;
    }

    private SharedPreferences f(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
                this.f66247a = sharedPreferences;
                return sharedPreferences;
            } catch (Exception e10) {
                aethna.b(e10.getMessage());
                return null;
            }
        }
        SharedPreferences sharedPreferences2 = this.f66247a;
        if (sharedPreferences2 != null) {
            return sharedPreferences2;
        }
        if (context == null) {
            return null;
        }
        try {
            this.f66247a = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
        } catch (Exception e11) {
            aethna.b(e11.getMessage());
        }
        return this.f66247a;
    }

    public void b(String str, int i10) {
        Context context = this.f66248b;
        if (context == null) {
            return;
        }
        if (this.f66247a == null) {
            this.f66247a = f(context);
        }
        SharedPreferences sharedPreferences = this.f66247a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putInt(str, i10).apply();
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
        }
    }

    public void c(String str, String str2) throws Exception {
        Context context = this.f66248b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f66247a == null) {
            this.f66247a = f(context);
        }
        if (this.f66247a == null) {
            throw new Exception("sp is null");
        }
        if (!c.b().a(this.f66248b)) {
            throw new Exception("keystore encrypt error");
        }
        rp.b bVar = new rp.b();
        String strC = bVar.c(bVar.e(str2));
        if (TextUtils.isEmpty(strC)) {
            throw new Exception("rsaCrypter encrypt error");
        }
        SharedPreferences.Editor editorEdit = this.f66247a.edit();
        editorEdit.putString(str, strC);
        editorEdit.apply();
    }

    public boolean d(String str) {
        if (this.f66247a == null) {
            this.f66247a = f(this.f66248b);
        }
        SharedPreferences sharedPreferences = this.f66247a;
        return sharedPreferences != null && sharedPreferences.contains(str);
    }

    public int e(String str) {
        Context context = this.f66248b;
        if (context == null) {
            return -1;
        }
        if (this.f66247a == null) {
            this.f66247a = f(context);
        }
        SharedPreferences sharedPreferences = this.f66247a;
        if (sharedPreferences == null) {
            return -1;
        }
        try {
            return sharedPreferences.getInt(str, 0);
        } catch (Exception e10) {
            aethna.b(e10.getMessage());
            return -1;
        }
    }

    public void g(String str, String str2) {
        Context context = this.f66248b;
        if (context == null) {
            return;
        }
        if (this.f66247a == null) {
            this.f66247a = f(context);
        }
        SharedPreferences sharedPreferences = this.f66247a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putString(str, str2).apply();
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
        }
    }

    public String h(String str) throws Exception {
        Context context = this.f66248b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f66247a == null) {
            this.f66247a = f(context);
        }
        if (this.f66247a == null) {
            throw new Exception("sp is null");
        }
        if (!c.b().a(this.f66248b)) {
            throw new Exception("keystore decrypt error");
        }
        String string = this.f66247a.getString(str, "");
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

    public String i(String str) {
        Context context = this.f66248b;
        if (context == null) {
            return "";
        }
        if (this.f66247a == null) {
            this.f66247a = f(context);
        }
        SharedPreferences sharedPreferences = this.f66247a;
        if (sharedPreferences == null) {
            return "";
        }
        try {
            return sharedPreferences.getString(str, "");
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
            return "";
        }
    }
}
