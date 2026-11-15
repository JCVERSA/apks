package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.bind.email.view.BindingEmailActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AcquireCodeReq;
import com.transsion.xuanniao.account.model.data.AcquireCodeRes;
import com.transsion.xuanniao.account.model.data.BindReq;
import com.transsion.xuanniao.account.model.data.CaptchaRes;
import com.transsion.xuanniao.account.model.data.EncryptRes;

public class bk7 extends BasePresenter {
    public vk7 b = new vk7();
    public hq7 c = new hq7("BIND");
    public String d;
    public String e;
    public ml7 f;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (bk7.this.a()) {
                bk7.this.e().A0();
                ((jm7) bk7.this.a).onSuccess();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (bk7.this.a()) {
                bk7.this.e().A0();
                int i = baseData.code;
                if (i == 400100) {
                    ((jm7) bk7.this.a).d();
                } else if (i == 400001) {
                    ((jm7) bk7.this.a).r();
                } else {
                    super.d(baseData, str);
                }
            }
        }

        @Override
        public void g() {
            if (bk7.this.a()) {
                bk7.this.f();
            }
        }
    }

    public class b extends OppO0O0 {
        public b(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            CaptchaRes captchaRes = (CaptchaRes) obj;
            if (bk7.this.a()) {
                bk7.this.e().A0();
                bk7.this.e = captchaRes.getCaptchaTicket();
                ((jm7) bk7.this.a).i(OppOp00.a.a(captchaRes.getCaptchaBase64()));
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            bk7.this.e().A0();
            if (baseData.code != 400407) {
                super.d(baseData, str);
            } else if (baseData.errorExtend != null) {
                tl7 tl7VarC = tl7.c(bk7.this.e());
                long jLongValue = baseData.errorExtend.getEndTime().longValue();
                tl7VarC.a();
                tl7VarC.b.putLong("key_captcha_limit_bind", jLongValue);
                tl7VarC.b();
                bk7.this.b(baseData.errorExtend.getEndTime().longValue());
            }
            ((jm7) bk7.this.a).g();
        }

        @Override
        public void g() {
            if (bk7.this.a()) {
                bk7.this.c();
            }
        }
    }

    public class c implements ml7.b {
        public c() {
        }

        @Override
        public void C(long j) {
            ((jm7) bk7.this.a).c(true, j);
        }

        @Override
        public void a() {
            ((jm7) bk7.this.a).c(false, 0L);
        }
    }

    public class d extends OppO0O0 {
        public d(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            bk7.this.e().A0();
            ((jm7) bk7.this.a).a();
        }

        @Override
        public void d(BaseData baseData, String str) {
            bk7.this.e().A0();
            int i = baseData.code;
            if (i == 400408) {
                ((jm7) bk7.this.a).e();
                return;
            }
            if (i == 400409) {
                ((jm7) bk7.this.a).b();
                return;
            }
            if (i == 400100) {
                ((jm7) bk7.this.a).h();
                bk7.this.c();
            } else if (i == 400001) {
                ((jm7) bk7.this.a).r();
            } else {
                super.d(baseData, str);
                bk7.this.c();
            }
        }

        @Override
        public void g() {
            if (bk7.this.a()) {
                bk7.this.d();
            }
        }
    }

    public void b(long j) {
        long jCurrentTimeMillis = j - System.currentTimeMillis();
        if (jCurrentTimeMillis > 0) {
            ml7 ml7Var = this.f;
            if (ml7Var != null) {
                ml7Var.a();
            }
            ml7 ml7Var2 = new ml7(new c());
            this.f = ml7Var2;
            ml7Var2.b = jCurrentTimeMillis;
            ml7Var2.c();
        }
    }

    public void c() {
        this.c.a(e(), new b(e(), CaptchaRes.class));
    }

    public void d() {
        e().u0(e().getString(R.string.xn_loading));
        AcquireCodeReq acquireCodeReq = new AcquireCodeReq();
        acquireCodeReq.setCaptchaCode(((jm7) this.a).f());
        acquireCodeReq.setCaptchaTicket(this.e);
        acquireCodeReq.setEmail(((jm7) this.a).m());
        this.c.b(e(), acquireCodeReq, new d(e(), AcquireCodeRes.class));
    }

    public BindingEmailActivity e() {
        return (BindingEmailActivity) ((jm7) this.a).J();
    }

    public void f() {
        e().u0(e().getString(R.string.xn_loading));
        BindReq bindReq = new BindReq();
        bindReq.setEmail(((jm7) this.a).m());
        bindReq.setVerificationCode(((jm7) this.a).s());
        try {
            this.b.b(e(), bindReq, new a(e(), EncryptRes.class));
        } catch (Exception e) {
            e.printStackTrace();
            e().A0();
            e().y0(e().getString(R.string.xn_net_unavailable));
        }
    }
}
