package oo;

import com.blankj.utilcode.util.o;
import com.transsion.publish.api.bean.RequestPostEntity;
import io.reactivex.rxjava3.core.j;
import kg.c;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class b {

    private final Lazy f67928a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return b.g();
        }
    });

    private final String b() {
        return gg.a.f61067a.a();
    }

    private final RequestBody c(String str) {
        return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
    }

    private final po.a d() {
        return (po.a) this.f67928a.getValue();
    }

    public static final po.a g() {
        return (po.a) c.f63982e.a().h(po.a.class);
    }

    public final j e(RequestPostEntity entity) {
        Intrinsics.h(entity, "entity");
        String strJ = o.j(entity);
        Intrinsics.g(strJ, "toJson(...)");
        return d().b(b(), c(strJ));
    }

    public final j f(RequestPostEntity entity) {
        Intrinsics.h(entity, "entity");
        String strJ = o.j(entity);
        Intrinsics.g(strJ, "toJson(...)");
        return d().c(b(), c(strJ));
    }
}
