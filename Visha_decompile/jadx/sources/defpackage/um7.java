package defpackage;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.ConfigReq;

public class um7 {
    public void a(Context context, OppO0O0 oppO0O0) {
        ConfigReq configReqGenerateReq = ConfigReq.generateReq(context);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/app/cloud/config"), configReqGenerateReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }
}
