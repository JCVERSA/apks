package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.p009lifecycle.LiveData;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.support.AutoCloser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class InvalidationTracker {

    public static final a f14132o = new a(null);

    private final RoomDatabase f14133a;

    private final Map f14134b;

    private final Map f14135c;

    private final String[] f14136d;

    private final TriggerBasedInvalidationTracker f14137e;

    private final Map f14138f;

    private final ReentrantLock f14139g;

    private AutoCloser f14140h;

    private final Function0 f14141i;

    private final Function0 f14142j;

    private final k f14143k;

    private Intent f14144l;

    private MultiInstanceInvalidationClient f14145m;

    private final Object f14146n;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static abstract class b {

        private final String[] f14147a;

        public b(String[] tables) {
            Intrinsics.h(tables, "tables");
            this.f14147a = tables;
        }

        public final String[] a() {
            return this.f14147a;
        }

        public boolean b() {
            return false;
        }

        public abstract void c(Set set);
    }

    public InvalidationTracker(RoomDatabase database, Map shadowTablesMap, Map viewTables, String... tableNames) {
        Intrinsics.h(database, "database");
        Intrinsics.h(shadowTablesMap, "shadowTablesMap");
        Intrinsics.h(viewTables, "viewTables");
        Intrinsics.h(tableNames, "tableNames");
        this.f14133a = database;
        this.f14134b = shadowTablesMap;
        this.f14135c = viewTables;
        this.f14136d = tableNames;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(database, shadowTablesMap, viewTables, tableNames, database.J(), new InvalidationTracker$implementation$1(this));
        this.f14137e = triggerBasedInvalidationTracker;
        this.f14138f = new LinkedHashMap();
        this.f14139g = new ReentrantLock();
        this.f14141i = new Function0() {
            @Override
            public final Object invoke() {
                return InvalidationTracker.v(this.f14374a);
            }
        };
        this.f14142j = new Function0() {
            @Override
            public final Object invoke() {
                return InvalidationTracker.u(this.f14378a);
            }
        };
        this.f14143k = new k(database);
        this.f14146n = new Object();
        triggerBasedInvalidationTracker.r(new Function0() {
            @Override
            public final Object invoke() {
                return Boolean.valueOf(InvalidationTracker.d(this.f14382a));
            }
        });
    }

    public static final boolean d(InvalidationTracker invalidationTracker) {
        return !invalidationTracker.f14133a.K() || invalidationTracker.f14133a.T();
    }

    private final boolean i(b bVar) {
        Pair pairV = this.f14137e.v(bVar.a());
        String[] strArr = (String[]) pairV.component1();
        int[] iArr = (int[]) pairV.component2();
        q qVar = new q(bVar, iArr, strArr);
        ReentrantLock reentrantLock = this.f14139g;
        reentrantLock.lock();
        try {
            q qVar2 = this.f14138f.containsKey(bVar) ? (q) MapsKt.i(this.f14138f, bVar) : (q) this.f14138f.put(bVar, qVar);
            reentrantLock.unlock();
            return qVar2 == null && this.f14137e.m(iArr);
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    private final List m() {
        ReentrantLock reentrantLock = this.f14139g;
        reentrantLock.lock();
        try {
            return CollectionsKt.R0(this.f14138f.keySet());
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void r(Set set) {
        ReentrantLock reentrantLock = this.f14139g;
        reentrantLock.lock();
        try {
            List listR0 = CollectionsKt.R0(this.f14138f.values());
            reentrantLock.unlock();
            Iterator it = listR0.iterator();
            while (it.hasNext()) {
                ((q) it.next()).c(set);
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void t() {
        synchronized (this.f14146n) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f14145m;
                if (multiInstanceInvalidationClient != null) {
                    List listM = m();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : listM) {
                        if (!((b) obj).b()) {
                            arrayList.add(obj);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        multiInstanceInvalidationClient.k();
                    }
                }
                this.f14137e.p();
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final Unit u(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.f14140h;
        if (autoCloser != null) {
            autoCloser.g();
        }
        return Unit.f64096a;
    }

    public static final Unit v(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.f14140h;
        if (autoCloser != null) {
            autoCloser.j();
        }
        return Unit.f64096a;
    }

    private final boolean z(b bVar) {
        ReentrantLock reentrantLock = this.f14139g;
        reentrantLock.lock();
        try {
            q qVar = (q) this.f14138f.remove(bVar);
            reentrantLock.unlock();
            return qVar != null && this.f14137e.n(qVar.b());
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void A(AutoCloser autoCloser) {
        Intrinsics.h(autoCloser, "autoCloser");
        this.f14140h = autoCloser;
        autoCloser.n(new InvalidationTracker$setAutoCloser$1(this));
    }

    public final void B() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f14145m;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.k();
        }
    }

    public final Object C(Continuation continuation) throws Throwable {
        if (this.f14133a.K() && !this.f14133a.T()) {
            return Unit.f64096a;
        }
        Object objU = this.f14137e.u(continuation);
        return objU == IntrinsicsKt.f() ? objU : Unit.f64096a;
    }

    public final void D() {
        RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$syncBlocking$1(this, null));
    }

    public void h(b observer) {
        Intrinsics.h(observer, "observer");
        if (i(observer)) {
            RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$addObserver$1(this, null));
        }
    }

    public final void j(b observer) {
        Intrinsics.h(observer, "observer");
        if (!observer.b()) {
            throw new IllegalStateException("isRemote was false of observer argument");
        }
        i(observer);
    }

    public void k(b observer) {
        Intrinsics.h(observer, "observer");
        h(new u0(this, observer));
    }

    public LiveData l(String[] tableNames, boolean z10, Callable computeFunction) {
        Intrinsics.h(tableNames, "tableNames");
        Intrinsics.h(computeFunction, "computeFunction");
        this.f14137e.v(tableNames);
        return this.f14143k.a(tableNames, z10, computeFunction);
    }

    public final RoomDatabase n() {
        return this.f14133a;
    }

    public final String[] o() {
        return this.f14136d;
    }

    public final void p(Context context, String name, Intent serviceIntent) {
        Intrinsics.h(context, "context");
        Intrinsics.h(name, "name");
        Intrinsics.h(serviceIntent, "serviceIntent");
        this.f14144l = serviceIntent;
        this.f14145m = new MultiInstanceInvalidationClient(context, name, this);
    }

    public final void q(y3.b connection) {
        Intrinsics.h(connection, "connection");
        this.f14137e.j(connection);
        synchronized (this.f14146n) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f14145m;
                if (multiInstanceInvalidationClient != null) {
                    Intent intent = this.f14144l;
                    if (intent == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    multiInstanceInvalidationClient.j(intent);
                    Unit unit = Unit.f64096a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void s(Set tables) {
        Intrinsics.h(tables, "tables");
        ReentrantLock reentrantLock = this.f14139g;
        reentrantLock.lock();
        try {
            List<q> listR0 = CollectionsKt.R0(this.f14138f.values());
            reentrantLock.unlock();
            for (q qVar : listR0) {
                if (!qVar.a().b()) {
                    qVar.d(tables);
                }
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void w() {
        this.f14137e.o(this.f14141i, this.f14142j);
    }

    public void x() {
        this.f14137e.o(this.f14141i, this.f14142j);
    }

    public void y(b observer) {
        Intrinsics.h(observer, "observer");
        if (z(observer)) {
            RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$removeObserver$1(this, null));
        }
    }
}
