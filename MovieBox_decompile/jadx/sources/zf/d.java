package zf;

import com.google.gson.Gson;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import s7.e;

public final class d implements xf.a {

    public static final a f76780b = new a(null);

    private static final Lazy f76781c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return d.k();
        }
    });

    private Gson f76782a = new Gson();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return (d) d.f76781c.getValue();
        }

        private a() {
        }
    }

    public static final d k() {
        return new d();
    }

    @Override
    public void a(String msg) {
        Intrinsics.h(msg, "msg");
        e.d(msg);
    }

    @Override
    public void b(String msg) {
        Intrinsics.h(msg, "msg");
        e.c(msg);
    }

    @Override
    public void c(String msg) {
        Intrinsics.h(msg, "msg");
        e.b(msg);
    }

    @Override
    public void d(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).w(msg);
    }

    @Override
    public void e(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).u(msg);
    }

    @Override
    public void f(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).z(msg);
    }

    @Override
    public void g(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).v(msg);
    }

    @Override
    public void h(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).y(msg);
    }
}
