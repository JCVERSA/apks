package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.o1;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;

public final class SnapshotStateList implements c0, List, RandomAccess, KMutableList {

    private e0 f3625a;

    public static final class a extends e0 {

        private t.f f3626c;

        private int f3627d;

        private int f3628e;

        public a(t.f fVar) {
            this.f3626c = fVar;
        }

        @Override
        public void c(e0 e0Var) {
            synchronized (s.f3709a) {
                Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord.assign$lambda$0>");
                this.f3626c = ((a) e0Var).f3626c;
                this.f3627d = ((a) e0Var).f3627d;
                this.f3628e = ((a) e0Var).f3628e;
                Unit unit = Unit.f64096a;
            }
        }

        @Override
        public e0 d() {
            return new a(this.f3626c);
        }

        public final t.f i() {
            return this.f3626c;
        }

        public final int j() {
            return this.f3627d;
        }

        public final int k() {
            return this.f3628e;
        }

        public final void l(t.f fVar) {
            this.f3626c = fVar;
        }

        public final void m(int i10) {
            this.f3627d = i10;
        }

        public final void n(int i10) {
            this.f3628e = i10;
        }
    }

    public SnapshotStateList() {
        t.f fVarB = t.a.b();
        a aVar = new a(fVarB);
        if (j.f3695e.e()) {
            a aVar2 = new a(fVarB);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.f3625a = aVar;
    }

    private final boolean f(Function1 function1) {
        int iJ;
        t.f fVarI;
        Object objInvoke;
        j jVarC;
        boolean z10;
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f.a aVarBuilder = fVarI.builder();
            objInvoke = function1.invoke(aVarBuilder);
            t.f fVarBuild = aVarBuilder.build();
            if (Intrinsics.c(fVarBuild, fVarI)) {
                break;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    if (aVar3.j() == iJ) {
                        aVar3.l(fVarBuild);
                        z10 = true;
                        aVar3.m(aVar3.j() + 1);
                        aVar3.n(aVar3.k() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return ((Boolean) objInvoke).booleanValue();
    }

    public final a a() {
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
        return (a) SnapshotKt.X((a) firstStateRecord, this);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x007b */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean add(Object obj) {
        int iJ;
        t.f fVarI;
        boolean z10;
        j jVarC;
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f fVarAdd = fVarI.add(obj);
            z10 = false;
            if (Intrinsics.c(fVarAdd, fVarI)) {
                return false;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    try {
                        if (aVar3.j() == iJ) {
                            aVar3.l(fVarAdd);
                            aVar3.n(aVar3.k() + 1);
                            aVar3.m(aVar3.j() + 1);
                            z10 = true;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return true;
    }

    @Override
    public boolean addAll(final int i10, final Collection collection) {
        return f(new Function1<List<Object>, Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(List<Object> list) {
                return Boolean.valueOf(list.addAll(i10, collection));
            }
        });
    }

    public int c() {
        return a().i().size();
    }

    @Override
    public void clear() {
        j jVarC;
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
        a aVar = (a) firstStateRecord;
        SnapshotKt.J();
        synchronized (SnapshotKt.I()) {
            jVarC = j.f3695e.c();
            a aVar2 = (a) SnapshotKt.h0(aVar, this, jVarC);
            synchronized (s.f3709a) {
                aVar2.l(t.a.b());
                aVar2.m(aVar2.j() + 1);
                aVar2.n(aVar2.k() + 1);
            }
        }
        SnapshotKt.Q(jVarC, this);
    }

    @Override
    public boolean contains(Object obj) {
        return a().i().contains(obj);
    }

    @Override
    public boolean containsAll(Collection collection) {
        return a().i().containsAll(collection);
    }

    public final int e() {
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
        return ((a) SnapshotKt.F((a) firstStateRecord)).k();
    }

    @Override
    public Object get(int i10) {
        return a().i().get(i10);
    }

    @Override
    public e0 getFirstStateRecord() {
        return this.f3625a;
    }

    public Object i(int i10) {
        int iJ;
        t.f fVarI;
        j jVarC;
        boolean z10;
        Object obj = get(i10);
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f fVarD = fVarI.d(i10);
            if (Intrinsics.c(fVarD, fVarI)) {
                break;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    if (aVar3.j() == iJ) {
                        aVar3.l(fVarD);
                        z10 = true;
                        aVar3.n(aVar3.k() + 1);
                        aVar3.m(aVar3.j() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return obj;
    }

    @Override
    public int indexOf(Object obj) {
        return a().i().indexOf(obj);
    }

    @Override
    public boolean isEmpty() {
        return a().i().isEmpty();
    }

    @Override
    public Iterator iterator() {
        return listIterator();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0083 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(int i10, int i11) {
        int iJ;
        t.f fVarI;
        j jVarC;
        boolean z10;
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f.a aVarBuilder = fVarI.builder();
            aVarBuilder.subList(i10, i11).clear();
            t.f fVarBuild = aVarBuilder.build();
            if (Intrinsics.c(fVarBuild, fVarI)) {
                return;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    try {
                        if (aVar3.j() == iJ) {
                            aVar3.l(fVarBuild);
                            z10 = true;
                            aVar3.m(aVar3.j() + 1);
                            aVar3.n(aVar3.k() + 1);
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

    public final int l(Collection collection, int i10, int i11) {
        int iJ;
        t.f fVarI;
        j jVarC;
        boolean z10;
        int size = size();
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f.a aVarBuilder = fVarI.builder();
            aVarBuilder.subList(i10, i11).retainAll(collection);
            t.f fVarBuild = aVarBuilder.build();
            if (Intrinsics.c(fVarBuild, fVarI)) {
                break;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    if (aVar3.j() == iJ) {
                        aVar3.l(fVarBuild);
                        z10 = true;
                        aVar3.m(aVar3.j() + 1);
                        aVar3.n(aVar3.k() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return size - size();
    }

    @Override
    public int lastIndexOf(Object obj) {
        return a().i().lastIndexOf(obj);
    }

    @Override
    public ListIterator listIterator() {
        return new w(this, 0);
    }

    @Override
    public e0 mergeRecords(e0 e0Var, e0 e0Var2, e0 e0Var3) {
        return b0.a(this, e0Var, e0Var2, e0Var3);
    }

    @Override
    public void prependStateRecord(e0 e0Var) {
        e0Var.g(getFirstStateRecord());
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
        this.f3625a = (a) e0Var;
    }

    @Override
    public final Object remove(int i10) {
        return i(i10);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x007b */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean removeAll(Collection collection) {
        int iJ;
        t.f fVarI;
        boolean z10;
        j jVarC;
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f fVarRemoveAll = fVarI.removeAll(collection);
            z10 = false;
            if (Intrinsics.c(fVarRemoveAll, fVarI)) {
                return false;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    try {
                        if (aVar3.j() == iJ) {
                            aVar3.l(fVarRemoveAll);
                            aVar3.n(aVar3.k() + 1);
                            aVar3.m(aVar3.j() + 1);
                            z10 = true;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return true;
    }

    @Override
    public boolean retainAll(final Collection collection) {
        return f(new Function1<List<Object>, Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(List<Object> list) {
                return Boolean.valueOf(list.retainAll(collection));
            }
        });
    }

    @Override
    public Object set(int i10, Object obj) {
        int iJ;
        t.f fVarI;
        j jVarC;
        boolean z10;
        Object obj2 = get(i10);
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f fVar = fVarI.set(i10, obj);
            if (Intrinsics.c(fVar, fVarI)) {
                break;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    if (aVar3.j() == iJ) {
                        aVar3.l(fVar);
                        z10 = true;
                        aVar3.m(aVar3.j() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return obj2;
    }

    @Override
    public final int size() {
        return c();
    }

    @Override
    public List subList(int i10, int i11) {
        if (!(i10 >= 0 && i10 <= i11 && i11 <= size())) {
            o1.a("fromIndex or toIndex are out of bounds");
        }
        return new f0(this, i10, i11);
    }

    @Override
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    public String toString() {
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
        return "SnapshotStateList(value=" + ((a) SnapshotKt.F((a) firstStateRecord)).i() + ")@" + hashCode();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x007b */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean addAll(Collection collection) {
        int iJ;
        t.f fVarI;
        boolean z10;
        j jVarC;
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f fVarAddAll = fVarI.addAll(collection);
            z10 = false;
            if (Intrinsics.c(fVarAddAll, fVarI)) {
                return false;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    try {
                        if (aVar3.j() == iJ) {
                            aVar3.l(fVarAddAll);
                            aVar3.n(aVar3.k() + 1);
                            aVar3.m(aVar3.j() + 1);
                            z10 = true;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return true;
    }

    @Override
    public ListIterator listIterator(int i10) {
        return new w(this, i10);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x007b */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean remove(Object obj) {
        int iJ;
        t.f fVarI;
        boolean z10;
        j jVarC;
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f fVarRemove = fVarI.remove(obj);
            z10 = false;
            if (Intrinsics.c(fVarRemove, fVarI)) {
                return false;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    try {
                        if (aVar3.j() == iJ) {
                            aVar3.l(fVarRemove);
                            aVar3.n(aVar3.k() + 1);
                            aVar3.m(aVar3.j() + 1);
                            z10 = true;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return true;
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0079 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void add(int i10, Object obj) {
        int iJ;
        t.f fVarI;
        j jVarC;
        boolean z10;
        do {
            synchronized (s.f3709a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                iJ = aVar.j();
                fVarI = aVar.i();
                Unit unit = Unit.f64096a;
            }
            Intrinsics.e(fVarI);
            t.f fVarAdd = fVarI.add(i10, obj);
            if (Intrinsics.c(fVarAdd, fVarI)) {
                return;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f3695e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (s.f3709a) {
                    try {
                        if (aVar3.j() == iJ) {
                            aVar3.l(fVarAdd);
                            z10 = true;
                            aVar3.n(aVar3.k() + 1);
                            aVar3.m(aVar3.j() + 1);
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
}
