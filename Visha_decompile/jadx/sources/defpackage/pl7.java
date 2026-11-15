package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.text.TextUtils;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.bind.phone.view.BindingPhoneActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AcquireCodeReq;
import com.transsion.xuanniao.account.model.data.AcquireCodeRes;
import com.transsion.xuanniao.account.model.data.BindReq;
import com.transsion.xuanniao.account.model.data.CaptchaRes;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.EncryptRes;
import java.util.ArrayList;
import org.slf4j.Marker;

public class pl7 extends BasePresenter {
    public vk7 b = new vk7();
    public hq7 c = new hq7("BIND");
    public String d;
    public String e;
    public String f;
    public String g;
    public ml7 h;
    public CountryData i;
    public String j;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (pl7.this.a()) {
                pl7.this.e().A0();
                ((gn7) pl7.this.a).onSuccess();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (pl7.this.a()) {
                pl7.this.e().A0();
                int i = baseData.code;
                if (i == 400100) {
                    ((gn7) pl7.this.a).d();
                } else if (i == 400001) {
                    ((gn7) pl7.this.a).r();
                } else {
                    super.d(baseData, str);
                }
            }
        }

        @Override
        public void g() {
            if (pl7.this.a()) {
                pl7.this.g();
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
            if (pl7.this.a()) {
                pl7.this.e().A0();
                pl7.this.g = captchaRes.getCaptchaTicket();
                ((gn7) pl7.this.a).i(OppOp00.a.a(captchaRes.getCaptchaBase64()));
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (pl7.this.a()) {
                pl7.this.e().A0();
                if (baseData.code != 400407) {
                    super.d(baseData, str);
                } else if (baseData.errorExtend != null) {
                    tl7 tl7VarC = tl7.c(pl7.this.e());
                    long jLongValue = baseData.errorExtend.getEndTime().longValue();
                    tl7VarC.a();
                    tl7VarC.b.putLong("key_captcha_limit_bind", jLongValue);
                    tl7VarC.b();
                    pl7.this.b(baseData.errorExtend.getEndTime().longValue());
                }
                ((gn7) pl7.this.a).g();
            }
        }

        @Override
        public void g() {
            if (pl7.this.a()) {
                pl7.this.c();
            }
        }
    }

    public class c implements ml7.b {
        public c() {
        }

        @Override
        public void C(long j) {
            ((gn7) pl7.this.a).c(true, j);
        }

        @Override
        public void a() {
            ((gn7) pl7.this.a).c(false, 0L);
        }
    }

    public class d extends OppO0O0 {
        public d(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (pl7.this.a()) {
                pl7.this.e().A0();
                ((gn7) pl7.this.a).a();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            pl7.this.e().A0();
            int i = baseData.code;
            if (i == 400408) {
                ((gn7) pl7.this.a).e();
                return;
            }
            if (i == 400409) {
                ((gn7) pl7.this.a).b();
                return;
            }
            if (i == 400100) {
                ((gn7) pl7.this.a).h();
                pl7.this.c();
            } else if (i == 400001) {
                ((gn7) pl7.this.a).r();
            } else {
                super.d(baseData, str);
                pl7.this.c();
            }
        }

        @Override
        public void g() {
            if (pl7.this.a()) {
                pl7.this.d();
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
            ml7 ml7Var2 = new ml7(new c());
            this.h = ml7Var2;
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
        acquireCodeReq.setCaptchaCode(((gn7) this.a).f());
        acquireCodeReq.setCaptchaTicket(this.g);
        acquireCodeReq.setPhone(((gn7) this.a).k());
        if (TextUtils.isEmpty(this.j)) {
            ArrayList arrayListB = new rk7(e()).b();
            if (arrayListB.size() > 0) {
                this.j = (String) arrayListB.get(0);
            }
        }
        acquireCodeReq.setGoogleHashCode(this.j);
        this.c.b(e(), acquireCodeReq, new d(e(), AcquireCodeRes.class));
    }

    public final BindingPhoneActivity e() {
        return (BindingPhoneActivity) ((gn7) this.a).J();
    }

    public String f() {
        if (TextUtils.isEmpty(this.d)) {
            CountryData countryData = this.i;
            if (countryData == null || countryData.countries == null) {
                return "";
            }
            this.d = CountryData.getCountryCode(((gn7) this.a).J(), this.i.countries);
        }
        return this.d;
    }

    public void g() {
        e().u0(e().getString(R.string.xn_loading));
        BindReq bindReq = new BindReq();
        bindReq.setPhone(((gn7) this.a).k());
        bindReq.setVerificationCode(((gn7) this.a).s());
        try {
            this.b.b(e(), bindReq, new a(e(), EncryptRes.class));
        } catch (Exception e) {
            e.printStackTrace();
            e().A0();
            e().y0(e().getString(R.string.xn_net_unavailable));
        }
    }

    public String h() {
        if (TextUtils.isEmpty(f())) {
            return "";
        }
        StringBuilder sbA = xo7.a(Marker.ANY_NON_NULL_MARKER);
        sbA.append(f());
        return sbA.toString();
    }
}
