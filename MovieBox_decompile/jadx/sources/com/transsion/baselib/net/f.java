package com.transsion.baselib.net;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.blankj.utilcode.util.b0;
import com.therouter.TheRouter;
import com.transsnet.loginapi.bean.UserInfo;
import java.io.IOException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class f implements Interceptor {

    public static final a f42182b = new a(null);

    private final Lazy f42183a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.d();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final String b() {
        String strValueOf = String.valueOf(System.currentTimeMillis());
        String strG = b0.g(strValueOf);
        wg.a.C0924a c0924a = wg.a.f74277a;
        Intrinsics.e(strG);
        return strValueOf + "," + c0924a.a(strG);
    }

    private final qx.a c() {
        return (qx.a) this.f42183a.getValue();
    }

    public static final qx.a d() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.h(chain, "chain");
        Request request = chain.request();
        qx.a aVarC = c();
        UserInfo userInfoI = aVarC != null ? aVarC.i() : null;
        if (userInfoI == null || TextUtils.isEmpty(userInfoI.getToken())) {
            request = request.newBuilder().header("X-Client-Token", b()).build();
        } else {
            String token = userInfoI.getToken();
            if (token != null) {
                request = request.newBuilder().header(HttpHeaders.AUTHORIZATION, eg.a.f59670a.a(token)).build();
            }
        }
        Response responseProceed = chain.proceed(request);
        qx.a aVarC2 = c();
        if (aVarC2 != null) {
            aVarC2.h(responseProceed);
        }
        return responseProceed;
    }
}
