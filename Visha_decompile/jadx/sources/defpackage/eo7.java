package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.Key;
import com.transsion.xuanniao.account.pwd.view.VerifyPwdActivity;

public class eo7 extends BasePresenter {
    public bq7 b = new bq7();
    public String c;
    public String d;
    public ml7 e;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (eo7.this.a()) {
                xj.U(eo7.this.c()).P1(1, "");
                eo7.this.c().A0();
                ((bm7) eo7.this.a).onSuccess();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (eo7.this.a()) {
                xj.U(eo7.this.c()).P1(0, String.valueOf(baseData));
                eo7.this.c().A0();
                int i = baseData.code;
                if (i == 400003) {
                    ((bm7) eo7.this.a).n();
                    return;
                }
                if (i != 400411) {
                    super.d(baseData, str);
                } else if (baseData.errorExtend != null) {
                    tl7 tl7VarC = tl7.c(eo7.this.c());
                    tl7VarC.f(baseData.errorExtend.getEndTime().longValue());
                    tl7VarC.b();
                    eo7.this.b(baseData.errorExtend.getEndTime().longValue());
                }
            }
        }

        @Override
        public void g() {
            if (eo7.this.a()) {
                eo7.this.d();
            }
        }
    }

    public class b implements ml7.b {
        public b() {
        }

        @Override
        public void C(long j) {
            if (eo7.this.a()) {
                ((bm7) eo7.this.a).p(true, j);
            }
        }

        @Override
        public void a() {
            if (eo7.this.a()) {
                ((bm7) eo7.this.a).p(false, 0L);
            }
        }
    }

    public void b(long j) {
        long jCurrentTimeMillis = j - System.currentTimeMillis();
        if (jCurrentTimeMillis > 0) {
            ml7 ml7Var = this.e;
            if (ml7Var != null) {
                ml7Var.a();
            }
            ml7 ml7Var2 = new ml7(new b());
            this.e = ml7Var2;
            ml7Var2.b = jCurrentTimeMillis;
            ml7Var2.c();
        }
    }

    public final VerifyPwdActivity c() {
        return (VerifyPwdActivity) ((bm7) this.a).J();
    }

    public void d() {
        try {
            c().u0(c().getString(R.string.xn_loading));
            this.b.b(c(), nr7.a(((bm7) this.a).d0(), Key.PUBLIC_KEY), new a(c(), BaseData.class));
        } catch (Exception e) {
            e.printStackTrace();
            c().A0();
            c().y0(c().getString(R.string.xn_net_unavailable));
        }
    }
}
