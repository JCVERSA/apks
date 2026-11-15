package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.login.view.LoginActivity;
import com.transsion.xuanniao.account.model.data.AcquireCodeReq;
import com.transsion.xuanniao.account.model.data.AcquireCodeRes;
import com.transsion.xuanniao.account.model.data.ApplyKeyReq;
import com.transsion.xuanniao.account.model.data.ApplyTokenReq;
import com.transsion.xuanniao.account.model.data.ApplyTokenRes;
import com.transsion.xuanniao.account.model.data.CaptchaRes;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.ErrorExtend;
import com.transsion.xuanniao.account.model.data.Key;
import com.transsion.xuanniao.account.model.data.LoginByCodeReq;
import com.transsion.xuanniao.account.model.data.LoginCaptchaReq;
import com.transsion.xuanniao.account.model.data.LoginRes;
import com.transsion.xuanniao.account.model.data.PolicyRes;
import com.transsion.xuanniao.account.model.data.ThirdLoginReq;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;
import org.slf4j.Marker;

public class do7 extends BasePresenter {
    public String c;
    public String d;
    public String g;
    public boolean i;
    public ml7 k;
    public ml7 l;
    public um7 m;
    public boolean n;
    public long s;
    public CountryData t;
    public String u;
    public boolean b = true;
    public String h = "";
    public int j = 0;
    public int o = 0;
    public int p = 0;
    public int q = 0;
    public int r = 0;
    public hq7 e = new hq7(LoginRes.LOGIN);
    public yo7 f = new yo7();

    public class a extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, Class cls, String str) {
            super(context, cls);
            this.k = str;
        }

        @Override
        public void b(int i, Object obj, String str) {
            LoginRes loginRes = (LoginRes) obj;
            if (do7.this.a()) {
                xj.U(do7.this.k()).k0(do7.this.v(), 1, "", System.currentTimeMillis() - do7.this.s);
                do7.this.k().A0();
                if (loginRes == null || loginRes.account == null) {
                    do7.this.k().y0(do7.this.k().getString(R.string.xn_net_unavailable));
                    return;
                }
                do7.f(do7.this, loginRes, 0, this.k, 1);
                ((kn7) do7.this.a).X(loginRes.account);
                ((kn7) do7.this.a).K(loginRes.token.eventType, loginRes);
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (do7.this.a()) {
                xj.U(do7.this.k()).k0(do7.this.v(), 0, String.valueOf(baseData.code), System.currentTimeMillis() - do7.this.s);
                do7.this.k().A0();
                ErrorExtend errorExtend = baseData.errorExtend;
                if (errorExtend != null && errorExtend.needCaptcha) {
                    ((kn7) do7.this.a).Q();
                    do7.this.g(null);
                }
                int i = baseData.code;
                if (i == 400100) {
                    ((kn7) do7.this.a).o0();
                    return;
                }
                if (i == 400003 || i == 400000) {
                    ((kn7) do7.this.a).n();
                    return;
                }
                if (i != 400411) {
                    if (i != 400002) {
                        super.d(baseData, str);
                        return;
                    }
                    ErrorExtend errorExtend2 = baseData.errorExtend;
                    if (errorExtend2 != null) {
                        ((kn7) do7.this.a).C(errorExtend2.getEndTime().longValue());
                        return;
                    }
                    return;
                }
                if (baseData.errorExtend != null) {
                    tl7 tl7VarC = tl7.c(do7.this.k());
                    long jLongValue = baseData.errorExtend.getEndTime().longValue();
                    tl7VarC.a();
                    tl7VarC.b.putLong("key_login_pwd_limit", jLongValue);
                    tl7VarC.b();
                    do7.this.i(baseData.errorExtend.getEndTime().longValue());
                }
            }
        }

        @Override
        public void g() {
            if (do7.this.a()) {
                do7.this.w();
            }
        }
    }

    public class b extends OppO0O0 {
        public final int k;
        public final Context l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Class cls, int i, Context context2) {
            super(context, cls);
            this.k = i;
            this.l = context2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            ApplyTokenRes applyTokenRes = (ApplyTokenRes) obj;
            if (do7.this.a()) {
                do7.this.k().A0();
                if (applyTokenRes != null) {
                    ((kn7) do7.this.a).D(this.k, applyTokenRes.getToken());
                } else {
                    do7.this.k().y0(this.l.getString(R.string.xn_net_unavailable));
                }
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (do7.this.a()) {
                super.d(baseData, str);
            }
        }

        @Override
        public void g() {
            if (do7.this.a()) {
                do7.this.c(this.k);
            }
        }
    }

    public class c extends OppO0O0 {
        public final String k;
        public final int l;
        public final Context m;
        public final String n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, Class cls, String str, int i, Context context2, String str2) {
            super(context, cls);
            this.k = str;
            this.l = i;
            this.m = context2;
            this.n = str2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            LoginRes loginRes = (LoginRes) obj;
            if (do7.this.a()) {
                xj.U(do7.this.k()).k0(this.k, 1, "", System.currentTimeMillis() - do7.this.s);
                do7.this.k().A0();
                if (loginRes == null || loginRes.account == null) {
                    do7.this.k().y0(this.m.getString(R.string.xn_net_unavailable));
                    return;
                }
                do7.f(do7.this, loginRes, this.l, "", 0);
                ((kn7) do7.this.a).X(loginRes.account);
                ((kn7) do7.this.a).K(loginRes.token.eventType, loginRes);
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (do7.this.a()) {
                super.d(baseData, str);
                xj.U(do7.this.k()).k0(this.k, 0, String.valueOf(baseData.code), System.currentTimeMillis() - do7.this.s);
            }
        }

        @Override
        public void g() {
            if (do7.this.a()) {
                do7.this.d(this.l, this.n);
            }
        }
    }

    public class d extends OppO0O0 {
        public d(Context context, String str, Class cls) {
            super(context, str, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (do7.this.a()) {
                ao7.a.a.e(do7.this.k(), true);
                if ("login".equals(str)) {
                    do7.this.t();
                }
            }
        }

        @Override
        public void g() {
        }
    }

    public class e extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context context, String str, Class cls, String str2) {
            super(context, str, cls);
            this.k = str2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            CaptchaRes captchaRes = (CaptchaRes) obj;
            if (do7.this.a()) {
                do7.this.k().A0();
                if (captchaRes != null) {
                    do7.this.g = captchaRes.getCaptchaTicket();
                    do7.this.h = captchaRes.getCaptchaCode();
                    if ("getCode".equals(str)) {
                        do7 do7Var = do7.this;
                        if (do7Var.b) {
                            do7Var.h();
                        }
                    }
                    ((kn7) do7.this.a).Z(captchaRes.getCaptchaCode(), OppOp00.a.a(captchaRes.getCaptchaBase64()));
                    do7.this.j = 0;
                }
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (do7.this.a()) {
                do7.this.k().A0();
                if (baseData.code == 400407) {
                    do7 do7Var = do7.this;
                    do7Var.h = null;
                    if (baseData.errorExtend != null) {
                        tl7 tl7VarC = tl7.c(do7Var.k());
                        long jLongValue = baseData.errorExtend.getEndTime().longValue();
                        tl7VarC.a();
                        tl7VarC.b.putLong("key_captcha_limit_login", jLongValue);
                        tl7VarC.b();
                        do7.this.e(baseData.errorExtend.getEndTime().longValue());
                    }
                } else {
                    super.d(baseData, str);
                }
                ((kn7) do7.this.a).g();
            }
        }

        @Override
        public void g() {
            if (do7.this.a()) {
                do7.this.g(this.k);
            }
        }
    }

    public class f extends OppO0O0 {
        public f(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (do7.this.a()) {
                do7.this.k().A0();
                do7 do7Var = do7.this;
                do7Var.g = null;
                boolean z = ((kn7) do7Var.a).t() == 3;
                xj.U(do7.this.k()).E1(z ? "Phone" : "Mail");
                xj.U(do7.this.k()).X(1, "", z ? "Phone" : "Mail", do7.this.o);
                ((kn7) do7.this.a).a();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (do7.this.a()) {
                boolean z = ((kn7) do7.this.a).t() == 3;
                xj.U(do7.this.k()).X(0, String.valueOf(baseData.code), z ? "Phone" : "Mail", do7.this.o);
                do7.this.k().A0();
                do7.this.g(null);
                int i = baseData.code;
                if (i == 400408) {
                    xj.U(do7.this.k()).C1(z ? "Phone" : "Mail");
                    ((kn7) do7.this.a).e();
                } else if (i == 400409) {
                    xj.U(do7.this.k()).C1(z ? "Phone" : "Mail");
                    ((kn7) do7.this.a).b();
                } else if (i != 400100) {
                    super.d(baseData, str);
                } else {
                    xj.U(do7.this.k()).g1();
                    ((kn7) do7.this.a).L();
                }
            }
        }

        @Override
        public void g() {
            if (do7.this.a()) {
                do7.this.h();
            }
        }
    }

    public class g implements ml7.b {
        public g() {
        }

        @Override
        public void C(long j) {
            if (do7.this.a()) {
                ((kn7) do7.this.a).p(true, j);
            }
        }

        @Override
        public void a() {
            if (do7.this.a()) {
                ((kn7) do7.this.a).p(false, 0L);
            }
        }
    }

    public class h implements ml7.b {
        public h() {
        }

        @Override
        public void C(long j) {
            if (do7.this.a()) {
                ((kn7) do7.this.a).c(true, j);
            }
        }

        @Override
        public void a() {
            if (do7.this.a()) {
                ((kn7) do7.this.a).c(false, 0L);
            }
        }
    }

    public class i extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Context context, Class cls, String str) {
            super(context, cls);
            this.k = str;
        }

        @Override
        public void b(int i, Object obj, String str) {
            LoginRes loginRes = (LoginRes) obj;
            if (do7.this.a()) {
                do7.this.k().A0();
                xj.U(do7.this.k()).k0(do7.this.v(), 1, "", System.currentTimeMillis() - do7.this.s);
                if (loginRes == null || loginRes.account == null) {
                    do7.this.k().y0(do7.this.k().getString(R.string.xn_net_unavailable));
                    return;
                }
                do7.f(do7.this, loginRes, 0, this.k, 0);
                ((kn7) do7.this.a).X(loginRes.account);
                ((kn7) do7.this.a).K(loginRes.token.eventType, loginRes);
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (do7.this.a()) {
                xj.U(do7.this.k()).k0(do7.this.v(), 0, String.valueOf(baseData.code), System.currentTimeMillis() - do7.this.s);
                do7.this.k().A0();
                do7.this.g(null);
                int i = baseData.code;
                if (i == 400100) {
                    ((kn7) do7.this.a).d();
                } else if (i != 400410) {
                    super.d(baseData, str);
                } else {
                    ((kn7) do7.this.a).d();
                    ((kn7) do7.this.a).l0();
                }
            }
        }

        @Override
        public void g() {
            if (do7.this.a()) {
                do7.this.u();
            }
        }
    }

    public class j extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(Context context, String str, Class cls, String str2) {
            super(context, str, cls);
            this.k = str2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            PolicyRes policyRes = (PolicyRes) obj;
            if (do7.this.a()) {
                do7.this.k().A0();
                ((kn7) do7.this.a).E(policyRes, str);
            }
        }

        @Override
        public void g() {
            if (do7.this.a()) {
                do7.this.l(this.k);
            }
        }
    }

    public static void f(do7 do7Var, LoginRes loginRes, int i2, String str, int i3) {
        String string;
        ao7 ao7Var = ao7.a.a;
        LoginActivity loginActivityK = do7Var.k();
        LoginRes.SdkToken sdkToken = loginRes.token;
        ao7Var.d(loginActivityK, sdkToken.accessToken, sdkToken.refreshToken);
        tl7 tl7VarC = tl7.c(do7Var.k());
        try {
            string = new JSONObject().put("lt", i2).put("ac", str).put("ct", i3).toString();
        } catch (Exception unused) {
            string = "";
        }
        tl7VarC.a();
        tl7VarC.b.putString("last_login_req", string);
        tl7VarC.e(true);
        tl7VarC.d(System.currentTimeMillis());
        if (i2 == 0 && ((kn7) do7Var.a).t() == 3) {
            String strO = do7Var.o();
            tl7VarC.a();
            tl7VarC.b.putString(hb0.KEY_NAME_COUNTRY_CODE, strO);
            String str2 = do7Var.d;
            tl7VarC.a();
            tl7VarC.b.putString("country_name", str2);
        }
        tl7VarC.b();
    }

    public boolean b() {
        return this.h == null;
    }

    public void c(int i2) {
        if (a()) {
            LoginActivity loginActivityK = k();
            k().u0(loginActivityK.getString(R.string.xn_loading_verify_account));
            ApplyTokenReq applyTokenReq = new ApplyTokenReq();
            applyTokenReq.setPkgName(loginActivityK.getPackageName());
            applyTokenReq.setSign(vl7.b(loginActivityK));
            applyTokenReq.setDeviceId(mp7.a(loginActivityK));
            applyTokenReq.setApplyTime(System.currentTimeMillis());
            try {
                this.f.b(loginActivityK, applyTokenReq, new b(loginActivityK, ApplyTokenRes.class, i2, loginActivityK));
            } catch (Exception e2) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e2));
                if (a()) {
                    k().A0();
                    k().y0(k().getString(R.string.xn_net_unavailable));
                }
            }
        }
    }

    public void d(int i2, String str) {
        String str2;
        if (a()) {
            LoginActivity loginActivityK = k();
            k().u0(loginActivityK.getString(R.string.xn_loading_verify_account));
            ThirdLoginReq thirdLoginReq = new ThirdLoginReq();
            thirdLoginReq.setToken(str);
            if (1 == i2) {
                str2 = "FB";
            } else if (7 == i2) {
                str2 = "LN";
            } else {
                str2 = 8 == i2 ? VkConstant.VK : "Google";
            }
            String str3 = str2;
            xj xjVarU = xj.U(k());
            int i3 = this.p;
            int i4 = this.o;
            int i5 = this.q;
            xjVarU.m0(str3, i3, i4 - i5, i5);
            try {
                yo7 yo7Var = this.f;
                c cVar = new c(loginActivityK, LoginRes.class, str3, i2, loginActivityK, str);
                yo7Var.getClass();
                cr7 cr7Var = cr7.b.a;
                if (cr7Var.a(loginActivityK)) {
                    new zn7().c(loginActivityK, dp7.a("/app/third-accessor/login"), thirdLoginReq, cVar);
                } else {
                    loginActivityK.A0();
                    cr7Var.b(loginActivityK);
                }
            } catch (Exception e2) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e2));
                if (a()) {
                    k().A0();
                    k().y0(k().getString(R.string.xn_net_unavailable));
                }
            }
        }
    }

    public void e(long j2) {
        long jCurrentTimeMillis = j2 - System.currentTimeMillis();
        if (jCurrentTimeMillis > 0) {
            m();
            ml7 ml7Var = new ml7(new h());
            this.l = ml7Var;
            ml7Var.b = jCurrentTimeMillis;
            ml7Var.c();
        }
    }

    public void g(String str) {
        if (a()) {
            this.p++;
            this.e.a(k(), new e(k(), str, CaptchaRes.class, str));
        }
    }

    public void h() {
        if (a()) {
            boolean z = ((kn7) this.a).t() == 3;
            this.o++;
            xj.U(k()).W(z ? "Phone" : "Mail", this.o);
            cr7 cr7Var = cr7.b.a;
            if (!cr7Var.a(k())) {
                cr7Var.b(k());
                return;
            }
            k().u0(k().getString(R.string.xn_loading));
            if (TextUtils.isEmpty(this.g)) {
                int i2 = this.j;
                if (i2 > 3) {
                    k().A0();
                    return;
                } else {
                    this.j = i2 + 1;
                    g("getCode");
                    return;
                }
            }
            AcquireCodeReq acquireCodeReq = new AcquireCodeReq();
            if (((kn7) this.a).h0()) {
                acquireCodeReq.setCaptchaCode(((kn7) this.a).f());
                acquireCodeReq.setCaptchaV2("1");
            } else {
                acquireCodeReq.setCaptchaCode(this.h);
            }
            acquireCodeReq.setCaptchaTicket(this.g);
            if (z) {
                acquireCodeReq.setPhone(o() + "-" + ((kn7) this.a).w());
            } else {
                acquireCodeReq.setEmail(((kn7) this.a).w());
                this.q++;
            }
            if (TextUtils.isEmpty(this.u)) {
                ArrayList arrayListB = new rk7(k()).b();
                if (arrayListB.size() > 0) {
                    this.u = (String) arrayListB.get(0);
                }
            }
            acquireCodeReq.setGoogleHashCode(this.u);
            this.e.b(k(), acquireCodeReq, new f(k(), AcquireCodeRes.class));
        }
    }

    public void i(long j2) {
        long jCurrentTimeMillis = j2 - System.currentTimeMillis();
        if (jCurrentTimeMillis > 0) {
            m();
            ml7 ml7Var = new ml7(new g());
            this.k = ml7Var;
            ml7Var.b = jCurrentTimeMillis;
            ml7Var.c();
        }
    }

    public void j(String str) {
        if (a()) {
            ApplyKeyReq applyKeyReq = new ApplyKeyReq();
            ao7 ao7Var = ao7.a.a;
            applyKeyReq.publicKey1061 = ao7Var.g(k());
            applyKeyReq.keyId = ao7Var.i(k());
            LoginActivity loginActivityK = k();
            d dVar = new d(k(), str, BaseData.class);
            applyKeyReq.deviceId = mp7.a(loginActivityK);
            cr7 cr7Var = cr7.b.a;
            if (cr7Var.a(loginActivityK)) {
                new zn7().c(loginActivityK, dp7.a("/sdk/config/apply-key"), applyKeyReq, dVar);
            } else {
                loginActivityK.A0();
                cr7Var.b(loginActivityK);
            }
        }
    }

    public final LoginActivity k() {
        return (LoginActivity) ((kn7) this.a).J();
    }

    public void l(String str) {
        if (a()) {
            k().u0(k().getString(R.string.xn_loading));
            LoginActivity loginActivityK = k();
            String strA = sq7.a(k());
            String str2 = TextUtils.equals(k().getPackageName(), "tech.palm.id") ? "palmId" : "sdk";
            j jVar = new j(k(), str, PolicyRes.class, str);
            HashMap map = new HashMap();
            map.put("type", str2);
            map.put("language", strA.replaceAll("\\+", "-"));
            map.put("brand", jr7.h());
            cr7 cr7Var = cr7.b.a;
            if (cr7Var.a(loginActivityK)) {
                new zn7().d(loginActivityK, dp7.a("/app/policy/get"), map, jVar);
                return;
            }
            if (loginActivityK != null) {
                loginActivityK.A0();
            }
            if (loginActivityK != null) {
                cr7Var.b(loginActivityK);
            }
        }
    }

    public void m() {
        ml7 ml7Var = this.k;
        if (ml7Var != null) {
            ml7Var.a();
        }
        ml7 ml7Var2 = this.l;
        if (ml7Var2 != null) {
            ml7Var2.a();
        }
    }

    public String n() {
        CountryData countryData;
        if (TextUtils.isEmpty(this.c) && (countryData = this.t) != null && countryData.countries != null) {
            this.c = CountryData.getCountryCode(((kn7) this.a).J(), this.t.countries);
        }
        if (TextUtils.isEmpty(this.c)) {
            return this.c;
        }
        StringBuilder sbA = xo7.a(Marker.ANY_NON_NULL_MARKER);
        sbA.append(this.c);
        return sbA.toString();
    }

    public String o() {
        CountryData countryData;
        if (TextUtils.isEmpty(this.c) && (countryData = this.t) != null && countryData.countries != null) {
            this.c = CountryData.getCountryCode(((kn7) this.a).J(), this.t.countries);
            this.d = tl7.c(k()).a.getString("country_name", "");
        }
        return this.c;
    }

    public boolean p() {
        go7.a.a.getClass();
        return false;
    }

    public boolean q() {
        return this.h == null;
    }

    public boolean r() {
        ml7 ml7Var = this.l;
        if (ml7Var != null) {
            return ml7Var.c;
        }
        return false;
    }

    public boolean s() {
        ml7 ml7Var = this.k;
        if (ml7Var != null) {
            return ml7Var.c;
        }
        return false;
    }

    public void t() {
        LoginActivity loginActivityK;
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        if (a()) {
            this.r++;
            if (!ao7.a.a.l(k()) && (loginActivityK = k()) != null && (connectivityManager = (ConnectivityManager) loginActivityK.getApplicationContext().getSystemService("connectivity")) != null) {
                try {
                    Network activeNetwork = connectivityManager.getActiveNetwork();
                    if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                        j("TAG_LOGIN");
                        return;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (this.b) {
                u();
                return;
            }
            if (a()) {
                cr7 cr7Var = cr7.b.a;
                if (!cr7Var.a(k())) {
                    cr7Var.b(k());
                    return;
                }
                xj xjVarU = xj.U(k());
                String strV = v();
                int i2 = this.p;
                int i3 = this.o;
                int i4 = this.q;
                xjVarU.m0(strV, i2, i3 - i4, i4);
                k().u0(k().getString(R.string.xn_loading_verify_account));
                w();
            }
        }
    }

    public final void u() {
        String strW;
        if (a()) {
            cr7 cr7Var = cr7.b.a;
            if (!cr7Var.a(k())) {
                cr7Var.b(k());
                xj.U(k()).T0();
                return;
            }
            xj xjVarU = xj.U(k());
            String strV = v();
            int i2 = this.p;
            int i3 = this.o;
            int i4 = this.q;
            xjVarU.m0(strV, i2, i3 - i4, i4);
            k().u0(k().getString(R.string.xn_loading_verify_account));
            LoginByCodeReq loginByCodeReq = new LoginByCodeReq();
            loginByCodeReq.setExtraInfo(1);
            if (((kn7) this.a).t() == 3) {
                strW = o() + "-" + ((kn7) this.a).w();
                loginByCodeReq.setPhone(strW);
            } else {
                strW = ((kn7) this.a).w();
                loginByCodeReq.setEmail(strW);
            }
            loginByCodeReq.setVerificationCode(((kn7) this.a).N());
            try {
                Log.d("com.palm.id.log", "loginByVerificationCode");
                this.f.c(k(), loginByCodeReq, new i(k(), LoginRes.class, strW));
            } catch (Exception e2) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e2));
                k().A0();
            }
        }
    }

    public final String v() {
        boolean z = this.b;
        boolean z2 = ((kn7) this.a).t() == 3;
        boolean z3 = ((kn7) this.a).t() == 2;
        if (z) {
            return z2 ? "PV" : "EV";
        }
        if (z2) {
            return "PP";
        }
        return z3 ? "EP" : "IP";
    }

    public final void w() {
        String strW;
        try {
            LoginCaptchaReq loginCaptchaReq = new LoginCaptchaReq();
            if (((kn7) this.a).h0()) {
                loginCaptchaReq.captchaCode = ((kn7) this.a).f();
                loginCaptchaReq.captchaV2 = "1";
            } else {
                loginCaptchaReq.captchaCode = this.h;
            }
            loginCaptchaReq.captchaTicket = this.g;
            loginCaptchaReq.extraInfo = 1;
            if (((kn7) this.a).t() == 3) {
                strW = o() + "-" + ((kn7) this.a).w();
                loginCaptchaReq.phone = strW;
            } else if (((kn7) this.a).t() == 2) {
                strW = ((kn7) this.a).w();
                loginCaptchaReq.email = strW;
            } else {
                strW = ((kn7) this.a).w();
                loginCaptchaReq.username = strW;
            }
            loginCaptchaReq.password = nr7.a(((kn7) this.a).A(), Key.PUBLIC_KEY);
            Log.d("com.palm.id.log", "loginByPwdWithCaptcha");
            this.f.d(k(), loginCaptchaReq, new a(k(), LoginRes.class, strW));
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
            if (a()) {
                k().A0();
                k().y0(k().getString(R.string.xn_net_unavailable));
            }
        }
    }
}
