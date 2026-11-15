package androidx.compose.runtime.snapshots;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;

public final class t implements c0, Map, KMutableMap {

    private e0 f3710a;

    private final Set f3711b;

    private final Set f3712c;

    private final Collection f3713d;

    public static final class a extends e0 {

        private t.g f3714c;

        private int f3715d;

        public a(t.g gVar) {
            this.f3714c = gVar;
        }

        @Override
        public void c(e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord, V of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord>");
            a aVar = (a) e0Var;
            synchronized (u.f3716a) {
                this.f3714c = aVar.f3714c;
                this.f3715d = aVar.f3715d;
                Unit unit = Unit.f64096a;
            }
        }

        @Override
        public e0 d() {
            return new a(this.f3714c);
        }

        public final t.g i() {
            return this.f3714c;
        }

        public final int j() {
            return this.f3715d;
        }

        public final void k(t.g gVar) {
            this.f3714c = gVar;
        }

        public final void l(int i10) {
            this.f3715d = i10;
        }
    }

    public t() {
        t.g gVarA = t.a.a();
        a aVar = new a(gVarA);
        if (j.f3695e.e()) {
            a aVar2 = new a(gVarA);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.f3710a = aVar;
        this.f3711b = new n(this);
        this.f3712c = new o(this);
        this.f3713d = new q(this);
    }

    public Set a() {
        return this.f3711b;
    }

    public Set c() {
        return this.f3712c;
    }

    @Override
    public void clear() {
        j jVarC;
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        a aVar = (a) SnapshotKt.F((a) firstStateRecord);
        aVar.i();
        t.g gVarA = t.a.a();
        if (gVarA != aVar.i()) {
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (u.f3716a) {
                    aVar3.k(gVarA);
                    aVar3.l(aVar3.j() + 1);
                }
            }
            SnapshotKt.Q(jVarC, this);
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        return f().i().containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return f().i().containsValue(obj);
    }

    public final int e() {
        return f().j();
    }

    @Override
    public final Set entrySet() {
        return a();
    }

    public final a f() {
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        return (a) SnapshotKt.X((a) firstStateRecord, this);
    }

    @Override
    public Object get(Object obj) {
        return f().i().get(obj);
    }

    @Override
    public e0 getFirstStateRecord() {
        return this.f3710a;
    }

    public int h() {
        return f().i().size();
    }

    public Collection i() {
        return this.f3713d;
    }

    @Override
    public boolean isEmpty() {
        return f().i().isEmpty();
    }

    public final boolean j(Object obj) {
        Object next;
        Iterator it = entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((Map.Entry) next).getValue(), obj));
        Map.Entry entry = (Map.Entry) next;
        if (entry == null) {
            return false;
        }
        remove(entry.getKey());
        return true;
    }

    @Override
    public final Set keySet() {
        return c();
    }

    public final Map l() {
        return f().i();
    }

    @Override
    public e0 mergeRecords(e0 e0Var, e0 e0Var2, e0 e0Var3) {
        return b0.a(this, e0Var, e0Var2, e0Var3);
    }

    @Override
    public void prependStateRecord(e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        this.f3710a = (a) e0Var;
    }

    @Override
    public Object put(Object obj, Object obj2) {
        t.g gVarI;
        int iJ;
        Object objPut;
        j jVarC;
        boolean z10;
        do {
            synchronized (u.f3716a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                gVarI = aVar.i();
                iJ = aVar.j();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(gVarI);
            t.g.a aVarBuilder = gVarI.builder();
            objPut = aVarBuilder.put(obj, obj2);
            t.g gVarBuild = aVarBuilder.build();
            if (Intrinsics.c(gVarBuild, gVarI)) {
                break;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (u.f3716a) {
                    if (aVar3.j() == iJ) {
                        aVar3.k(gVarBuild);
                        z10 = true;
                        aVar3.l(aVar3.j() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return objPut;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0077 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void putAll(Map map) {
        t.g gVarI;
        int iJ;
        j jVarC;
        boolean z10;
        do {
            synchronized (u.f3716a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                gVarI = aVar.i();
                iJ = aVar.j();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(gVarI);
            t.g.a aVarBuilder = gVarI.builder();
            aVarBuilder.putAll(map);
            t.g gVarBuild = aVarBuilder.build();
            if (Intrinsics.c(gVarBuild, gVarI)) {
                return;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (u.f3716a) {
                    try {
                        if (aVar3.j() == iJ) {
                            aVar3.k(gVarBuild);
                            z10 = true;
                            aVar3.l(aVar3.j() + 1);
                        } else {
                            z10 = false;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
    }

    @Override
    public Object remove(Object obj) {
        t.g gVarI;
        int iJ;
        Object objRemove;
        j jVarC;
        boolean z10;
        do {
            synchronized (u.f3716a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                gVarI = aVar.i();
                iJ = aVar.j();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(gVarI);
            t.g.a aVarBuilder = gVarI.builder();
            objRemove = aVarBuilder.remove(obj);
            t.g gVarBuild = aVarBuilder.build();
            if (Intrinsics.c(gVarBuild, gVarI)) {
                break;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (u.f3716a) {
                    if (aVar3.j() == iJ) {
                        aVar3.k(gVarBuild);
                        z10 = true;
                        aVar3.l(aVar3.j() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return objRemove;
    }

    @Override
    public final int size() {
        return h();
    }

    public String toString() {
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        return "SnapshotStateMap(value=" + ((a) SnapshotKt.F((a) firstStateRecord)).i() + ")@" + hashCode();
    }

    @Override
    public final Collection values() {
        return i();
    }
}
