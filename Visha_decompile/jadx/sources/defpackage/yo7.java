package defpackage;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.ApplyTokenReq;
import com.transsion.xuanniao.account.model.data.CommReq;
import com.transsion.xuanniao.account.model.data.LoginByCodeReq;
import com.transsion.xuanniao.account.model.data.LoginCaptchaReq;

public class yo7 {
    public void a(Context context, OppO0O0 oppO0O0) {
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().d(context, dp7.a("/sdk/login/logout"), null, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void b(Context context, ApplyTokenReq applyTokenReq, OppO0O0 oppO0O0) {
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/app/third-accessor/apply"), applyTokenReq, oppO0O0);
        } else {
            ((BaseActivity) context).A0();
            cr7Var.b(context);
        }
    }

    public void c(Context context, LoginByCodeReq loginByCodeReq, OppO0O0 oppO0O0) {
        loginByCodeReq.setClientId(go7.a.a.a);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/login/login-by-verificationcode"), loginByCodeReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void d(Context context, LoginCaptchaReq loginCaptchaReq, OppO0O0 oppO0O0) throws Exception {
        loginCaptchaReq.clientId = go7.a.a.a;
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, loginCaptchaReq);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/login/login-by-password-with-captcha-crypt"), objGenerateReq, oppO0O0);
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
