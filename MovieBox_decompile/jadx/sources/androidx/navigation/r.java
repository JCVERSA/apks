package androidx.navigation;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.h1;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.x0;

public abstract class r {

    private final ReentrantLock f13646a = new ReentrantLock(true);

    private final x0 f13647b;

    private final x0 f13648c;

    private boolean f13649d;

    private final h1 f13650e;

    private final h1 f13651f;

    public r() {
        x0 x0VarA = i1.a(CollectionsKt.l());
        this.f13647b = x0VarA;
        x0 x0VarA2 = i1.a(SetsKt.f());
        this.f13648c = x0VarA2;
        this.f13650e = kotlinx.coroutines.flow.c.b(x0VarA);
        this.f13651f = kotlinx.coroutines.flow.c.b(x0VarA2);
    }

    public abstract NavBackStackEntry a(NavDestination navDestination, Bundle bundle);

    public final h1 b() {
        return this.f13650e;
    }

    public final h1 c() {
        return this.f13651f;
    }

    public final boolean d() {
        return this.f13649d;
    }

    public void e(NavBackStackEntry entry) {
        Intrinsics.h(entry, "entry");
        x0 x0Var = this.f13648c;
        x0Var.setValue(SetsKt.k((Set) x0Var.getValue(), entry));
    }

    public void f(NavBackStackEntry backStackEntry) {
        Intrinsics.h(backStackEntry, "backStackEntry");
        x0 x0Var = this.f13647b;
        x0Var.setValue(CollectionsKt.C0(CollectionsKt.z0((Iterable) x0Var.getValue(), CollectionsKt.u0((List) this.f13647b.getValue())), backStackEntry));
    }

    public void g(NavBackStackEntry popUpTo, boolean z10) {
        Intrinsics.h(popUpTo, "popUpTo");
        ReentrantLock reentrantLock = this.f13646a;
        reentrantLock.lock();
        try {
            x0 x0Var = this.f13647b;
            Iterable iterable = (Iterable) x0Var.getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : iterable) {
                if (Intrinsics.c((NavBackStackEntry) obj, popUpTo)) {
                    break;
                } else {
                    arrayList.add(obj);
                }
            }
            x0Var.setValue(arrayList);
            Unit unit = Unit.f64096a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void h(NavBackStackEntry backStackEntry) {
        Intrinsics.h(backStackEntry, "backStackEntry");
        ReentrantLock reentrantLock = this.f13646a;
        reentrantLock.lock();
        try {
            x0 x0Var = this.f13647b;
            x0Var.setValue(CollectionsKt.C0((Collection) x0Var.getValue(), backStackEntry));
            Unit unit = Unit.f64096a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void i(boolean z10) {
        this.f13649d = z10;
    }
}
