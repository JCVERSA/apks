package zf;

import android.util.Log;
import com.google.gson.Gson;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b implements xf.a {

    public static final a f76777b = new a(null);

    private static final Lazy f76778c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return b.k();
        }
    });

    private Gson f76779a = new Gson();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f76778c.getValue();
        }

        private a() {
        }
    }

    public static final b k() {
        return new b();
    }

    private final boolean l(String str) {
        return xf.c.f75330a.e() || Log.isLoggable(str, 3);
    }

    @Override
    public void a(String msg) {
        Intrinsics.h(msg, "msg");
        l("DefaultTag");
    }

    @Override
    public void b(String msg) {
        Intrinsics.h(msg, "msg");
        if (l("DefaultTag")) {
            Log.e("DefaultTag", msg);
        }
    }

    @Override
    public void c(String msg) {
        Intrinsics.h(msg, "msg");
        l("DefaultTag");
    }

    @Override
    public void d(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            ArraysKt.m0(msg, " , ", null, null, 0, null, null, 62, null);
        }
    }

    @Override
    public void e(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            ArraysKt.m0(msg, " , ", null, null, 0, null, null, 62, null);
        }
    }

    @Override
    public void f(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            Log.w(tag, ArraysKt.m0(msg, " , ", null, null, 0, null, null, 62, null));
        }
    }

    @Override
    public void g(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            Log.e(tag, ArraysKt.m0(msg, " , ", null, null, 0, null, null, 62, null));
        }
    }

    @Override
    public void h(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            Log.v(tag, ArraysKt.m0(msg, " , ", null, null, 0, null, null, 62, null));
        }
    }
}
