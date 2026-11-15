package com.transsnet.login;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.google.gson.JsonObject;
import com.transsnet.login.bean.LoginThirdUserInfo;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class LoginViewModel extends t0 {

    private final b0 f58046a;

    private final Lazy f58047b;

    private final LiveData f58048c;

    static final class a implements yx.h {

        public static final a f58049a = new a();

        a() {
        }

        @Override
        public final RequestBody apply(JsonObject it) {
            Intrinsics.h(it, "it");
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = it.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class b implements yx.h {
        b() {
        }

        @Override
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return nx.a.C0823a.d(LoginViewModel.this.f(), it, null, 2, null);
        }
    }

    public static final class c extends dg.a {

        final String f58052e;

        c(String str) {
            this.f58052e = str;
        }

        @Override
        public void a(String str, String str2) {
            LoginViewModel.this.f58046a.q(null);
            if (str2 != null) {
                fh.b.f60176a.e(str2);
            }
        }

        @Override
        public void c(LoginThirdUserInfo loginThirdUserInfo) {
            super.c(loginThirdUserInfo);
            LoginViewModel loginViewModel = LoginViewModel.this;
            loginViewModel.i(loginThirdUserInfo, loginViewModel.f58046a);
            if (loginThirdUserInfo == null) {
                return;
            }
            HashMap map = new HashMap();
            map.put("module_name", this.f58052e);
            map.put("sign_up", loginThirdUserInfo.getReg() ? "1" : "0");
            qi.h.f69682a.q("sign_up_dialog", "login", map);
            if (loginThirdUserInfo.getReg()) {
                com.transsnet.login.b.f58055a.b(R$string.login_sign_up_success);
            } else {
                com.transsnet.login.b.f58055a.b(R$string.login_success);
            }
        }
    }

    public LoginViewModel() {
        b0 b0Var = new b0();
        this.f58046a = b0Var;
        this.f58047b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LoginViewModel.j();
            }
        });
        this.f58048c = b0Var;
    }

    public final nx.a f() {
        return (nx.a) this.f58047b.getValue();
    }

    public final void i(UserInfo userInfo, b0 b0Var) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new LoginViewModel$handleLoginSuccess$1(userInfo, b0Var, null), 3, null);
    }

    public static final nx.a j() {
        return (nx.a) kg.c.f63982e.a().h(nx.a.class);
    }

    private final void k(JsonObject jsonObject, String str) {
        io.reactivex.rxjava3.core.j.t(jsonObject).u(a.f58049a).n(new b()).f(dg.d.f59034a.c()).subscribe(new c(str));
    }

    public final LiveData g() {
        return this.f58048c;
    }

    public final void h(String idToken) {
        Intrinsics.h(idToken, "idToken");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("channel", "GOOGLE");
        jsonObject.addProperty("idToken", idToken);
        k(jsonObject, "GOOGLE");
    }
}
