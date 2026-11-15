package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.room.support.AutoCloser;
import androidx.room.support.AutoClosingRoomOpenHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.t1;

public abstract class RoomDatabase {

    public static final c f14172o = new c(null);

    protected volatile z3.d f14173a;

    private kotlinx.coroutines.n0 f14174b;

    private CoroutineContext f14175c;

    private Executor f14176d;

    private Executor f14177e;

    private v f14178f;

    private InvalidationTracker f14179g;

    private boolean f14181i;

    protected List f14182j;

    private AutoCloser f14183k;

    private final w3.a f14180h = new w3.a(new RoomDatabase$closeBarrier$1(this));

    private final ThreadLocal f14184l = new ThreadLocal();

    private final Map f14185m = new LinkedHashMap();

    private boolean f14186n = true;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tH\u0000¢\u0006\u0002\b\nj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u000b"}, d2 = {"Landroidx/room/RoomDatabase$JournalMode;", "", "<init>", "(Ljava/lang/String;I)V", "AUTOMATIC", "TRUNCATE", "WRITE_AHEAD_LOGGING", "resolve", "context", "Landroid/content/Context;", "resolve$room_runtime_release", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<JournalMode> getEntries() {
            return $ENTRIES;
        }

        public final JournalMode resolve$room_runtime_release(Context context) {
            Intrinsics.h(context, "context");
            if (this != AUTOMATIC) {
                return this;
            }
            Object systemService = context.getSystemService("activity");
            ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
            return (activityManager == null || activityManager.isLowRamDevice()) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    public static class a {
        private CoroutineContext A;
        private boolean B;

        private final KClass f14187a;

        private final Context f14188b;

        private final String f14189c;

        private final Function0 f14190d;

        private final List f14191e;

        private e f14192f;

        private final List f14193g;

        private Executor f14194h;

        private Executor f14195i;

        private z3.e.c f14196j;

        private boolean f14197k;

        private JournalMode f14198l;

        private Intent f14199m;

        private long f14200n;

        private TimeUnit f14201o;

        private final d f14202p;

        private Set f14203q;

        private final Set f14204r;

        private final List f14205s;

        private boolean f14206t;

        private boolean f14207u;

        private boolean f14208v;

        private String f14209w;

        private File f14210x;

        private Callable f14211y;

        private y3.c f14212z;

        public a(Context context, Class klass, String str) {
            Intrinsics.h(context, "context");
            Intrinsics.h(klass, "klass");
            this.f14191e = new ArrayList();
            this.f14193g = new ArrayList();
            this.f14198l = JournalMode.AUTOMATIC;
            this.f14200n = -1L;
            this.f14202p = new d();
            this.f14203q = new LinkedHashSet();
            this.f14204r = new LinkedHashSet();
            this.f14205s = new ArrayList();
            this.f14206t = true;
            this.B = true;
            this.f14187a = JvmClassMappingKt.c(klass);
            this.f14188b = context;
            this.f14189c = str;
            this.f14190d = null;
        }

        public a a(b callback) {
            Intrinsics.h(callback, "callback");
            this.f14191e.add(callback);
            return this;
        }

        public a b(x3.b... migrations) {
            Intrinsics.h(migrations, "migrations");
            for (x3.b bVar : migrations) {
                this.f14204r.add(Integer.valueOf(bVar.f75069a));
                this.f14204r.add(Integer.valueOf(bVar.f75070b));
            }
            this.f14202p.b((x3.b[]) Arrays.copyOf(migrations, migrations.length));
            return this;
        }

        public a c() {
            this.f14197k = true;
            return this;
        }

        public RoomDatabase d() {
            z3.e.c nVar;
            z3.e.c cVar;
            RoomDatabase roomDatabase;
            Executor executor = this.f14194h;
            if (executor == null && this.f14195i == null) {
                Executor executorG = j.c.g();
                this.f14195i = executorG;
                this.f14194h = executorG;
            } else if (executor != null && this.f14195i == null) {
                this.f14195i = executor;
            } else if (executor == null) {
                this.f14194h = this.f14195i;
            }
            c0.b(this.f14204r, this.f14203q);
            y3.c cVar2 = this.f14212z;
            if (cVar2 == null && this.f14196j == null) {
                nVar = new a4.h();
            } else if (cVar2 == null) {
                nVar = this.f14196j;
            } else {
                if (this.f14196j != null) {
                    throw new IllegalArgumentException("A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory.");
                }
                nVar = null;
            }
            boolean z10 = this.f14200n > 0;
            boolean z11 = (this.f14209w == null && this.f14210x == null && this.f14211y == null) ? false : true;
            if (nVar != null) {
                if (z10) {
                    if (this.f14189c == null) {
                        throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
                    }
                    long j10 = this.f14200n;
                    TimeUnit timeUnit = this.f14201o;
                    if (timeUnit == null) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    nVar = new androidx.room.support.l(nVar, new AutoCloser(j10, timeUnit, null, 4, null));
                }
                if (z11) {
                    if (this.f14189c == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                    String str = this.f14209w;
                    int i10 = str == null ? 0 : 1;
                    File file = this.f14210x;
                    int i11 = file == null ? 0 : 1;
                    Callable callable = this.f14211y;
                    if (i10 + i11 + (callable != null ? 1 : 0) != 1) {
                        throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                    }
                    nVar = new androidx.room.support.n(str, file, callable, nVar);
                }
                cVar = nVar;
            } else {
                cVar = null;
            }
            if (cVar == null) {
                if (z10) {
                    throw new IllegalArgumentException("Auto Closing Database is not supported when an SQLiteDriver is configured.");
                }
                if (z11) {
                    throw new IllegalArgumentException("Pre-Package Database is not supported when an SQLiteDriver is configured.");
                }
            }
            Context context = this.f14188b;
            String str2 = this.f14189c;
            d dVar = this.f14202p;
            List list = this.f14191e;
            boolean z12 = this.f14197k;
            JournalMode journalModeResolve$room_runtime_release = this.f14198l.resolve$room_runtime_release(context);
            Executor executor2 = this.f14194h;
            if (executor2 == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            Executor executor3 = this.f14195i;
            if (executor3 == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            androidx.room.c cVar3 = new androidx.room.c(context, str2, cVar, dVar, list, z12, journalModeResolve$room_runtime_release, executor2, executor3, this.f14199m, this.f14206t, this.f14207u, this.f14203q, this.f14209w, this.f14210x, this.f14211y, this.f14192f, this.f14193g, this.f14205s, this.f14208v, this.f14212z, this.A);
            cVar3.f(this.B);
            Function0 function0 = this.f14190d;
            if (function0 == null || (roomDatabase = (RoomDatabase) function0.invoke()) == null) {
                roomDatabase = (RoomDatabase) androidx.room.util.f.b(JvmClassMappingKt.a(this.f14187a), null, 2, null);
            }
            roomDatabase.M(cVar3);
            return roomDatabase;
        }

        public a e() {
            this.f14206t = false;
            this.f14207u = true;
            return this;
        }

        public a f() {
            this.f14206t = true;
            this.f14207u = true;
            return this;
        }

        public a g(z3.e.c cVar) {
            this.f14196j = cVar;
            return this;
        }

        public a h(Executor executor) {
            Intrinsics.h(executor, "executor");
            if (this.A != null) {
                throw new IllegalArgumentException("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
            }
            this.f14194h = executor;
            return this;
        }
    }

    public static abstract class b {
        public void a(y3.b connection) {
            Intrinsics.h(connection, "connection");
            if (connection instanceof androidx.room.driver.a) {
                b(((androidx.room.driver.a) connection).d());
            }
        }

        public void b(z3.d db2) {
            Intrinsics.h(db2, "db");
        }

        public void c(y3.b connection) {
            Intrinsics.h(connection, "connection");
            if (connection instanceof androidx.room.driver.a) {
                d(((androidx.room.driver.a) connection).d());
            }
        }

        public void d(z3.d db2) {
            Intrinsics.h(db2, "db");
        }

        public void e(y3.b connection) {
            Intrinsics.h(connection, "connection");
            if (connection instanceof androidx.room.driver.a) {
                f(((androidx.room.driver.a) connection).d());
            }
        }

        public void f(z3.d db2) {
            Intrinsics.h(db2, "db");
        }
    }

    public static final class c {
        public c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    public static class d {

        private final Map f14213a = new LinkedHashMap();

        public final void a(x3.b migration) {
            Intrinsics.h(migration, "migration");
            int i10 = migration.f75069a;
            int i11 = migration.f75070b;
            Map map = this.f14213a;
            Integer numValueOf = Integer.valueOf(i10);
            Object treeMap = map.get(numValueOf);
            if (treeMap == null) {
                treeMap = new TreeMap();
                map.put(numValueOf, treeMap);
            }
            TreeMap treeMap2 = (TreeMap) treeMap;
            if (treeMap2.containsKey(Integer.valueOf(i11))) {
                Log.w("ROOM", "Overriding migration " + treeMap2.get(Integer.valueOf(i11)) + " with " + migration);
            }
            treeMap2.put(Integer.valueOf(i11), migration);
        }

        public void b(x3.b... migrations) {
            Intrinsics.h(migrations, "migrations");
            for (x3.b bVar : migrations) {
                a(bVar);
            }
        }

        public final boolean c(int i10, int i11) {
            return androidx.room.util.g.a(this, i10, i11);
        }

        public List d(int i10, int i11) {
            return androidx.room.util.g.b(this, i10, i11);
        }

        public Map e() {
            return this.f14213a;
        }

        public final Pair f(int i10) {
            TreeMap treeMap = (TreeMap) this.f14213a.get(Integer.valueOf(i10));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.a(treeMap, treeMap.descendingKeySet());
        }

        public final Pair g(int i10) {
            TreeMap treeMap = (TreeMap) this.f14213a.get(Integer.valueOf(i10));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.a(treeMap, treeMap.keySet());
        }
    }

    public static abstract class e {
        public void a(z3.d db2) {
            Intrinsics.h(db2, "db");
        }
    }

    private final void N() {
        i();
        z3.d writableDatabase = z().getWritableDatabase();
        if (!writableDatabase.v0()) {
            y().D();
        }
        if (writableDatabase.z0()) {
            writableDatabase.K();
        } else {
            writableDatabase.A();
        }
    }

    private final void O() {
        z().getWritableDatabase().L();
        if (L()) {
            return;
        }
        y().x();
    }

    public final void U() {
        kotlinx.coroutines.n0 n0Var = this.f14174b;
        v vVar = null;
        if (n0Var == null) {
            Intrinsics.y("coroutineScope");
            n0Var = null;
        }
        kotlinx.coroutines.o0.d(n0Var, null, 1, null);
        y().B();
        v vVar2 = this.f14178f;
        if (vVar2 == null) {
            Intrinsics.y("connectionManager");
        } else {
            vVar = vVar2;
        }
        vVar.F();
    }

    public static Cursor X(RoomDatabase roomDatabase, z3.g gVar, CancellationSignal cancellationSignal, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: query");
        }
        if ((i10 & 2) != 0) {
            cancellationSignal = null;
        }
        return roomDatabase.W(gVar, cancellationSignal);
    }

    private final Object Z(final Function0 function0) {
        if (!K()) {
            return androidx.room.util.b.d(this, false, true, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomDatabase.d0(function0, (y3.b) obj);
                }
            });
        }
        k();
        try {
            Object objInvoke = function0.invoke();
            e0();
            return objInvoke;
        } finally {
            t();
        }
    }

    public static final Unit b0(Runnable runnable) {
        runnable.run();
        return Unit.f64096a;
    }

    public static final Object c0(Callable callable) {
        return callable.call();
    }

    public static final Object d0(Function0 function0, y3.b it) {
        Intrinsics.h(it, "it");
        return function0.invoke();
    }

    public static final Unit l(RoomDatabase roomDatabase, z3.d it) {
        Intrinsics.h(it, "it");
        roomDatabase.N();
        return Unit.f64096a;
    }

    public static final z3.e o(RoomDatabase roomDatabase, androidx.room.c config) {
        Intrinsics.h(config, "config");
        return roomDatabase.s(config);
    }

    public static final Unit u(RoomDatabase roomDatabase, z3.d it) {
        Intrinsics.h(it, "it");
        roomDatabase.O();
        return Unit.f64096a;
    }

    public final CoroutineContext A() {
        kotlinx.coroutines.n0 n0Var = this.f14174b;
        if (n0Var == null) {
            Intrinsics.y("coroutineScope");
            n0Var = null;
        }
        return n0Var.getCoroutineContext();
    }

    public Set B() {
        Set setC = C();
        ArrayList arrayList = new ArrayList(CollectionsKt.v(setC, 10));
        Iterator it = setC.iterator();
        while (it.hasNext()) {
            arrayList.add(JvmClassMappingKt.c((Class) it.next()));
        }
        return CollectionsKt.W0(arrayList);
    }

    public Set C() {
        return SetsKt.f();
    }

    protected Map D() {
        Set<Map.Entry> setEntrySet = F().entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.e(MapsKt.e(CollectionsKt.v(setEntrySet, 10)), 16));
        for (Map.Entry entry : setEntrySet) {
            Class cls = (Class) entry.getKey();
            List list = (List) entry.getValue();
            KClass kClassC = JvmClassMappingKt.c(cls);
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(JvmClassMappingKt.c((Class) it.next()));
            }
            Pair pairA = TuplesKt.a(kClassC, arrayList);
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return linkedHashMap;
    }

    public final Map E() {
        return D();
    }

    protected Map F() {
        return MapsKt.h();
    }

    public final ThreadLocal G() {
        return this.f14184l;
    }

    public final CoroutineContext H() {
        CoroutineContext coroutineContext = this.f14175c;
        if (coroutineContext != null) {
            return coroutineContext;
        }
        Intrinsics.y("transactionContext");
        return null;
    }

    public Executor I() {
        Executor executor = this.f14177e;
        if (executor != null) {
            return executor;
        }
        Intrinsics.y("internalTransactionExecutor");
        return null;
    }

    public final boolean J() {
        return this.f14186n;
    }

    public final boolean K() {
        v vVar = this.f14178f;
        if (vVar == null) {
            Intrinsics.y("connectionManager");
            vVar = null;
        }
        return vVar.G() != null;
    }

    public boolean L() {
        return T() && z().getWritableDatabase().v0();
    }

    public void M(androidx.room.c configuration) {
        CoroutineContext coroutineContext;
        Intrinsics.h(configuration, "configuration");
        this.f14186n = configuration.d();
        this.f14178f = p(configuration);
        this.f14179g = q();
        c0.a(this, configuration);
        c0.c(this, configuration);
        CoroutineContext coroutineContext2 = configuration.f14270v;
        kotlinx.coroutines.n0 n0Var = null;
        if (coroutineContext2 != null) {
            CoroutineContext.Element element = coroutineContext2.get(ContinuationInterceptor.INSTANCE);
            Intrinsics.f(element, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
            kotlinx.coroutines.i0 i0Var = (kotlinx.coroutines.i0) element;
            Executor executorA = m1.a(i0Var);
            this.f14176d = executorA;
            if (executorA == null) {
                Intrinsics.y("internalQueryExecutor");
                executorA = null;
            }
            this.f14177e = new o0(executorA);
            this.f14174b = kotlinx.coroutines.o0.a(configuration.f14270v.plus(l2.a((t1) configuration.f14270v.get(t1.f65027m1))));
            if (K()) {
                kotlinx.coroutines.n0 n0Var2 = this.f14174b;
                if (n0Var2 == null) {
                    Intrinsics.y("coroutineScope");
                    n0Var2 = null;
                }
                coroutineContext = n0Var2.getCoroutineContext().plus(i0Var.limitedParallelism(1));
            } else {
                kotlinx.coroutines.n0 n0Var3 = this.f14174b;
                if (n0Var3 == null) {
                    Intrinsics.y("coroutineScope");
                    n0Var3 = null;
                }
                coroutineContext = n0Var3.getCoroutineContext();
            }
            this.f14175c = coroutineContext;
        } else {
            this.f14176d = configuration.f14256h;
            this.f14177e = new o0(configuration.f14257i);
            Executor executor = this.f14176d;
            if (executor == null) {
                Intrinsics.y("internalQueryExecutor");
                executor = null;
            }
            kotlinx.coroutines.n0 n0VarA = kotlinx.coroutines.o0.a(m1.b(executor).plus(l2.b(null, 1, null)));
            this.f14174b = n0VarA;
            if (n0VarA == null) {
                Intrinsics.y("coroutineScope");
                n0VarA = null;
            }
            CoroutineContext coroutineContext3 = n0VarA.getCoroutineContext();
            Executor executor2 = this.f14177e;
            if (executor2 == null) {
                Intrinsics.y("internalTransactionExecutor");
                executor2 = null;
            }
            this.f14175c = coroutineContext3.plus(m1.b(executor2));
        }
        this.f14181i = configuration.f14254f;
        v vVar = this.f14178f;
        if (vVar == null) {
            Intrinsics.y("connectionManager");
            vVar = null;
        }
        z3.e eVarG = vVar.G();
        if (eVarG != null) {
            while (!(eVarG instanceof androidx.room.support.m)) {
                if (!(eVarG instanceof androidx.room.d)) {
                    eVarG = null;
                    break;
                }
                eVarG = ((androidx.room.d) eVarG).getDelegate();
            }
        } else {
            eVarG = null;
            break;
        }
        androidx.room.support.m mVar = (androidx.room.support.m) eVarG;
        if (mVar != null) {
            mVar.h(configuration);
        }
        v vVar2 = this.f14178f;
        if (vVar2 == null) {
            Intrinsics.y("connectionManager");
            vVar2 = null;
        }
        z3.e eVarG2 = vVar2.G();
        if (eVarG2 != null) {
            while (!(eVarG2 instanceof AutoClosingRoomOpenHelper)) {
                if (!(eVarG2 instanceof androidx.room.d)) {
                    eVarG2 = null;
                    break;
                }
                eVarG2 = ((androidx.room.d) eVarG2).getDelegate();
            }
        } else {
            eVarG2 = null;
            break;
        }
        AutoClosingRoomOpenHelper autoClosingRoomOpenHelper = (AutoClosingRoomOpenHelper) eVarG2;
        if (autoClosingRoomOpenHelper != null) {
            this.f14183k = autoClosingRoomOpenHelper.d();
            AutoCloser autoCloserD = autoClosingRoomOpenHelper.d();
            kotlinx.coroutines.n0 n0Var4 = this.f14174b;
            if (n0Var4 == null) {
                Intrinsics.y("coroutineScope");
            } else {
                n0Var = n0Var4;
            }
            autoCloserD.k(n0Var);
            y().A(autoClosingRoomOpenHelper.d());
        }
        if (configuration.f14258j != null) {
            if (configuration.f14250b == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            y().p(configuration.f14249a, configuration.f14250b, configuration.f14258j);
        }
    }

    protected final void P(y3.b connection) {
        Intrinsics.h(connection, "connection");
        y().q(connection);
    }

    protected void Q(z3.d db2) {
        Intrinsics.h(db2, "db");
        P(new androidx.room.driver.a(db2));
    }

    public final boolean R() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public boolean S() {
        AutoCloser autoCloser = this.f14183k;
        if (autoCloser != null) {
            return autoCloser.m();
        }
        v vVar = this.f14178f;
        if (vVar == null) {
            Intrinsics.y("connectionManager");
            vVar = null;
        }
        return vVar.J();
    }

    public final boolean T() {
        v vVar = this.f14178f;
        if (vVar == null) {
            Intrinsics.y("connectionManager");
            vVar = null;
        }
        return vVar.J();
    }

    public final Cursor V(z3.g query) {
        Intrinsics.h(query, "query");
        return X(this, query, null, 2, null);
    }

    public Cursor W(z3.g query, CancellationSignal cancellationSignal) {
        Intrinsics.h(query, "query");
        i();
        j();
        return cancellationSignal != null ? z().getWritableDatabase().a0(query, cancellationSignal) : z().getWritableDatabase().b0(query);
    }

    public Object Y(final Callable body) {
        Intrinsics.h(body, "body");
        return Z(new Function0() {
            @Override
            public final Object invoke() {
                return RoomDatabase.c0(body);
            }
        });
    }

    public void a0(final Runnable body) {
        Intrinsics.h(body, "body");
        Z(new Function0() {
            @Override
            public final Object invoke() {
                return RoomDatabase.b0(body);
            }
        });
    }

    public void e0() {
        z().getWritableDatabase().I();
    }

    public final Object f0(boolean z10, Function2 function2, Continuation continuation) {
        v vVar = this.f14178f;
        if (vVar == null) {
            Intrinsics.y("connectionManager");
            vVar = null;
        }
        return vVar.K(z10, function2, continuation);
    }

    public final void h(KClass kclass, Object converter) {
        Intrinsics.h(kclass, "kclass");
        Intrinsics.h(converter, "converter");
        this.f14185m.put(kclass, converter);
    }

    public void i() {
        if (!this.f14181i && R()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void j() {
        if (K() && !L() && this.f14184l.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public void k() {
        i();
        AutoCloser autoCloser = this.f14183k;
        if (autoCloser == null) {
            N();
        } else {
            autoCloser.h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomDatabase.l(this.f14492a, (z3.d) obj);
                }
            });
        }
    }

    public z3.h m(String sql) {
        Intrinsics.h(sql, "sql");
        i();
        j();
        return z().getWritableDatabase().Y(sql);
    }

    public List n(Map autoMigrationSpecs) {
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.e(autoMigrationSpecs.size()));
        for (Map.Entry entry : autoMigrationSpecs.entrySet()) {
            linkedHashMap.put(JvmClassMappingKt.a((KClass) entry.getKey()), entry.getValue());
        }
        return v(linkedHashMap);
    }

    public final v p(androidx.room.c configuration) {
        f0 f0Var;
        Intrinsics.h(configuration, "configuration");
        try {
            g0 g0VarR = r();
            Intrinsics.f(g0VarR, "null cannot be cast to non-null type androidx.room.RoomOpenDelegate");
            f0Var = (f0) g0VarR;
        } catch (NotImplementedError unused) {
            f0Var = null;
        }
        return f0Var == null ? new v(configuration, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomDatabase.o(this.f14491a, (c) obj);
            }
        }) : new v(configuration, f0Var);
    }

    protected abstract InvalidationTracker q();

    protected g0 r() {
        throw new NotImplementedError(null, 1, null);
    }

    protected z3.e s(androidx.room.c config) {
        Intrinsics.h(config, "config");
        throw new NotImplementedError(null, 1, null);
    }

    public void t() {
        AutoCloser autoCloser = this.f14183k;
        if (autoCloser == null) {
            O();
        } else {
            autoCloser.h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomDatabase.u(this.f14490a, (z3.d) obj);
                }
            });
        }
    }

    public List v(Map autoMigrationSpecs) {
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        return CollectionsKt.l();
    }

    public final w3.a w() {
        return this.f14180h;
    }

    public final kotlinx.coroutines.n0 x() {
        kotlinx.coroutines.n0 n0Var = this.f14174b;
        if (n0Var != null) {
            return n0Var;
        }
        Intrinsics.y("coroutineScope");
        return null;
    }

    public InvalidationTracker y() {
        InvalidationTracker invalidationTracker = this.f14179g;
        if (invalidationTracker != null) {
            return invalidationTracker;
        }
        Intrinsics.y("internalTracker");
        return null;
    }

    public z3.e z() {
        v vVar = this.f14178f;
        if (vVar == null) {
            Intrinsics.y("connectionManager");
            vVar = null;
        }
        z3.e eVarG = vVar.G();
        if (eVarG != null) {
            return eVarG;
        }
        throw new IllegalStateException("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
    }
}
