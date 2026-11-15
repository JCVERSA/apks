package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.auth.view.PalmPrevActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;

public class tp7 extends OppO0O0 {
    public final Context k;
    public final PalmPrevActivity l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tp7(PalmPrevActivity palmPrevActivity, Context context, String str, Class cls, Context context2) {
        super(context, null, cls);
        this.l = palmPrevActivity;
        this.k = context2;
    }

    @Override
    public void b(int i, Object obj, String str) {
        AccountRes accountRes = (AccountRes) obj;
        if (accountRes != null) {
            ao7.a.a.c(this.k, accountRes);
            if (this.l.e.a()) {
                this.l.D0(accountRes);
            }
        }
    }

    @Override
    public void g() {
    }
}
