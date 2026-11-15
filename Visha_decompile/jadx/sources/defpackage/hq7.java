package defpackage;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.AcquireCodeReq;
import com.transsion.xuanniao.account.model.data.CommReq;
import com.transsion.xuanniao.account.model.data.VerifyCodeReq;
import java.util.HashMap;

public class hq7 {
    public String a;

    public hq7(String str) {
        this.a = str;
    }

    public void a(Context context, OppO0O0 oppO0O0) {
        HashMap map = new HashMap();
        map.put("sceneCode", this.a);
        map.put("clientId", go7.a.a.a);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/verification/acquire-captcha"), map, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void b(Context context, AcquireCodeReq acquireCodeReq, OppO0O0 oppO0O0) {
        acquireCodeReq.setSceneCode(this.a);
        acquireCodeReq.setClientId(go7.a.a.a);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/verification/acquire-code"), acquireCodeReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void c(Context context, VerifyCodeReq verifyCodeReq, OppO0O0 oppO0O0) {
        verifyCodeReq.setSceneCode(this.a);
        verifyCodeReq.setClientId(go7.a.a.a);
        verifyCodeReq.setVerifyId(String.valueOf(System.currentTimeMillis()));
        mk7 mk7VarA = ao7.a.a.a();
        mk7VarA.a = verifyCodeReq.getVerifyId();
        oppO0O0.f = mk7VarA;
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, verifyCodeReq);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/verification/verify-code-crypt"), objGenerateReq, oppO0O0);
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
