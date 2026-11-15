package com.transsnet.login.phone;

import android.app.Application;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import androidx.p009lifecycle.LiveData;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.google.gson.JsonObject;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.loginapi.bean.Country;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.ListIterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class LoginPhoneViewModel extends androidx.p009lifecycle.b {

    private final androidx.p009lifecycle.b0 f58189b;

    private final androidx.p009lifecycle.b0 f58190c;

    private final androidx.p009lifecycle.b0 f58191d;

    private final androidx.p009lifecycle.b0 f58192e;

    private final androidx.p009lifecycle.b0 f58193f;

    private final androidx.p009lifecycle.b0 f58194g;

    private final androidx.p009lifecycle.b0 f58195h;

    private final androidx.p009lifecycle.b0 f58196i;

    private final Lazy f58197j;

    private final androidx.p009lifecycle.b0 f58198k;

    private final HashMap f58199l;

    static final class a implements yx.h {

        final LoginSmsCodeRequest f58200a;

        a(LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f58200a = loginSmsCodeRequest;
        }

        @Override
        public final RequestBody apply(LoginSmsCodeRequest it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            if (this.f58200a.getAuthType() == 0) {
                jsonObject.addProperty("phone", it.getPhone());
                jsonObject.addProperty("cc", it.getCc());
            } else {
                jsonObject.addProperty("mail", it.getMail());
            }
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class b implements yx.h {

        final LoginSmsCodeRequest f58201a;

        final LoginPhoneViewModel f58202b;

        b(LoginSmsCodeRequest loginSmsCodeRequest, LoginPhoneViewModel loginPhoneViewModel) {
            this.f58201a = loginSmsCodeRequest;
            this.f58202b = loginPhoneViewModel;
        }

        @Override
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return this.f58201a.getAuthType() == 0 ? this.f58202b.z().k(gg.a.f61067a.a(), it) : nx.a.C0823a.a(this.f58202b.z(), it, null, 2, null);
        }
    }

    public static final class c extends dg.a {

        final String f58204e;

        c(String str) {
            this.f58204e = str;
        }

        @Override
        public void a(String str, String str2) {
            if (str2 != null && str != null && Integer.parseInt(str) >= 200000) {
                LoginPhoneViewModel.this.f58199l.put(this.f58204e, str2);
            }
            if (str2 != null) {
                LoginPhoneViewModel.this.f58198k.q(str2);
            }
            LoginPhoneViewModel.this.f58192e.q(null);
        }

        @Override
        public void c(LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
            LoginPhoneViewModel.this.f58192e.q(loginCheckPhoneExistResult);
        }
    }

    static final class d implements yx.h {

        public static final d f58205a = new d();

        d() {
        }

        @Override
        public final RequestBody apply(LoginSmsCodeRequest it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("mail", it.getMail());
            jsonObject.addProperty("verificationCode", it.getVerificationCode());
            jsonObject.addProperty("password", it.getPassword());
            jsonObject.addProperty("inviteCode", it.getInviteCode());
            jsonObject.addProperty("authType", (Number) 1);
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class e implements yx.h {
        e() {
        }

        @Override
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return LoginPhoneViewModel.this.z().b(gg.a.f61067a.a(), it);
        }
    }

    public static final class f extends dg.a {

        final String f58208e;

        f(String str) {
            this.f58208e = str;
        }

        @Override
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f58194g.q(str2);
            LoginPhoneViewModel.this.f58193f.q(null);
            if (str2 == null || str == null || Integer.parseInt(str) < 200000) {
                return;
            }
            LoginPhoneViewModel.this.f58199l.put(this.f58208e, str2);
        }

        @Override
        public void c(UserInfo userInfo) {
            ix.d.f62813a.b().putString("login_last_login_type", "EMAIL");
            LoginPhoneViewModel loginPhoneViewModel = LoginPhoneViewModel.this;
            loginPhoneViewModel.H(userInfo, loginPhoneViewModel.f58193f);
        }
    }

    public static final class g extends dg.a {

        final String f58210e;

        final LoginSmsCodeRequest f58211f;

        g(String str, LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f58210e = str;
            this.f58211f = loginSmsCodeRequest;
        }

        @Override
        public void a(String str, String str2) {
            if (str2 != null) {
                fh.b.f60176a.e(str2);
            }
            LoginPhoneViewModel.this.f58191d.q(null);
        }

        @Override
        public void c(String str) {
            ix.f.f62815a.b().putLong(this.f58210e, SystemClock.elapsedRealtime());
            LoginPhoneViewModel.this.f58191d.q(this.f58211f);
        }
    }

    public static final class h extends dg.a {

        final String f58213e;

        final LoginSmsCodeRequest f58214f;

        h(String str, LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f58213e = str;
            this.f58214f = loginSmsCodeRequest;
        }

        @Override
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f58194g.q(str2);
            LoginPhoneViewModel.this.f58193f.q(null);
            if (str2 == null || str == null || Integer.parseInt(str) < 200000) {
                return;
            }
            LoginPhoneViewModel.this.f58199l.put(this.f58213e, str2);
        }

        @Override
        public void c(UserInfo userInfo) {
            ix.d.f62813a.b().putString("login_last_login_type", this.f58214f.getAuthType() == 1 ? "EMAIL" : PermissionConstants.PHONE);
            LoginPhoneViewModel loginPhoneViewModel = LoginPhoneViewModel.this;
            loginPhoneViewModel.H(userInfo, loginPhoneViewModel.f58193f);
        }
    }

    static final class i implements yx.h {

        public static final i f58215a = new i();

        i() {
        }

        @Override
        public final RequestBody apply(LoginSmsCodeRequest it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("phone", it.getPhone());
            jsonObject.addProperty("cc", it.getCc());
            jsonObject.addProperty("verificationCode", it.getVerificationCode());
            jsonObject.addProperty("password", it.getPassword());
            jsonObject.addProperty("inviteCode", it.getInviteCode());
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class j implements yx.h {
        j() {
        }

        @Override
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return LoginPhoneViewModel.this.z().b(gg.a.f61067a.a(), it);
        }
    }

    public static final class k extends dg.a {

        final String f58218e;

        k(String str) {
            this.f58218e = str;
        }

        @Override
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f58194g.q(str2);
            LoginPhoneViewModel.this.f58193f.q(null);
            if (str2 == null || str == null || Integer.parseInt(str) < 200000) {
                return;
            }
            LoginPhoneViewModel.this.f58199l.put(this.f58218e, str2);
        }

        @Override
        public void c(UserInfo userInfo) {
            ix.d.f62813a.b().putString("login_last_login_type", PermissionConstants.PHONE);
            LoginPhoneViewModel loginPhoneViewModel = LoginPhoneViewModel.this;
            loginPhoneViewModel.H(userInfo, loginPhoneViewModel.f58193f);
        }
    }

    static final class l implements yx.h {

        final LoginSmsCodeRequest f58219a;

        l(LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f58219a = loginSmsCodeRequest;
        }

        @Override
        public final RequestBody apply(LoginSmsCodeRequest it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            if (this.f58219a.getAuthType() == 1) {
                jsonObject.addProperty("mail", it.getMail());
                jsonObject.addProperty("verificationCode", it.getVerificationCode());
                jsonObject.addProperty("inviteCode", it.getInviteCode());
                jsonObject.addProperty("authType", (Number) 1);
            } else {
                jsonObject.addProperty("phone", it.getPhone());
                jsonObject.addProperty("cc", it.getCc());
                jsonObject.addProperty("verification_code", it.getVerificationCode());
            }
            jsonObject.addProperty("password", it.getPassword());
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class m implements yx.h {
        m() {
        }

        @Override
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return LoginPhoneViewModel.this.z().j(gg.a.f61067a.a(), it);
        }
    }

    public static final class n extends dg.a {

        final LoginSmsCodeRequest f58222e;

        n(LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f58222e = loginSmsCodeRequest;
        }

        @Override
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f58194g.q(str2);
            LoginPhoneViewModel.this.f58196i.q(null);
        }

        @Override
        public void c(UserInfo userInfo) {
            ix.d.f62813a.b().putString("login_last_login_type", this.f58222e.getAuthType() == 1 ? "EMAIL" : PermissionConstants.PHONE);
            LoginPhoneViewModel loginPhoneViewModel = LoginPhoneViewModel.this;
            loginPhoneViewModel.H(userInfo, loginPhoneViewModel.f58196i);
        }
    }

    public static final class o extends dg.a {

        final String f58224e;

        o(String str) {
            this.f58224e = str;
        }

        @Override
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f58194g.q(str2);
            LoginPhoneViewModel.this.f58195h.q(Boolean.FALSE);
            if (str2 == null || str == null || Integer.parseInt(str) < 200000) {
                return;
            }
            LoginPhoneViewModel.this.f58199l.put(this.f58224e, str2);
        }

        @Override
        public void c(String str) {
            LoginPhoneViewModel.this.f58195h.q(Boolean.TRUE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginPhoneViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f58189b = new androidx.p009lifecycle.b0();
        this.f58190c = new androidx.p009lifecycle.b0();
        this.f58191d = new androidx.p009lifecycle.b0();
        this.f58192e = new androidx.p009lifecycle.b0();
        this.f58193f = new androidx.p009lifecycle.b0();
        this.f58194g = new androidx.p009lifecycle.b0();
        this.f58195h = new androidx.p009lifecycle.b0();
        this.f58196i = new androidx.p009lifecycle.b0();
        this.f58197j = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LoginPhoneViewModel.I();
            }
        });
        this.f58198k = new androidx.p009lifecycle.b0();
        this.f58199l = new HashMap();
    }

    public static void F(LoginPhoneViewModel loginPhoneViewModel, LoginSmsCodeRequest loginSmsCodeRequest, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 1;
        }
        loginPhoneViewModel.E(loginSmsCodeRequest, i10);
    }

    public final void H(UserInfo userInfo, androidx.p009lifecycle.b0 b0Var) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new LoginPhoneViewModel$handleLoginSuccess$1(userInfo, b0Var, null), 3, null);
    }

    public static final nx.a I() {
        return (nx.a) kg.c.f63982e.a().h(nx.a.class);
    }

    public final Country x(String str) throws Throwable {
        Object obj = null;
        if (str == null || str.length() < 3) {
            return null;
        }
        String strSubstring = str.substring(0, 3);
        Intrinsics.g(strSubstring, "substring(...)");
        ArrayList arrayListA = lx.b.b().a(b());
        if (arrayListA == null || arrayListA.isEmpty()) {
            return null;
        }
        ListIterator listIterator = arrayListA.listIterator(arrayListA.size());
        while (listIterator.hasPrevious()) {
            Object objPrevious = listIterator.previous();
            if (Intrinsics.c(strSubstring, ((Country) objPrevious).getMcc())) {
                obj = objPrevious;
                break;
            }
        }
        return (Country) obj;
    }

    public final nx.a z() {
        return (nx.a) this.f58197j.getValue();
    }

    public final LiveData A() {
        return this.f58194g;
    }

    public final LiveData B() {
        return this.f58193f;
    }

    public final LiveData C() {
        return this.f58190c;
    }

    public final LiveData D() {
        return this.f58196i;
    }

    public final void E(LoginSmsCodeRequest loginSmsCodeRequest, int i10) {
        if (loginSmsCodeRequest == null) {
            this.f58191d.q(null);
            return;
        }
        loginSmsCodeRequest.setType(i10);
        loginSmsCodeRequest.setPackage_name(b().getPackageName());
        String strAccount = loginSmsCodeRequest.account();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - ix.f.f62815a.b().getLong(strAccount, 0L);
        if (0 > jElapsedRealtime || jElapsedRealtime >= 60000) {
            z().d(gg.a.f61067a.a(), loginSmsCodeRequest).f(dg.d.f59034a.c()).subscribe(new g(strAccount, loginSmsCodeRequest));
        } else {
            this.f58191d.q(loginSmsCodeRequest);
        }
    }

    public final LiveData G() {
        return this.f58191d;
    }

    public final void J(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f58193f.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f58199l.get(strDataKey);
        if (str == null) {
            z().i(gg.a.f61067a.a(), loginSmsCodeRequest).f(dg.d.f59034a.c()).subscribe(new h(strDataKey, loginSmsCodeRequest));
        } else {
            this.f58194g.q(str);
            this.f58193f.q(null);
        }
    }

    public final void K(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f58193f.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f58199l.get(strDataKey);
        if (str == null) {
            io.reactivex.rxjava3.core.j.t(loginSmsCodeRequest).u(i.f58215a).n(new j()).f(dg.d.f59034a.c()).subscribe(new k(strDataKey));
        } else {
            this.f58194g.q(str);
            this.f58193f.q(null);
        }
    }

    public final void L(LoginSmsCodeRequest loginSmsCodeRequest, boolean z10) {
        if (loginSmsCodeRequest == null) {
            this.f58193f.q(null);
        } else {
            io.reactivex.rxjava3.core.j.t(loginSmsCodeRequest).u(new l(loginSmsCodeRequest)).n(new m()).f(dg.d.f59034a.c()).subscribe(new n(loginSmsCodeRequest));
        }
    }

    public final void M(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f58193f.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f58199l.get(strDataKey);
        if (str == null) {
            (loginSmsCodeRequest.getAuthType() == 0 ? z().g(gg.a.f61067a.a(), loginSmsCodeRequest) : nx.a.C0823a.b(z(), loginSmsCodeRequest, null, 2, null)).f(dg.d.f59034a.c()).subscribe(new o(strDataKey));
        } else {
            this.f58194g.q(str);
            this.f58195h.q(Boolean.FALSE);
        }
    }

    public final void q(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f58191d.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f58199l.get(strDataKey);
        if (str == null) {
            io.reactivex.rxjava3.core.j.t(loginSmsCodeRequest).u(new a(loginSmsCodeRequest)).n(new b(loginSmsCodeRequest, this)).f(dg.d.f59034a.c()).subscribe(new c(strDataKey));
        } else {
            this.f58198k.q(str);
            this.f58192e.q(null);
        }
    }

    public final void r(String phoneNum) {
        Intrinsics.h(phoneNum, "phoneNum");
        kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), kotlinx.coroutines.y0.b(), null, new LoginPhoneViewModel$checkPhoneNum$1(this, phoneNum, null), 2, null);
    }

    public final void s(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f58193f.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f58199l.get(strDataKey);
        if (str == null) {
            io.reactivex.rxjava3.core.j.t(loginSmsCodeRequest).u(d.f58205a).n(new e()).f(dg.d.f59034a.c()).subscribe(new f(strDataKey));
        } else {
            this.f58194g.q(str);
            this.f58193f.q(null);
        }
    }

    public final LiveData t() {
        return this.f58198k;
    }

    public final LiveData u() {
        return this.f58192e;
    }

    public final LiveData v() {
        return this.f58195h;
    }

    public final void w() {
        Object systemService = b().getSystemService("phone");
        if (!(systemService instanceof TelephonyManager)) {
            this.f58189b.q(null);
        } else {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), kotlinx.coroutines.y0.b(), null, new LoginPhoneViewModel$getCountry$1(this, ((TelephonyManager) systemService).getSimOperator(), null), 2, null);
        }
    }

    public final LiveData y() {
        return this.f58189b;
    }
}
