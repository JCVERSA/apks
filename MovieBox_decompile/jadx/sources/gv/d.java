package gv;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.transsion.usercenter.message.model.ResponseMessage;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class d extends t0 {

    private final Lazy f61204a = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
        @Override
        public final Object invoke() {
            return d.h();
        }
    });

    private final Lazy f61205b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.g();
        }
    });

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            d.this.d().n(null);
        }

        @Override
        public void c(ResponseMessage responseMessage) {
            d.this.d().n(responseMessage);
        }
    }

    private final gv.a e() {
        return (gv.a) this.f61204a.getValue();
    }

    public static final b0 g() {
        return new b0();
    }

    public static final gv.a h() {
        return (gv.a) kg.c.f63982e.a().h(gv.a.class);
    }

    public final b0 d() {
        return (b0) this.f61205b.getValue();
    }

    public final void f(String page, String type) {
        Intrinsics.h(page, "page");
        Intrinsics.h(type, "type");
        e().a(gg.a.f61067a.a(), page, type, 30).f(dg.d.f59034a.c()).subscribe(new a());
    }
}
