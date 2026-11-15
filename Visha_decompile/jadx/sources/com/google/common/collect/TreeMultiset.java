package com.google.common.collect;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.google.common.primitives.Ints;
import defpackage.k71;
import defpackage.r37;
import defpackage.v55;
import defpackage.xd8;
import defpackage.zq6;
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

public final class TreeMultiset<E> extends com.google.common.collect.d implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient e header;
    private final transient GeneralRange<E> range;
    private final transient f rootReference;

    public enum Aggregate {
        SIZE {
            @Override
            public int nodeAggregate(e eVar) {
                return eVar.b;
            }

            @Override
            public long treeAggregate(e eVar) {
                if (eVar == null) {
                    return 0L;
                }
                return eVar.d;
            }
        },
        DISTINCT {
            @Override
            public int nodeAggregate(e eVar) {
                return 1;
            }

            @Override
            public long treeAggregate(e eVar) {
                if (eVar == null) {
                    return 0L;
                }
                return eVar.c;
            }
        };

        public abstract int nodeAggregate(e eVar);

        public abstract long treeAggregate(e eVar);

        Aggregate(a aVar) {
            this();
        }
    }

    public class a extends Multisets.b {
        public final e b;
        public final TreeMultiset c;

        public a(TreeMultiset treeMultiset, e eVar) {
            this.b = eVar;
            this.c = treeMultiset;
        }

        @Override
        public int getCount() {
            int iW = this.b.w();
            return iW == 0 ? this.c.count(getElement()) : iW;
        }

        @Override
        public Object getElement() {
            return this.b.x();
        }
    }

    public class b implements Iterator {
        public e b;
        public j.a c;

        public b() {
            this.b = TreeMultiset.this.firstNode();
        }

        @Override
        public j.a next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            TreeMultiset treeMultiset = TreeMultiset.this;
            e eVar = this.b;
            Objects.requireNonNull(eVar);
            j.a aVarWrapEntry = treeMultiset.wrapEntry(eVar);
            this.c = aVarWrapEntry;
            if (this.b.L() == TreeMultiset.this.header) {
                this.b = null;
            } else {
                this.b = this.b.L();
            }
            return aVarWrapEntry;
        }

        @Override
        public boolean hasNext() {
            if (this.b == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooHigh(this.b.x())) {
                return true;
            }
            this.b = null;
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void remove() {
            xd8.v(this.c != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.c.getElement(), 0);
            this.c = null;
        }
    }

    public class c implements Iterator {
        public e b;
        public j.a c = null;

        public c() {
            this.b = TreeMultiset.this.lastNode();
        }

        @Override
        public j.a next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Objects.requireNonNull(this.b);
            j.a aVarWrapEntry = TreeMultiset.this.wrapEntry(this.b);
            this.c = aVarWrapEntry;
            if (this.b.z() == TreeMultiset.this.header) {
                this.b = null;
            } else {
                this.b = this.b.z();
            }
            return aVarWrapEntry;
        }

        @Override
        public boolean hasNext() {
            if (this.b == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooLow(this.b.x())) {
                return true;
            }
            this.b = null;
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void remove() {
            xd8.v(this.c != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.c.getElement(), 0);
            this.c = null;
        }
    }

    public static class d {
        public static final int[] a;

        static {
            int[] iArr = new int[BoundType.values().length];
            a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class f {
        public Object a;

        public f() {
        }

        public void a(Object obj, Object obj2) {
            if (this.a != obj) {
                throw new ConcurrentModificationException();
            }
            this.a = obj2;
        }

        public void b() {
            this.a = null;
        }

        public Object c() {
            return this.a;
        }

        public f(a aVar) {
            this();
        }
    }

    public TreeMultiset(f fVar, GeneralRange<E> generalRange, e eVar) {
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
        int iCompare = comparator().compare(r37.a(this.range.getUpperEndpoint()), eVar.x());
        if (iCompare > 0) {
            return aggregateAboveRange(aggregate, eVar.g);
        }
        if (iCompare == 0) {
            int i = d.a[this.range.getUpperBoundType().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return aggregate.treeAggregate(eVar.g);
                }
                throw new AssertionError();
            }
            jTreeAggregate = aggregate.nodeAggregate(eVar);
            jAggregateAboveRange = aggregate.treeAggregate(eVar.g);
        } else {
            jTreeAggregate = aggregate.treeAggregate(eVar.g) + ((long) aggregate.nodeAggregate(eVar));
            jAggregateAboveRange = aggregateAboveRange(aggregate, eVar.f);
        }
        return jTreeAggregate + jAggregateAboveRange;
    }

    private long aggregateBelowRange(Aggregate aggregate, e eVar) {
        long jTreeAggregate;
        long jAggregateBelowRange;
        if (eVar == null) {
            return 0L;
        }
        int iCompare = comparator().compare(r37.a(this.range.getLowerEndpoint()), eVar.x());
        if (iCompare < 0) {
            return aggregateBelowRange(aggregate, eVar.f);
        }
        if (iCompare == 0) {
            int i = d.a[this.range.getLowerBoundType().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return aggregate.treeAggregate(eVar.f);
                }
                throw new AssertionError();
            }
            jTreeAggregate = aggregate.nodeAggregate(eVar);
            jAggregateBelowRange = aggregate.treeAggregate(eVar.f);
        } else {
            jTreeAggregate = aggregate.treeAggregate(eVar.f) + ((long) aggregate.nodeAggregate(eVar));
            jAggregateBelowRange = aggregateBelowRange(aggregate, eVar.g);
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
            Object objA = r37.a(this.range.getLowerEndpoint());
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
            Object objA = r37.a(this.range.getUpperEndpoint());
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
        n.a(com.google.common.collect.d.class, "comparator").b(this, comparator);
        n.a(TreeMultiset.class, SessionDescription.ATTR_RANGE).b(this, GeneralRange.all(comparator));
        n.a(TreeMultiset.class, "rootReference").b(this, new f(null));
        e eVar = new e();
        n.a(TreeMultiset.class, "header").b(this, eVar);
        successor(eVar, eVar);
        n.f(this, objectInputStream);
    }

    public static <T> void successor(e eVar, e eVar2) {
        eVar.i = eVar2;
        eVar2.h = eVar;
    }

    public j.a wrapEntry(e eVar) {
        return new a(this, eVar);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        n.k(this, objectOutputStream);
    }

    @Override
    public int add(E e2, int i) {
        k71.b(i, "occurrences");
        if (i == 0) {
            return count(e2);
        }
        xd8.d(this.range.contains(e2));
        e eVar = (e) this.rootReference.c();
        if (eVar != null) {
            int[] iArr = new int[1];
            this.rootReference.a(eVar, eVar.o(comparator(), e2, i, iArr));
            return iArr[0];
        }
        comparator().compare(e2, e2);
        e eVar2 = new e(e2, i);
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
            eVarL.b = 0;
            eVarL.f = null;
            eVarL.g = null;
            eVarL.h = null;
            eVarL.i = null;
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
    public Iterator<j.a> descendingEntryIterator() {
        return new c();
    }

    @Override
    public p descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override
    public int distinctElements() {
        return Ints.n(aggregateForEntries(Aggregate.DISTINCT));
    }

    @Override
    public Iterator<E> elementIterator() {
        return Multisets.e(entryIterator());
    }

    @Override
    public NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override
    public Iterator<j.a> entryIterator() {
        return new b();
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public j.a firstEntry() {
        return super.firstEntry();
    }

    @Override
    public p headMultiset(E e2, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.upTo(comparator(), e2, boundType)), this.header);
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
    public j.a lastEntry() {
        return super.lastEntry();
    }

    @Override
    public j.a pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override
    public j.a pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override
    public int remove(Object obj, int i) {
        k71.b(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        e eVar = (e) this.rootReference.c();
        int[] iArr = new int[1];
        try {
            if (this.range.contains(obj) && eVar != null) {
                this.rootReference.a(eVar, eVar.E(comparator(), obj, i, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override
    public int setCount(E e2, int i) {
        k71.b(i, "count");
        if (!this.range.contains(e2)) {
            xd8.d(i == 0);
            return 0;
        }
        e eVar = (e) this.rootReference.c();
        if (eVar == null) {
            if (i > 0) {
                add(e2, i);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.a(eVar, eVar.K(comparator(), e2, i, iArr));
        return iArr[0];
    }

    @Override
    public int size() {
        return Ints.n(aggregateForEntries(Aggregate.SIZE));
    }

    @Override
    public p subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    @Override
    public p tailMultiset(E e2, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.downTo(comparator(), e2, boundType)), this.header);
    }

    public static <E> TreeMultiset<E> create(Comparator<? super E> comparator) {
        return comparator == null ? new TreeMultiset<>(Ordering.natural()) : new TreeMultiset<>(comparator);
    }

    public static int distinctElements(e eVar) {
        if (eVar == null) {
            return 0;
        }
        return eVar.c;
    }

    public static <T> void successor(e eVar, e eVar2, e eVar3) {
        successor(eVar, eVar2);
        successor(eVar2, eVar3);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> treeMultisetCreate = create();
        v55.a(treeMultisetCreate, iterable);
        return treeMultisetCreate;
    }

    public TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.range = GeneralRange.all(comparator);
        e eVar = new e();
        this.header = eVar;
        successor(eVar, eVar);
        this.rootReference = new f(null);
    }

    public static final class e {
        public final Object a;
        public int b;
        public int c;
        public long d;
        public int e;
        public e f;
        public e g;
        public e h;
        public e i;

        public e(Object obj, int i) {
            xd8.d(i > 0);
            this.a = obj;
            this.b = i;
            this.d = i;
            this.c = 1;
            this.e = 1;
            this.f = null;
            this.g = null;
        }

        public static long M(e eVar) {
            if (eVar == null) {
                return 0L;
            }
            return eVar.d;
        }

        public static int y(e eVar) {
            if (eVar == null) {
                return 0;
            }
            return eVar.e;
        }

        public final e A() {
            int iR = r();
            if (iR == -2) {
                Objects.requireNonNull(this.g);
                if (this.g.r() > 0) {
                    this.g = this.g.I();
                }
                return H();
            }
            if (iR != 2) {
                C();
                return this;
            }
            Objects.requireNonNull(this.f);
            if (this.f.r() < 0) {
                this.f = this.f.H();
            }
            return I();
        }

        public final void B() {
            D();
            C();
        }

        public final void C() {
            this.e = Math.max(y(this.f), y(this.g)) + 1;
        }

        public final void D() {
            this.c = TreeMultiset.distinctElements(this.f) + 1 + TreeMultiset.distinctElements(this.g);
            this.d = ((long) this.b) + M(this.f) + M(this.g);
        }

        public e E(Comparator comparator, Object obj, int i, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f = eVar.E(comparator, obj, i, iArr);
                int i2 = iArr[0];
                if (i2 > 0) {
                    if (i >= i2) {
                        this.c--;
                        this.d -= (long) i2;
                    } else {
                        this.d -= (long) i;
                    }
                }
                return i2 == 0 ? this : A();
            }
            if (iCompare <= 0) {
                int i3 = this.b;
                iArr[0] = i3;
                if (i >= i3) {
                    return u();
                }
                this.b = i3 - i;
                this.d -= (long) i;
                return this;
            }
            e eVar2 = this.g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return this;
            }
            this.g = eVar2.E(comparator, obj, i, iArr);
            int i4 = iArr[0];
            if (i4 > 0) {
                if (i >= i4) {
                    this.c--;
                    this.d -= (long) i4;
                } else {
                    this.d -= (long) i;
                }
            }
            return A();
        }

        public final e F(e eVar) {
            e eVar2 = this.g;
            if (eVar2 == null) {
                return this.f;
            }
            this.g = eVar2.F(eVar);
            this.c--;
            this.d -= (long) eVar.b;
            return A();
        }

        public final e G(e eVar) {
            e eVar2 = this.f;
            if (eVar2 == null) {
                return this.g;
            }
            this.f = eVar2.G(eVar);
            this.c--;
            this.d -= (long) eVar.b;
            return A();
        }

        public final e H() {
            xd8.u(this.g != null);
            e eVar = this.g;
            this.g = eVar.f;
            eVar.f = this;
            eVar.d = this.d;
            eVar.c = this.c;
            B();
            eVar.C();
            return eVar;
        }

        public final e I() {
            xd8.u(this.f != null);
            e eVar = this.f;
            this.f = eVar.g;
            eVar.g = this;
            eVar.d = this.d;
            eVar.c = this.c;
            B();
            eVar.C();
            return eVar;
        }

        public e J(Comparator comparator, Object obj, int i, int i2, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return (i != 0 || i2 <= 0) ? this : p(obj, i2);
                }
                this.f = eVar.J(comparator, obj, i, i2, iArr);
                int i3 = iArr[0];
                if (i3 == i) {
                    if (i2 == 0 && i3 != 0) {
                        this.c--;
                    } else if (i2 > 0 && i3 == 0) {
                        this.c++;
                    }
                    this.d += (long) (i2 - i3);
                }
                return A();
            }
            if (iCompare <= 0) {
                int i4 = this.b;
                iArr[0] = i4;
                if (i == i4) {
                    if (i2 == 0) {
                        return u();
                    }
                    this.d += (long) (i2 - i4);
                    this.b = i2;
                }
                return this;
            }
            e eVar2 = this.g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return (i != 0 || i2 <= 0) ? this : q(obj, i2);
            }
            this.g = eVar2.J(comparator, obj, i, i2, iArr);
            int i5 = iArr[0];
            if (i5 == i) {
                if (i2 == 0 && i5 != 0) {
                    this.c--;
                } else if (i2 > 0 && i5 == 0) {
                    this.c++;
                }
                this.d += (long) (i2 - i5);
            }
            return A();
        }

        public e K(Comparator comparator, Object obj, int i, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return i > 0 ? p(obj, i) : this;
                }
                this.f = eVar.K(comparator, obj, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.c--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.c++;
                }
                this.d += (long) (i - iArr[0]);
                return A();
            }
            if (iCompare <= 0) {
                int i2 = this.b;
                iArr[0] = i2;
                if (i == 0) {
                    return u();
                }
                this.d += (long) (i - i2);
                this.b = i;
                return this;
            }
            e eVar2 = this.g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return i > 0 ? q(obj, i) : this;
            }
            this.g = eVar2.K(comparator, obj, i, iArr);
            if (i == 0 && iArr[0] != 0) {
                this.c--;
            } else if (i > 0 && iArr[0] == 0) {
                this.c++;
            }
            this.d += (long) (i - iArr[0]);
            return A();
        }

        public final e L() {
            e eVar = this.i;
            Objects.requireNonNull(eVar);
            return eVar;
        }

        public e o(Comparator comparator, Object obj, int i, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return p(obj, i);
                }
                int i2 = eVar.e;
                e eVarO = eVar.o(comparator, obj, i, iArr);
                this.f = eVarO;
                if (iArr[0] == 0) {
                    this.c++;
                }
                this.d += (long) i;
                return eVarO.e == i2 ? this : A();
            }
            if (iCompare <= 0) {
                int i3 = this.b;
                iArr[0] = i3;
                long j = i;
                xd8.d(((long) i3) + j <= 2147483647L);
                this.b += i;
                this.d += j;
                return this;
            }
            e eVar2 = this.g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return q(obj, i);
            }
            int i4 = eVar2.e;
            e eVarO2 = eVar2.o(comparator, obj, i, iArr);
            this.g = eVarO2;
            if (iArr[0] == 0) {
                this.c++;
            }
            this.d += (long) i;
            return eVarO2.e == i4 ? this : A();
        }

        public final e p(Object obj, int i) {
            this.f = new e(obj, i);
            TreeMultiset.successor(z(), this.f, this);
            this.e = Math.max(2, this.e);
            this.c++;
            this.d += (long) i;
            return this;
        }

        public final e q(Object obj, int i) {
            e eVar = new e(obj, i);
            this.g = eVar;
            TreeMultiset.successor(this, eVar, L());
            this.e = Math.max(2, this.e);
            this.c++;
            this.d += (long) i;
            return this;
        }

        public final int r() {
            return y(this.f) - y(this.g);
        }

        public final e s(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f;
                return eVar == null ? this : (e) zq6.a(eVar.s(comparator, obj), this);
            }
            if (iCompare == 0) {
                return this;
            }
            e eVar2 = this.g;
            if (eVar2 == null) {
                return null;
            }
            return eVar2.s(comparator, obj);
        }

        public int t(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f;
                if (eVar == null) {
                    return 0;
                }
                return eVar.t(comparator, obj);
            }
            if (iCompare <= 0) {
                return this.b;
            }
            e eVar2 = this.g;
            if (eVar2 == null) {
                return 0;
            }
            return eVar2.t(comparator, obj);
        }

        public String toString() {
            return Multisets.g(x(), w()).toString();
        }

        public final e u() {
            int i = this.b;
            this.b = 0;
            TreeMultiset.successor(z(), L());
            e eVar = this.f;
            if (eVar == null) {
                return this.g;
            }
            e eVar2 = this.g;
            if (eVar2 == null) {
                return eVar;
            }
            if (eVar.e >= eVar2.e) {
                e eVarZ = z();
                eVarZ.f = this.f.F(eVarZ);
                eVarZ.g = this.g;
                eVarZ.c = this.c - 1;
                eVarZ.d = this.d - ((long) i);
                return eVarZ.A();
            }
            e eVarL = L();
            eVarL.g = this.g.G(eVarL);
            eVarL.f = this.f;
            eVarL.c = this.c - 1;
            eVarL.d = this.d - ((long) i);
            return eVarL.A();
        }

        public final e v(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare > 0) {
                e eVar = this.g;
                return eVar == null ? this : (e) zq6.a(eVar.v(comparator, obj), this);
            }
            if (iCompare == 0) {
                return this;
            }
            e eVar2 = this.f;
            if (eVar2 == null) {
                return null;
            }
            return eVar2.v(comparator, obj);
        }

        public int w() {
            return this.b;
        }

        public Object x() {
            return r37.a(this.a);
        }

        public final e z() {
            e eVar = this.h;
            Objects.requireNonNull(eVar);
            return eVar;
        }

        public e() {
            this.a = null;
            this.b = 1;
        }
    }

    @Override
    public boolean setCount(E e2, int i, int i2) {
        k71.b(i2, "newCount");
        k71.b(i, "oldCount");
        xd8.d(this.range.contains(e2));
        e eVar = (e) this.rootReference.c();
        if (eVar != null) {
            int[] iArr = new int[1];
            this.rootReference.a(eVar, eVar.J(comparator(), e2, i, i2, iArr));
            return iArr[0] == i;
        }
        if (i != 0) {
            return false;
        }
        if (i2 > 0) {
            add(e2, i2);
        }
        return true;
    }
}
