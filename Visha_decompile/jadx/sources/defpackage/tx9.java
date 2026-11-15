package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

public class tx9 {
    public static final Lock c = new ReentrantLock();
    public static tx9 d;
    public final Lock a = new ReentrantLock();
    public final SharedPreferences b;

    public tx9(Context context) {
        this.b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static tx9 b(Context context) {
        wd8.l(context);
        c.lock();
        try {
            if (d == null) {
                d = new tx9(context.getApplicationContext());
            }
            return d;
        } finally {
            c.unlock();
        }
    }

    public static final String i(String str, String str2) {
        return str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2;
    }

    public void a() {
        this.a.lock();
        try {
            this.b.edit().clear().apply();
        } finally {
            this.a.unlock();
        }
    }

    public GoogleSignInAccount c() {
        String strG;
        String strG2 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strG2) || (strG = g(i("googleSignInAccount", strG2))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zab(strG);
        } catch (JSONException unused) {
            return null;
        }
    }

    public GoogleSignInOptions d() {
        String strG;
        String strG2 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strG2) || (strG = g(i("googleSignInOptions", strG2))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zab(strG);
        } catch (JSONException unused) {
            return null;
        }
    }

    public String e() {
        return g("refreshToken");
    }

    public void f(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        wd8.l(googleSignInAccount);
        wd8.l(googleSignInOptions);
        h("defaultGoogleSignInAccount", googleSignInAccount.zac());
        wd8.l(googleSignInAccount);
        wd8.l(googleSignInOptions);
        String strZac = googleSignInAccount.zac();
        h(i("googleSignInAccount", strZac), googleSignInAccount.zad());
        h(i("googleSignInOptions", strZac), googleSignInOptions.zaf());
    }

    public final String g(String str) {
        this.a.lock();
        try {
            return this.b.getString(str, null);
        } finally {
            this.a.unlock();
        }
    }

    public final void h(String str, String str2) {
        this.a.lock();
        try {
            this.b.edit().putString(str, str2).apply();
        } finally {
            this.a.unlock();
        }
    }
}
