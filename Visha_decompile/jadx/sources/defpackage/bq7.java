package defpackage;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.CommReq;
import com.transsion.xuanniao.account.model.data.ResetPwdReq;
import java.util.HashMap;

public class bq7 {
    public void a(Context context, ResetPwdReq resetPwdReq, OppO0O0 oppO0O0) throws Exception {
        resetPwdReq.clientId = go7.a.a.a;
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, resetPwdReq);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/password/reset-crypt"), objGenerateReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void b(Context context, String str, OppO0O0 oppO0O0) throws Exception {
        HashMap map = new HashMap();
        map.put("password", str);
        String strValueOf = String.valueOf(System.currentTimeMillis());
        map.put("verifyId", strValueOf);
        mk7 mk7VarA = ao7.a.a.a();
        mk7VarA.a = strValueOf;
        oppO0O0.f = mk7VarA;
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, map);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/password/verify-crypt"), objGenerateReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void c(Context context, String str, OppO0O0 oppO0O0) throws Exception {
        HashMap map = new HashMap();
        map.put("password", str);
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, map);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/password/new-crypt"), objGenerateReq, oppO0O0);
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
