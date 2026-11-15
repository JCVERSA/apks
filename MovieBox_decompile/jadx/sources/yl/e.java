package yl;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class e {

    public static final e f76272a = new e();

    private static final Lazy f76273b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            e.a();
            return null;
        }
    });

    private static final Lazy f76274c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e.e();
        }
    });

    private e() {
    }

    public static a a() {
        c();
        return null;
    }

    private static final a c() {
        android.support.v4.media.session.c.a(kg.c.f63982e.a().h(a.class));
        return null;
    }

    public static final MMKV e() {
        return MMKV.I("mb_web_res");
    }

    public final void d() {
        b.f76271a.b();
    }
}
