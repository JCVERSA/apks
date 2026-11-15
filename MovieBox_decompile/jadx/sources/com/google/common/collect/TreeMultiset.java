package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

public final class TreeMultiset<E> extends h implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient e header;
    private final transient GeneralRange<E> range;
    private final transient f rootReference;

    private enum Aggregate {
        SIZE {
            @Override
            int nodeAggregate(e eVar) {
                return eVar.f29893b;
            }

            @Override
            long treeAggregate(e eVar) {
                if (eVar == null) {
                    return 0L;
                }
                return eVar.f29895d;
            }
        },
        DISTINCT {
            @Override
            int nodeAggregate(e eVar) {
                return 1;
            }

            @Override
            long treeAggregate(e eVar) {
                if (eVar == null) {
                    return 0L;
                }
                return eVar.f29894c;
            }
        };

        abstract int nodeAggregate(e eVar);

        abstract long treeAggregate(e eVar);

        Aggregate(a aVar) {
            this();
        }
    }

    class a extends Multisets.b {

        final e f29883a;

        final TreeMultiset f29884b;

        a(TreeMultiset treeMultiset, e eVar) {
            this.f29883a = eVar;
            this.f29884b = treeMultiset;
        }

        @Override
        public int getCount() {
            int iW = this.f29883a.w();
            return iW == 0 ? this.f29884b.count(getElement()) : iW;
        }

        @Override
        public Object getElement() {
            return this.f29883a.x();
        }
    }

    class b implements Iterator {

        e f29885a;

        l3.a f29886b;

        b() {
            this.f29885a = TreeMultiset.this.firstNode();
        }

        @Override
        public l3.a next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            TreeMultiset treeMultiset = TreeMultiset.this;
            e eVar = this.f29885a;
            Objects.requireNonNull(eVar);
            l3.a aVarWrapEntry = treeMultiset.wrapEntry(eVar);
            this.f29886b = aVarWrapEntry;
            if (this.f29885a.L() == TreeMultiset.this.header) {
                this.f29885a = null;
            } else {
                this.f29885a = this.f29885a.L();
            }
            return aVarWrapEntry;
        }

        @Override
        public boolean hasNext() {
            if (this.f29885a == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooHigh(this.f29885a.x())) {
                return true;
            }
            this.f29885a = null;
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void remove() {
            com.google.common.base.m.v(this.f29886b != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.f29886b.getElement(), 0);
            this.f29886b = null;
        }
    }

    class c implements Iterator {

        e f29888a;

        l3.a f29889b = null;

        c() {
            this.f29888a = TreeMultiset.this.lastNode();
        }

        @Override
        public l3.a next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Objects.requireNonNull(this.f29888a);
            l3.a aVarWrapEntry = TreeMultiset.this.wrapEntry(this.f29888a);
            this.f29889b = aVarWrapEntry;
            if (this.f29888a.z() == TreeMultiset.this.header) {
                this.f29888a = null;
            } else {
                this.f29888a = this.f29888a.z();
            }
            return aVarWrapEntry;
        }

        @Override
        public boolean hasNext() {
            if (this.f29888a == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooLow(this.f29888a.x())) {
                return true;
            }
            this.f29888a = null;
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void remove() {
            com.google.common.base.m.v(this.f29889b != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.f29889b.getElement(), 0);
            this.f29889b = null;
        }
    }

    static class d {

        static final int[] f29891a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f29891a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29891a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static final class f {

        private Object f29901a;

        private f() {
        }

        public void a(Object obj, Object obj2) {
            if (this.f29901a != obj) {
                throw new ConcurrentModificationException();
            }
            this.f29901a = obj2;
        }

        void b() {
            this.f29901a = null;
        }

        public Object c() {
            return this.f29901a;
        }

        f(a aVar) {
            this();
        }
    }

    TreeMultiset(f fVar, GeneralRange<E> generalRange, e eVar) {
        super(generalRange.comparator());
        this.rootReference = fVar;
        this.range = generalRange;
        this.header = eVar;
    }

    private long aggregateAboveRange(Aggregate aggregate, e eVar) {
        long jTreeAggregate;
        long jAggregateAboveRange;
        if (eVar == null) {
            return 0L;
        }
        int iCompare = comparator().compare(m3.a(this.range.getUpperEndpoint()), eVar.x());
        if (iCompare > 0) {
            return aggregateAboveRange(aggregate, eVar.f29898g);
        }
        if (iCompare == 0) {
            int i10 = d.f29891a[this.range.getUpperBoundType().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return aggregate.treeAggregate(eVar.f29898g);
                }
                throw new AssertionError();
            }
            jTreeAggregate = aggregate.nodeAggregate(eVar);
            jAggregateAboveRange = aggregate.treeAggregate(eVar.f29898g);
        } else {
            jTreeAggregate = aggregate.treeAggregate(eVar.f29898g) + ((long) aggregate.nodeAggregate(eVar));
            jAggregateAboveRange = aggregateAboveRange(aggregate, eVar.f29897f);
        }
        return jTreeAggregate + jAggregateAboveRange;
    }

    private long aggregateBelowRange(Aggregate aggregate, e eVar) {
        long jTreeAggregate;
        long jAggregateBelowRange;
        if (eVar == null) {
            return 0L;
        }
        int iCompare = comparator().compare(m3.a(this.range.getLowerEndpoint()), eVar.x());
        if (iCompare < 0) {
            return aggregateBelowRange(aggregate, eVar.f29897f);
        }
        if (iCompare == 0) {
            int i10 = d.f29891a[this.range.getLowerBoundType().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return aggregate.treeAggregate(eVar.f29897f);
                }
                throw new AssertionError();
            }
            jTreeAggregate = aggregate.nodeAggregate(eVar);
            jAggregateBelowRange = aggregate.treeAggregate(eVar.f29897f);
        } else {
            jTreeAggregate = aggregate.treeAggregate(eVar.f29897f) + ((long) aggregate.nodeAggregate(eVar));
            jAggregateBelowRange = aggregateBelowRange(aggregate, eVar.f29898g);
        }
        return jTreeAggregate + jAggregateBelowRange;
    }

    private long aggregateForEntries(Aggregate aggregate) {
        e eVar = (e) this.rootReference.c();
        long jTreeAggregate = aggregate.treeAggregate(eVar);
        if (this.range.hasLowerBound()) {
            jTreeAggregate -= aggregateBelowRange(aggregate, eVar);
        }
        return this.range.hasUpperBound() ? jTreeAggregate - aggregateAboveRange(aggregate, eVar) : jTreeAggregate;
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(Ordering.natural());
    }

    public e firstNode() {
        e eVarL;
        e eVar = (e) this.rootReference.c();
        if (eVar == null) {
            return null;
        }
        if (this.range.hasLowerBound()) {
            Object objA = m3.a(this.range.getLowerEndpoint());
            eVarL = eVar.s(comparator(), objA);
            if (eVarL == null) {
                return null;
            }
            if (this.range.getLowerBoundType() == BoundType.OPEN && comparator().compare(objA, eVarL.x()) == 0) {
                eVarL = eVarL.L();
            }
        } else {
            eVarL = this.header.L();
        }
        if (eVarL == this.header || !this.range.contains((E) eVarL.x())) {
            return null;
        }
        return eVarL;
    }

    public e lastNode() {
        e eVarZ;
        e eVar = (e) this.rootReference.c();
        if (eVar == null) {
            return null;
        }
        if (this.range.hasUpperBound()) {
            Object objA = m3.a(this.range.getUpperEndpoint());
            eVarZ = eVar.v(comparator(), objA);
            if (eVarZ == null) {
                return null;
            }
            if (this.range.getUpperBoundType() == BoundType.OPEN && comparator().compare(objA, eVarZ.x()) == 0) {
                eVarZ = eVarZ.z();
            }
        } else {
            eVarZ = this.header.z();
        }
        if (eVarZ == this.header || !this.range.contains((E) eVarZ.x())) {
            return null;
        }
        return eVarZ;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        Comparator comparator = (Comparator) object;
        w3.a(h.class, "comparator").b(this, comparator);
        w3.a(TreeMultiset.class, "range").b(this, GeneralRange.all(comparator));
        w3.a(TreeMultiset.class, "rootReference").b(this, new f(null));
        e eVar = new e();
        w3.a(TreeMultiset.class, "header").b(this, eVar);
        successor(eVar, eVar);
        w3.f(this, objectInputStream);
    }

    public static <T> void successor(e eVar, e eVar2) {
        eVar.f29900i = eVar2;
        eVar2.f29899h = eVar;
    }

    public l3.a wrapEntry(e eVar) {
        return new a(this, eVar);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        w3.k(this, objectOutputStream);
    }

    @Override
    public int add(E e10, int i10) {
        e2.b(i10, "occurrences");
        if (i10 == 0) {
            return count(e10);
        }
        com.google.common.base.m.d(this.range.contains(e10));
        e eVar = (e) this.rootReference.c();
        if (eVar != null) {
            int[] iArr = new int[1];
            this.rootReference.a(eVar, eVar.o(comparator(), e10, i10, iArr));
            return iArr[0];
        }
        comparator().compare(e10, e10);
        e eVar2 = new e(e10, i10);
        e eVar3 = this.header;
        successor(eVar3, eVar2, eVar3);
        this.rootReference.a(eVar, eVar2);
        return 0;
    }

    @Override
    public void clear() {
        if (this.range.hasLowerBound() || this.range.hasUpperBound()) {
            Iterators.d(entryIterator());
            return;
        }
        e eVarL = this.header.L();
        while (true) {
            e eVar = this.header;
            if (eVarL == eVar) {
                successor(eVar, eVar);
                this.rootReference.b();
                return;
            }
            e eVarL2 = eVarL.L();
            eVarL.f29893b = 0;
            eVarL.f29897f = null;
            eVarL.f29898g = null;
            eVarL.f29899h = null;
            eVarL.f29900i = null;
            eVarL = eVarL2;
        }
    }

    @Override
    public Comparator comparator() {
        return super.comparator();
    }

    @Override
    public boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override
    public int count(Object obj) {
        try {
            e eVar = (e) this.rootReference.c();
            if (this.range.contains(obj) && eVar != null) {
                return eVar.t(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override
    Iterator<l3.a> descendingEntryIterator() {
        return new c();
    }

    @Override
    public a4 descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override
    int distinctElements() {
        return Ints.n(aggregateForEntries(Aggregate.DISTINCT));
    }

    @Override
    Iterator<E> elementIterator() {
        return Multisets.e(entryIterator());
    }

    @Override
    public NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override
    Iterator<l3.a> entryIterator() {
        return new b();
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public l3.a firstEntry() {
        return super.firstEntry();
    }

    @Override
    public a4 headMultiset(E e10, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.upTo(comparator(), e10, boundType)), this.header);
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Iterator<E> iterator() {
        return Multisets.i(this);
    }

    @Override
    public l3.a lastEntry() {
        return super.lastEntry();
    }

    @Override
    public l3.a pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override
    public l3.a pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override
    public int remove(Object obj, int i10) {
        e2.b(i10, "occurrences");
        if (i10 == 0) {
            return count(obj);
        }
        e eVar = (e) this.rootReference.c();
        int[] iArr = new int[1];
        try {
            if (this.range.contains(obj) && eVar != null) {
                this.rootReference.a(eVar, eVar.E(comparator(), obj, i10, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override
    public int setCount(E e10, int i10) {
        e2.b(i10, "count");
        if (!this.range.contains(e10)) {
            com.google.common.base.m.d(i10 == 0);
            return 0;
        }
        e eVar = (e) this.rootReference.c();
        if (eVar == null) {
            if (i10 > 0) {
                add(e10, i10);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.a(eVar, eVar.K(comparator(), e10, i10, iArr));
        return iArr[0];
    }

    @Override
    public int size() {
        return Ints.n(aggregateForEntries(Aggregate.SIZE));
    }

    @Override
    public a4 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    @Override
    public a4 tailMultiset(E e10, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.downTo(comparator(), e10, boundType)), this.header);
    }

    public static <E> TreeMultiset<E> create(Comparator<? super E> comparator) {
        return comparator == null ? new TreeMultiset<>(Ordering.natural()) : new TreeMultiset<>(comparator);
    }

    static int distinctElements(e eVar) {
        if (eVar == null) {
            return 0;
        }
        return eVar.f29894c;
    }

    public static <T> void successor(e eVar, e eVar2, e eVar3) {
        successor(eVar, eVar2);
        successor(eVar2, eVar3);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> treeMultisetCreate = create();
        g3.a(treeMultisetCreate, iterable);
        return treeMultisetCreate;
    }

    TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.range = GeneralRange.all(comparator);
        e eVar = new e();
        this.header = eVar;
        successor(eVar, eVar);
        this.rootReference = new f(null);
    }

    private static final class e {

        private final Object f29892a;

        private int f29893b;

        private int f29894c;

        private long f29895d;

        private int f29896e;

        private e f29897f;

        private e f29898g;

        private e f29899h;

        private e f29900i;

        e(Object obj, int i10) {
            com.google.common.base.m.d(i10 > 0);
            this.f29892a = obj;
            this.f29893b = i10;
            this.f29895d = i10;
            this.f29894c = 1;
            this.f29896e = 1;
            this.f29897f = null;
            this.f29898g = null;
        }

        private e A() {
            int iR = r();
            if (iR == -2) {
                Objects.requireNonNull(this.f29898g);
                if (this.f29898g.r() > 0) {
                    this.f29898g = this.f29898g.I();
                }
                return H();
            }
            if (iR != 2) {
                C();
                return this;
            }
            Objects.requireNonNull(this.f29897f);
            if (this.f29897f.r() < 0) {
                this.f29897f = this.f29897f.H();
            }
            return I();
        }

        private void B() {
            D();
            C();
        }

        private void C() {
            this.f29896e = Math.max(y(this.f29897f), y(this.f29898g)) + 1;
        }

        private void D() {
            this.f29894c = TreeMultiset.distinctElements(this.f29897f) + 1 + TreeMultiset.distinctElements(this.f29898g);
            this.f29895d = ((long) this.f29893b) + M(this.f29897f) + M(this.f29898g);
        }

        private e F(e eVar) {
            e eVar2 = this.f29898g;
            if (eVar2 == null) {
                return this.f29897f;
            }
            this.f29898g = eVar2.F(eVar);
            this.f29894c--;
            this.f29895d -= (long) eVar.f29893b;
            return A();
        }

        private e G(e eVar) {
            e eVar2 = this.f29897f;
            if (eVar2 == null) {
                return this.f29898g;
            }
            this.f29897f = eVar2.G(eVar);
            this.f29894c--;
            this.f29895d -= (long) eVar.f29893b;
            return A();
        }

        private e H() {
            com.google.common.base.m.u(this.f29898g != null);
            e eVar = this.f29898g;
            this.f29898g = eVar.f29897f;
            eVar.f29897f = this;
            eVar.f29895d = this.f29895d;
            eVar.f29894c = this.f29894c;
            B();
            eVar.C();
            return eVar;
        }

        private e I() {
            com.google.common.base.m.u(this.f29897f != null);
            e eVar = this.f29897f;
            this.f29897f = eVar.f29898g;
            eVar.f29898g = this;
            eVar.f29895d = this.f29895d;
            eVar.f29894c = this.f29894c;
            B();
            eVar.C();
            return eVar;
        }

        public e L() {
            e eVar = this.f29900i;
            Objects.requireNonNull(eVar);
            return eVar;
        }

        private static long M(e eVar) {
            if (eVar == null) {
                return 0L;
            }
            return eVar.f29895d;
        }

        private e p(Object obj, int i10) {
            this.f29897f = new e(obj, i10);
            TreeMultiset.successor(z(), this.f29897f, this);
            this.f29896e = Math.max(2, this.f29896e);
            this.f29894c++;
            this.f29895d += (long) i10;
            return this;
        }

        private e q(Object obj, int i10) {
            e eVar = new e(obj, i10);
            this.f29898g = eVar;
            TreeMultiset.successor(this, eVar, L());
            this.f29896e = Math.max(2, this.f29896e);
            this.f29894c++;
            this.f29895d += (long) i10;
            return this;
        }

        private int r() {
            return y(this.f29897f) - y(this.f29898g);
        }

        public e s(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f29897f;
                return eVar == null ? this : (e) com.google.common.base.h.a(eVar.s(comparator, obj), this);
            }
            if (iCompare == 0) {
                return this;
            }
            e eVar2 = this.f29898g;
            if (eVar2 == null) {
                return null;
            }
            return eVar2.s(comparator, obj);
        }

        private e u() {
            int i10 = this.f29893b;
            this.f29893b = 0;
            TreeMultiset.successor(z(), L());
            e eVar = this.f29897f;
            if (eVar == null) {
                return this.f29898g;
            }
            e eVar2 = this.f29898g;
            if (eVar2 == null) {
                return eVar;
            }
            if (eVar.f29896e >= eVar2.f29896e) {
                e eVarZ = z();
                eVarZ.f29897f = this.f29897f.F(eVarZ);
                eVarZ.f29898g = this.f29898g;
                eVarZ.f29894c = this.f29894c - 1;
                eVarZ.f29895d = this.f29895d - ((long) i10);
                return eVarZ.A();
            }
            e eVarL = L();
            eVarL.f29898g = this.f29898g.G(eVarL);
            eVarL.f29897f = this.f29897f;
            eVarL.f29894c = this.f29894c - 1;
            eVarL.f29895d = this.f29895d - ((long) i10);
            return eVarL.A();
        }

        public e v(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare > 0) {
                e eVar = this.f29898g;
                return eVar == null ? this : (e) com.google.common.base.h.a(eVar.v(comparator, obj), this);
            }
            if (iCompare == 0) {
                return this;
            }
            e eVar2 = this.f29897f;
            if (eVar2 == null) {
                return null;
            }
            return eVar2.v(comparator, obj);
        }

        private static int y(e eVar) {
            if (eVar == null) {
                return 0;
            }
            return eVar.f29896e;
        }

        public e z() {
            e eVar = this.f29899h;
            Objects.requireNonNull(eVar);
            return eVar;
        }

        e E(Comparator comparator, Object obj, int i10, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f29897f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f29897f = eVar.E(comparator, obj, i10, iArr);
                int i11 = iArr[0];
                if (i11 > 0) {
                    if (i10 >= i11) {
                        this.f29894c--;
                        this.f29895d -= (long) i11;
                    } else {
                        this.f29895d -= (long) i10;
                    }
                }
                return i11 == 0 ? this : A();
            }
            if (iCompare <= 0) {
                int i12 = this.f29893b;
                iArr[0] = i12;
                if (i10 >= i12) {
                    return u();
                }
                this.f29893b = i12 - i10;
                this.f29895d -= (long) i10;
                return this;
            }
            e eVar2 = this.f29898g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return this;
            }
            this.f29898g = eVar2.E(comparator, obj, i10, iArr);
            int i13 = iArr[0];
            if (i13 > 0) {
                if (i10 >= i13) {
                    this.f29894c--;
                    this.f29895d -= (long) i13;
                } else {
                    this.f29895d -= (long) i10;
                }
            }
            return A();
        }

        e J(Comparator comparator, Object obj, int i10, int i11, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f29897f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return (i10 != 0 || i11 <= 0) ? this : p(obj, i11);
                }
                this.f29897f = eVar.J(comparator, obj, i10, i11, iArr);
                int i12 = iArr[0];
                if (i12 == i10) {
                    if (i11 == 0 && i12 != 0) {
                        this.f29894c--;
                    } else if (i11 > 0 && i12 == 0) {
                        this.f29894c++;
                    }
                    this.f29895d += (long) (i11 - i12);
                }
                return A();
            }
            if (iCompare <= 0) {
                int i13 = this.f29893b;
                iArr[0] = i13;
                if (i10 == i13) {
                    if (i11 == 0) {
                        return u();
                    }
                    this.f29895d += (long) (i11 - i13);
                    this.f29893b = i11;
                }
                return this;
            }
            e eVar2 = this.f29898g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return (i10 != 0 || i11 <= 0) ? this : q(obj, i11);
            }
            this.f29898g = eVar2.J(comparator, obj, i10, i11, iArr);
            int i14 = iArr[0];
            if (i14 == i10) {
                if (i11 == 0 && i14 != 0) {
                    this.f29894c--;
                } else if (i11 > 0 && i14 == 0) {
                    this.f29894c++;
                }
                this.f29895d += (long) (i11 - i14);
            }
            return A();
        }

        e K(Comparator comparator, Object obj, int i10, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f29897f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return i10 > 0 ? p(obj, i10) : this;
                }
                this.f29897f = eVar.K(comparator, obj, i10, iArr);
                if (i10 == 0 && iArr[0] != 0) {
                    this.f29894c--;
                } else if (i10 > 0 && iArr[0] == 0) {
                    this.f29894c++;
                }
                this.f29895d += (long) (i10 - iArr[0]);
                return A();
            }
            if (iCompare <= 0) {
                int i11 = this.f29893b;
                iArr[0] = i11;
                if (i10 == 0) {
                    return u();
                }
                this.f29895d += (long) (i10 - i11);
                this.f29893b = i10;
                return this;
            }
            e eVar2 = this.f29898g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return i10 > 0 ? q(obj, i10) : this;
            }
            this.f29898g = eVar2.K(comparator, obj, i10, iArr);
            if (i10 == 0 && iArr[0] != 0) {
                this.f29894c--;
            } else if (i10 > 0 && iArr[0] == 0) {
                this.f29894c++;
            }
            this.f29895d += (long) (i10 - iArr[0]);
            return A();
        }

        e o(Comparator comparator, Object obj, int i10, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f29897f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return p(obj, i10);
                }
                int i11 = eVar.f29896e;
                e eVarO = eVar.o(comparator, obj, i10, iArr);
                this.f29897f = eVarO;
                if (iArr[0] == 0) {
                    this.f29894c++;
                }
                this.f29895d += (long) i10;
                return eVarO.f29896e == i11 ? this : A();
            }
            if (iCompare <= 0) {
                int i12 = this.f29893b;
                iArr[0] = i12;
                long j10 = i10;
                com.google.common.base.m.d(((long) i12) + j10 <= 2147483647L);
                this.f29893b += i10;
                this.f29895d += j10;
                return this;
            }
            e eVar2 = this.f29898g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return q(obj, i10);
            }
            int i13 = eVar2.f29896e;
            e eVarO2 = eVar2.o(comparator, obj, i10, iArr);
            this.f29898g = eVarO2;
            if (iArr[0] == 0) {
                this.f29894c++;
            }
            this.f29895d += (long) i10;
            return eVarO2.f29896e == i13 ? this : A();
        }

        int t(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f29897f;
                if (eVar == null) {
                    return 0;
                }
                return eVar.t(comparator, obj);
            }
            if (iCompare <= 0) {
                return this.f29893b;
            }
            e eVar2 = this.f29898g;
            if (eVar2 == null) {
                return 0;
            }
            return eVar2.t(comparator, obj);
        }

        public String toString() {
            return Multisets.g(x(), w()).toString();
        }

        int w() {
            return this.f29893b;
        }

        Object x() {
            return m3.a(this.f29892a);
        }

        e() {
            this.f29892a = null;
            this.f29893b = 1;
        }
    }

    @Override
    public boolean setCount(E e10, int i10, int i11) {
        e2.b(i11, "newCount");
        e2.b(i10, "oldCount");
        com.google.common.base.m.d(this.range.contains(e10));
        e eVar = (e) this.rootReference.c();
        if (eVar != null) {
            int[] iArr = new int[1];
            this.rootReference.a(eVar, eVar.J(comparator(), e10, i10, i11, iArr));
            return iArr[0] == i10;
        }
        if (i10 != 0) {
            return false;
        }
        if (i11 > 0) {
            add(e10, i11);
        }
        return true;
    }
}
