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
import com.transsion.xuanniao.account.verify.view.VerifyPhoneActivity;
import java.util.ArrayList;
import org.slf4j.Marker;

public class up7 extends BasePresenter {
    public hq7 b = new hq7("RESET_PASSWORD");
    public String c;
    public String d;
    public String e;
    public String f;
    public ml7 g;
    public CountryData h;
    public String i;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            CaptchaRes captchaRes = (CaptchaRes) obj;
            if (up7.this.a()) {
                up7.this.e().A0();
                up7.this.c = captchaRes.getCaptchaTicket();
                ((wm7) up7.this.a).i(OppOp00.a.a(captchaRes.getCaptchaBase64()));
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (up7.this.a()) {
                up7.this.e().A0();
                if (baseData.code != 400407) {
                    super.d(baseData, str);
                } else if (baseData.errorExtend != null) {
                    tl7 tl7VarC = tl7.c(up7.this.e());
                    long jLongValue = baseData.errorExtend.getEndTime().longValue();
                    tl7VarC.a();
                    tl7VarC.b.putLong("key_captcha_limit_reset_pwd", jLongValue);
                    tl7VarC.b();
                    up7.this.b(baseData.errorExtend.getEndTime().longValue());
                }
                ((wm7) up7.this.a).g();
            }
        }

        @Override
        public void g() {
            if (up7.this.a()) {
                up7.this.c();
            }
        }
    }

    public class b implements ml7.b {
        public b() {
        }

        @Override
        public void C(long j) {
            if (up7.this.a()) {
                ((wm7) up7.this.a).c(true, j);
            }
        }

        @Override
        public void a() {
            if (up7.this.a()) {
                ((wm7) up7.this.a).c(false, 0L);
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
            if (up7.this.a()) {
                up7.this.e().A0();
                ((wm7) up7.this.a).a();
                up7.this.d = acquireCodeRes.getTicket();
                tl7 tl7VarC = tl7.c(up7.this.e());
                String str2 = up7.this.d;
                tl7VarC.a();
                tl7VarC.b.putString("sms_ticket", str2);
                tl7VarC.b();
                ((wm7) up7.this.a).q(false);
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (up7.this.a()) {
                up7.this.e().A0();
                int i = baseData.code;
                if (i == 400408) {
                    ((wm7) up7.this.a).e();
                    return;
                }
                if (i == 400409) {
                    ((wm7) up7.this.a).b();
                    return;
                }
                if (i == 400100) {
                    ((wm7) up7.this.a).h();
                    up7.this.c();
                } else if (i != 400000) {
                    super.d(baseData, str);
                    up7.this.c();
                } else {
                    if (tl7.c(up7.this.e()).h()) {
                        ((wm7) up7.this.a).z();
                    } else {
                        ((wm7) up7.this.a).q(true);
                    }
                    up7.this.c();
                }
            }
        }

        @Override
        public void g() {
            if (up7.this.a()) {
                up7.this.d();
            }
        }
    }

    public class d extends OppO0O0 {
        public d(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (up7.this.a()) {
                ((wm7) up7.this.a).j();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (up7.this.a()) {
                up7.this.e().A0();
                if (baseData.code == 400100) {
                    ((wm7) up7.this.a).d();
                } else {
                    super.d(baseData, str);
                }
            }
        }

        @Override
        public void g() {
            if (up7.this.a()) {
                up7.this.h();
            }
        }
    }

    public void b(long j) {
        long jCurrentTimeMillis = j - System.currentTimeMillis();
        if (jCurrentTimeMillis > 0) {
            ml7 ml7Var = this.g;
            if (ml7Var != null) {
                ml7Var.a();
            }
            ml7 ml7Var2 = new ml7(new b());
            this.g = ml7Var2;
            ml7Var2.b = jCurrentTimeMillis;
            ml7Var2.c();
        }
    }

    public void c() {
        this.b.a(e(), new a(e(), CaptchaRes.class));
    }

    public void d() {
        e().u0(e().getString(R.string.xn_loading));
        AcquireCodeReq acquireCodeReq = new AcquireCodeReq();
        acquireCodeReq.setCaptchaCode(((wm7) this.a).f());
        acquireCodeReq.setCaptchaTicket(this.c);
        acquireCodeReq.setPhone(g() + "-" + ((wm7) this.a).k());
        if (TextUtils.isEmpty(this.i)) {
            ArrayList arrayListB = new rk7(e()).b();
            if (arrayListB.size() > 0) {
                this.i = (String) arrayListB.get(0);
            }
        }
        acquireCodeReq.setGoogleHashCode(this.i);
        this.b.b(e(), acquireCodeReq, new c(e(), AcquireCodeRes.class));
    }

    public final VerifyPhoneActivity e() {
        return (VerifyPhoneActivity) ((wm7) this.a).J();
    }

    public String f() {
        if (TextUtils.isEmpty(this.e)) {
            Context contextJ = ((wm7) this.a).J();
            CountryData countryData = this.h;
            this.e = CountryData.getCountryCode(contextJ, countryData != null ? countryData.countries : null);
        }
        if (TextUtils.isEmpty(this.e)) {
            return this.e;
        }
        StringBuilder sbA = xo7.a(Marker.ANY_NON_NULL_MARKER);
        sbA.append(this.e);
        return sbA.toString();
    }

    public String g() {
        if (TextUtils.isEmpty(this.e)) {
            Context contextJ = ((wm7) this.a).J();
            CountryData countryData = this.h;
            this.e = CountryData.getCountryCode(contextJ, countryData != null ? countryData.countries : null);
        }
        return this.e;
    }

    public void h() {
        if (TextUtils.isEmpty(this.d)) {
            String string = tl7.c(e()).a.getString("sms_ticket", "");
            this.d = string;
            if (TextUtils.isEmpty(string)) {
                ((wm7) this.a).d();
            }
        }
        e().u0(e().getString(R.string.xn_loading_verify_account));
        VerifyCodeReq verifyCodeReq = new VerifyCodeReq();
        verifyCodeReq.setPhone(g() + "-" + ((wm7) this.a).k());
        verifyCodeReq.setTicket(this.d);
        verifyCodeReq.setVerificationCode(((wm7) this.a).o());
        try {
            this.b.c(e(), verifyCodeReq, new d(e(), VerifyCodeRes.class));
        } catch (Exception e) {
            e.printStackTrace();
            e().A0();
            e().y0(e().getString(R.string.xn_net_unavailable));
        }
    }
}
