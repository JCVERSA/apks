package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.BaseEncryptRes;
import com.transsion.xuanniao.account.model.data.Key;
import com.transsion.xuanniao.account.model.data.ResetPwdReq;
import com.transsion.xuanniao.account.pwd.view.SetPwdActivity;

public class nm7 extends BasePresenter {
    public bq7 b = new bq7();
    public String c;
    public String d;
    public String e;
    public String f;
    public int g;
    public ml7 h;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (nm7.this.a()) {
                xj.U(nm7.this.c()).P1(1, "");
                ((xk7) nm7.this.a).j();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (nm7.this.a()) {
                xj.U(nm7.this.c()).P1(0, String.valueOf(baseData));
                nm7.this.c().A0();
                int i = baseData.code;
                if (i == 400003) {
                    ((xk7) nm7.this.a).n();
                    return;
                }
                if (i != 400411) {
                    super.d(baseData, str);
                } else if (baseData.errorExtend != null) {
                    tl7 tl7VarC = tl7.c(nm7.this.c());
                    tl7VarC.f(baseData.errorExtend.getEndTime().longValue());
                    tl7VarC.b();
                    nm7.this.b(baseData.errorExtend.getEndTime().longValue());
                }
            }
        }

        @Override
        public void g() {
            if (nm7.this.a()) {
                nm7.this.e();
            }
        }
    }

    public class b implements ml7.b {
        public b() {
        }

        @Override
        public void C(long j) {
            if (nm7.this.a()) {
                ((xk7) nm7.this.a).p(true, j);
            }
        }

        @Override
        public void a() {
            if (nm7.this.a()) {
                ((xk7) nm7.this.a).p(false, 0L);
            }
        }
    }

    public void b(long j) {
        long jCurrentTimeMillis = j - System.currentTimeMillis();
        if (jCurrentTimeMillis > 0) {
            ml7 ml7Var = this.h;
            if (ml7Var != null) {
                ml7Var.a();
            }
            ml7 ml7Var2 = new ml7(new b());
            this.h = ml7Var2;
            ml7Var2.b = jCurrentTimeMillis;
            ml7Var2.c();
        }
    }

    public final SetPwdActivity c() {
        return (SetPwdActivity) ((xk7) this.a).J();
    }

    public void d() {
        if (this.g != 1) {
            try {
                this.b.c(c(), nr7.a(((xk7) this.a).A(), Key.PUBLIC_KEY), new pn7(this, c(), BaseEncryptRes.class));
                return;
            } catch (Exception e) {
                e.printStackTrace();
                c().A0();
                c().y0(c().getString(R.string.xn_net_unavailable));
                return;
            }
        }
        try {
            if (a()) {
                c().u0(c().getString(R.string.xn_loading));
                ResetPwdReq resetPwdReq = new ResetPwdReq();
                resetPwdReq.email = this.d;
                resetPwdReq.phone = this.c;
                resetPwdReq.ticket = this.e;
                resetPwdReq.verificationCode = this.f;
                resetPwdReq.password = nr7.a(((xk7) this.a).A(), Key.PUBLIC_KEY);
                this.b.a(c(), resetPwdReq, new no7(this, c(), BaseEncryptRes.class));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            c().A0();
            c().y0(c().getString(R.string.xn_net_unavailable));
        }
    }

    public void e() {
        try {
            c().u0(c().getString(R.string.xn_loading));
            this.b.b(c(), nr7.a(((xk7) this.a).j0(), Key.PUBLIC_KEY), new a(c(), BaseData.class));
        } catch (Exception e) {
            e.printStackTrace();
            c().A0();
            c().y0(c().getString(R.string.xn_net_unavailable));
        }
    }
}
