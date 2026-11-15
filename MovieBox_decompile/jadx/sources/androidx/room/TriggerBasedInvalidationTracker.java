package androidx.room;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class TriggerBasedInvalidationTracker {

    public static final a f14223l = new a(null);

    private static final String[] f14224m = {"INSERT", "UPDATE", "DELETE"};

    private final RoomDatabase f14225a;

    private final Map f14226b;

    private final Map f14227c;

    private final boolean f14228d;

    private final Function1 f14229e;

    private final Map f14230f;

    private final String[] f14231g;

    private final ObservedTableStates f14232h;

    private final p f14233i;

    private final AtomicBoolean f14234j;

    private Function0 f14235k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String b(String str, String str2) {
            return "room_table_modification_trigger_" + str + '_' + str2;
        }

        private a() {
        }
    }

    public TriggerBasedInvalidationTracker(RoomDatabase database, Map shadowTablesMap, Map viewTables, String[] tableNames, boolean z10, Function1 onInvalidatedTablesIds) {
        String lowerCase;
        Intrinsics.h(database, "database");
        Intrinsics.h(shadowTablesMap, "shadowTablesMap");
        Intrinsics.h(viewTables, "viewTables");
        Intrinsics.h(tableNames, "tableNames");
        Intrinsics.h(onInvalidatedTablesIds, "onInvalidatedTablesIds");
        this.f14225a = database;
        this.f14226b = shadowTablesMap;
        this.f14227c = viewTables;
        this.f14228d = z10;
        this.f14229e = onInvalidatedTablesIds;
        this.f14234j = new AtomicBoolean(false);
        this.f14235k = new Function0() {
            @Override
            public final Object invoke() {
                return Boolean.valueOf(TriggerBasedInvalidationTracker.l());
            }
        };
        this.f14230f = new LinkedHashMap();
        int length = tableNames.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = tableNames[i10];
            Locale locale = Locale.ROOT;
            String lowerCase2 = str.toLowerCase(locale);
            Intrinsics.g(lowerCase2, "toLowerCase(...)");
            this.f14230f.put(lowerCase2, Integer.valueOf(i10));
            String str2 = (String) this.f14226b.get(tableNames[i10]);
            if (str2 != null) {
                lowerCase = str2.toLowerCase(locale);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr[i10] = lowerCase2;
        }
        this.f14231g = strArr;
        for (Map.Entry entry : this.f14226b.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase3 = str3.toLowerCase(locale2);
            Intrinsics.g(lowerCase3, "toLowerCase(...)");
            if (this.f14230f.containsKey(lowerCase3)) {
                String lowerCase4 = ((String) entry.getKey()).toLowerCase(locale2);
                Intrinsics.g(lowerCase4, "toLowerCase(...)");
                Map map = this.f14230f;
                map.put(lowerCase4, MapsKt.i(map, lowerCase3));
            }
        }
        this.f14232h = new ObservedTableStates(this.f14231g.length);
        this.f14233i = new p(this.f14231g.length);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(r rVar, Continuation continuation) {
        TriggerBasedInvalidationTracker$checkInvalidatedTables$1 triggerBasedInvalidationTracker$checkInvalidatedTables$1;
        Set set;
        if (continuation instanceof TriggerBasedInvalidationTracker$checkInvalidatedTables$1) {
            triggerBasedInvalidationTracker$checkInvalidatedTables$1 = (TriggerBasedInvalidationTracker$checkInvalidatedTables$1) continuation;
            int i10 = triggerBasedInvalidationTracker$checkInvalidatedTables$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$checkInvalidatedTables$1.label = i10 - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$checkInvalidatedTables$1 = new TriggerBasedInvalidationTracker$checkInvalidatedTables$1(this, continuation);
            }
        } else {
            triggerBasedInvalidationTracker$checkInvalidatedTables$1 = new TriggerBasedInvalidationTracker$checkInvalidatedTables$1(this, continuation);
        }
        Object objD = triggerBasedInvalidationTracker$checkInvalidatedTables$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = triggerBasedInvalidationTracker$checkInvalidatedTables$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                rVar = (r) triggerBasedInvalidationTracker$checkInvalidatedTables$1.L$0;
                ResultKt.b(objD);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                set = (Set) triggerBasedInvalidationTracker$checkInvalidatedTables$1.L$0;
                ResultKt.b(objD);
            }
            return set;
        }
        ResultKt.b(objD);
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TriggerBasedInvalidationTracker.i((y3.e) obj);
            }
        };
        triggerBasedInvalidationTracker$checkInvalidatedTables$1.L$0 = rVar;
        triggerBasedInvalidationTracker$checkInvalidatedTables$1.label = 1;
        objD = rVar.d("SELECT * FROM room_table_modification_log WHERE invalidated = 1", function1, triggerBasedInvalidationTracker$checkInvalidatedTables$1);
        if (objD == objF) {
            return objF;
        }
        Set set2 = (Set) objD;
        if (set2.isEmpty()) {
            return set2;
        }
        triggerBasedInvalidationTracker$checkInvalidatedTables$1.L$0 = set2;
        triggerBasedInvalidationTracker$checkInvalidatedTables$1.label = 2;
        if (r0.b(rVar, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1", triggerBasedInvalidationTracker$checkInvalidatedTables$1) == objF) {
            return objF;
        }
        set = set2;
        return set;
    }

    public static final Set i(y3.e statement) {
        Intrinsics.h(statement, "statement");
        Set setB = SetsKt.b();
        while (statement.C0()) {
            setB.add(Integer.valueOf((int) statement.getLong(0)));
        }
        return SetsKt.a(setB);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object k(Continuation continuation) throws Throwable {
        TriggerBasedInvalidationTracker$notifyInvalidation$1 triggerBasedInvalidationTracker$notifyInvalidation$1;
        w3.a aVar;
        Throwable th2;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker;
        if (continuation instanceof TriggerBasedInvalidationTracker$notifyInvalidation$1) {
            triggerBasedInvalidationTracker$notifyInvalidation$1 = (TriggerBasedInvalidationTracker$notifyInvalidation$1) continuation;
            int i10 = triggerBasedInvalidationTracker$notifyInvalidation$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$notifyInvalidation$1.label = i10 - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$notifyInvalidation$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$1(this, continuation);
            }
        } else {
            triggerBasedInvalidationTracker$notifyInvalidation$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$1(this, continuation);
        }
        Object obj = triggerBasedInvalidationTracker$notifyInvalidation$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = triggerBasedInvalidationTracker$notifyInvalidation$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            w3.a aVarW = this.f14225a.w();
            if (!aVarW.a()) {
                return SetsKt.f();
            }
            try {
                if (!this.f14234j.compareAndSet(true, false)) {
                    Set setF = SetsKt.f();
                    aVarW.c();
                    return setF;
                }
                if (!((Boolean) this.f14235k.invoke()).booleanValue()) {
                    Set setF2 = SetsKt.f();
                    aVarW.c();
                    return setF2;
                }
                RoomDatabase roomDatabase = this.f14225a;
                TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(this, null);
                triggerBasedInvalidationTracker$notifyInvalidation$1.L$0 = this;
                triggerBasedInvalidationTracker$notifyInvalidation$1.L$1 = aVarW;
                triggerBasedInvalidationTracker$notifyInvalidation$1.label = 1;
                Object objF0 = roomDatabase.f0(false, triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1, triggerBasedInvalidationTracker$notifyInvalidation$1);
                if (objF0 == objF) {
                    return objF;
                }
                aVar = aVarW;
                obj = objF0;
                triggerBasedInvalidationTracker = this;
            } catch (Throwable th3) {
                aVar = aVarW;
                th2 = th3;
                aVar.c();
                throw th2;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (w3.a) triggerBasedInvalidationTracker$notifyInvalidation$1.L$1;
            triggerBasedInvalidationTracker = (TriggerBasedInvalidationTracker) triggerBasedInvalidationTracker$notifyInvalidation$1.L$0;
            try {
                ResultKt.b(obj);
            } catch (Throwable th4) {
                th2 = th4;
                aVar.c();
                throw th2;
            }
        }
        Set set = (Set) obj;
        if (!set.isEmpty()) {
            triggerBasedInvalidationTracker.f14233i.a(set);
            triggerBasedInvalidationTracker.f14229e.invoke(set);
        }
        aVar.c();
        return set;
    }

    public static final boolean l() {
        return true;
    }

    private final String[] q(String[] strArr) {
        Set setB = SetsKt.b();
        for (String str : strArr) {
            Map map = this.f14227c;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            Set set = (Set) map.get(lowerCase);
            if (set != null) {
                setB.addAll(set);
            } else {
                setB.add(str);
            }
        }
        return (String[]) SetsKt.a(setB).toArray(new String[0]);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:25:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:28:0x00fd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00fe -> B:30:0x00ff). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object s(androidx.room.r r18, int r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.s(androidx.room.r, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0054  */
    /* JADX WARN: Code duplicated, block: B:18:0x0084 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x0085  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0085 -> B:20:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object t(androidx.room.r r10, int r11, kotlin.coroutines.Continuation r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            int r10 = r0.I$1
            int r11 = r0.I$0
            java.lang.Object r2 = r0.L$2
            java.lang.String[] r2 = (java.lang.String[]) r2
            java.lang.Object r4 = r0.L$1
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r5 = r0.L$0
            androidx.room.r r5 = (androidx.room.r) r5
            kotlin.ResultKt.b(r12)
            r12 = r4
            goto L87
        L3a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L42:
            kotlin.ResultKt.b(r12)
            java.lang.String[] r12 = r9.f14231g
            r11 = r12[r11]
            java.lang.String[] r12 = androidx.room.TriggerBasedInvalidationTracker.f14224m
            int r2 = r12.length
            r4 = 0
            r8 = r11
            r11 = r10
            r10 = r2
            r2 = r12
            r12 = r8
        L52:
            if (r4 >= r10) goto L8b
            r5 = r2[r4]
            androidx.room.TriggerBasedInvalidationTracker$a r6 = androidx.room.TriggerBasedInvalidationTracker.f14223l
            java.lang.String r5 = androidx.room.TriggerBasedInvalidationTracker.a.a(r6, r12, r5)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "DROP TRIGGER IF EXISTS `"
            r6.append(r7)
            r6.append(r5)
            r5 = 96
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            r0.L$0 = r11
            r0.L$1 = r12
            r0.L$2 = r2
            r0.I$0 = r4
            r0.I$1 = r10
            r0.label = r3
            java.lang.Object r5 = androidx.room.r0.b(r11, r5, r0)
            if (r5 != r1) goto L85
            return r1
        L85:
            r5 = r11
            r11 = r4
        L87:
            int r4 = r11 + 1
            r11 = r5
            goto L52
        L8b:
            kotlin.Unit r10 = kotlin.Unit.f64096a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.t(androidx.room.r, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void j(y3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        y3.e eVarF0 = connection.F0("PRAGMA query_only");
        try {
            eVarF0.C0();
            boolean z10 = eVarF0.getBoolean(0);
            AutoCloseableKt.a(eVarF0, null);
            if (z10) {
                return;
            }
            y3.a.a(connection, "PRAGMA temp_store = MEMORY");
            y3.a.a(connection, "PRAGMA recursive_triggers = 1");
            y3.a.a(connection, "DROP TABLE IF EXISTS room_table_modification_log");
            if (this.f14228d) {
                y3.a.a(connection, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            } else {
                y3.a.a(connection, StringsKt.Q("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", "", false, 4, null));
            }
            this.f14232h.a();
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    public final boolean m(int[] tableIds) {
        Intrinsics.h(tableIds, "tableIds");
        return this.f14232h.c(tableIds);
    }

    public final boolean n(int[] tableIds) {
        Intrinsics.h(tableIds, "tableIds");
        return this.f14232h.d(tableIds);
    }

    public final void o(Function0 onRefreshScheduled, Function0 onRefreshCompleted) {
        Intrinsics.h(onRefreshScheduled, "onRefreshScheduled");
        Intrinsics.h(onRefreshCompleted, "onRefreshCompleted");
        if (this.f14234j.compareAndSet(false, true)) {
            onRefreshScheduled.invoke();
            kotlinx.coroutines.k.d(this.f14225a.x(), new kotlinx.coroutines.m0("Room Invalidation Tracker Refresh"), null, new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this, onRefreshCompleted, null), 2, null);
        }
    }

    public final void p() {
        this.f14232h.e();
    }

    public final void r(Function0 function0) {
        Intrinsics.h(function0, "<set-?>");
        this.f14235k = function0;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object u(Continuation continuation) throws Throwable {
        TriggerBasedInvalidationTracker$syncTriggers$1 triggerBasedInvalidationTracker$syncTriggers$1;
        w3.a aVar;
        Throwable th2;
        if (continuation instanceof TriggerBasedInvalidationTracker$syncTriggers$1) {
            triggerBasedInvalidationTracker$syncTriggers$1 = (TriggerBasedInvalidationTracker$syncTriggers$1) continuation;
            int i10 = triggerBasedInvalidationTracker$syncTriggers$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$syncTriggers$1.label = i10 - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, continuation);
            }
        } else {
            triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, continuation);
        }
        Object obj = triggerBasedInvalidationTracker$syncTriggers$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = triggerBasedInvalidationTracker$syncTriggers$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            w3.a aVarW = this.f14225a.w();
            if (aVarW.a()) {
                try {
                    RoomDatabase roomDatabase = this.f14225a;
                    TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this, null);
                    triggerBasedInvalidationTracker$syncTriggers$1.L$0 = aVarW;
                    triggerBasedInvalidationTracker$syncTriggers$1.label = 1;
                    if (roomDatabase.f0(false, triggerBasedInvalidationTracker$syncTriggers$2$1, triggerBasedInvalidationTracker$syncTriggers$1) == objF) {
                        return objF;
                    }
                    aVar = aVarW;
                    aVar.c();
                } catch (Throwable th3) {
                    aVar = aVarW;
                    th2 = th3;
                    aVar.c();
                    throw th2;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (w3.a) triggerBasedInvalidationTracker$syncTriggers$1.L$0;
            try {
                ResultKt.b(obj);
                aVar.c();
            } catch (Throwable th4) {
                th2 = th4;
                aVar.c();
                throw th2;
            }
        }
        return Unit.f64096a;
    }

    public final Pair v(String[] names) {
        Intrinsics.h(names, "names");
        String[] strArrQ = q(names);
        int length = strArrQ.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArrQ[i10];
            Map map = this.f14230f;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            Integer num = (Integer) map.get(lowerCase);
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
            iArr[i10] = num.intValue();
        }
        return TuplesKt.a(strArrQ, iArr);
    }
}
