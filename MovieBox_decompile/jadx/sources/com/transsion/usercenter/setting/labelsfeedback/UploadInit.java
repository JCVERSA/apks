package com.transsion.usercenter.setting.labelsfeedback;

import com.google.gson.JsonObject;
import com.therouter.TheRouter;
import com.transsion.baselib.net.LaunchWithErrorHandlerKt;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class UploadInit {

    private static boolean f55279b;

    public static final UploadInit f55278a = new UploadInit();

    private static final Lazy f55280c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UploadInit.i();
        }
    });

    private static final Lazy f55281d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UploadInit.h();
        }
    });

    private UploadInit() {
    }

    public final qx.a e() {
        return (qx.a) f55281d.getValue();
    }

    public final mv.a f() {
        return (mv.a) f55280c.getValue();
    }

    public static final qx.a h() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final mv.a i() {
        return (mv.a) kg.c.f63982e.a().h(mv.a.class);
    }

    public final void g() {
        if (f55279b) {
            return;
        }
        f55279b = true;
        uu.c.f73250a.e(new uu.b() {
            @Override
            public String a() {
                return jg.b.f63119a.c();
            }

            @Override
            public String b() {
                return new yf.a().a(0, System.currentTimeMillis());
            }

            @Override
            public List c() {
                return CollectionsKt.o("oneroom-db", "oneroom-subtitle-db", "mb-ad-plans-db");
            }

            @Override
            public String d() {
                xf.c.a aVar = xf.c.f75330a;
                return aVar.c(aVar.b());
            }

            @Override
            public void e(Function1 callback) {
                Intrinsics.h(callback, "callback");
                LaunchWithErrorHandlerKt.d(o0.a(y0.b()), new UploadInit$init$1$getLogsConfig$1(callback, null), null, 2, null);
            }

            @Override
            public Object f(Function1 function1, Function1 function2, Continuation continuation) {
                LaunchWithErrorHandlerKt.c(o0.a(y0.b()), new UploadInit$init$1$getTstToken$2(function1, function2, null), new UploadInit$init$1$getTstToken$3(function2, null));
                return Unit.f64096a;
            }

            @Override
            public String g() {
                UserInfo userInfoI;
                String userId;
                qx.a aVarE = UploadInit.f55278a.e();
                return (aVarE == null || (userInfoI = aVarE.i()) == null || (userId = userInfoI.getUserId()) == null) ? "" : userId;
            }

            @Override
            public void h(JsonObject json, Function1 callback) {
                Intrinsics.h(json, "json");
                Intrinsics.h(callback, "callback");
                LaunchWithErrorHandlerKt.c(o0.a(y0.b()), new UploadInit$init$1$reportUploadLogsResult$1(json, callback, null), new UploadInit$init$1$reportUploadLogsResult$2(callback, null));
            }
        });
    }
}
