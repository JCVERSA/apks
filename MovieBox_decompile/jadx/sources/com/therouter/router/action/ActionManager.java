package com.therouter.router.action;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.therouter.TheRouterKt;
import com.therouter.TheRouterThreadPool;
import com.therouter.c;
import com.therouter.history.HistoryRecorder;
import com.therouter.router.Navigator;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class ActionManager {

    public static final ActionManager f39810a = new ActionManager();

    private static final ConcurrentHashMap f39811b = new ConcurrentHashMap();

    private ActionManager() {
    }

    public static final void b(Navigator navigator, Context context) {
        Context contextC;
        Intrinsics.h(navigator, "$navigator");
        ArrayList<kf.a> arrayList = new ArrayList();
        List list = (List) f39811b.get(navigator.o());
        CopyOnWriteArrayList<kf.a> copyOnWriteArrayList = list != null ? new CopyOnWriteArrayList(list) : null;
        Bundle bundle = new Bundle();
        if (copyOnWriteArrayList != null) {
            for (kf.a aVar : copyOnWriteArrayList) {
                if (aVar != null) {
                    aVar.d(bundle);
                    HistoryRecorder.c(new com.therouter.history.a(navigator.p()));
                    if (context == null) {
                        contextC = c.c();
                        Intrinsics.e(contextC);
                    } else {
                        contextC = context;
                    }
                    boolean zB = aVar.b(contextC, navigator);
                    Bundle bundleA = aVar.a();
                    arrayList.add(aVar);
                    if (zB) {
                        bundle = bundleA;
                        break;
                    }
                    bundle = bundleA;
                }
            }
        }
        for (kf.a aVar2 : arrayList) {
            aVar2.d(bundle);
            aVar2.c();
        }
    }

    public final void c(final Navigator navigator, final Context context) {
        Intrinsics.h(navigator, "navigator");
        if (TextUtils.isEmpty(navigator.o())) {
            return;
        }
        TheRouterKt.c("ActionManager", "handleAction->" + navigator.p(), new Function0<Unit>() {
            @Override
            public Object invoke() {
                m309invoke();
                return Unit.f64096a;
            }

            public final void m309invoke() {
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                Intrinsics.g(stackTrace, "getStackTrace(...)");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    TheRouterKt.d("ActionManager", String.valueOf(stackTraceElement), null, 4, null);
                }
            }
        });
        TheRouterThreadPool.g(new Runnable() {
            @Override
            public final void run() {
                ActionManager.b(navigator, context);
            }
        });
    }

    public final boolean d(Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return f39811b.get(navigator.o()) != null;
    }
}
