package yu;

import com.transsion.usercenter.edit.api.RequstUserEntity;
import com.transsnet.loginapi.bean.UserInfo;
import dg.d;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class c {

    public static final a f76392a = new a(null);

    private static final Lazy f76393b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c.c();
        }
    });

    public static final class a {

        public static final class C0950a extends dg.a {

            final com.transsion.usercenter.edit.a f76394d;

            C0950a(com.transsion.usercenter.edit.a aVar) {
                this.f76394d = aVar;
            }

            @Override
            public void a(String str, String str2) {
                c.f76392a.g(str, str2);
                com.transsion.usercenter.edit.a aVar = this.f76394d;
                if (aVar != null) {
                    aVar.a(str, str2);
                }
            }

            @Override
            public void c(String str) {
                this.f76394d.b(str, false, "");
            }
        }

        public static final class b extends dg.a {

            final com.transsion.usercenter.edit.a f76395d;

            b(com.transsion.usercenter.edit.a aVar) {
                this.f76395d = aVar;
            }

            @Override
            public void a(String str, String str2) {
                c.f76392a.g(str, str2);
                com.transsion.usercenter.edit.a aVar = this.f76395d;
                if (aVar != null) {
                    aVar.a(str, str2);
                }
            }

            @Override
            public void c(UserInfo userInfo) {
                this.f76395d.b(userInfo, false, "");
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final RequestBody c(String str) {
            return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
        }

        private final yu.a d() {
            return (yu.a) c.f76393b.getValue();
        }

        private final String f(Object obj) {
            return String.valueOf(cv.a.f58657a.a(obj));
        }

        public final void g(String str, String str2) {
            wf.a.C0922a.f(wf.a.f74274a, "ApiServer", "onFailure code=" + str + " message=" + str2, false, 4, null);
        }

        public final void b(RequstUserEntity entity, com.transsion.usercenter.edit.a callback) {
            Intrinsics.h(entity, "entity");
            Intrinsics.h(callback, "callback");
            d().b(gg.a.f61067a.a(), c(f(entity))).f(d.f59034a.c()).subscribe(new C0950a(callback));
        }

        public final void e(com.transsion.usercenter.edit.a callback) {
            Intrinsics.h(callback, "callback");
            d().a(gg.a.f61067a.a()).f(d.f59034a.c()).subscribe(new b(callback));
        }

        private a() {
        }
    }

    public static final yu.a c() {
        return (yu.a) kg.c.f63982e.a().h(yu.a.class);
    }
}
