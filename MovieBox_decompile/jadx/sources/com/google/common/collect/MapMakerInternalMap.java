package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.MapMakerInternalMap.Segment;
import com.google.common.collect.MapMakerInternalMap.h;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

class MapMakerInternalMap<K, V, E extends h, S extends Segment<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    static final int CONTAINS_VALUE_RETRIES = 3;
    static final int DRAIN_MAX = 16;
    static final int DRAIN_THRESHOLD = 63;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_SEGMENTS = 65536;
    static final u UNSET_WEAK_VALUE_REFERENCE = new a();
    private static final long serialVersionUID = 5;
    final int concurrencyLevel;
    final transient i entryHelper;
    transient Set<Map.Entry<K, V>> entrySet;
    final Equivalence keyEquivalence;
    transient Set<K> keySet;
    final transient int segmentMask;
    final transient int segmentShift;
    final transient Segment<K, V, E, S>[] segments;
    transient Collection<V> values;

    static final class CleanupMapTask implements Runnable {
        final WeakReference<MapMakerInternalMap<?, ?, ?, ?>> mapReference;

        public CleanupMapTask(MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap) {
            this.mapReference = new WeakReference<>(mapMakerInternalMap);
        }

        @Override
        public void run() {
            MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap = this.mapReference.get();
            if (mapMakerInternalMap == null) {
                throw new CancellationException();
            }
            for (Segment<?, ?, E, S> segment : mapMakerInternalMap.segments) {
                segment.runCleanup();
            }
        }
    }

    private static final class SerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
        private static final long serialVersionUID = 3;

        SerializationProxy(Strength strength, Strength strength2, Equivalence equivalence, Equivalence equivalence2, int i10, ConcurrentMap<K, V> concurrentMap) {
            super(strength, strength2, equivalence, equivalence2, i10, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.delegate = readMapMaker(objectInputStream).i();
            readEntries(objectInputStream);
        }

        private Object readResolve() {
            return this.delegate;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }
    }

    enum Strength {
        STRONG {
            @Override
            Equivalence defaultEquivalence() {
                return Equivalence.equals();
            }
        },
        WEAK {
            @Override
            Equivalence defaultEquivalence() {
                return Equivalence.identity();
            }
        };

        abstract Equivalence defaultEquivalence();

        Strength(a aVar) {
            this();
        }
    }

    static final class StrongKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, l, StrongKeyDummyValueSegment<K>> {
        StrongKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, l, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
        }

        @Override
        public StrongKeyDummyValueSegment<K> self() {
            return this;
        }

        @Override
        public l castForTesting(h hVar) {
            return (l) hVar;
        }
    }

    static final class StrongKeyStrongValueSegment<K, V> extends Segment<K, V, m, StrongKeyStrongValueSegment<K, V>> {
        StrongKeyStrongValueSegment(MapMakerInternalMap<K, V, m, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
        }

        @Override
        public StrongKeyStrongValueSegment<K, V> self() {
            return this;
        }

        @Override
        public m castForTesting(h hVar) {
            return (m) hVar;
        }
    }

    static final class StrongKeyWeakValueSegment<K, V> extends Segment<K, V, n, StrongKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<V> queueForValues;

        StrongKeyWeakValueSegment(MapMakerInternalMap<K, V, n, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override
        public u getWeakValueReferenceForTesting(h hVar) {
            return castForTesting(hVar).a();
        }

        @Override
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForValues);
        }

        @Override
        void maybeDrainReferenceQueues() {
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override
        public u newWeakValueReferenceForTesting(h hVar, V v10) {
            return new v(this.queueForValues, v10, castForTesting(hVar));
        }

        @Override
        public StrongKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override
        public void setWeakValueReferenceForTesting(h hVar, u uVar) {
            n nVarCastForTesting = castForTesting(hVar);
            u uVar2 = nVarCastForTesting.f29741c;
            nVarCastForTesting.f29741c = uVar;
            uVar2.clear();
        }

        @Override
        public n castForTesting(h hVar) {
            return (n) hVar;
        }
    }

    static final class WeakKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, q, WeakKeyDummyValueSegment<K>> {
        private final ReferenceQueue<K> queueForKeys;

        WeakKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, q, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override
        public WeakKeyDummyValueSegment<K> self() {
            return this;
        }

        @Override
        public q castForTesting(h hVar) {
            return (q) hVar;
        }
    }

    static final class WeakKeyStrongValueSegment<K, V> extends Segment<K, V, r, WeakKeyStrongValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys;

        WeakKeyStrongValueSegment(MapMakerInternalMap<K, V, r, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override
        public WeakKeyStrongValueSegment<K, V> self() {
            return this;
        }

        @Override
        public r castForTesting(h hVar) {
            return (r) hVar;
        }
    }

    static final class WeakKeyWeakValueSegment<K, V> extends Segment<K, V, s, WeakKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys;
        private final ReferenceQueue<V> queueForValues;

        WeakKeyWeakValueSegment(MapMakerInternalMap<K, V, s, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
            this.queueForKeys = new ReferenceQueue<>();
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override
        public u getWeakValueReferenceForTesting(h hVar) {
            return castForTesting(hVar).a();
        }

        @Override
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override
        public u newWeakValueReferenceForTesting(h hVar, V v10) {
            return new v(this.queueForValues, v10, castForTesting(hVar));
        }

        @Override
        public WeakKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override
        public void setWeakValueReferenceForTesting(h hVar, u uVar) {
            s sVarCastForTesting = castForTesting(hVar);
            u uVar2 = sVarCastForTesting.f29751b;
            sVarCastForTesting.f29751b = uVar;
            uVar2.clear();
        }

        @Override
        public s castForTesting(h hVar) {
            return (s) hVar;
        }
    }

    class a implements u {
        a() {
        }

        @Override
        public h a() {
            d();
            return null;
        }

        @Override
        public u b(ReferenceQueue referenceQueue, h hVar) {
            android.support.v4.media.session.c.a(hVar);
            return c(referenceQueue, null);
        }

        public u c(ReferenceQueue referenceQueue, d dVar) {
            return this;
        }

        @Override
        public void clear() {
        }

        public d d() {
            return null;
        }

        @Override
        public Object get() {
            return null;
        }
    }

    static abstract class b implements h {

        final Object f29721a;

        final int f29722b;

        b(Object obj, int i10) {
            this.f29721a = obj;
            this.f29722b = i10;
        }

        @Override
        public final int b() {
            return this.f29722b;
        }

        @Override
        public final Object getKey() {
            return this.f29721a;
        }

        @Override
        public h k() {
            return null;
        }
    }

    static abstract class c extends WeakReference implements h {

        final int f29723a;

        c(ReferenceQueue referenceQueue, Object obj, int i10) {
            super(obj, referenceQueue);
            this.f29723a = i10;
        }

        @Override
        public final int b() {
            return this.f29723a;
        }

        @Override
        public final Object getKey() {
            return get();
        }

        @Override
        public h k() {
            return null;
        }
    }

    static final class d implements h {
    }

    final class e extends g {
        e() {
            super();
        }

        @Override
        public Map.Entry next() {
            return c();
        }
    }

    final class f extends AbstractSet {
        f() {
        }

        @Override
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = MapMakerInternalMap.this.get(key)) != null && MapMakerInternalMap.this.valueEquivalence().equivalent(entry.getValue(), obj2);
        }

        @Override
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override
        public Iterator iterator() {
            return new e();
        }

        @Override
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && MapMakerInternalMap.this.remove(key, entry.getValue());
        }

        @Override
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    abstract class g implements Iterator {

        int f29726a;

        int f29727b = -1;

        Segment f29728c;

        AtomicReferenceArray f29729d;

        h f29730e;

        w f29731f;

        w f29732g;

        g() {
            this.f29726a = MapMakerInternalMap.this.segments.length - 1;
            a();
        }

        final void a() {
            this.f29731f = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i10 = this.f29726a;
                if (i10 < 0) {
                    return;
                }
                Segment<K, V, E, S>[] segmentArr = MapMakerInternalMap.this.segments;
                this.f29726a = i10 - 1;
                Segment<K, V, E, S> segment = segmentArr[i10];
                this.f29728c = segment;
                if (segment.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f29728c.table;
                    this.f29729d = atomicReferenceArray;
                    this.f29727b = atomicReferenceArray.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        boolean b(h hVar) {
            Segment segment;
            try {
                Object key = hVar.getKey();
                Object liveValue = MapMakerInternalMap.this.getLiveValue(hVar);
                if (liveValue == null) {
                    return false;
                }
                this.f29731f = new w(key, liveValue);
                return true;
            } finally {
                this.f29728c.postReadCleanup();
            }
        }

        w c() {
            w wVar = this.f29731f;
            if (wVar == null) {
                throw new NoSuchElementException();
            }
            this.f29732g = wVar;
            a();
            return this.f29732g;
        }

        boolean d() {
            h hVar = this.f29730e;
            if (hVar == null) {
                return false;
            }
            while (true) {
                this.f29730e = hVar.k();
                h hVar2 = this.f29730e;
                if (hVar2 == null) {
                    return false;
                }
                if (b(hVar2)) {
                    return true;
                }
                hVar = this.f29730e;
            }
        }

        boolean e() {
            while (true) {
                int i10 = this.f29727b;
                if (i10 < 0) {
                    return false;
                }
                AtomicReferenceArray atomicReferenceArray = this.f29729d;
                this.f29727b = i10 - 1;
                h hVar = (h) atomicReferenceArray.get(i10);
                this.f29730e = hVar;
                if (hVar != null && (b(hVar) || d())) {
                    return true;
                }
            }
        }

        @Override
        public boolean hasNext() {
            return this.f29731f != null;
        }

        @Override
        public void remove() {
            e2.e(this.f29732g != null);
            MapMakerInternalMap.this.remove(this.f29732g.getKey());
            this.f29732g = null;
        }
    }

    interface h {
        int b();

        Object getKey();

        Object getValue();

        h k();
    }

    interface i {
        Segment a(MapMakerInternalMap mapMakerInternalMap, int i10);

        h b(Segment segment, h hVar, h hVar2);

        Strength c();

        void d(Segment segment, h hVar, Object obj);

        h e(Segment segment, Object obj, int i10, h hVar);

        Strength f();
    }

    final class j extends g {
        j() {
            super();
        }

        @Override
        public Object next() {
            return c().getKey();
        }
    }

    final class k extends AbstractSet {
        k() {
        }

        @Override
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override
        public Iterator iterator() {
            return new j();
        }

        @Override
        public boolean remove(Object obj) {
            return MapMakerInternalMap.this.remove(obj) != null;
        }

        @Override
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    static class l extends b implements h {

        static final class a implements i {

            private static final a f29736a = new a();

            a() {
            }

            static a h() {
                return f29736a;
            }

            @Override
            public Strength c() {
                return Strength.STRONG;
            }

            @Override
            public Strength f() {
                return Strength.STRONG;
            }

            @Override
            public l b(StrongKeyDummyValueSegment strongKeyDummyValueSegment, l lVar, l lVar2) {
                return e(strongKeyDummyValueSegment, lVar.f29721a, lVar.f29722b, lVar2);
            }

            @Override
            public l e(StrongKeyDummyValueSegment strongKeyDummyValueSegment, Object obj, int i10, l lVar) {
                return lVar == null ? new l(obj, i10, null) : new b(obj, i10, lVar);
            }

            @Override
            public StrongKeyDummyValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i10) {
                return new StrongKeyDummyValueSegment(mapMakerInternalMap, i10);
            }

            @Override
            public void d(StrongKeyDummyValueSegment strongKeyDummyValueSegment, l lVar, MapMaker.Dummy dummy) {
            }
        }

        private static final class b extends l {

            private final l f29737c;

            b(Object obj, int i10, l lVar) {
                super(obj, i10, null);
                this.f29737c = lVar;
            }

            @Override
            public l k() {
                return this.f29737c;
            }

            @Override
            public Object getValue() {
                return super.getValue();
            }
        }

        l(Object obj, int i10, a aVar) {
            this(obj, i10);
        }

        @Override
        public final MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }

        private l(Object obj, int i10) {
            super(obj, i10);
        }
    }

    static class m extends b implements h {

        private volatile Object f29738c;

        static final class a implements i {

            private static final a f29739a = new a();

            a() {
            }

            static a h() {
                return f29739a;
            }

            @Override
            public Strength c() {
                return Strength.STRONG;
            }

            @Override
            public Strength f() {
                return Strength.STRONG;
            }

            @Override
            public m b(StrongKeyStrongValueSegment strongKeyStrongValueSegment, m mVar, m mVar2) {
                m mVarE = e(strongKeyStrongValueSegment, mVar.f29721a, mVar.f29722b, mVar2);
                mVarE.f29738c = mVar.f29738c;
                return mVarE;
            }

            @Override
            public m e(StrongKeyStrongValueSegment strongKeyStrongValueSegment, Object obj, int i10, m mVar) {
                return mVar == null ? new m(obj, i10, null) : new b(obj, i10, mVar);
            }

            @Override
            public StrongKeyStrongValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i10) {
                return new StrongKeyStrongValueSegment(mapMakerInternalMap, i10);
            }

            @Override
            public void d(StrongKeyStrongValueSegment strongKeyStrongValueSegment, m mVar, Object obj) {
                mVar.f29738c = obj;
            }
        }

        private static final class b extends m {

            private final m f29740d;

            b(Object obj, int i10, m mVar) {
                super(obj, i10, null);
                this.f29740d = mVar;
            }

            @Override
            public m k() {
                return this.f29740d;
            }
        }

        m(Object obj, int i10, a aVar) {
            this(obj, i10);
        }

        @Override
        public final Object getValue() {
            return this.f29738c;
        }

        private m(Object obj, int i10) {
            super(obj, i10);
            this.f29738c = null;
        }
    }

    static class n extends b implements t {

        private volatile u f29741c;

        static final class a implements i {

            private static final a f29742a = new a();

            a() {
            }

            static a h() {
                return f29742a;
            }

            @Override
            public Strength c() {
                return Strength.WEAK;
            }

            @Override
            public Strength f() {
                return Strength.STRONG;
            }

            @Override
            public n b(StrongKeyWeakValueSegment strongKeyWeakValueSegment, n nVar, n nVar2) {
                if (Segment.isCollected(nVar)) {
                    return null;
                }
                n nVarE = e(strongKeyWeakValueSegment, nVar.f29721a, nVar.f29722b, nVar2);
                nVarE.f29741c = nVar.f29741c.b(strongKeyWeakValueSegment.queueForValues, nVarE);
                return nVarE;
            }

            @Override
            public n e(StrongKeyWeakValueSegment strongKeyWeakValueSegment, Object obj, int i10, n nVar) {
                return nVar == null ? new n(obj, i10, null) : new b(obj, i10, nVar);
            }

            @Override
            public StrongKeyWeakValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i10) {
                return new StrongKeyWeakValueSegment(mapMakerInternalMap, i10);
            }

            @Override
            public void d(StrongKeyWeakValueSegment strongKeyWeakValueSegment, n nVar, Object obj) {
                u uVar = nVar.f29741c;
                nVar.f29741c = new v(strongKeyWeakValueSegment.queueForValues, obj, nVar);
                uVar.clear();
            }
        }

        private static final class b extends n {

            private final n f29743d;

            b(Object obj, int i10, n nVar) {
                super(obj, i10, null);
                this.f29743d = nVar;
            }

            @Override
            public n k() {
                return this.f29743d;
            }
        }

        n(Object obj, int i10, a aVar) {
            this(obj, i10);
        }

        @Override
        public final u a() {
            return this.f29741c;
        }

        @Override
        public final Object getValue() {
            return this.f29741c.get();
        }

        private n(Object obj, int i10) {
            super(obj, i10);
            this.f29741c = MapMakerInternalMap.unsetWeakValueReference();
        }
    }

    final class o extends g {
        o() {
            super();
        }

        @Override
        public Object next() {
            return c().getValue();
        }
    }

    final class p extends AbstractCollection {
        p() {
        }

        @Override
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override
        public Iterator iterator() {
            return new o();
        }

        @Override
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    static class q extends c implements h {

        static final class a implements i {

            private static final a f29746a = new a();

            a() {
            }

            static a h() {
                return f29746a;
            }

            @Override
            public Strength c() {
                return Strength.STRONG;
            }

            @Override
            public Strength f() {
                return Strength.WEAK;
            }

            @Override
            public q b(WeakKeyDummyValueSegment weakKeyDummyValueSegment, q qVar, q qVar2) {
                Object key = qVar.getKey();
                if (key == null) {
                    return null;
                }
                return e(weakKeyDummyValueSegment, key, qVar.f29723a, qVar2);
            }

            @Override
            public q e(WeakKeyDummyValueSegment weakKeyDummyValueSegment, Object obj, int i10, q qVar) {
                return qVar == null ? new q(weakKeyDummyValueSegment.queueForKeys, obj, i10, null) : new b(weakKeyDummyValueSegment.queueForKeys, obj, i10, qVar, null);
            }

            @Override
            public WeakKeyDummyValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i10) {
                return new WeakKeyDummyValueSegment(mapMakerInternalMap, i10);
            }

            @Override
            public void d(WeakKeyDummyValueSegment weakKeyDummyValueSegment, q qVar, MapMaker.Dummy dummy) {
            }
        }

        private static final class b extends q {

            private final q f29747b;

            b(ReferenceQueue referenceQueue, Object obj, int i10, q qVar, a aVar) {
                this(referenceQueue, obj, i10, qVar);
            }

            @Override
            public q k() {
                return this.f29747b;
            }

            @Override
            public Object getValue() {
                return super.getValue();
            }

            private b(ReferenceQueue referenceQueue, Object obj, int i10, q qVar) {
                super(referenceQueue, obj, i10, null);
                this.f29747b = qVar;
            }
        }

        q(ReferenceQueue referenceQueue, Object obj, int i10, a aVar) {
            this(referenceQueue, obj, i10);
        }

        @Override
        public final MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }

        private q(ReferenceQueue referenceQueue, Object obj, int i10) {
            super(referenceQueue, obj, i10);
        }
    }

    static class r extends c implements h {

        private volatile Object f29748b;

        static final class a implements i {

            private static final a f29749a = new a();

            a() {
            }

            static a h() {
                return f29749a;
            }

            @Override
            public Strength c() {
                return Strength.STRONG;
            }

            @Override
            public Strength f() {
                return Strength.WEAK;
            }

            @Override
            public r b(WeakKeyStrongValueSegment weakKeyStrongValueSegment, r rVar, r rVar2) {
                Object key = rVar.getKey();
                if (key == null) {
                    return null;
                }
                r rVarE = e(weakKeyStrongValueSegment, key, rVar.f29723a, rVar2);
                rVarE.f29748b = rVar.f29748b;
                return rVarE;
            }

            @Override
            public r e(WeakKeyStrongValueSegment weakKeyStrongValueSegment, Object obj, int i10, r rVar) {
                return rVar == null ? new r(weakKeyStrongValueSegment.queueForKeys, obj, i10, null) : new b(weakKeyStrongValueSegment.queueForKeys, obj, i10, rVar, null);
            }

            @Override
            public WeakKeyStrongValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i10) {
                return new WeakKeyStrongValueSegment(mapMakerInternalMap, i10);
            }

            @Override
            public void d(WeakKeyStrongValueSegment weakKeyStrongValueSegment, r rVar, Object obj) {
                rVar.f29748b = obj;
            }
        }

        private static final class b extends r {

            private final r f29750c;

            b(ReferenceQueue referenceQueue, Object obj, int i10, r rVar, a aVar) {
                this(referenceQueue, obj, i10, rVar);
            }

            @Override
            public r k() {
                return this.f29750c;
            }

            private b(ReferenceQueue referenceQueue, Object obj, int i10, r rVar) {
                super(referenceQueue, obj, i10, null);
                this.f29750c = rVar;
            }
        }

        r(ReferenceQueue referenceQueue, Object obj, int i10, a aVar) {
            this(referenceQueue, obj, i10);
        }

        @Override
        public final Object getValue() {
            return this.f29748b;
        }

        private r(ReferenceQueue referenceQueue, Object obj, int i10) {
            super(referenceQueue, obj, i10);
            this.f29748b = null;
        }
    }

    static class s extends c implements t {

        private volatile u f29751b;

        static final class a implements i {

            private static final a f29752a = new a();

            a() {
            }

            static a h() {
                return f29752a;
            }

            @Override
            public Strength c() {
                return Strength.WEAK;
            }

            @Override
            public Strength f() {
                return Strength.WEAK;
            }

            @Override
            public s b(WeakKeyWeakValueSegment weakKeyWeakValueSegment, s sVar, s sVar2) {
                Object key = sVar.getKey();
                if (key == null || Segment.isCollected(sVar)) {
                    return null;
                }
                s sVarE = e(weakKeyWeakValueSegment, key, sVar.f29723a, sVar2);
                sVarE.f29751b = sVar.f29751b.b(weakKeyWeakValueSegment.queueForValues, sVarE);
                return sVarE;
            }

            @Override
            public s e(WeakKeyWeakValueSegment weakKeyWeakValueSegment, Object obj, int i10, s sVar) {
                return sVar == null ? new s(weakKeyWeakValueSegment.queueForKeys, obj, i10) : new b(weakKeyWeakValueSegment.queueForKeys, obj, i10, sVar);
            }

            @Override
            public WeakKeyWeakValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i10) {
                return new WeakKeyWeakValueSegment(mapMakerInternalMap, i10);
            }

            @Override
            public void d(WeakKeyWeakValueSegment weakKeyWeakValueSegment, s sVar, Object obj) {
                u uVar = sVar.f29751b;
                sVar.f29751b = new v(weakKeyWeakValueSegment.queueForValues, obj, sVar);
                uVar.clear();
            }
        }

        private static final class b extends s {

            private final s f29753c;

            b(ReferenceQueue referenceQueue, Object obj, int i10, s sVar) {
                super(referenceQueue, obj, i10);
                this.f29753c = sVar;
            }

            @Override
            public s k() {
                return this.f29753c;
            }
        }

        s(ReferenceQueue referenceQueue, Object obj, int i10) {
            super(referenceQueue, obj, i10);
            this.f29751b = MapMakerInternalMap.unsetWeakValueReference();
        }

        @Override
        public final u a() {
            return this.f29751b;
        }

        @Override
        public final Object getValue() {
            return this.f29751b.get();
        }
    }

    interface t extends h {
        u a();
    }

    interface u {
        h a();

        u b(ReferenceQueue referenceQueue, h hVar);

        void clear();

        Object get();
    }

    static final class v extends WeakReference implements u {

        final h f29754a;

        v(ReferenceQueue referenceQueue, Object obj, h hVar) {
            super(obj, referenceQueue);
            this.f29754a = hVar;
        }

        @Override
        public h a() {
            return this.f29754a;
        }

        @Override
        public u b(ReferenceQueue referenceQueue, h hVar) {
            return new v(referenceQueue, get(), hVar);
        }
    }

    final class w extends com.google.common.collect.b {

        final Object f29755a;

        Object f29756b;

        w(Object obj, Object obj2) {
            this.f29755a = obj;
            this.f29756b = obj2;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f29755a.equals(entry.getKey()) && this.f29756b.equals(entry.getValue());
        }

        @Override
        public Object getKey() {
            return this.f29755a;
        }

        @Override
        public Object getValue() {
            return this.f29756b;
        }

        @Override
        public int hashCode() {
            return this.f29755a.hashCode() ^ this.f29756b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object setValue(Object obj) {
            Object objPut = MapMakerInternalMap.this.put(this.f29755a, obj);
            this.f29756b = obj;
            return objPut;
        }
    }

    private MapMakerInternalMap(MapMaker mapMaker, i iVar) {
        this.concurrencyLevel = Math.min(mapMaker.b(), 65536);
        this.keyEquivalence = mapMaker.d();
        this.entryHelper = iVar;
        int iMin = Math.min(mapMaker.c(), 1073741824);
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        int i13 = 1;
        while (i13 < this.concurrencyLevel) {
            i12++;
            i13 <<= 1;
        }
        this.segmentShift = 32 - i12;
        this.segmentMask = i13 - 1;
        this.segments = newSegmentArray(i13);
        int i14 = iMin / i13;
        while (i11 < (i13 * i14 < iMin ? i14 + 1 : i14)) {
            i11 <<= 1;
        }
        while (true) {
            Segment<K, V, E, S>[] segmentArr = this.segments;
            if (i10 >= segmentArr.length) {
                return;
            }
            segmentArr[i10] = createSegment(i11);
            i10++;
        }
    }

    static <K, V> MapMakerInternalMap<K, V, ? extends h, ?> create(MapMaker mapMaker) {
        Strength strengthE = mapMaker.e();
        Strength strength = Strength.STRONG;
        if (strengthE == strength && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, m.a.h());
        }
        if (mapMaker.e() == strength && mapMaker.f() == Strength.WEAK) {
            return new MapMakerInternalMap<>(mapMaker, n.a.h());
        }
        Strength strengthE2 = mapMaker.e();
        Strength strength2 = Strength.WEAK;
        if (strengthE2 == strength2 && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, r.a.h());
        }
        if (mapMaker.e() == strength2 && mapMaker.f() == strength2) {
            return new MapMakerInternalMap<>(mapMaker, s.a.h());
        }
        throw new AssertionError();
    }

    static <K> MapMakerInternalMap<K, MapMaker.Dummy, ? extends h, ?> createWithDummyValues(MapMaker mapMaker) {
        Strength strengthE = mapMaker.e();
        Strength strength = Strength.STRONG;
        if (strengthE == strength && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, l.a.h());
        }
        Strength strengthE2 = mapMaker.e();
        Strength strength2 = Strength.WEAK;
        if (strengthE2 == strength2 && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, q.a.h());
        }
        if (mapMaker.f() == strength2) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializationProxy");
    }

    static int rehash(int i10) {
        int i11 = i10 + ((i10 << 15) ^ (-12931));
        int i12 = i11 ^ (i11 >>> 10);
        int i13 = i12 + (i12 << 3);
        int i14 = i13 ^ (i13 >>> 6);
        int i15 = i14 + (i14 << 2) + (i14 << 14);
        return i15 ^ (i15 >>> 16);
    }

    static <K, V, E extends h> u unsetWeakValueReference() {
        return UNSET_WEAK_VALUE_REFERENCE;
    }

    @Override
    public void clear() {
        for (Segment<K, V, E, S> segment : this.segments) {
            segment.clear();
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).containsKey(obj, iHash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [int] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [int] */
    /* JADX WARN: Type inference failed for: r13v3 */
    @Override
    public boolean containsValue(Object obj) {
        boolean z10 = false;
        if (obj == null) {
            return false;
        }
        Segment<K, V, E, S>[] segmentArr = this.segments;
        long j10 = -1;
        int i10 = 0;
        while (i10 < 3) {
            int length = segmentArr.length;
            long j11 = 0;
            for (?? r10 = z10; r10 < length; r10++) {
                Segment<K, V, E, S> segment = segmentArr[r10];
                int i11 = segment.count;
                AtomicReferenceArray<E> atomicReferenceArray = segment.table;
                for (?? r13 = z10; r13 < atomicReferenceArray.length(); r13++) {
                    for (E eK = atomicReferenceArray.get(r13); eK != null; eK = eK.k()) {
                        V liveValue = segment.getLiveValue(eK);
                        if (liveValue != null && valueEquivalence().equivalent(obj, liveValue)) {
                            return true;
                        }
                    }
                }
                j11 += (long) segment.modCount;
                z10 = false;
            }
            if (j11 == j10) {
                return false;
            }
            i10++;
            j10 = j11;
            z10 = false;
        }
        return z10;
    }

    E copyEntry(E e10, E e11) {
        return (E) segmentFor(e10.b()).copyEntry(e10, e11);
    }

    Segment<K, V, E, S> createSegment(int i10) {
        return this.entryHelper.a(this, i10);
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        f fVar = new f();
        this.entrySet = fVar;
        return fVar;
    }

    @Override
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).get(obj, iHash);
    }

    E getEntry(Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return (E) segmentFor(iHash).getEntry(obj, iHash);
    }

    V getLiveValue(E e10) {
        if (e10.getKey() == null) {
            return null;
        }
        return (V) e10.getValue();
    }

    int hash(Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    @Override
    public boolean isEmpty() {
        Segment<K, V, E, S>[] segmentArr = this.segments;
        long j10 = 0;
        for (int i10 = 0; i10 < segmentArr.length; i10++) {
            if (segmentArr[i10].count != 0) {
                return false;
            }
            j10 += (long) segmentArr[i10].modCount;
        }
        if (j10 == 0) {
            return true;
        }
        for (int i11 = 0; i11 < segmentArr.length; i11++) {
            if (segmentArr[i11].count != 0) {
                return false;
            }
            j10 -= (long) segmentArr[i11].modCount;
        }
        return j10 == 0;
    }

    boolean isLiveForTesting(h hVar) {
        return segmentFor(hVar.b()).getLiveValueForTesting(hVar) != null;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        k kVar = new k();
        this.keySet = kVar;
        return kVar;
    }

    Strength keyStrength() {
        return this.entryHelper.f();
    }

    final Segment<K, V, E, S>[] newSegmentArray(int i10) {
        return new Segment[i10];
    }

    @Override
    public V put(K k10, V v10) {
        com.google.common.base.m.o(k10);
        com.google.common.base.m.o(v10);
        int iHash = hash(k10);
        return segmentFor(iHash).put(k10, iHash, v10, false);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public V putIfAbsent(K k10, V v10) {
        com.google.common.base.m.o(k10);
        com.google.common.base.m.o(v10);
        int iHash = hash(k10);
        return segmentFor(iHash).put(k10, iHash, v10, true);
    }

    void reclaimKey(E e10) {
        int iB = e10.b();
        segmentFor(iB).reclaimKey(e10, iB);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void reclaimValue(u uVar) {
        h hVarA = uVar.a();
        int iB = hVarA.b();
        segmentFor(iB).reclaimValue(hVarA.getKey(), iB, uVar);
    }

    @Override
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).remove(obj, iHash);
    }

    @Override
    public boolean replace(K k10, V v10, V v11) {
        com.google.common.base.m.o(k10);
        com.google.common.base.m.o(v11);
        if (v10 == null) {
            return false;
        }
        int iHash = hash(k10);
        return segmentFor(iHash).replace(k10, iHash, v10, v11);
    }

    Segment<K, V, E, S> segmentFor(int i10) {
        return this.segments[(i10 >>> this.segmentShift) & this.segmentMask];
    }

    @Override
    public int size() {
        long j10 = 0;
        for (Segment<K, V, E, S> segment : this.segments) {
            j10 += (long) segment.count;
        }
        return Ints.n(j10);
    }

    Equivalence valueEquivalence() {
        return this.entryHelper.c().defaultEquivalence();
    }

    Strength valueStrength() {
        return this.entryHelper.c();
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        p pVar = new p();
        this.values = pVar;
        return pVar;
    }

    Object writeReplace() {
        return new SerializationProxy(this.entryHelper.f(), this.entryHelper.c(), this.keyEquivalence, this.entryHelper.c().defaultEquivalence(), this.concurrencyLevel, this);
    }

    static abstract class AbstractSerializationProxy<K, V> extends l2 implements Serializable {
        private static final long serialVersionUID = 3;
        final int concurrencyLevel;
        transient ConcurrentMap<K, V> delegate;
        final Equivalence keyEquivalence;
        final Strength keyStrength;
        final Equivalence valueEquivalence;
        final Strength valueStrength;

        AbstractSerializationProxy(Strength strength, Strength strength2, Equivalence equivalence, Equivalence equivalence2, int i10, ConcurrentMap<K, V> concurrentMap) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.concurrencyLevel = i10;
            this.delegate = concurrentMap;
        }

        void readEntries(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            while (true) {
                Object object = objectInputStream.readObject();
                if (object == null) {
                    return;
                }
                this.delegate.put((K) object, (V) objectInputStream.readObject());
            }
        }

        MapMaker readMapMaker(ObjectInputStream objectInputStream) throws IOException {
            return new MapMaker().g(objectInputStream.readInt()).j(this.keyStrength).k(this.valueStrength).h(this.keyEquivalence).a(this.concurrencyLevel);
        }

        void writeMapTo(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.delegate.size());
            for (Map.Entry<K, V> entry : this.delegate.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }

        @Override
        public ConcurrentMap<K, V> l() {
            return this.delegate;
        }
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).remove(obj, iHash, obj2);
    }

    @Override
    public V replace(K k10, V v10) {
        com.google.common.base.m.o(k10);
        com.google.common.base.m.o(v10);
        int iHash = hash(k10);
        return segmentFor(iHash).replace(k10, iHash, v10);
    }

    static abstract class Segment<K, V, E extends h, S extends Segment<K, V, E, S>> extends ReentrantLock {
        volatile int count;
        final MapMakerInternalMap<K, V, E, S> map;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        volatile AtomicReferenceArray<E> table;
        int threshold;

        Segment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i10) {
            this.map = mapMakerInternalMap;
            initTable(newEntryArray(i10));
        }

        static <K, V, E extends h> boolean isCollected(E e10) {
            return e10.getValue() == null;
        }

        abstract E castForTesting(h hVar);

        void clear() {
            if (this.count != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    for (int i10 = 0; i10 < atomicReferenceArray.length(); i10++) {
                        atomicReferenceArray.set(i10, null);
                    }
                    maybeClearReferenceQueues();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                }
            }
        }

        <T> void clearReferenceQueue(ReferenceQueue<T> referenceQueue) {
            while (referenceQueue.poll() != null) {
            }
        }

        boolean clearValueForTesting(K k10, int i10, u uVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVarK = e10; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i10 && key != null && this.map.keyEquivalence.equivalent(k10, key)) {
                        if (((t) hVarK).a() != uVar) {
                            return false;
                        }
                        atomicReferenceArray.set(length, (E) removeFromChain(e10, hVarK));
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        boolean containsKey(Object obj, int i10) {
            try {
                boolean z10 = false;
                if (this.count == 0) {
                    return false;
                }
                h liveEntry = getLiveEntry(obj, i10);
                if (liveEntry != null && liveEntry.getValue() != null) {
                    z10 = true;
                }
                return z10;
            } finally {
                postReadCleanup();
            }
        }

        boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        for (E eK = atomicReferenceArray.get(i10); eK != null; eK = eK.k()) {
                            V liveValue = getLiveValue(eK);
                            if (liveValue != null && this.map.valueEquivalence().equivalent(obj, liveValue)) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                postReadCleanup();
            }
        }

        E copyEntry(E e10, E e11) {
            return (E) this.map.entryHelper.b(self(), e10, e11);
        }

        E copyForTesting(h hVar, h hVar2) {
            return (E) this.map.entryHelper.b(self(), castForTesting(hVar), castForTesting(hVar2));
        }

        void drainKeyReferenceQueue(ReferenceQueue<K> referenceQueue) {
            int i10 = 0;
            do {
                Reference<? extends K> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.reclaimKey((h) referencePoll);
                i10++;
            } while (i10 != 16);
        }

        void drainValueReferenceQueue(ReferenceQueue<V> referenceQueue) {
            int i10 = 0;
            do {
                Reference<? extends V> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.reclaimValue((u) referencePoll);
                i10++;
            } while (i10 != 16);
        }

        void expand() {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i10 = this.count;
            AtomicReferenceArray<E> atomicReferenceArrayNewEntryArray = newEntryArray(length << 1);
            this.threshold = (atomicReferenceArrayNewEntryArray.length() * 3) / 4;
            int length2 = atomicReferenceArrayNewEntryArray.length() - 1;
            for (int i11 = 0; i11 < length; i11++) {
                E eK = atomicReferenceArray.get(i11);
                if (eK != null) {
                    h hVarK = eK.k();
                    int iB = eK.b() & length2;
                    if (hVarK == null) {
                        atomicReferenceArrayNewEntryArray.set(iB, eK);
                    } else {
                        h hVar = eK;
                        while (hVarK != null) {
                            int iB2 = hVarK.b() & length2;
                            if (iB2 != iB) {
                                hVar = hVarK;
                                iB = iB2;
                            }
                            hVarK = hVarK.k();
                        }
                        atomicReferenceArrayNewEntryArray.set(iB, hVar);
                        while (eK != hVar) {
                            int iB3 = eK.b() & length2;
                            h hVarCopyEntry = copyEntry(eK, (h) atomicReferenceArrayNewEntryArray.get(iB3));
                            if (hVarCopyEntry != null) {
                                atomicReferenceArrayNewEntryArray.set(iB3, hVarCopyEntry);
                            } else {
                                i10--;
                            }
                            eK = eK.k();
                        }
                    }
                }
            }
            this.table = atomicReferenceArrayNewEntryArray;
            this.count = i10;
        }

        V get(Object obj, int i10) {
            try {
                h liveEntry = getLiveEntry(obj, i10);
                if (liveEntry == null) {
                    return null;
                }
                V v10 = (V) liveEntry.getValue();
                if (v10 == null) {
                    tryDrainReferenceQueues();
                }
                return v10;
            } finally {
                postReadCleanup();
            }
        }

        E getEntry(Object obj, int i10) {
            if (this.count == 0) {
                return null;
            }
            for (E e10 = (E) getFirst(i10); e10 != null; e10 = (E) e10.k()) {
                if (e10.b() == i10) {
                    Object key = e10.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return e10;
                    }
                }
            }
            return null;
        }

        E getFirst(int i10) {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            return atomicReferenceArray.get(i10 & (atomicReferenceArray.length() - 1));
        }

        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            throw new AssertionError();
        }

        E getLiveEntry(Object obj, int i10) {
            return (E) getEntry(obj, i10);
        }

        V getLiveValue(E e10) {
            if (e10.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v10 = (V) e10.getValue();
            if (v10 != null) {
                return v10;
            }
            tryDrainReferenceQueues();
            return null;
        }

        V getLiveValueForTesting(h hVar) {
            return getLiveValue(castForTesting(hVar));
        }

        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            throw new AssertionError();
        }

        u getWeakValueReferenceForTesting(h hVar) {
            throw new AssertionError();
        }

        void initTable(AtomicReferenceArray<E> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            this.table = atomicReferenceArray;
        }

        void maybeClearReferenceQueues() {
        }

        void maybeDrainReferenceQueues() {
        }

        AtomicReferenceArray<E> newEntryArray(int i10) {
            return new AtomicReferenceArray<>(i10);
        }

        E newEntryForTesting(K k10, int i10, h hVar) {
            return (E) this.map.entryHelper.e(self(), k10, i10, castForTesting(hVar));
        }

        u newWeakValueReferenceForTesting(h hVar, V v10) {
            throw new AssertionError();
        }

        void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & MapMakerInternalMap.DRAIN_THRESHOLD) == 0) {
                runCleanup();
            }
        }

        void preWriteCleanup() {
            runLockedCleanup();
        }

        V put(K k10, int i10, V v10, boolean z10) {
            lock();
            try {
                preWriteCleanup();
                int i11 = this.count + 1;
                if (i11 > this.threshold) {
                    expand();
                    i11 = this.count + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVarK = e10; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i10 && key != null && this.map.keyEquivalence.equivalent(k10, key)) {
                        V v11 = (V) hVarK.getValue();
                        if (v11 == null) {
                            this.modCount++;
                            setValue(hVarK, v10);
                            this.count = this.count;
                            return null;
                        }
                        if (z10) {
                            return v11;
                        }
                        this.modCount++;
                        setValue(hVarK, v10);
                        return v11;
                    }
                }
                this.modCount++;
                h hVarE = this.map.entryHelper.e(self(), k10, i10, e10);
                setValue(hVarE, v10);
                atomicReferenceArray.set(length, (E) hVarE);
                this.count = i11;
                return null;
            } finally {
                unlock();
            }
        }

        boolean reclaimKey(E e10, int i10) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = i10 & (atomicReferenceArray.length() - 1);
                E e11 = atomicReferenceArray.get(length);
                for (h hVarK = e11; hVarK != null; hVarK = hVarK.k()) {
                    if (hVarK == e10) {
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e11, hVarK);
                        int i11 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i11;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        boolean reclaimValue(K k10, int i10, u uVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVarK = e10; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i10 && key != null && this.map.keyEquivalence.equivalent(k10, key)) {
                        if (((t) hVarK).a() != uVar) {
                            return false;
                        }
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e10, hVarK);
                        int i11 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i11;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        V remove(Object obj, int i10) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVarK = e10; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i10 && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        V v10 = (V) hVarK.getValue();
                        if (v10 == null && !isCollected(hVarK)) {
                            return null;
                        }
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e10, hVarK);
                        int i11 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i11;
                        return v10;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        boolean removeEntryForTesting(E e10) {
            int iB = e10.b();
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = iB & (atomicReferenceArray.length() - 1);
            E e11 = atomicReferenceArray.get(length);
            for (h hVarK = e11; hVarK != null; hVarK = hVarK.k()) {
                if (hVarK == e10) {
                    this.modCount++;
                    h hVarRemoveFromChain = removeFromChain(e11, hVarK);
                    int i10 = this.count - 1;
                    atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                    this.count = i10;
                    return true;
                }
            }
            return false;
        }

        E removeFromChain(E e10, E e11) {
            int i10 = this.count;
            E e12 = (E) e11.k();
            while (e10 != e11) {
                h hVarCopyEntry = copyEntry(e10, e12);
                if (hVarCopyEntry != null) {
                    e12 = (E) hVarCopyEntry;
                } else {
                    i10--;
                }
                e10 = (E) e10.k();
            }
            this.count = i10;
            return e12;
        }

        E removeFromChainForTesting(h hVar, h hVar2) {
            return (E) removeFromChain(castForTesting(hVar), castForTesting(hVar2));
        }

        boolean removeTableEntryForTesting(h hVar) {
            return removeEntryForTesting(castForTesting(hVar));
        }

        boolean replace(K k10, int i10, V v10, V v11) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVarK = e10; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i10 && key != null && this.map.keyEquivalence.equivalent(k10, key)) {
                        Object value = hVarK.getValue();
                        if (value != null) {
                            if (!this.map.valueEquivalence().equivalent(v10, value)) {
                                return false;
                            }
                            this.modCount++;
                            setValue(hVarK, v11);
                            return true;
                        }
                        if (isCollected(hVarK)) {
                            this.modCount++;
                            h hVarRemoveFromChain = removeFromChain(e10, hVarK);
                            int i11 = this.count - 1;
                            atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                            this.count = i11;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        void runCleanup() {
            runLockedCleanup();
        }

        void runLockedCleanup() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        abstract S self();

        void setTableEntryForTesting(int i10, h hVar) {
            this.table.set(i10, (E) castForTesting(hVar));
        }

        void setValue(E e10, V v10) {
            this.map.entryHelper.d(self(), e10, v10);
        }

        void setValueForTesting(h hVar, V v10) {
            this.map.entryHelper.d(self(), castForTesting(hVar), v10);
        }

        void setWeakValueReferenceForTesting(h hVar, u uVar) {
            throw new AssertionError();
        }

        void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        boolean remove(Object obj, int i10, Object obj2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                h hVarK = e10;
                while (true) {
                    boolean z10 = false;
                    if (hVarK == null) {
                        return false;
                    }
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i10 && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        if (this.map.valueEquivalence().equivalent(obj2, hVarK.getValue())) {
                            z10 = true;
                        } else if (!isCollected(hVarK)) {
                            return false;
                        }
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e10, hVarK);
                        int i11 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i11;
                        return z10;
                    }
                    hVarK = hVarK.k();
                }
            } finally {
                unlock();
            }
        }

        V replace(K k10, int i10, V v10) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVarK = e10; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i10 && key != null && this.map.keyEquivalence.equivalent(k10, key)) {
                        V v11 = (V) hVarK.getValue();
                        if (v11 == null) {
                            if (isCollected(hVarK)) {
                                this.modCount++;
                                h hVarRemoveFromChain = removeFromChain(e10, hVarK);
                                int i11 = this.count - 1;
                                atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                                this.count = i11;
                            }
                            return null;
                        }
                        this.modCount++;
                        setValue(hVarK, v10);
                        return v11;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }
    }
}
