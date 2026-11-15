package defpackage;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.AddAddressReq;
import com.transsion.xuanniao.account.model.data.CommReq;
import java.util.HashMap;

public class zl7 {
    public void a(Context context, OppO0O0 oppO0O0) throws Exception {
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        HashMap map = new HashMap();
        map.put("sign", "sign");
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, map);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/app/address/list-crypt"), objGenerateReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void b(Context context, AddAddressReq addAddressReq, OppO0O0 oppO0O0) throws Exception {
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, addAddressReq);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/app/address/new-crypt"), objGenerateReq, oppO0O0);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void c(Context context, AddAddressReq addAddressReq, OppO0O0 oppO0O0) {
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        Object objGenerateReq = CommReq.generateReq(context, mk7VarA, addAddressReq);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/app/address/update-crypt"), objGenerateReq, oppO0O0);
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
