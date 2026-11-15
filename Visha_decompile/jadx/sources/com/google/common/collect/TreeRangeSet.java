package com.google.common.collect;

import defpackage.r3;
import defpackage.sy7;
import defpackage.u44;
import defpackage.un8;
import defpackage.xd8;
import defpackage.zq6;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;

public class TreeRangeSet<C extends Comparable<?>> extends r3 implements Serializable {
    private transient Set<Range<C>> asDescendingSetOfRanges;
    private transient Set<Range<C>> asRanges;
    private transient un8 complement;
    final NavigableMap<Cut<C>, Range<C>> rangesByLowerBound;

    public final class Complement extends TreeRangeSet<C> {
        public Complement() {
            super(new c(TreeRangeSet.this.rangesByLowerBound));
        }

        @Override
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override
        public un8 complement() {
            return TreeRangeSet.this;
        }

        @Override
        public boolean contains(C c) {
            return !TreeRangeSet.this.contains(c);
        }

        @Override
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }
    }

    public final class SubRangeSet extends TreeRangeSet<C> {
        private final Range<C> restriction;

        /* JADX WARN: Illegal instructions before constructor call */
        public SubRangeSet(Range<C> range) {
            super(new e(Range.all(), range, TreeRangeSet.this.rangesByLowerBound));
            this.restriction = range;
        }

        @Override
        public void add(Range<C> range) {
            xd8.k(this.restriction.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, this.restriction);
            TreeRangeSet.this.add(range);
        }

        @Override
        public void clear() {
            TreeRangeSet.this.remove(this.restriction);
        }

        @Override
        public boolean contains(C c) {
            return this.restriction.contains(c) && TreeRangeSet.this.contains(c);
        }

        @Override
        public boolean encloses(Range<C> range) {
            Range rangeRangeEnclosing;
            return (this.restriction.isEmpty() || !this.restriction.encloses(range) || (rangeRangeEnclosing = TreeRangeSet.this.rangeEnclosing(range)) == null || rangeRangeEnclosing.intersection(this.restriction).isEmpty()) ? false : true;
        }

        @Override
        public Range<C> rangeContaining(C c) {
            Range<C> rangeRangeContaining;
            if (this.restriction.contains(c) && (rangeRangeContaining = TreeRangeSet.this.rangeContaining(c)) != null) {
                return rangeRangeContaining.intersection(this.restriction);
            }
            return null;
        }

        @Override
        public void remove(Range<C> range) {
            if (range.isConnected(this.restriction)) {
                TreeRangeSet.this.remove(range.intersection(this.restriction));
            }
        }

        @Override
        public un8 subRangeSet(Range<C> range) {
            if (range.encloses(this.restriction)) {
                return this;
            }
            return range.isConnected(this.restriction) ? new SubRangeSet(this.restriction.intersection(range)) : ImmutableRangeSet.of();
        }
    }

    public final class b extends u44 implements Set {
        public final Collection b;

        public b(Collection collection) {
            this.b = collection;
        }

        @Override
        public boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override
        public int hashCode() {
            return Sets.d(this);
        }

        @Override
        public Collection f() {
            return this.b;
        }
    }

    public static final class c extends com.google.common.collect.c {
        public final NavigableMap b;
        public final NavigableMap c;
        public final Range d;

        public class a extends AbstractIterator {
            public Cut d;
            public final Cut e;
            public final sy7 f;
            public final c g;

            public a(c cVar, Cut cut, sy7 sy7Var) {
                this.e = cut;
                this.f = sy7Var;
                this.g = cVar;
                this.d = cut;
            }

            @Override
            public Map.Entry a() {
                Range rangeCreate;
                if (this.g.d.upperBound.isLessThan(this.d) || this.d == Cut.aboveAll()) {
                    return (Map.Entry) b();
                }
                if (this.f.hasNext()) {
                    Range range = (Range) this.f.next();
                    rangeCreate = Range.create(this.d, range.lowerBound);
                    this.d = range.upperBound;
                } else {
                    rangeCreate = Range.create(this.d, Cut.aboveAll());
                    this.d = Cut.aboveAll();
                }
                return Maps.i(rangeCreate.lowerBound, rangeCreate);
            }
        }

        public class b extends AbstractIterator {
            public Cut d;
            public final Cut e;
            public final sy7 f;
            public final c g;

            public b(c cVar, Cut cut, sy7 sy7Var) {
                this.e = cut;
                this.f = sy7Var;
                this.g = cVar;
                this.d = cut;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override
            public Map.Entry a() {
                if (this.d == Cut.belowAll()) {
                    return (Map.Entry) b();
                }
                if (this.f.hasNext()) {
                    Range range = (Range) this.f.next();
                    Range rangeCreate = Range.create(range.upperBound, this.d);
                    this.d = range.lowerBound;
                    if (this.g.d.lowerBound.isLessThan(rangeCreate.lowerBound)) {
                        return Maps.i(rangeCreate.lowerBound, rangeCreate);
                    }
                } else if (this.g.d.lowerBound.isLessThan(Cut.belowAll())) {
                    Range rangeCreate2 = Range.create(Cut.belowAll(), this.d);
                    this.d = Cut.belowAll();
                    return Maps.i(Cut.belowAll(), rangeCreate2);
                }
                return (Map.Entry) b();
            }
        }

        public c(NavigableMap navigableMap) {
            this(navigableMap, Range.all());
        }

        @Override
        public Iterator a() {
            Collection collectionValues;
            Cut cutBelowAll;
            if (this.d.hasLowerBound()) {
                collectionValues = this.c.tailMap((Cut) this.d.lowerEndpoint(), this.d.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                collectionValues = this.c.values();
            }
            sy7 sy7VarS = Iterators.s(collectionValues.iterator());
            if (this.d.contains(Cut.belowAll()) && (!sy7VarS.hasNext() || ((Range) sy7VarS.peek()).lowerBound != Cut.belowAll())) {
                cutBelowAll = Cut.belowAll();
            } else {
                if (!sy7VarS.hasNext()) {
                    return Iterators.h();
                }
                cutBelowAll = ((Range) sy7VarS.next()).upperBound;
            }
            return new a(this, cutBelowAll, sy7VarS);
        }

        @Override
        public Iterator b() {
            Object obj;
            sy7 sy7VarS = Iterators.s(this.c.headMap(this.d.hasUpperBound() ? (Cut) this.d.upperEndpoint() : Cut.aboveAll(), this.d.hasUpperBound() && this.d.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            if (sy7VarS.hasNext()) {
                obj = ((Range) sy7VarS.peek()).upperBound == Cut.aboveAll() ? ((Range) sy7VarS.next()).lowerBound : (Cut) this.b.higherKey(((Range) sy7VarS.peek()).upperBound);
            } else {
                if (!this.d.contains(Cut.belowAll()) || this.b.containsKey(Cut.belowAll())) {
                    return Iterators.h();
                }
                obj = (Cut) this.b.higherKey(Cut.belowAll());
            }
            return new b(this, (Cut) zq6.a(obj, Cut.aboveAll()), sy7VarS);
        }

        @Override
        public Comparator comparator() {
            return Ordering.natural();
        }

        @Override
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override
        public Range get(Object obj) {
            if (obj instanceof Cut) {
                try {
                    Cut cut = (Cut) obj;
                    Map.Entry entryFirstEntry = tailMap(cut, true).firstEntry();
                    if (entryFirstEntry != null && ((Cut) entryFirstEntry.getKey()).equals(cut)) {
                        return (Range) entryFirstEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override
        public NavigableMap headMap(Cut cut, boolean z) {
            return g(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        @Override
        public NavigableMap subMap(Cut cut, boolean z, Cut cut2, boolean z2) {
            return g(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        public final NavigableMap g(Range range) {
            if (!this.d.isConnected(range)) {
                return ImmutableSortedMap.of();
            }
            return new c(this.b, range.intersection(this.d));
        }

        @Override
        public NavigableMap tailMap(Cut cut, boolean z) {
            return g(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override
        public int size() {
            return Iterators.y(a());
        }

        public c(NavigableMap navigableMap, Range range) {
            this.b = navigableMap;
            this.c = new d(navigableMap);
            this.d = range;
        }
    }

    public static final class e extends com.google.common.collect.c {
        public final Range b;
        public final Range c;
        public final NavigableMap d;
        public final NavigableMap e;

        public class a extends AbstractIterator {
            public final Iterator d;
            public final Cut e;
            public final e f;

            public a(e eVar, Iterator it, Cut cut) {
                this.d = it;
                this.e = cut;
                this.f = eVar;
            }

            @Override
            public Map.Entry a() {
                if (!this.d.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.d.next();
                if (this.e.isLessThan(range.lowerBound)) {
                    return (Map.Entry) b();
                }
                Range rangeIntersection = range.intersection(this.f.c);
                return Maps.i(rangeIntersection.lowerBound, rangeIntersection);
            }
        }

        public class b extends AbstractIterator {
            public final Iterator d;
            public final e e;

            public b(e eVar, Iterator it) {
                this.d = it;
                this.e = eVar;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override
            public Map.Entry a() {
                if (!this.d.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.d.next();
                if (this.e.c.lowerBound.compareTo((Cut) range.upperBound) >= 0) {
                    return (Map.Entry) b();
                }
                Range rangeIntersection = range.intersection(this.e.c);
                return this.e.b.contains(rangeIntersection.lowerBound) ? Maps.i(rangeIntersection.lowerBound, rangeIntersection) : (Map.Entry) b();
            }
        }

        private NavigableMap h(Range range) {
            return !range.isConnected(this.b) ? ImmutableSortedMap.of() : new e(this.b.intersection(range), this.c, this.d);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public Iterator a() {
            Iterator it;
            if (!this.c.isEmpty() && !this.b.upperBound.isLessThan(this.c.lowerBound)) {
                if (this.b.lowerBound.isLessThan(this.c.lowerBound)) {
                    it = this.e.tailMap(this.c.lowerBound, false).values().iterator();
                } else {
                    it = this.d.tailMap((Cut) this.b.lowerBound.endpoint(), this.b.lowerBoundType() == BoundType.CLOSED).values().iterator();
                }
                return new a(this, it, (Cut) Ordering.natural().min(this.b.upperBound, Cut.belowValue(this.c.upperBound)));
            }
            return Iterators.h();
        }

        @Override
        public Iterator b() {
            if (this.c.isEmpty()) {
                return Iterators.h();
            }
            Cut cut = (Cut) Ordering.natural().min(this.b.upperBound, Cut.belowValue(this.c.upperBound));
            return new b(this, this.d.headMap((Cut) cut.endpoint(), cut.typeAsUpperBound() == BoundType.CLOSED).descendingMap().values().iterator());
        }

        @Override
        public Comparator comparator() {
            return Ordering.natural();
        }

        @Override
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public Range get(Object obj) {
            if (obj instanceof Cut) {
                try {
                    Cut cut = (Cut) obj;
                    if (this.b.contains(cut) && cut.compareTo((Cut) this.c.lowerBound) >= 0 && cut.compareTo((Cut) this.c.upperBound) < 0) {
                        if (cut.equals(this.c.lowerBound)) {
                            Range range = (Range) Maps.E(this.d.floorEntry(cut));
                            if (range != null && range.upperBound.compareTo((Cut) this.c.lowerBound) > 0) {
                                return range.intersection(this.c);
                            }
                        } else {
                            Range range2 = (Range) this.d.get(cut);
                            if (range2 != null) {
                                return range2.intersection(this.c);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override
        public NavigableMap headMap(Cut cut, boolean z) {
            return h(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        @Override
        public NavigableMap subMap(Cut cut, boolean z, Cut cut2, boolean z2) {
            return h(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        @Override
        public NavigableMap tailMap(Cut cut, boolean z) {
            return h(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override
        public int size() {
            return Iterators.y(a());
        }

        public e(Range range, Range range2, NavigableMap navigableMap) {
            this.b = (Range) xd8.o(range);
            this.c = (Range) xd8.o(range2);
            this.d = (NavigableMap) xd8.o(navigableMap);
            this.e = new d(navigableMap);
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    public Range<C> rangeEnclosing(Range<C> range) {
        xd8.o(range);
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        if (entryFloorEntry == null || !entryFloorEntry.getValue().encloses(range)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    private void replaceRangeWithSameLowerBound(Range<C> range) {
        if (range.isEmpty()) {
            this.rangesByLowerBound.remove(range.lowerBound);
        } else {
            this.rangesByLowerBound.put(range.lowerBound, range);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override
    public void add(Range<C> range) {
        xd8.o(range);
        if (range.isEmpty()) {
            return;
        }
        Cut<C> cut = range.lowerBound;
        Cut<C> cut2 = range.upperBound;
        Map.Entry<Cut<C>, Range<C>> entryLowerEntry = this.rangesByLowerBound.lowerEntry(cut);
        if (entryLowerEntry != null) {
            Range<C> value = entryLowerEntry.getValue();
            if (value.upperBound.compareTo((Cut) cut) >= 0) {
                if (value.upperBound.compareTo((Cut) cut2) >= 0) {
                    cut2 = value.upperBound;
                }
                cut = value.lowerBound;
            }
        }
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(cut2);
        if (entryFloorEntry != null) {
            Range<C> value2 = entryFloorEntry.getValue();
            if (value2.upperBound.compareTo((Cut) cut2) >= 0) {
                cut2 = value2.upperBound;
            }
        }
        this.rangesByLowerBound.subMap(cut, cut2).clear();
        replaceRangeWithSameLowerBound(Range.create(cut, cut2));
    }

    @Override
    public void addAll(un8 un8Var) {
        super.addAll(un8Var);
    }

    public Set<Range<C>> asDescendingSetOfRanges() {
        Set<Range<C>> set = this.asDescendingSetOfRanges;
        if (set != null) {
            return set;
        }
        b bVar = new b(this.rangesByLowerBound.descendingMap().values());
        this.asDescendingSetOfRanges = bVar;
        return bVar;
    }

    @Override
    public Set<Range<C>> asRanges() {
        Set<Range<C>> set = this.asRanges;
        if (set != null) {
            return set;
        }
        b bVar = new b(this.rangesByLowerBound.values());
        this.asRanges = bVar;
        return bVar;
    }

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public un8 complement() {
        un8 un8Var = this.complement;
        if (un8Var != null) {
            return un8Var;
        }
        Complement complement = new Complement();
        this.complement = complement;
        return complement;
    }

    @Override
    public boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override
    public boolean encloses(Range<C> range) {
        xd8.o(range);
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        return entryFloorEntry != null && entryFloorEntry.getValue().encloses(range);
    }

    @Override
    public boolean enclosesAll(un8 un8Var) {
        return super.enclosesAll(un8Var);
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public boolean intersects(Range<C> range) {
        xd8.o(range);
        Map.Entry<Cut<C>, Range<C>> entryCeilingEntry = this.rangesByLowerBound.ceilingEntry(range.lowerBound);
        if (entryCeilingEntry != null && entryCeilingEntry.getValue().isConnected(range) && !entryCeilingEntry.getValue().intersection(range).isEmpty()) {
            return true;
        }
        Map.Entry<Cut<C>, Range<C>> entryLowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        return (entryLowerEntry == null || !entryLowerEntry.getValue().isConnected(range) || entryLowerEntry.getValue().intersection(range).isEmpty()) ? false : true;
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Range<C> rangeContaining(C c2) {
        xd8.o(c2);
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(Cut.belowValue(c2));
        if (entryFloorEntry == null || !entryFloorEntry.getValue().contains(c2)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void remove(Range<C> range) {
        xd8.o(range);
        if (range.isEmpty()) {
            return;
        }
        Map.Entry<Cut<C>, Range<C>> entryLowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        if (entryLowerEntry != null) {
            Range<C> value = entryLowerEntry.getValue();
            if (value.upperBound.compareTo((Cut) range.lowerBound) >= 0) {
                if (range.hasUpperBound() && value.upperBound.compareTo((Cut) range.upperBound) >= 0) {
                    replaceRangeWithSameLowerBound(Range.create(range.upperBound, value.upperBound));
                }
                replaceRangeWithSameLowerBound(Range.create(value.lowerBound, range.lowerBound));
            }
        }
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(range.upperBound);
        if (entryFloorEntry != null) {
            Range<C> value2 = entryFloorEntry.getValue();
            if (range.hasUpperBound() && value2.upperBound.compareTo((Cut) range.upperBound) >= 0) {
                replaceRangeWithSameLowerBound(Range.create(range.upperBound, value2.upperBound));
            }
        }
        this.rangesByLowerBound.subMap(range.lowerBound, range.upperBound).clear();
    }

    @Override
    public void removeAll(un8 un8Var) {
        super.removeAll(un8Var);
    }

    public Range<C> span() {
        Map.Entry<Cut<C>, Range<C>> entryFirstEntry = this.rangesByLowerBound.firstEntry();
        Map.Entry<Cut<C>, Range<C>> entryLastEntry = this.rangesByLowerBound.lastEntry();
        if (entryFirstEntry == null || entryLastEntry == null) {
            throw new NoSuchElementException();
        }
        return Range.create(entryFirstEntry.getValue().lowerBound, entryLastEntry.getValue().upperBound);
    }

    public un8 subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new SubRangeSet(range);
    }

    private TreeRangeSet(NavigableMap<Cut<C>, Range<C>> navigableMap) {
        this.rangesByLowerBound = navigableMap;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(un8 un8Var) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.addAll(un8Var);
        return treeRangeSetCreate;
    }

    @Override
    public void addAll(Iterable iterable) {
        super.addAll(iterable);
    }

    @Override
    public boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override
    public void removeAll(Iterable iterable) {
        super.removeAll(iterable);
    }

    public static final class d extends com.google.common.collect.c {
        public final NavigableMap b;
        public final Range c;

        public class a extends AbstractIterator {
            public final Iterator d;
            public final d e;

            public a(d dVar, Iterator it) {
                this.d = it;
                this.e = dVar;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override
            public Map.Entry a() {
                if (!this.d.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.d.next();
                return this.e.c.upperBound.isLessThan(range.upperBound) ? (Map.Entry) b() : Maps.i(range.upperBound, range);
            }
        }

        public class b extends AbstractIterator {
            public final sy7 d;
            public final d e;

            public b(d dVar, sy7 sy7Var) {
                this.d = sy7Var;
                this.e = dVar;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override
            public Map.Entry a() {
                if (!this.d.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.d.next();
                return this.e.c.lowerBound.isLessThan(range.upperBound) ? Maps.i(range.upperBound, range) : (Map.Entry) b();
            }
        }

        public d(NavigableMap navigableMap) {
            this.b = navigableMap;
            this.c = Range.all();
        }

        private NavigableMap g(Range range) {
            return range.isConnected(this.c) ? new d(this.b, range.intersection(this.c)) : ImmutableSortedMap.of();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public Iterator a() {
            Map.Entry entryLowerEntry;
            Iterator it;
            if (this.c.hasLowerBound() && (entryLowerEntry = this.b.lowerEntry((Cut) this.c.lowerEndpoint())) != null) {
                it = this.c.lowerBound.isLessThan(((Range) entryLowerEntry.getValue()).upperBound) ? this.b.tailMap((Cut) entryLowerEntry.getKey(), true).values().iterator() : this.b.tailMap((Cut) this.c.lowerEndpoint(), true).values().iterator();
            } else {
                it = this.b.values().iterator();
            }
            return new a(this, it);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public Iterator b() {
            sy7 sy7VarS = Iterators.s((this.c.hasUpperBound() ? this.b.headMap((Cut) this.c.upperEndpoint(), false).descendingMap().values() : this.b.descendingMap().values()).iterator());
            if (sy7VarS.hasNext() && this.c.upperBound.isLessThan(((Range) sy7VarS.peek()).upperBound)) {
                sy7VarS.next();
            }
            return new b(this, sy7VarS);
        }

        @Override
        public Comparator comparator() {
            return Ordering.natural();
        }

        @Override
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override
        public Range get(Object obj) {
            Map.Entry entryLowerEntry;
            if (obj instanceof Cut) {
                try {
                    Cut cut = (Cut) obj;
                    if (this.c.contains(cut) && (entryLowerEntry = this.b.lowerEntry(cut)) != null && ((Range) entryLowerEntry.getValue()).upperBound.equals(cut)) {
                        return (Range) entryLowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override
        public NavigableMap headMap(Cut cut, boolean z) {
            return g(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        @Override
        public NavigableMap subMap(Cut cut, boolean z, Cut cut2, boolean z2) {
            return g(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        @Override
        public NavigableMap tailMap(Cut cut, boolean z) {
            return g(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override
        public boolean isEmpty() {
            if (this.c.equals(Range.all())) {
                return this.b.isEmpty();
            }
            return !a().hasNext();
        }

        @Override
        public int size() {
            return this.c.equals(Range.all()) ? this.b.size() : Iterators.y(a());
        }

        public d(NavigableMap navigableMap, Range range) {
            this.b = navigableMap;
            this.c = range;
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.addAll(iterable);
        return treeRangeSetCreate;
    }
}
