package defpackage;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.BindReq;
import com.transsion.xuanniao.account.model.data.CommReq;
import java.util.HashMap;

public class vk7 {
    public void a(Context context, OppO0O0 oppO0O0) {
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        HashMap map = new HashMap();
        map.put("sign", "sign");
        map.put("enableBase64Img", "1");
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, map);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/account/get-profile-crypt"), objGenerateReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void b(Context context, BindReq bindReq, OppO0O0 oppO0O0) {
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, bindReq);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/account/bind-phone-email-crypt"), objGenerateReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void c(Context context, Object obj, OppO0O0 oppO0O0) {
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, obj);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/account/update-profile-crypt"), objGenerateReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void d(Context context, String str, Long l, OppO0O0 oppO0O0) {
        HashMap map = new HashMap();
        map.put("extension", str);
        map.put("byteCount", l);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/account/generate-avatar-url"), map, oppO0O0);
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
