package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.transsion.push.PushConstants;

public class nj7 {
    public static nj7 e;
    public final String a;
    public String b;
    public long c;
    public xe d;

    public nj7(String str) {
        this.a = str;
    }

    public static nj7 a(String str) {
        if (e == null) {
            synchronized (nj7.class) {
                try {
                    if (e == null) {
                        e = new nj7(str);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public void b(Context context) {
        if (TextUtils.isEmpty(this.b)) {
            return;
        }
        this.b = "";
        this.c = 0L;
        if (TextUtils.isEmpty(this.a)) {
            if (this.d == null) {
                this.d = new xe(context);
            }
            this.d.h(PushConstants.EXTRA_TOKEN);
            this.d.h("OPENID");
        } else {
            context.getSharedPreferences(this.a, 0).edit().putString("token", "").putLong("openid", 0L).apply();
        }
        vj7.a.g("tudc token clear");
    }

    public boolean c(Context context) {
        if (TextUtils.isEmpty(this.a)) {
            if (this.d == null) {
                this.d = new xe(context);
            }
            this.b = this.d.m(PushConstants.EXTRA_TOKEN, "");
            this.c = this.d.j("OPENID", 0L);
        } else {
            SharedPreferences sharedPreferences = context.getSharedPreferences(this.a, 0);
            this.b = sharedPreferences.getString("token", "");
            this.c = sharedPreferences.getLong("openid", 0L);
        }
        return this.b.length() > 0 && this.c > 0;
    }
}
