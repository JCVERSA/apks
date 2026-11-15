package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.os.Process;
import android.util.Log;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.ClearDataActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AccountRes;
import java.util.ArrayList;

public class kl7 extends BasePresenter {
    public AccountRes b;
    public yo7 c = new yo7();
    public ArrayList d;
    public boolean e;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (kl7.this.a()) {
                StringBuilder sbA = xo7.a("onSuccess Pid:");
                sbA.append(Process.myPid());
                sbA.append("Tid:");
                sbA.append(Process.myTid());
                Log.d("com.palm.id.log", sbA.toString());
                if (kl7.this.b() != null) {
                    xj.U(kl7.this.b()).q0(1, "");
                    kl7.this.b().A0();
                }
                jk7 jk7Var = kl7.this.a;
                if (jk7Var != null) {
                    ((cp7) jk7Var).B();
                }
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            super.d(baseData, str);
            if (kl7.this.a() && kl7.this.b() != null) {
                xj.U(kl7.this.b()).q0(0, String.valueOf(baseData.code));
            }
        }

        @Override
        public void g() {
            if (kl7.this.a()) {
                kl7.this.c();
            }
        }
    }

    public final ClearDataActivity b() {
        jk7 jk7Var = this.a;
        if (jk7Var != null) {
            return (ClearDataActivity) ((cp7) jk7Var).J();
        }
        return null;
    }

    public void c() {
        if (a()) {
            b().u0(b().getString(R.string.xn_loading));
            Log.d("com.palm.id.log", "logout Pid:" + Process.myPid() + "Tid:" + Process.myTid());
            this.c.a(b(), new a(b(), BaseData.class));
        }
    }
}
