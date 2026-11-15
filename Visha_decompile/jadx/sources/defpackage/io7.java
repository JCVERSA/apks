package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.text.TextUtils;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AcquireCodeReq;
import com.transsion.xuanniao.account.model.data.AcquireCodeRes;
import com.transsion.xuanniao.account.model.data.CaptchaRes;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.VerifyCodeReq;
import com.transsion.xuanniao.account.model.data.VerifyCodeRes;
import com.transsion.xuanniao.account.verify.view.VerifyAccountActivity;
import java.util.ArrayList;
import org.slf4j.Marker;

public class io7 extends BasePresenter {
    public String b;
    public String c;
    public hq7 d = new hq7("VERIFY");
    public String e;
    public ml7 f;
    public CountryData g;
    public String h;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            CaptchaRes captchaRes = (CaptchaRes) obj;
            if (io7.this.a()) {
                io7.this.e().A0();
                io7.this.b = captchaRes.getCaptchaTicket();
                ((al7) io7.this.a).i(OppOp00.a.a(captchaRes.getCaptchaBase64()));
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (io7.this.a()) {
                io7.this.e().A0();
                if (baseData.code != 400407) {
                    super.d(baseData, str);
                } else if (baseData.errorExtend != null) {
                    tl7 tl7VarC = tl7.c(io7.this.e());
                    long jLongValue = baseData.errorExtend.getEndTime().longValue();
                    tl7VarC.a();
                    tl7VarC.b.putLong("key_captcha_limit_verify", jLongValue);
                    tl7VarC.b();
                    io7.this.b(baseData.errorExtend.getEndTime().longValue());
                }
                ((al7) io7.this.a).g();
            }
        }

        @Override
        public void g() {
            if (io7.this.a()) {
                io7.this.c();
            }
        }
    }

    public class b implements ml7.b {
        public b() {
        }

        @Override
        public void C(long j) {
            if (io7.this.a()) {
                ((al7) io7.this.a).c(true, j);
            }
        }

        @Override
        public void a() {
            if (io7.this.a()) {
                ((al7) io7.this.a).c(false, 0L);
            }
        }
    }

    public class c extends OppO0O0 {
        public c(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            AcquireCodeRes acquireCodeRes = (AcquireCodeRes) obj;
            if (io7.this.a()) {
                io7.this.e().A0();
                ((al7) io7.this.a).a();
                io7.this.e = acquireCodeRes.getTicket();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (io7.this.a()) {
                io7.this.e().A0();
                int i = baseData.code;
                if (i == 400408) {
                    ((al7) io7.this.a).e();
                    return;
                }
                if (i == 400409) {
                    ((al7) io7.this.a).b();
                    return;
                }
                if (i == 400100) {
                    ((al7) io7.this.a).h();
                    io7.this.c();
                } else if (i == 400000) {
                    ((al7) io7.this.a).b0();
                    io7.this.c();
                } else {
                    super.d(baseData, str);
                    io7.this.c();
                }
            }
        }

        @Override
        public void g() {
            if (io7.this.a()) {
                io7.this.d();
            }
        }
    }

    public class d extends OppO0O0 {
        public d(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (io7.this.a()) {
                io7.this.e().A0();
                ((al7) io7.this.a).j();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (io7.this.a()) {
                io7.this.e().A0();
                if (baseData.code == 400100) {
                    ((al7) io7.this.a).d();
                } else {
                    super.d(baseData, str);
                }
            }
        }

        @Override
        public void g() {
            if (io7.this.a()) {
                io7.this.h();
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
            ml7 ml7Var2 = new ml7(new b());
            this.f = ml7Var2;
            ml7Var2.b = jCurrentTimeMillis;
            ml7Var2.c();
        }
    }

    public void c() {
        this.d.a(e(), new a(e(), CaptchaRes.class));
    }

    public void d() {
        e().u0(e().getString(R.string.xn_loading));
        AcquireCodeReq acquireCodeReq = new AcquireCodeReq();
        acquireCodeReq.setCaptchaCode(((al7) this.a).f());
        acquireCodeReq.setCaptchaTicket(this.b);
        if (((al7) this.a).t() == 3) {
            acquireCodeReq.setPhone(g() + "-" + ((al7) this.a).w());
            if (TextUtils.isEmpty(this.h)) {
                ArrayList arrayListB = new rk7(e()).b();
                if (arrayListB.size() > 0) {
                    this.h = (String) arrayListB.get(0);
                }
            }
            acquireCodeReq.setGoogleHashCode(this.h);
        } else {
            acquireCodeReq.setEmail(((al7) this.a).w());
        }
        this.d.b(e(), acquireCodeReq, new c(e(), AcquireCodeRes.class));
    }

    public final VerifyAccountActivity e() {
        return (VerifyAccountActivity) ((al7) this.a).J();
    }

    public String f() {
        if (TextUtils.isEmpty(this.c)) {
            Context contextJ = ((al7) this.a).J();
            CountryData countryData = this.g;
            this.c = CountryData.getCountryCode(contextJ, countryData != null ? countryData.countries : null);
        }
        if (TextUtils.isEmpty(this.c)) {
            return this.c;
        }
        StringBuilder sbA = xo7.a(Marker.ANY_NON_NULL_MARKER);
        sbA.append(this.c);
        return sbA.toString();
    }

    public String g() {
        if (TextUtils.isEmpty(this.c)) {
            Context contextJ = ((al7) this.a).J();
            CountryData countryData = this.g;
            this.c = CountryData.getCountryCode(contextJ, countryData != null ? countryData.countries : null);
        }
        return this.c;
    }

    public void h() {
        e().u0(e().getString(R.string.xn_loading_verify_account));
        VerifyCodeReq verifyCodeReq = new VerifyCodeReq();
        if (((al7) this.a).t() == 3) {
            verifyCodeReq.setPhone(g() + "-" + ((al7) this.a).w());
        } else {
            verifyCodeReq.setEmail(((al7) this.a).w());
        }
        verifyCodeReq.setTicket(this.e);
        verifyCodeReq.setVerificationCode(((al7) this.a).o());
        try {
            this.d.c(e(), verifyCodeReq, new d(e(), VerifyCodeRes.class));
        } catch (Exception e) {
            e.printStackTrace();
            e().A0();
            e().y0(e().getString(R.string.xn_net_unavailable));
        }
    }
}
