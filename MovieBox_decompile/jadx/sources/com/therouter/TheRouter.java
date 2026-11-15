package com.therouter;

import a.TheRouterServiceProvideInjecter;
import android.app.Application;
import android.content.Context;
import com.therouter.inject.DebugOnlyKt;
import com.therouter.inject.RouterInject;
import com.therouter.router.Navigator;
import com.therouter.router.RouteMapKt;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class TheRouter {

    private static boolean f39737b;

    public static final TheRouter f39736a = new TheRouter();

    private static final LinkedList f39738c = new LinkedList();

    private static final RouterInject f39739d = new RouterInject();

    private static Function2 f39740e = new Function2<String, String, Unit>() {
        public final void invoke(String str, String str2) {
            Intrinsics.h(str, "<anonymous parameter 0>");
            Intrinsics.h(str2, "<anonymous parameter 1>");
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            invoke((String) obj, (String) obj2);
            return Unit.f64096a;
        }
    };

    private static final jf.b f39741f = new jf.b();

    private TheRouter() {
    }

    public static final Navigator c(String str) {
        return new Navigator(str);
    }

    public static final Object d(Class clazz, Object... params) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(params, "params");
        return f39739d.e(clazz, Arrays.copyOf(params, params.length));
    }

    public static final Function2 f() {
        return f39740e;
    }

    public static final LinkedList g() {
        return f39738c;
    }

    public static final RouterInject h() {
        return f39739d;
    }

    public static final void i(Context context) {
        j(context, true);
    }

    public static final void j(final Context context, boolean z10) {
        if (TheRouterKt.f39742a) {
            return;
        }
        TheRouterKt.d("init", "TheRouter init start!", null, 4, null);
        f39741f.c(context);
        if (z10) {
            f39739d.b(context);
        } else {
            f39739d.g(context);
        }
        RouteMapKt.f(context);
        TheRouterThreadPool.f(new Runnable() {
            @Override
            public final void run() {
                TheRouter.k(context);
            }
        });
        TheRouterKt.d("init", "TheRouter init finish!", null, 4, null);
        TheRouterKt.f39742a = true;
    }

    public static final void k(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext).registerActivityLifecycleCallbacks(f.f39761a);
        }
        LinkedList linkedList = f39738c;
        linkedList.addFirst(new lf.b());
        linkedList.addFirst(new lf.c());
        linkedList.addFirst(new lf.d());
        linkedList.addFirst(new lf.a());
    }

    public static final void l(Object obj) throws IllegalAccessException, InvocationTargetException {
        TheRouterServiceProvideInjecter.b(obj);
        if (TheRouterServiceProvideInjecter.asm || obj == null) {
            return;
        }
        for (Map.Entry entry : DebugOnlyKt.b().entrySet()) {
            if (((Class) entry.getKey()).isInstance(obj)) {
                ((Method) entry.getValue()).invoke(null, obj);
            }
        }
    }

    public static final boolean m() {
        return f39737b;
    }

    public static final void n(final String taskName) {
        Intrinsics.h(taskName, "taskName");
        jf.b bVar = f39741f;
        if (bVar.h()) {
            bVar.i(taskName).g();
        } else {
            bVar.b(new Runnable() {
                @Override
                public final void run() {
                    TheRouter.o(taskName);
                }
            });
        }
    }

    public static final void o(String taskName) {
        Intrinsics.h(taskName, "$taskName");
        f39741f.i(taskName).g();
    }

    public static final void p(boolean z10) {
        f39737b = z10;
    }

    public final jf.b e() {
        return f39741f;
    }
}
