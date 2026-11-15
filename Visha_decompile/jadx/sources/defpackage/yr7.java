package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.text.TextUtils;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.SafeCenterActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.EmergencyListRes;
import java.util.ArrayList;

public class yr7 extends BasePresenter {
    public AccountRes b;
    public mo7 c = new mo7();
    public EmergencyListRes.Emergency d;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            EmergencyListRes emergencyListRes = (EmergencyListRes) obj;
            if (yr7.this.a()) {
                yr7.this.b().A0();
                ArrayList<EmergencyListRes.Emergency> arrayList = emergencyListRes.contacts;
                if (arrayList != null && arrayList.size() > 0) {
                    yr7.this.d = emergencyListRes.contacts.get(0);
                }
                yr7 yr7Var = yr7.this;
                ((kq7) yr7Var.a).T(yr7Var.d);
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (yr7.this.a()) {
                super.d(baseData, str);
                yr7 yr7Var = yr7.this;
                ((kq7) yr7Var.a).T(yr7Var.d);
            }
        }

        @Override
        public void g() {
            if (yr7.this.a()) {
                yr7.this.d();
            }
        }
    }

    public final SafeCenterActivity b() {
        return (SafeCenterActivity) ((kq7) this.a).J();
    }

    public String c() {
        AccountRes accountRes = this.b;
        return accountRes != null ? accountRes.username : "";
    }

    public void d() {
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(b())) {
            b().u0(b().getString(R.string.xn_loading));
            mo7 mo7Var = this.c;
            SafeCenterActivity safeCenterActivityB = b();
            a aVar = new a(b(), EmergencyListRes.class);
            mo7Var.getClass();
            if (cr7Var.a(safeCenterActivityB)) {
                new zn7().d(safeCenterActivityB, dp7.a("/app/contact/list"), null, aVar);
                return;
            }
            if (safeCenterActivityB != null) {
                safeCenterActivityB.A0();
            }
            if (safeCenterActivityB != null) {
                cr7Var.b(safeCenterActivityB);
            }
        }
    }

    public boolean e() {
        AccountRes accountRes = this.b;
        if (accountRes != null) {
            return accountRes.existPassword;
        }
        return false;
    }

    public boolean f() {
        AccountRes accountRes = this.b;
        if (accountRes != null) {
            return (TextUtils.isEmpty(accountRes.email) && TextUtils.isEmpty(this.b.phone)) ? false : true;
        }
        return false;
    }
}
