package defpackage;

import android.app.Activity;
import android.text.TextUtils;
import com.transsion.xuanniao.account.model.data.AccountRes;

public class mr7 {
    public Activity a;
    public AccountRes b;
    public a c;

    public interface a {
    }

    public mr7(Activity activity, AccountRes accountRes, a aVar) {
        this.a = activity;
        this.b = accountRes;
        this.c = aVar;
    }

    public boolean a() {
        AccountRes accountRes = this.b;
        if (accountRes != null) {
            return (TextUtils.isEmpty(accountRes.email) && TextUtils.isEmpty(this.b.phone)) ? false : true;
        }
        return false;
    }
}
