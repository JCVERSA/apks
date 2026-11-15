package com.therouter.router;

import a.TheRouterServiceProvideInjecter;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.therouter.TheRouter;
import com.therouter.TheRouterKt;
import com.therouter.TheRouterThreadPool;
import com.therouter.inject.DebugOnlyKt;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class RouteMapKt {

    private static volatile boolean f39808b;

    private static final RegexpKeyedMap f39807a = new RegexpKeyedMap();

    private static final Gson f39809c = new Gson();

    public static final void c(RouteItem routeItem) {
        Intrinsics.h(routeItem, "routeItem");
        if (Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
            d(routeItem);
            return;
        }
        synchronized (f39807a) {
            d(routeItem);
        }
    }

    private static final void d(RouteItem routeItem) {
        String path = routeItem.getPath();
        if (StringsKt.G(path, "/", false, 2, null)) {
            path = path.substring(0, path.length() - 1);
            Intrinsics.g(path, "substring(...)");
        }
        TheRouterKt.f("addRouteItem", "add " + path, null, 4, null);
        f39807a.put(path, routeItem);
    }

    public static final void e(Collection collection) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c((RouteItem) it.next());
        }
    }

    public static final void f(final Context context) {
        TheRouterThreadPool.f(new Runnable() {
            @Override
            public final void run() {
                RouteMapKt.g(context);
            }
        });
    }

    public static final void g(Context context) {
        TheRouterKt.d("RouteMap", "will be add route map from： initDefaultRouteMap()", null, 4, null);
        TheRouterServiceProvideInjecter.c();
        if (!TheRouterServiceProvideInjecter.asm) {
            DebugOnlyKt.a(context);
            Iterator it = DebugOnlyKt.c().iterator();
            while (it.hasNext()) {
                ((d) it.next()).init();
            }
        }
        f39808b = true;
        j();
        TheRouterThreadPool.g(new Runnable() {
            @Override
            public final void run() {
                RouteMapKt.h();
            }
        });
    }

    public static final void h() {
        NavigatorKt.k();
    }

    public static final boolean i() {
        return f39808b;
    }

    public static final void j() {
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(a.a(com.therouter.c.c(), com.therouter.a.a()), Charset.forName("UTF-8"));
            try {
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                        sb2.append("\n");
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.a(inputStreamReader, th);
                            throw th2;
                        }
                    }
                    String string = sb2.toString();
                    Intrinsics.g(string, "toString(...)");
                    TheRouterKt.d("RouteMap", "will be add route map from assets: " + string, null, 4, null);
                    if (!TextUtils.isEmpty(string)) {
                        Object objFromJson = f39809c.fromJson(string, new TypeToken<List<? extends RouteItem>>() {
                        }.getType());
                        Intrinsics.g(objFromJson, "fromJson(...)");
                        e((List) objFromJson);
                    }
                    Unit unit = Unit.f64096a;
                    CloseableKt.a(bufferedReader, null);
                    CloseableKt.a(inputStreamReader, null);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.a(bufferedReader, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
        } catch (Exception e10) {
            TheRouterKt.c("RouteMap", "initRouteMap InputStreamReader error", new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m308invoke();
                    return Unit.f64096a;
                }

                public final void m308invoke() {
                    e10.printStackTrace();
                }
            });
        }
    }

    public static final RouteItem k(String str) {
        RouteItem routeItemL;
        if (Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
            return l(str);
        }
        synchronized (f39807a) {
            routeItemL = l(str);
        }
        return routeItemL;
    }

    private static final RouteItem l(String str) {
        if (str == null) {
            str = "";
        }
        String strO = TheRouter.c(str).o();
        if (StringsKt.G(strO, "/", false, 2, null)) {
            strO = strO.substring(0, strO.length() - 1);
            Intrinsics.g(strO, "substring(...)");
        }
        RouteItem routeItem = (RouteItem) f39807a.get((Object) strO);
        RouteItem routeItemCopy = routeItem != null ? routeItem.copy() : null;
        if (routeItemCopy != null) {
            routeItemCopy.setPath(strO);
        }
        return routeItemCopy;
    }
}
