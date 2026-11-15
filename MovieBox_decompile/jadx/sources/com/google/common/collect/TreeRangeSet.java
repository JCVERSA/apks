package com.google.common.collect;

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

public class TreeRangeSet<C extends Comparable<?>> extends f implements Serializable {
    private transient Set<Range<C>> asDescendingSetOfRanges;
    private transient Set<Range<C>> asRanges;
    private transient u3 complement;
    final NavigableMap<Cut<C>, Range<C>> rangesByLowerBound;

    private final class Complement extends TreeRangeSet<C> {
        Complement() {
            super(new c(TreeRangeSet.this.rangesByLowerBound));
        }

        @Override
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override
        public u3 complement() {
            return TreeRangeSet.this;
        }

        @Override
        public boolean contains(C c10) {
            return !TreeRangeSet.this.contains(c10);
        }

        @Override
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }
    }

    private final class SubRangeSet extends TreeRangeSet<C> {
        private final Range<C> restriction;

        /* JADX WARN: Illegal instructions before constructor call */
        SubRangeSet(Range<C> range) {
            super(new e(Range.all(), range, TreeRangeSet.this.rangesByLowerBound));
            this.restriction = range;
        }

        @Override
        public void add(Range<C> range) {
            com.google.common.base.m.k(this.restriction.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, this.restriction);
            TreeRangeSet.this.add(range);
        }

        @Override
        public void clear() {
            TreeRangeSet.this.remove(this.restriction);
        }

        @Override
        public boolean contains(C c10) {
            return this.restriction.contains(c10) && TreeRangeSet.this.contains(c10);
        }

        @Override
        public boolean encloses(Range<C> range) {
            Range rangeRangeEnclosing;
            return (this.restriction.isEmpty() || !this.restriction.encloses(range) || (rangeRangeEnclosing = TreeRangeSet.this.rangeEnclosing(range)) == null || rangeRangeEnclosing.intersection(this.restriction).isEmpty()) ? false : true;
        }

        @Override
        public Range<C> rangeContaining(C c10) {
            Range<C> rangeRangeContaining;
            if (this.restriction.contains(c10) && (rangeRangeContaining = TreeRangeSet.this.rangeContaining(c10)) != null) {
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
        public u3 subRangeSet(Range<C> range) {
            if (range.encloses(this.restriction)) {
                return this;
            }
            return range.isConnected(this.restriction) ? new SubRangeSet(this.restriction.intersection(range)) : ImmutableRangeSet.of();
        }
    }

    final class b extends k2 implements Set {

        final Collection f29902a;

        b(Collection collection) {
            this.f29902a = collection;
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
        public Collection l() {
            return this.f29902a;
        }
    }

    private static final class c extends com.google.common.collect.e {

        private final NavigableMap f29904a;

        private final NavigableMap f29905b;

        private final Range f29906c;

        class a extends AbstractIterator {

            Cut f29907c;

            final Cut f29908d;

            final q3 f29909e;

            final c f29910f;

            a(c cVar, Cut cut, q3 q3Var) {
                this.f29908d = cut;
                this.f29909e = q3Var;
                this.f29910f = cVar;
                this.f29907c = cut;
            }

            @Override
            public Map.Entry a() {
                Range rangeCreate;
                if (this.f29910f.f29906c.upperBound.isLessThan(this.f29907c) || this.f29907c == Cut.aboveAll()) {
                    return (Map.Entry) b();
                }
                if (this.f29909e.hasNext()) {
                    Range range = (Range) this.f29909e.next();
                    rangeCreate = Range.create(this.f29907c, range.lowerBound);
                    this.f29907c = range.upperBound;
                } else {
                    rangeCreate = Range.create(this.f29907c, Cut.aboveAll());
                    this.f29907c = Cut.aboveAll();
                }
                return Maps.i(rangeCreate.lowerBound, rangeCreate);
            }
        }

        class b extends AbstractIterator {

            Cut f29911c;

            final Cut f29912d;

            final q3 f29913e;

            final c f29914f;

            b(c cVar, Cut cut, q3 q3Var) {
                this.f29912d = cut;
                this.f29913e = q3Var;
                this.f29914f = cVar;
                this.f29911c = cut;
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
                if (this.f29911c == Cut.belowAll()) {
                    return (Map.Entry) b();
                }
                if (this.f29913e.hasNext()) {
                    Range range = (Range) this.f29913e.next();
                    Range rangeCreate = Range.create(range.upperBound, this.f29911c);
                    this.f29911c = range.lowerBound;
                    if (this.f29914f.f29906c.lowerBound.isLessThan(rangeCreate.lowerBound)) {
                        return Maps.i(rangeCreate.lowerBound, rangeCreate);
                    }
                } else if (this.f29914f.f29906c.lowerBound.isLessThan(Cut.belowAll())) {
                    Range rangeCreate2 = Range.create(Cut.belowAll(), this.f29911c);
                    this.f29911c = Cut.belowAll();
                    return Maps.i(Cut.belowAll(), rangeCreate2);
                }
                return (Map.Entry) b();
            }
        }

        c(NavigableMap navigableMap) {
            this(navigableMap, Range.all());
        }

        private NavigableMap i(Range range) {
            if (!this.f29906c.isConnected(range)) {
                return ImmutableSortedMap.of();
            }
            return new c(this.f29904a, range.intersection(this.f29906c));
        }

        @Override
        Iterator a() {
            Collection collectionValues;
            Cut cutBelowAll;
            if (this.f29906c.hasLowerBound()) {
                collectionValues = this.f29905b.tailMap((Cut) this.f29906c.lowerEndpoint(), this.f29906c.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                collectionValues = this.f29905b.values();
            }
            q3 q3VarS = Iterators.s(collectionValues.iterator());
            if (this.f29906c.contains(Cut.belowAll()) && (!q3VarS.hasNext() || ((Range) q3VarS.peek()).lowerBound != Cut.belowAll())) {
                cutBelowAll = Cut.belowAll();
            } else {
                if (!q3VarS.hasNext()) {
                    return Iterators.h();
                }
                cutBelowAll = ((Range) q3VarS.next()).upperBound;
            }
            return new a(this, cutBelowAll, q3VarS);
        }

        @Override
        Iterator c() {
            Object obj;
            q3 q3VarS = Iterators.s(this.f29905b.headMap(this.f29906c.hasUpperBound() ? (Cut) this.f29906c.upperEndpoint() : Cut.aboveAll(), this.f29906c.hasUpperBound() && this.f29906c.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            if (q3VarS.hasNext()) {
                obj = ((Range) q3VarS.peek()).upperBound == Cut.aboveAll() ? ((Range) q3VarS.next()).lowerBound : (Cut) this.f29904a.higherKey(((Range) q3VarS.peek()).upperBound);
            } else {
                if (!this.f29906c.contains(Cut.belowAll()) || this.f29904a.containsKey(Cut.belowAll())) {
                    return Iterators.h();
                }
                obj = (Cut) this.f29904a.higherKey(Cut.belowAll());
            }
            return new b(this, (Cut) com.google.common.base.h.a(obj, Cut.aboveAll()), q3VarS);
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
        public NavigableMap headMap(Cut cut, boolean z10) {
            return i(Range.upTo(cut, BoundType.forBoolean(z10)));
        }

        @Override
        public NavigableMap subMap(Cut cut, boolean z10, Cut cut2, boolean z11) {
            return i(Range.range(cut, BoundType.forBoolean(z10), cut2, BoundType.forBoolean(z11)));
        }

        @Override
        public NavigableMap tailMap(Cut cut, boolean z10) {
            return i(Range.downTo(cut, BoundType.forBoolean(z10)));
        }

        @Override
        public int size() {
            return Iterators.y(a());
        }

        private c(NavigableMap navigableMap, Range range) {
            this.f29904a = navigableMap;
            this.f29905b = new d(navigableMap);
            this.f29906c = range;
        }
    }

    private static final class e extends com.google.common.collect.e {

        private final Range f29921a;

        private final Range f29922b;

        private final NavigableMap f29923c;

        private final NavigableMap f29924d;

        class a extends AbstractIterator {

            final Iterator f29925c;

            final Cut f29926d;

            final e f29927e;

            a(e eVar, Iterator it, Cut cut) {
                this.f29925c = it;
                this.f29926d = cut;
                this.f29927e = eVar;
            }

            @Override
            public Map.Entry a() {
                if (!this.f29925c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f29925c.next();
                if (this.f29926d.isLessThan(range.lowerBound)) {
                    return (Map.Entry) b();
                }
                Range rangeIntersection = range.intersection(this.f29927e.f29922b);
                return Maps.i(rangeIntersection.lowerBound, rangeIntersection);
            }
        }

        class b extends AbstractIterator {

            final Iterator f29928c;

            final e f29929d;

            b(e eVar, Iterator it) {
                this.f29928c = it;
                this.f29929d = eVar;
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
                if (!this.f29928c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f29928c.next();
                if (this.f29929d.f29922b.lowerBound.compareTo((Cut) range.upperBound) >= 0) {
                    return (Map.Entry) b();
                }
                Range rangeIntersection = range.intersection(this.f29929d.f29922b);
                return this.f29929d.f29921a.contains(rangeIntersection.lowerBound) ? Maps.i(rangeIntersection.lowerBound, rangeIntersection) : (Map.Entry) b();
            }
        }

        private NavigableMap j(Range range) {
            return !range.isConnected(this.f29921a) ? ImmutableSortedMap.of() : new e(this.f29921a.intersection(range), this.f29922b, this.f29923c);
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
        Iterator a() {
            Iterator it;
            if (this.f29922b.isEmpty()) {
                return Iterators.h();
            }
            if (this.f29921a.upperBound.isLessThan(this.f29922b.lowerBound)) {
                return Iterators.h();
            }
            if (this.f29921a.lowerBound.isLessThan(this.f29922b.lowerBound)) {
                it = this.f29924d.tailMap(this.f29922b.lowerBound, false).values().iterator();
            } else {
                it = this.f29923c.tailMap((Cut) this.f29921a.lowerBound.endpoint(), this.f29921a.lowerBoundType() == BoundType.CLOSED).values().iterator();
            }
            return new a(this, it, (Cut) Ordering.natural().min(this.f29921a.upperBound, Cut.belowValue(this.f29922b.upperBound)));
        }

        @Override
        Iterator c() {
            if (this.f29922b.isEmpty()) {
                return Iterators.h();
            }
            Cut cut = (Cut) Ordering.natural().min(this.f29921a.upperBound, Cut.belowValue(this.f29922b.upperBound));
            return new b(this, this.f29923c.headMap((Cut) cut.endpoint(), cut.typeAsUpperBound() == BoundType.CLOSED).descendingMap().values().iterator());
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
                    if (this.f29921a.contains(cut) && cut.compareTo((Cut) this.f29922b.lowerBound) >= 0 && cut.compareTo((Cut) this.f29922b.upperBound) < 0) {
                        if (cut.equals(this.f29922b.lowerBound)) {
                            Range range = (Range) Maps.E(this.f29923c.floorEntry(cut));
                            if (range != null && range.upperBound.compareTo((Cut) this.f29922b.lowerBound) > 0) {
                                return range.intersection(this.f29922b);
                            }
                        } else {
                            Range range2 = (Range) this.f29923c.get(cut);
                            if (range2 != null) {
                                return range2.intersection(this.f29922b);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override
        public NavigableMap headMap(Cut cut, boolean z10) {
            return j(Range.upTo(cut, BoundType.forBoolean(z10)));
        }

        @Override
        public NavigableMap subMap(Cut cut, boolean z10, Cut cut2, boolean z11) {
            return j(Range.range(cut, BoundType.forBoolean(z10), cut2, BoundType.forBoolean(z11)));
        }

        @Override
        public NavigableMap tailMap(Cut cut, boolean z10) {
            return j(Range.downTo(cut, BoundType.forBoolean(z10)));
        }

        @Override
        public int size() {
            return Iterators.y(a());
        }

        private e(Range range, Range range2, NavigableMap navigableMap) {
            this.f29921a = (Range) com.google.common.base.m.o(range);
            this.f29922b = (Range) com.google.common.base.m.o(range2);
            this.f29923c = (NavigableMap) com.google.common.base.m.o(navigableMap);
            this.f29924d = new d(navigableMap);
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    public Range<C> rangeEnclosing(Range<C> range) {
        com.google.common.base.m.o(range);
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
        com.google.common.base.m.o(range);
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
    public void addAll(u3 u3Var) {
        super.addAll(u3Var);
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
    public u3 complement() {
        u3 u3Var = this.complement;
        if (u3Var != null) {
            return u3Var;
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
        com.google.common.base.m.o(range);
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        return entryFloorEntry != null && entryFloorEntry.getValue().encloses(range);
    }

    @Override
    public boolean enclosesAll(u3 u3Var) {
        return super.enclosesAll(u3Var);
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public boolean intersects(Range<C> range) {
        com.google.common.base.m.o(range);
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
    public Range<C> rangeContaining(C c10) {
        com.google.common.base.m.o(c10);
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(Cut.belowValue(c10));
        if (entryFloorEntry == null || !entryFloorEntry.getValue().contains(c10)) {
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
        com.google.common.base.m.o(range);
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
    public void removeAll(u3 u3Var) {
        super.removeAll(u3Var);
    }

    public Range<C> span() {
        Map.Entry<Cut<C>, Range<C>> entryFirstEntry = this.rangesByLowerBound.firstEntry();
        Map.Entry<Cut<C>, Range<C>> entryLastEntry = this.rangesByLowerBound.lastEntry();
        if (entryFirstEntry == null || entryLastEntry == null) {
            throw new NoSuchElementException();
        }
        return Range.create(entryFirstEntry.getValue().lowerBound, entryLastEntry.getValue().upperBound);
    }

    public u3 subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new SubRangeSet(range);
    }

    private TreeRangeSet(NavigableMap<Cut<C>, Range<C>> navigableMap) {
        this.rangesByLowerBound = navigableMap;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(u3 u3Var) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.addAll(u3Var);
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

    static final class d extends com.google.common.collect.e {

        private final NavigableMap f29915a;

        private final Range f29916b;

        class a extends AbstractIterator {

            final Iterator f29917c;

            final d f29918d;

            a(d dVar, Iterator it) {
                this.f29917c = it;
                this.f29918d = dVar;
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
                if (!this.f29917c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f29917c.next();
                return this.f29918d.f29916b.upperBound.isLessThan(range.upperBound) ? (Map.Entry) b() : Maps.i(range.upperBound, range);
            }
        }

        class b extends AbstractIterator {

            final q3 f29919c;

            final d f29920d;

            b(d dVar, q3 q3Var) {
                this.f29919c = q3Var;
                this.f29920d = dVar;
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
                if (!this.f29919c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f29919c.next();
                return this.f29920d.f29916b.lowerBound.isLessThan(range.upperBound) ? Maps.i(range.upperBound, range) : (Map.Entry) b();
            }
        }

        d(NavigableMap navigableMap) {
            this.f29915a = navigableMap;
            this.f29916b = Range.all();
        }

        private NavigableMap i(Range range) {
            return range.isConnected(this.f29916b) ? new d(this.f29915a, range.intersection(this.f29916b)) : ImmutableSortedMap.of();
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
        Iterator a() {
            Map.Entry entryLowerEntry;
            Iterator it;
            if (this.f29916b.hasLowerBound() && (entryLowerEntry = this.f29915a.lowerEntry((Cut) this.f29916b.lowerEndpoint())) != null) {
                it = this.f29916b.lowerBound.isLessThan(((Range) entryLowerEntry.getValue()).upperBound) ? this.f29915a.tailMap((Cut) entryLowerEntry.getKey(), true).values().iterator() : this.f29915a.tailMap((Cut) this.f29916b.lowerEndpoint(), true).values().iterator();
            } else {
                it = this.f29915a.values().iterator();
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
        Iterator c() {
            q3 q3VarS = Iterators.s((this.f29916b.hasUpperBound() ? this.f29915a.headMap((Cut) this.f29916b.upperEndpoint(), false).descendingMap().values() : this.f29915a.descendingMap().values()).iterator());
            if (q3VarS.hasNext() && this.f29916b.upperBound.isLessThan(((Range) q3VarS.peek()).upperBound)) {
                q3VarS.next();
            }
            return new b(this, q3VarS);
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
                    if (this.f29916b.contains(cut) && (entryLowerEntry = this.f29915a.lowerEntry(cut)) != null && ((Range) entryLowerEntry.getValue()).upperBound.equals(cut)) {
                        return (Range) entryLowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override
        public NavigableMap headMap(Cut cut, boolean z10) {
            return i(Range.upTo(cut, BoundType.forBoolean(z10)));
        }

        @Override
        public NavigableMap subMap(Cut cut, boolean z10, Cut cut2, boolean z11) {
            return i(Range.range(cut, BoundType.forBoolean(z10), cut2, BoundType.forBoolean(z11)));
        }

        @Override
        public boolean isEmpty() {
            if (this.f29916b.equals(Range.all())) {
                return this.f29915a.isEmpty();
            }
            return !a().hasNext();
        }

        @Override
        public NavigableMap tailMap(Cut cut, boolean z10) {
            return i(Range.downTo(cut, BoundType.forBoolean(z10)));
        }

        @Override
        public int size() {
            return this.f29916b.equals(Range.all()) ? this.f29915a.size() : Iterators.y(a());
        }

        private d(NavigableMap navigableMap, Range range) {
            this.f29915a = navigableMap;
            this.f29916b = range;
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.addAll(iterable);
        return treeRangeSetCreate;
    }
}
