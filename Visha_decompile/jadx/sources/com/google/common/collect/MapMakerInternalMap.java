package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.MapMakerInternalMap.Segment;
import com.google.common.collect.MapMakerInternalMap.h;
import com.google.common.primitives.Ints;
import defpackage.i3;
import defpackage.k71;
import defpackage.ubc;
import defpackage.v44;
import defpackage.xd8;
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

    public static final class CleanupMapTask implements Runnable {
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

    public static final class SerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
        private static final long serialVersionUID = 3;

        public SerializationProxy(Strength strength, Strength strength2, Equivalence equivalence, Equivalence equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            super(strength, strength2, equivalence, equivalence2, i, concurrentMap);
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

    public enum Strength {
        STRONG {
            @Override
            public Equivalence defaultEquivalence() {
                return Equivalence.equals();
            }
        },
        WEAK {
            @Override
            public Equivalence defaultEquivalence() {
                return Equivalence.identity();
            }
        };

        public abstract Equivalence defaultEquivalence();

        Strength(a aVar) {
            this();
        }
    }

    public static final class StrongKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, l, StrongKeyDummyValueSegment<K>> {
        public StrongKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, l, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
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

    public static final class StrongKeyStrongValueSegment<K, V> extends Segment<K, V, m, StrongKeyStrongValueSegment<K, V>> {
        public StrongKeyStrongValueSegment(MapMakerInternalMap<K, V, m, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
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

    public static final class StrongKeyWeakValueSegment<K, V> extends Segment<K, V, n, StrongKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<V> queueForValues;

        public StrongKeyWeakValueSegment(MapMakerInternalMap<K, V, n, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override
        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override
        public u getWeakValueReferenceForTesting(h hVar) {
            return castForTesting(hVar).a();
        }

        @Override
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForValues);
        }

        @Override
        public void maybeDrainReferenceQueues() {
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override
        public u newWeakValueReferenceForTesting(h hVar, V v) {
            return new v(this.queueForValues, v, castForTesting(hVar));
        }

        @Override
        public StrongKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override
        public void setWeakValueReferenceForTesting(h hVar, u uVar) {
            n nVarCastForTesting = castForTesting(hVar);
            u uVar2 = nVarCastForTesting.d;
            nVarCastForTesting.d = uVar;
            uVar2.clear();
        }

        @Override
        public n castForTesting(h hVar) {
            return (n) hVar;
        }
    }

    public static final class WeakKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, q, WeakKeyDummyValueSegment<K>> {
        private final ReferenceQueue<K> queueForKeys;

        public WeakKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, q, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override
        public void maybeDrainReferenceQueues() {
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

    public static final class WeakKeyStrongValueSegment<K, V> extends Segment<K, V, r, WeakKeyStrongValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys;

        public WeakKeyStrongValueSegment(MapMakerInternalMap<K, V, r, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override
        public void maybeDrainReferenceQueues() {
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

    public static final class WeakKeyWeakValueSegment<K, V> extends Segment<K, V, s, WeakKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys;
        private final ReferenceQueue<V> queueForValues;

        public WeakKeyWeakValueSegment(MapMakerInternalMap<K, V, s, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
            this.queueForKeys = new ReferenceQueue<>();
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override
        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override
        public u getWeakValueReferenceForTesting(h hVar) {
            return castForTesting(hVar).a();
        }

        @Override
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override
        public u newWeakValueReferenceForTesting(h hVar, V v) {
            return new v(this.queueForValues, v, castForTesting(hVar));
        }

        @Override
        public WeakKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override
        public void setWeakValueReferenceForTesting(h hVar, u uVar) {
            s sVarCastForTesting = castForTesting(hVar);
            u uVar2 = sVarCastForTesting.c;
            sVarCastForTesting.c = uVar;
            uVar2.clear();
        }

        @Override
        public s castForTesting(h hVar) {
            return (s) hVar;
        }
    }

    public class a implements u {
        @Override
        public h a() {
            d();
            return null;
        }

        @Override
        public u b(ReferenceQueue referenceQueue, h hVar) {
            ubc.a(hVar);
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

    public static abstract class b implements h {
        public final Object b;
        public final int c;

        public b(Object obj, int i) {
            this.b = obj;
            this.c = i;
        }

        @Override
        public h b() {
            return null;
        }

        @Override
        public final int c() {
            return this.c;
        }

        @Override
        public final Object getKey() {
            return this.b;
        }
    }

    public static abstract class c extends WeakReference implements h {
        public final int b;

        public c(ReferenceQueue referenceQueue, Object obj, int i) {
            super(obj, referenceQueue);
            this.b = i;
        }

        @Override
        public h b() {
            return null;
        }

        @Override
        public final int c() {
            return this.b;
        }

        @Override
        public final Object getKey() {
            return get();
        }
    }

    public static final class d implements h {
    }

    public final class e extends g {
        public e() {
            super();
        }

        @Override
        public Map.Entry next() {
            return c();
        }
    }

    public final class f extends AbstractSet {
        public f() {
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

    public abstract class g implements Iterator {
        public int b;
        public int c = -1;
        public Segment d;
        public AtomicReferenceArray e;
        public h f;
        public w g;
        public w h;

        public g() {
            this.b = MapMakerInternalMap.this.segments.length - 1;
            a();
        }

        public final void a() {
            this.g = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i = this.b;
                if (i < 0) {
                    return;
                }
                Segment<K, V, E, S>[] segmentArr = MapMakerInternalMap.this.segments;
                this.b = i - 1;
                Segment<K, V, E, S> segment = segmentArr[i];
                this.d = segment;
                if (segment.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.d.table;
                    this.e = atomicReferenceArray;
                    this.c = atomicReferenceArray.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        public boolean b(h hVar) {
            Segment segment;
            try {
                Object key = hVar.getKey();
                Object liveValue = MapMakerInternalMap.this.getLiveValue(hVar);
                if (liveValue == null) {
                    return false;
                }
                this.g = new w(key, liveValue);
                return true;
            } finally {
                this.d.postReadCleanup();
            }
        }

        public w c() {
            w wVar = this.g;
            if (wVar == null) {
                throw new NoSuchElementException();
            }
            this.h = wVar;
            a();
            return this.h;
        }

        public boolean d() {
            h hVar = this.f;
            if (hVar == null) {
                return false;
            }
            while (true) {
                this.f = hVar.b();
                h hVar2 = this.f;
                if (hVar2 == null) {
                    return false;
                }
                if (b(hVar2)) {
                    return true;
                }
                hVar = this.f;
            }
        }

        public boolean e() {
            while (true) {
                int i = this.c;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray atomicReferenceArray = this.e;
                this.c = i - 1;
                h hVar = (h) atomicReferenceArray.get(i);
                this.f = hVar;
                if (hVar != null && (b(hVar) || d())) {
                    return true;
                }
            }
        }

        @Override
        public boolean hasNext() {
            return this.g != null;
        }

        @Override
        public void remove() {
            k71.e(this.h != null);
            MapMakerInternalMap.this.remove(this.h.getKey());
            this.h = null;
        }
    }

    public interface h {
        h b();

        int c();

        Object getKey();

        Object getValue();
    }

    public interface i {
        Segment a(MapMakerInternalMap mapMakerInternalMap, int i);

        void b(Segment segment, h hVar, Object obj);

        Strength c();

        h d(Segment segment, h hVar, h hVar2);

        Strength e();

        h f(Segment segment, Object obj, int i, h hVar);
    }

    public final class j extends g {
        public j() {
            super();
        }

        @Override
        public Object next() {
            return c().getKey();
        }
    }

    public final class k extends AbstractSet {
        public k() {
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

    public static class l extends b implements h {

        public static final class a implements i {
            public static final a a = new a();

            public static a h() {
                return a;
            }

            @Override
            public Strength c() {
                return Strength.STRONG;
            }

            @Override
            public Strength e() {
                return Strength.STRONG;
            }

            @Override
            public l d(StrongKeyDummyValueSegment strongKeyDummyValueSegment, l lVar, l lVar2) {
                return f(strongKeyDummyValueSegment, lVar.b, lVar.c, lVar2);
            }

            @Override
            public l f(StrongKeyDummyValueSegment strongKeyDummyValueSegment, Object obj, int i, l lVar) {
                return lVar == null ? new l(obj, i, null) : new b(obj, i, lVar);
            }

            @Override
            public StrongKeyDummyValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new StrongKeyDummyValueSegment(mapMakerInternalMap, i);
            }

            @Override
            public void b(StrongKeyDummyValueSegment strongKeyDummyValueSegment, l lVar, MapMaker.Dummy dummy) {
            }
        }

        public static final class b extends l {
            public final l d;

            public b(Object obj, int i, l lVar) {
                super(obj, i, null);
                this.d = lVar;
            }

            @Override
            public l b() {
                return this.d;
            }

            @Override
            public Object getValue() {
                return super.getValue();
            }
        }

        public l(Object obj, int i, a aVar) {
            this(obj, i);
        }

        @Override
        public final MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }

        public l(Object obj, int i) {
            super(obj, i);
        }
    }

    public static class m extends b implements h {
        public volatile Object d;

        public static final class a implements i {
            public static final a a = new a();

            public static a h() {
                return a;
            }

            @Override
            public Strength c() {
                return Strength.STRONG;
            }

            @Override
            public Strength e() {
                return Strength.STRONG;
            }

            @Override
            public m d(StrongKeyStrongValueSegment strongKeyStrongValueSegment, m mVar, m mVar2) {
                m mVarF = f(strongKeyStrongValueSegment, mVar.b, mVar.c, mVar2);
                mVarF.d = mVar.d;
                return mVarF;
            }

            @Override
            public m f(StrongKeyStrongValueSegment strongKeyStrongValueSegment, Object obj, int i, m mVar) {
                return mVar == null ? new m(obj, i, null) : new b(obj, i, mVar);
            }

            @Override
            public StrongKeyStrongValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new StrongKeyStrongValueSegment(mapMakerInternalMap, i);
            }

            @Override
            public void b(StrongKeyStrongValueSegment strongKeyStrongValueSegment, m mVar, Object obj) {
                mVar.d = obj;
            }
        }

        public static final class b extends m {
            public final m e;

            public b(Object obj, int i, m mVar) {
                super(obj, i, null);
                this.e = mVar;
            }

            @Override
            public m b() {
                return this.e;
            }
        }

        public m(Object obj, int i, a aVar) {
            this(obj, i);
        }

        @Override
        public final Object getValue() {
            return this.d;
        }

        public m(Object obj, int i) {
            super(obj, i);
            this.d = null;
        }
    }

    public static class n extends b implements t {
        public volatile u d;

        public static final class a implements i {
            public static final a a = new a();

            public static a h() {
                return a;
            }

            @Override
            public Strength c() {
                return Strength.STRONG;
            }

            @Override
            public Strength e() {
                return Strength.WEAK;
            }

            @Override
            public n d(StrongKeyWeakValueSegment strongKeyWeakValueSegment, n nVar, n nVar2) {
                if (Segment.isCollected(nVar)) {
                    return null;
                }
                n nVarF = f(strongKeyWeakValueSegment, nVar.b, nVar.c, nVar2);
                nVarF.d = nVar.d.b(strongKeyWeakValueSegment.queueForValues, nVarF);
                return nVarF;
            }

            @Override
            public n f(StrongKeyWeakValueSegment strongKeyWeakValueSegment, Object obj, int i, n nVar) {
                return nVar == null ? new n(obj, i, null) : new b(obj, i, nVar);
            }

            @Override
            public StrongKeyWeakValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new StrongKeyWeakValueSegment(mapMakerInternalMap, i);
            }

            @Override
            public void b(StrongKeyWeakValueSegment strongKeyWeakValueSegment, n nVar, Object obj) {
                u uVar = nVar.d;
                nVar.d = new v(strongKeyWeakValueSegment.queueForValues, obj, nVar);
                uVar.clear();
            }
        }

        public static final class b extends n {
            public final n e;

            public b(Object obj, int i, n nVar) {
                super(obj, i, null);
                this.e = nVar;
            }

            @Override
            public n b() {
                return this.e;
            }
        }

        public n(Object obj, int i, a aVar) {
            this(obj, i);
        }

        @Override
        public final u a() {
            return this.d;
        }

        @Override
        public final Object getValue() {
            return this.d.get();
        }

        public n(Object obj, int i) {
            super(obj, i);
            this.d = MapMakerInternalMap.unsetWeakValueReference();
        }
    }

    public final class o extends g {
        public o() {
            super();
        }

        @Override
        public Object next() {
            return c().getValue();
        }
    }

    public final class p extends AbstractCollection {
        public p() {
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

    public static class q extends c implements h {

        public static final class a implements i {
            public static final a a = new a();

            public static a h() {
                return a;
            }

            @Override
            public Strength c() {
                return Strength.WEAK;
            }

            @Override
            public Strength e() {
                return Strength.STRONG;
            }

            @Override
            public q d(WeakKeyDummyValueSegment weakKeyDummyValueSegment, q qVar, q qVar2) {
                Object key = qVar.getKey();
                if (key == null) {
                    return null;
                }
                return f(weakKeyDummyValueSegment, key, qVar.b, qVar2);
            }

            @Override
            public q f(WeakKeyDummyValueSegment weakKeyDummyValueSegment, Object obj, int i, q qVar) {
                return qVar == null ? new q(weakKeyDummyValueSegment.queueForKeys, obj, i, null) : new b(weakKeyDummyValueSegment.queueForKeys, obj, i, qVar, null);
            }

            @Override
            public WeakKeyDummyValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new WeakKeyDummyValueSegment(mapMakerInternalMap, i);
            }

            @Override
            public void b(WeakKeyDummyValueSegment weakKeyDummyValueSegment, q qVar, MapMaker.Dummy dummy) {
            }
        }

        public static final class b extends q {
            public final q c;

            public b(ReferenceQueue referenceQueue, Object obj, int i, q qVar, a aVar) {
                this(referenceQueue, obj, i, qVar);
            }

            @Override
            public q b() {
                return this.c;
            }

            @Override
            public Object getValue() {
                return super.getValue();
            }

            public b(ReferenceQueue referenceQueue, Object obj, int i, q qVar) {
                super(referenceQueue, obj, i, null);
                this.c = qVar;
            }
        }

        public q(ReferenceQueue referenceQueue, Object obj, int i, a aVar) {
            this(referenceQueue, obj, i);
        }

        @Override
        public final MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }

        public q(ReferenceQueue referenceQueue, Object obj, int i) {
            super(referenceQueue, obj, i);
        }
    }

    public static class r extends c implements h {
        public volatile Object c;

        public static final class a implements i {
            public static final a a = new a();

            public static a h() {
                return a;
            }

            @Override
            public Strength c() {
                return Strength.WEAK;
            }

            @Override
            public Strength e() {
                return Strength.STRONG;
            }

            @Override
            public r d(WeakKeyStrongValueSegment weakKeyStrongValueSegment, r rVar, r rVar2) {
                Object key = rVar.getKey();
                if (key == null) {
                    return null;
                }
                r rVarF = f(weakKeyStrongValueSegment, key, rVar.b, rVar2);
                rVarF.c = rVar.c;
                return rVarF;
            }

            @Override
            public r f(WeakKeyStrongValueSegment weakKeyStrongValueSegment, Object obj, int i, r rVar) {
                return rVar == null ? new r(weakKeyStrongValueSegment.queueForKeys, obj, i, null) : new b(weakKeyStrongValueSegment.queueForKeys, obj, i, rVar, null);
            }

            @Override
            public WeakKeyStrongValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new WeakKeyStrongValueSegment(mapMakerInternalMap, i);
            }

            @Override
            public void b(WeakKeyStrongValueSegment weakKeyStrongValueSegment, r rVar, Object obj) {
                rVar.c = obj;
            }
        }

        public static final class b extends r {
            public final r d;

            public b(ReferenceQueue referenceQueue, Object obj, int i, r rVar, a aVar) {
                this(referenceQueue, obj, i, rVar);
            }

            @Override
            public r b() {
                return this.d;
            }

            public b(ReferenceQueue referenceQueue, Object obj, int i, r rVar) {
                super(referenceQueue, obj, i, null);
                this.d = rVar;
            }
        }

        public r(ReferenceQueue referenceQueue, Object obj, int i, a aVar) {
            this(referenceQueue, obj, i);
        }

        @Override
        public final Object getValue() {
            return this.c;
        }

        public r(ReferenceQueue referenceQueue, Object obj, int i) {
            super(referenceQueue, obj, i);
            this.c = null;
        }
    }

    public static class s extends c implements t {
        public volatile u c;

        public static final class a implements i {
            public static final a a = new a();

            public static a h() {
                return a;
            }

            @Override
            public Strength c() {
                return Strength.WEAK;
            }

            @Override
            public Strength e() {
                return Strength.WEAK;
            }

            @Override
            public s d(WeakKeyWeakValueSegment weakKeyWeakValueSegment, s sVar, s sVar2) {
                Object key = sVar.getKey();
                if (key == null || Segment.isCollected(sVar)) {
                    return null;
                }
                s sVarF = f(weakKeyWeakValueSegment, key, sVar.b, sVar2);
                sVarF.c = sVar.c.b(weakKeyWeakValueSegment.queueForValues, sVarF);
                return sVarF;
            }

            @Override
            public s f(WeakKeyWeakValueSegment weakKeyWeakValueSegment, Object obj, int i, s sVar) {
                return sVar == null ? new s(weakKeyWeakValueSegment.queueForKeys, obj, i) : new b(weakKeyWeakValueSegment.queueForKeys, obj, i, sVar);
            }

            @Override
            public WeakKeyWeakValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new WeakKeyWeakValueSegment(mapMakerInternalMap, i);
            }

            @Override
            public void b(WeakKeyWeakValueSegment weakKeyWeakValueSegment, s sVar, Object obj) {
                u uVar = sVar.c;
                sVar.c = new v(weakKeyWeakValueSegment.queueForValues, obj, sVar);
                uVar.clear();
            }
        }

        public static final class b extends s {
            public final s d;

            public b(ReferenceQueue referenceQueue, Object obj, int i, s sVar) {
                super(referenceQueue, obj, i);
                this.d = sVar;
            }

            @Override
            public s b() {
                return this.d;
            }
        }

        public s(ReferenceQueue referenceQueue, Object obj, int i) {
            super(referenceQueue, obj, i);
            this.c = MapMakerInternalMap.unsetWeakValueReference();
        }

        @Override
        public final u a() {
            return this.c;
        }

        @Override
        public final Object getValue() {
            return this.c.get();
        }
    }

    public interface t extends h {
        u a();
    }

    public interface u {
        h a();

        u b(ReferenceQueue referenceQueue, h hVar);

        void clear();

        Object get();
    }

    public static final class v extends WeakReference implements u {
        public final h b;

        public v(ReferenceQueue referenceQueue, Object obj, h hVar) {
            super(obj, referenceQueue);
            this.b = hVar;
        }

        @Override
        public h a() {
            return this.b;
        }

        @Override
        public u b(ReferenceQueue referenceQueue, h hVar) {
            return new v(referenceQueue, get(), hVar);
        }
    }

    public final class w extends i3 {
        public final Object b;
        public Object c;

        public w(Object obj, Object obj2) {
            this.b = obj;
            this.c = obj2;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.b.equals(entry.getKey()) && this.c.equals(entry.getValue());
        }

        @Override
        public Object getKey() {
            return this.b;
        }

        @Override
        public Object getValue() {
            return this.c;
        }

        @Override
        public int hashCode() {
            return this.c.hashCode() ^ this.b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object setValue(Object obj) {
            Object objPut = MapMakerInternalMap.this.put(this.b, obj);
            this.c = obj;
            return objPut;
        }
    }

    public MapMakerInternalMap(MapMaker mapMaker, i iVar) {
        this.concurrencyLevel = Math.min(mapMaker.b(), 65536);
        this.keyEquivalence = mapMaker.d();
        this.entryHelper = iVar;
        int iMin = Math.min(mapMaker.c(), 1073741824);
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        int i5 = 1;
        while (i5 < this.concurrencyLevel) {
            i4++;
            i5 <<= 1;
        }
        this.segmentShift = 32 - i4;
        this.segmentMask = i5 - 1;
        this.segments = newSegmentArray(i5);
        int i6 = iMin / i5;
        while (i3 < (i5 * i6 < iMin ? i6 + 1 : i6)) {
            i3 <<= 1;
        }
        while (true) {
            Segment<K, V, E, S>[] segmentArr = this.segments;
            if (i2 >= segmentArr.length) {
                return;
            }
            segmentArr[i2] = createSegment(i3);
            i2++;
        }
    }

    public static <K, V> MapMakerInternalMap<K, V, ? extends h, ?> create(MapMaker mapMaker) {
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

    public static <K> MapMakerInternalMap<K, MapMaker.Dummy, ? extends h, ?> createWithDummyValues(MapMaker mapMaker) {
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

    public static int rehash(int i2) {
        int i3 = i2 + ((i2 << 15) ^ (-12931));
        int i4 = i3 ^ (i3 >>> 10);
        int i5 = i4 + (i4 << 3);
        int i6 = i5 ^ (i5 >>> 6);
        int i7 = i6 + (i6 << 2) + (i6 << 14);
        return i7 ^ (i7 >>> 16);
    }

    public static <K, V, E extends h> u unsetWeakValueReference() {
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
        boolean z = false;
        if (obj == null) {
            return false;
        }
        Segment<K, V, E, S>[] segmentArr = this.segments;
        long j2 = -1;
        int i2 = 0;
        while (i2 < 3) {
            int length = segmentArr.length;
            long j3 = 0;
            for (?? r10 = z; r10 < length; r10++) {
                Segment<K, V, E, S> segment = segmentArr[r10];
                int i3 = segment.count;
                AtomicReferenceArray<E> atomicReferenceArray = segment.table;
                for (?? r13 = z; r13 < atomicReferenceArray.length(); r13++) {
                    for (E eB = atomicReferenceArray.get(r13); eB != null; eB = eB.b()) {
                        V liveValue = segment.getLiveValue(eB);
                        if (liveValue != null && valueEquivalence().equivalent(obj, liveValue)) {
                            return true;
                        }
                    }
                }
                j3 += (long) segment.modCount;
                z = false;
            }
            if (j3 == j2) {
                return false;
            }
            i2++;
            j2 = j3;
            z = false;
        }
        return z;
    }

    public E copyEntry(E e2, E e3) {
        return (E) segmentFor(e2.c()).copyEntry(e2, e3);
    }

    public Segment<K, V, E, S> createSegment(int i2) {
        return this.entryHelper.a(this, i2);
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

    public E getEntry(Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return (E) segmentFor(iHash).getEntry(obj, iHash);
    }

    public V getLiveValue(E e2) {
        if (e2.getKey() == null) {
            return null;
        }
        return (V) e2.getValue();
    }

    public int hash(Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    @Override
    public boolean isEmpty() {
        Segment<K, V, E, S>[] segmentArr = this.segments;
        long j2 = 0;
        for (int i2 = 0; i2 < segmentArr.length; i2++) {
            if (segmentArr[i2].count != 0) {
                return false;
            }
            j2 += (long) segmentArr[i2].modCount;
        }
        if (j2 == 0) {
            return true;
        }
        for (int i3 = 0; i3 < segmentArr.length; i3++) {
            if (segmentArr[i3].count != 0) {
                return false;
            }
            j2 -= (long) segmentArr[i3].modCount;
        }
        return j2 == 0;
    }

    public boolean isLiveForTesting(h hVar) {
        return segmentFor(hVar.c()).getLiveValueForTesting(hVar) != null;
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

    public Strength keyStrength() {
        return this.entryHelper.c();
    }

    public final Segment<K, V, E, S>[] newSegmentArray(int i2) {
        return new Segment[i2];
    }

    @Override
    public V put(K k2, V v2) {
        xd8.o(k2);
        xd8.o(v2);
        int iHash = hash(k2);
        return segmentFor(iHash).put(k2, iHash, v2, false);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public V putIfAbsent(K k2, V v2) {
        xd8.o(k2);
        xd8.o(v2);
        int iHash = hash(k2);
        return segmentFor(iHash).put(k2, iHash, v2, true);
    }

    public void reclaimKey(E e2) {
        int iC = e2.c();
        segmentFor(iC).reclaimKey(e2, iC);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void reclaimValue(u uVar) {
        h hVarA = uVar.a();
        int iC = hVarA.c();
        segmentFor(iC).reclaimValue(hVarA.getKey(), iC, uVar);
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
    public boolean replace(K k2, V v2, V v3) {
        xd8.o(k2);
        xd8.o(v3);
        if (v2 == null) {
            return false;
        }
        int iHash = hash(k2);
        return segmentFor(iHash).replace(k2, iHash, v2, v3);
    }

    public Segment<K, V, E, S> segmentFor(int i2) {
        return this.segments[this.segmentMask & (i2 >>> this.segmentShift)];
    }

    @Override
    public int size() {
        long j2 = 0;
        for (Segment<K, V, E, S> segment : this.segments) {
            j2 += (long) segment.count;
        }
        return Ints.n(j2);
    }

    public Equivalence valueEquivalence() {
        return this.entryHelper.e().defaultEquivalence();
    }

    public Strength valueStrength() {
        return this.entryHelper.e();
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

    public Object writeReplace() {
        return new SerializationProxy(this.entryHelper.c(), this.entryHelper.e(), this.keyEquivalence, this.entryHelper.e().defaultEquivalence(), this.concurrencyLevel, this);
    }

    public static abstract class AbstractSerializationProxy<K, V> extends v44 implements Serializable {
        private static final long serialVersionUID = 3;
        final int concurrencyLevel;
        transient ConcurrentMap<K, V> delegate;
        final Equivalence keyEquivalence;
        final Strength keyStrength;
        final Equivalence valueEquivalence;
        final Strength valueStrength;

        public AbstractSerializationProxy(Strength strength, Strength strength2, Equivalence equivalence, Equivalence equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.concurrencyLevel = i;
            this.delegate = concurrentMap;
        }

        public void readEntries(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            while (true) {
                Object object = objectInputStream.readObject();
                if (object == null) {
                    return;
                }
                this.delegate.put((K) object, (V) objectInputStream.readObject());
            }
        }

        public MapMaker readMapMaker(ObjectInputStream objectInputStream) throws IOException {
            return new MapMaker().g(objectInputStream.readInt()).j(this.keyStrength).k(this.valueStrength).h(this.keyEquivalence).a(this.concurrencyLevel);
        }

        public void writeMapTo(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.delegate.size());
            for (Map.Entry<K, V> entry : this.delegate.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }

        @Override
        public ConcurrentMap<K, V> f() {
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
    public V replace(K k2, V v2) {
        xd8.o(k2);
        xd8.o(v2);
        int iHash = hash(k2);
        return segmentFor(iHash).replace(k2, iHash, v2);
    }

    public static abstract class Segment<K, V, E extends h, S extends Segment<K, V, E, S>> extends ReentrantLock {
        volatile int count;
        final MapMakerInternalMap<K, V, E, S> map;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        volatile AtomicReferenceArray<E> table;
        int threshold;

        public Segment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i) {
            this.map = mapMakerInternalMap;
            initTable(newEntryArray(i));
        }

        public static <K, V, E extends h> boolean isCollected(E e) {
            return e.getValue() == null;
        }

        public abstract E castForTesting(h hVar);

        public void clear() {
            if (this.count != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        atomicReferenceArray.set(i, null);
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

        public <T> void clearReferenceQueue(ReferenceQueue<T> referenceQueue) {
            while (referenceQueue.poll() != null) {
            }
        }

        public boolean clearValueForTesting(K k, int i, u uVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (h hVarB = e; hVarB != null; hVarB = hVarB.b()) {
                    Object key = hVarB.getKey();
                    if (hVarB.c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((t) hVarB).a() != uVar) {
                            return false;
                        }
                        atomicReferenceArray.set(length, (E) removeFromChain(e, hVarB));
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public boolean containsKey(Object obj, int i) {
            try {
                boolean z = false;
                if (this.count == 0) {
                    return false;
                }
                h liveEntry = getLiveEntry(obj, i);
                if (liveEntry != null && liveEntry.getValue() != null) {
                    z = true;
                }
                return z;
            } finally {
                postReadCleanup();
            }
        }

        public boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (E eB = atomicReferenceArray.get(i); eB != null; eB = eB.b()) {
                            V liveValue = getLiveValue(eB);
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

        public E copyEntry(E e, E e2) {
            return (E) this.map.entryHelper.d(self(), e, e2);
        }

        public E copyForTesting(h hVar, h hVar2) {
            return (E) this.map.entryHelper.d(self(), castForTesting(hVar), castForTesting(hVar2));
        }

        public void drainKeyReferenceQueue(ReferenceQueue<K> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends K> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.reclaimKey((h) referencePoll);
                i++;
            } while (i != 16);
        }

        public void drainValueReferenceQueue(ReferenceQueue<V> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends V> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.reclaimValue((u) referencePoll);
                i++;
            } while (i != 16);
        }

        public void expand() {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.count;
            AtomicReferenceArray<E> atomicReferenceArrayNewEntryArray = newEntryArray(length << 1);
            this.threshold = (atomicReferenceArrayNewEntryArray.length() * 3) / 4;
            int length2 = atomicReferenceArrayNewEntryArray.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                E eB = atomicReferenceArray.get(i2);
                if (eB != null) {
                    h hVarB = eB.b();
                    int iC = eB.c() & length2;
                    if (hVarB == null) {
                        atomicReferenceArrayNewEntryArray.set(iC, eB);
                    } else {
                        h hVar = eB;
                        while (hVarB != null) {
                            int iC2 = hVarB.c() & length2;
                            if (iC2 != iC) {
                                hVar = hVarB;
                                iC = iC2;
                            }
                            hVarB = hVarB.b();
                        }
                        atomicReferenceArrayNewEntryArray.set(iC, hVar);
                        while (eB != hVar) {
                            int iC3 = eB.c() & length2;
                            h hVarCopyEntry = copyEntry(eB, (h) atomicReferenceArrayNewEntryArray.get(iC3));
                            if (hVarCopyEntry != null) {
                                atomicReferenceArrayNewEntryArray.set(iC3, hVarCopyEntry);
                            } else {
                                i--;
                            }
                            eB = eB.b();
                        }
                    }
                }
            }
            this.table = atomicReferenceArrayNewEntryArray;
            this.count = i;
        }

        public V get(Object obj, int i) {
            try {
                h liveEntry = getLiveEntry(obj, i);
                if (liveEntry == null) {
                    return null;
                }
                V v = (V) liveEntry.getValue();
                if (v == null) {
                    tryDrainReferenceQueues();
                }
                return v;
            } finally {
                postReadCleanup();
            }
        }

        public E getEntry(Object obj, int i) {
            if (this.count == 0) {
                return null;
            }
            for (E e = (E) getFirst(i); e != null; e = (E) e.b()) {
                if (e.c() == i) {
                    Object key = e.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return e;
                    }
                }
            }
            return null;
        }

        public E getFirst(int i) {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            return atomicReferenceArray.get(i & (atomicReferenceArray.length() - 1));
        }

        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            throw new AssertionError();
        }

        public E getLiveEntry(Object obj, int i) {
            return (E) getEntry(obj, i);
        }

        public V getLiveValue(E e) {
            if (e.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = (V) e.getValue();
            if (v != null) {
                return v;
            }
            tryDrainReferenceQueues();
            return null;
        }

        public V getLiveValueForTesting(h hVar) {
            return getLiveValue(castForTesting(hVar));
        }

        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            throw new AssertionError();
        }

        public u getWeakValueReferenceForTesting(h hVar) {
            throw new AssertionError();
        }

        public void initTable(AtomicReferenceArray<E> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            this.table = atomicReferenceArray;
        }

        public void maybeClearReferenceQueues() {
        }

        public void maybeDrainReferenceQueues() {
        }

        public AtomicReferenceArray<E> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        public E newEntryForTesting(K k, int i, h hVar) {
            return (E) this.map.entryHelper.f(self(), k, i, castForTesting(hVar));
        }

        public u newWeakValueReferenceForTesting(h hVar, V v) {
            throw new AssertionError();
        }

        public void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                runCleanup();
            }
        }

        public void preWriteCleanup() {
            runLockedCleanup();
        }

        public V put(K k, int i, V v, boolean z) {
            lock();
            try {
                preWriteCleanup();
                int i2 = this.count + 1;
                if (i2 > this.threshold) {
                    expand();
                    i2 = this.count + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (h hVarB = e; hVarB != null; hVarB = hVarB.b()) {
                    Object key = hVarB.getKey();
                    if (hVarB.c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) hVarB.getValue();
                        if (v2 == null) {
                            this.modCount++;
                            setValue(hVarB, v);
                            this.count = this.count;
                            return null;
                        }
                        if (z) {
                            return v2;
                        }
                        this.modCount++;
                        setValue(hVarB, v);
                        return v2;
                    }
                }
                this.modCount++;
                h hVarF = this.map.entryHelper.f(self(), k, i, e);
                setValue(hVarF, v);
                atomicReferenceArray.set(length, (E) hVarF);
                this.count = i2;
                return null;
            } finally {
                unlock();
            }
        }

        public boolean reclaimKey(E e, int i) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                E e2 = atomicReferenceArray.get(length);
                for (h hVarB = e2; hVarB != null; hVarB = hVarB.b()) {
                    if (hVarB == e) {
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e2, hVarB);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public boolean reclaimValue(K k, int i, u uVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (h hVarB = e; hVarB != null; hVarB = hVarB.b()) {
                    Object key = hVarB.getKey();
                    if (hVarB.c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((t) hVarB).a() != uVar) {
                            return false;
                        }
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e, hVarB);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public V remove(Object obj, int i) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (h hVarB = e; hVarB != null; hVarB = hVarB.b()) {
                    Object key = hVarB.getKey();
                    if (hVarB.c() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        V v = (V) hVarB.getValue();
                        if (v == null && !isCollected(hVarB)) {
                            return null;
                        }
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e, hVarB);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i2;
                        return v;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        public boolean removeEntryForTesting(E e) {
            int iC = e.c();
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = iC & (atomicReferenceArray.length() - 1);
            E e2 = atomicReferenceArray.get(length);
            for (h hVarB = e2; hVarB != null; hVarB = hVarB.b()) {
                if (hVarB == e) {
                    this.modCount++;
                    h hVarRemoveFromChain = removeFromChain(e2, hVarB);
                    int i = this.count - 1;
                    atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                    this.count = i;
                    return true;
                }
            }
            return false;
        }

        public E removeFromChain(E e, E e2) {
            int i = this.count;
            E e3 = (E) e2.b();
            while (e != e2) {
                h hVarCopyEntry = copyEntry(e, e3);
                if (hVarCopyEntry != null) {
                    e3 = (E) hVarCopyEntry;
                } else {
                    i--;
                }
                e = (E) e.b();
            }
            this.count = i;
            return e3;
        }

        public E removeFromChainForTesting(h hVar, h hVar2) {
            return (E) removeFromChain(castForTesting(hVar), castForTesting(hVar2));
        }

        public boolean removeTableEntryForTesting(h hVar) {
            return removeEntryForTesting(castForTesting(hVar));
        }

        public boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (h hVarB = e; hVarB != null; hVarB = hVarB.b()) {
                    Object key = hVarB.getKey();
                    if (hVarB.c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        Object value = hVarB.getValue();
                        if (value != null) {
                            if (!this.map.valueEquivalence().equivalent(v, value)) {
                                return false;
                            }
                            this.modCount++;
                            setValue(hVarB, v2);
                            return true;
                        }
                        if (isCollected(hVarB)) {
                            this.modCount++;
                            h hVarRemoveFromChain = removeFromChain(e, hVarB);
                            int i2 = this.count - 1;
                            atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                            this.count = i2;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public void runCleanup() {
            runLockedCleanup();
        }

        public void runLockedCleanup() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public abstract S self();

        public void setTableEntryForTesting(int i, h hVar) {
            this.table.set(i, (E) castForTesting(hVar));
        }

        public void setValue(E e, V v) {
            this.map.entryHelper.b(self(), e, v);
        }

        public void setValueForTesting(h hVar, V v) {
            this.map.entryHelper.b(self(), castForTesting(hVar), v);
        }

        public void setWeakValueReferenceForTesting(h hVar, u uVar) {
            throw new AssertionError();
        }

        public void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        public boolean remove(Object obj, int i, Object obj2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                h hVarB = e;
                while (true) {
                    boolean z = false;
                    if (hVarB == null) {
                        return false;
                    }
                    Object key = hVarB.getKey();
                    if (hVarB.c() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        if (this.map.valueEquivalence().equivalent(obj2, hVarB.getValue())) {
                            z = true;
                        } else if (!isCollected(hVarB)) {
                            return false;
                        }
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e, hVarB);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i2;
                        return z;
                    }
                    hVarB = hVarB.b();
                }
            } finally {
                unlock();
            }
        }

        public V replace(K k, int i, V v) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (h hVarB = e; hVarB != null; hVarB = hVarB.b()) {
                    Object key = hVarB.getKey();
                    if (hVarB.c() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) hVarB.getValue();
                        if (v2 == null) {
                            if (isCollected(hVarB)) {
                                this.modCount++;
                                h hVarRemoveFromChain = removeFromChain(e, hVarB);
                                int i2 = this.count - 1;
                                atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                                this.count = i2;
                            }
                            return null;
                        }
                        this.modCount++;
                        setValue(hVarB, v);
                        return v2;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }
    }
}
