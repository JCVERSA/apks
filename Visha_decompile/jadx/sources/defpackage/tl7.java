package defpackage;

import android.content.Context;
import com.transsion.xuanniao.account.R;

public class tl7 extends kk7 {
    public Context c;

    public tl7(Context context, String str) {
        super(context, str);
        this.c = context;
    }

    public static tl7 c(Context context) {
        return new tl7(context.getApplicationContext(), "AccountPrefs");
    }

    public void d(long j) {
        a();
        this.b.putLong("key_refresh_time", j);
    }

    public void e(boolean z) {
        a();
        this.b.putBoolean("is_logged_in", z);
    }

    public void f(long j) {
        a();
        this.b.putLong("key_verify_pwd_limit", j);
    }

    public String g() {
        return this.a.getString("key_cloud_config", "");
    }

    public boolean h() {
        return this.a.getBoolean("is_logged_in", false);
    }

    public String i() {
        return this.a.getString("user_agreement_version", this.c.getString(R.string.xn_user_agreement_version));
    }

    public String j() {
        return this.a.getString("privacy_version", this.c.getString(R.string.xn_privacy_version));
    }
}
