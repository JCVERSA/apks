package com.transsnet.login.email;

import android.os.SystemClock;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

public final class a0 extends t0 {

    private final Lazy f58099a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return a0.l();
        }
    });

    private final b0 f58100b = new b0();

    private final b0 f58101c = new b0();

    private final b0 f58102d = new b0();

    static final class a implements yx.h {

        final String f58103a;

        a(String str) {
            this.f58103a = str;
        }

        @Override
        public final RequestBody apply(String it) throws JSONException {
            Intrinsics.h(it, "it");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("mail", this.f58103a);
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jSONObject.toString();
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
            return com.transsnet.login.email.a.C0670a.a(a0.this.k(), it, null, 2, null);
        }
    }

    public static final class c extends dg.a {
        c() {
        }

        @Override
        public void a(String str, String str2) {
            if (str2 != null) {
                fh.b.f60176a.e(str2);
            }
            a0.this.f58100b.q(null);
        }

        @Override
        public void c(LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
            super.c(loginCheckPhoneExistResult);
            a0.this.f58100b.q(loginCheckPhoneExistResult);
        }
    }

    static final class d implements yx.h {

        final JSONObject f58106a;

        d(JSONObject jSONObject) {
            this.f58106a = jSONObject;
        }

        @Override
        public final RequestBody apply(JSONObject it) {
            Intrinsics.h(it, "it");
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = this.f58106a.toString();
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
            return com.transsnet.login.email.a.C0670a.b(a0.this.k(), it, null, 2, null);
        }
    }

    public static final class f extends dg.a {

        final String f58109e;

        f(String str) {
            this.f58109e = str;
        }

        @Override
        public void a(String str, String str2) {
            if (str2 != null) {
                fh.b.f60176a.e(str2);
            }
            a0.this.f58101c.q(null);
        }

        @Override
        public void c(String str) {
            super.c(str);
            ix.f.f62815a.b().putLong(this.f58109e, SystemClock.elapsedRealtime());
            a0.this.f58101c.q(this.f58109e);
        }
    }

    public static void i(a0 a0Var, String str, int i10, int i11, Object obj) throws JSONException {
        if ((i11 & 2) != 0) {
            i10 = 1;
        }
        a0Var.h(str, i10);
    }

    public final com.transsnet.login.email.a k() {
        return (com.transsnet.login.email.a) this.f58099a.getValue();
    }

    public static final com.transsnet.login.email.a l() {
        return (com.transsnet.login.email.a) kg.c.f63982e.a().h(com.transsnet.login.email.a.class);
    }

    public final void f(String email) {
        Intrinsics.h(email, "email");
        io.reactivex.rxjava3.core.j.t(email).u(new a(email)).n(new b()).f(dg.d.f59034a.c()).subscribe(new c());
    }

    public final LiveData g() {
        return this.f58100b;
    }

    public final void h(String email, int i10) throws JSONException {
        Intrinsics.h(email, "email");
        long jElapsedRealtime = SystemClock.elapsedRealtime() - ix.f.f62815a.b().getLong(email, 0L);
        if (0 <= jElapsedRealtime && jElapsedRealtime < 60000) {
            this.f58101c.q(email);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mail", email);
        jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
        jSONObject.put("authType", 1);
        io.reactivex.rxjava3.core.j.t(jSONObject).u(new d(jSONObject)).n(new e()).f(dg.d.f59034a.c()).subscribe(new f(email));
    }

    public final LiveData j() {
        return this.f58101c;
    }
}
