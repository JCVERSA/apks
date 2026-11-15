package com.transsion.shorttv.ad.playeroverlayad;

import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.transsion.shorttv.ad.AdLoadState;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.t1;

public final class ShortTvPlayerOverlayAdManager {

    private static WeakReference f50708b;

    private static t1 f50710d;

    private static int f50711e;

    private static boolean f50713g;

    public static final ShortTvPlayerOverlayAdManager f50707a = new ShortTvPlayerOverlayAdManager();

    private static ConcurrentHashMap f50709c = new ConcurrentHashMap();

    private static int f50712f = 3;

    private ShortTvPlayerOverlayAdManager() {
    }

    public final void f() {
        j();
    }

    private final boolean g() {
        if (f50711e < 0 || f50712f < 0) {
            return false;
        }
        int size = f50709c.size() + 1;
        if (f50713g) {
            int i10 = f50712f;
            return i10 == 0 || (size - f50711e) % (i10 + 1) == 0;
        }
        int i11 = f50711e;
        if (i11 == 0) {
            f50713g = true;
            return f50712f == 0;
        }
        if (i11 != size) {
            return false;
        }
        f50713g = true;
        return true;
    }

    private final void h() {
        WeakReference weakReference;
        LifecycleCoroutineScope lifecycleCoroutineScope;
        t1 t1Var = f50710d;
        if ((t1Var != null && t1Var.isActive()) || (weakReference = f50708b) == null || (lifecycleCoroutineScope = (LifecycleCoroutineScope) weakReference.get()) == null) {
            return;
        }
        f50710d = k.d(lifecycleCoroutineScope, null, null, new ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1(null), 3, null);
    }

    private final void i() {
        t1 t1Var = f50710d;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        f50710d = null;
    }

    private final void j() {
        e eVarB;
        Collection collectionValues = f50709c.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (a aVar : CollectionsKt.R0(collectionValues)) {
            if (aVar.c() == AdLoadState.SUCCEED && !aVar.e() && (eVarB = aVar.b()) != null) {
                Long lValueOf = Long.valueOf(eVarB.h());
                if (lValueOf.longValue() <= 0) {
                    lValueOf = null;
                }
                if (lValueOf != null) {
                    if (System.currentTimeMillis() - lValueOf.longValue() >= 10000) {
                        aVar.a();
                    }
                }
            }
        }
    }

    public final void b() {
        yq.a.g(yq.a.f76390a, "overlay", "overlay ad manager clear", null, 4, null);
        Collection collectionValues = f50709c.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (a aVar : CollectionsKt.R0(collectionValues)) {
            e eVarB = aVar.b();
            if (eVarB != null) {
                eVarB.f();
            }
            aVar.f(null);
        }
        f50709c.clear();
        WeakReference weakReference = f50708b;
        if (weakReference != null) {
            weakReference.clear();
        }
        f50708b = null;
        i();
        f50713g = false;
    }

    public final a c(String key) {
        LifecycleCoroutineScope lifecycleCoroutineScope;
        Intrinsics.h(key, "key");
        WeakReference weakReference = f50708b;
        if (weakReference == null || (lifecycleCoroutineScope = (LifecycleCoroutineScope) weakReference.get()) == null) {
            return null;
        }
        yq.a.g(yq.a.f76390a, "overlay", "getAdData, key=" + key + ", currentVideoCount=" + f50709c.size(), null, 4, null);
        a aVar = (a) f50709c.get(key);
        if (aVar == null) {
            aVar = new a();
            aVar.h(false);
            if (f50707a.g()) {
                aVar.f(new e("ShortTvPlayerOverlayScene", lifecycleCoroutineScope));
                aVar.h(true);
            }
            f50709c.put(key, aVar);
        }
        return aVar;
    }

    public final void d(LifecycleCoroutineScope scope) {
        Intrinsics.h(scope, "scope");
        f50708b = new WeakReference(scope);
        h();
        com.transsion.ad.scene.a aVar = com.transsion.ad.scene.a.f41152a;
        f50711e = aVar.n("ShortTvPlayerOverlayScene", 0);
        f50712f = aVar.p("ShortTvPlayerOverlayScene", 3);
    }

    public final void e(String key) {
        e eVarB;
        Intrinsics.h(key, "key");
        a aVar = (a) f50709c.get(key);
        if (aVar != null && (eVarB = aVar.b()) != null) {
            eVarB.j();
        }
        a aVar2 = (a) f50709c.get(key);
        if (aVar2 != null) {
            aVar2.i(false);
        }
    }
}
