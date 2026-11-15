package com.therouter.router;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public abstract class NavigatorKt {

    private static final LinkedList f39799a = new LinkedList();

    private static final HashMap f39800b = new HashMap();

    private static final List f39801c = new ArrayList();

    private static final List f39802d = new ArrayList();

    private static final List f39803e = new ArrayList();

    private static mf.c f39804f = new mf.c();

    private static Function2 f39805g = new Function2<RouteItem, Function1<? super RouteItem, ? extends Unit>, Unit>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            invoke((RouteItem) obj, (Function1<? super RouteItem, Unit>) obj2);
            return Unit.f64096a;
        }

        public final void invoke(RouteItem route, Function1<? super RouteItem, Unit> callback) {
            Intrinsics.h(route, "route");
            Intrinsics.h(callback, "callback");
            callback.invoke(route);
        }
    };

    public static final void h(mf.e interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        List list = f39802d;
        list.add(interceptor);
        Collections.sort(list, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return NavigatorKt.i((mf.e) obj, (mf.e) obj2);
            }
        });
    }

    public static final int i(mf.e eVar, mf.e eVar2) {
        if (eVar == null) {
            return -1;
        }
        if (eVar2 == null) {
            return 1;
        }
        return eVar2.a() - eVar.a();
    }

    public static final HashMap j() {
        return f39800b;
    }

    public static final void k() {
        Iterator it = f39799a.iterator();
        while (it.hasNext()) {
            ((g) it.next()).a().invoke();
        }
        f39799a.clear();
    }

    public static final void l(final mf.f interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        f39805g = new Function2<RouteItem, Function1<? super RouteItem, ? extends Unit>, Unit>() {

            public static final class a implements mf.b {

                final Function1 f39806a;

                a(Function1 function1) {
                    this.f39806a = function1;
                }

                @Override
                public void a(RouteItem routeItem) {
                    Intrinsics.h(routeItem, "routeItem");
                    this.f39806a.invoke(routeItem);
                }
            }

            {
                super(2);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((RouteItem) obj, (Function1<? super RouteItem, Unit>) obj2);
                return Unit.f64096a;
            }

            public final void invoke(RouteItem route, Function1<? super RouteItem, Unit> callback) {
                Intrinsics.h(route, "route");
                Intrinsics.h(callback, "callback");
                interceptor.a(route, new a(callback));
            }
        };
    }
}
