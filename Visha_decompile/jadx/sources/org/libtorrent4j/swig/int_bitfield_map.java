package org.libtorrent4j.swig;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class int_bitfield_map extends AbstractMap<Integer, bitfield> {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public static class Iterator {
        protected transient boolean swigCMemOwn;
        private transient long swigCPtr;

        public Iterator(long j, boolean z) {
            this.swigCMemOwn = z;
            this.swigCPtr = j;
        }

        public static long getCPtr(Iterator iterator) {
            if (iterator == null) {
                return 0L;
            }
            return iterator.swigCPtr;
        }

        public int getKey() {
            return libtorrent_jni.int_bitfield_map_Iterator_getKey(this.swigCPtr, this);
        }

        public Iterator getNextUnchecked() {
            return new Iterator(libtorrent_jni.int_bitfield_map_Iterator_getNextUnchecked(this.swigCPtr, this), true);
        }

        public bitfield getValue() {
            return new bitfield(libtorrent_jni.int_bitfield_map_Iterator_getValue(this.swigCPtr, this), true);
        }

        public boolean isNot(Iterator iterator) {
            return libtorrent_jni.int_bitfield_map_Iterator_isNot(this.swigCPtr, this, getCPtr(iterator), iterator);
        }

        public void setValue(bitfield bitfieldVar) {
            libtorrent_jni.int_bitfield_map_Iterator_setValue(this.swigCPtr, this, bitfield.getCPtr(bitfieldVar), bitfieldVar);
        }

        public static long swigRelease(Iterator iterator) {
            if (iterator == null) {
                return 0L;
            }
            if (!iterator.swigCMemOwn) {
                throw new RuntimeException("Cannot release ownership as memory is not owned");
            }
            long j = iterator.swigCPtr;
            iterator.swigCMemOwn = false;
            iterator.delete();
            return j;
        }

        public synchronized void delete() {
            try {
                long j = this.swigCPtr;
                if (j != 0) {
                    if (this.swigCMemOwn) {
                        this.swigCMemOwn = false;
                        libtorrent_jni.delete_int_bitfield_map_Iterator(j);
                    }
                    this.swigCPtr = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public void finalize() {
            delete();
        }
    }

    public int_bitfield_map(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private Iterator begin() {
        return new Iterator(libtorrent_jni.int_bitfield_map_begin(this.swigCPtr, this), true);
    }

    private boolean containsImpl(int i) {
        return libtorrent_jni.int_bitfield_map_containsImpl(this.swigCPtr, this, i);
    }

    private Iterator end() {
        return new Iterator(libtorrent_jni.int_bitfield_map_end(this.swigCPtr, this), true);
    }

    private Iterator find(int i) {
        return new Iterator(libtorrent_jni.int_bitfield_map_find(this.swigCPtr, this, i), true);
    }

    public static long getCPtr(int_bitfield_map int_bitfield_mapVar) {
        if (int_bitfield_mapVar == null) {
            return 0L;
        }
        return int_bitfield_mapVar.swigCPtr;
    }

    private void putUnchecked(int i, bitfield bitfieldVar) {
        libtorrent_jni.int_bitfield_map_putUnchecked(this.swigCPtr, this, i, bitfield.getCPtr(bitfieldVar), bitfieldVar);
    }

    private void removeUnchecked(Iterator iterator) {
        libtorrent_jni.int_bitfield_map_removeUnchecked(this.swigCPtr, this, Iterator.getCPtr(iterator), iterator);
    }

    private int sizeImpl() {
        return libtorrent_jni.int_bitfield_map_sizeImpl(this.swigCPtr, this);
    }

    public static long swigRelease(int_bitfield_map int_bitfield_mapVar) {
        if (int_bitfield_mapVar == null) {
            return 0L;
        }
        if (!int_bitfield_mapVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = int_bitfield_mapVar.swigCPtr;
        int_bitfield_mapVar.swigCMemOwn = false;
        int_bitfield_mapVar.delete();
        return j;
    }

    @Override
    public void clear() {
        libtorrent_jni.int_bitfield_map_clear(this.swigCPtr, this);
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj instanceof Integer) {
            return containsImpl(((Integer) obj).intValue());
        }
        return false;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_int_bitfield_map(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [org.libtorrent4j.swig.int_bitfield_map$1] */
    @Override
    public Set<Map.Entry<Integer, bitfield>> entrySet() {
        HashSet hashSet = new HashSet();
        Iterator iteratorEnd = end();
        for (Iterator iteratorBegin = begin(); iteratorBegin.isNot(iteratorEnd); iteratorBegin = iteratorBegin.getNextUnchecked()) {
            hashSet.add(new Map.Entry<Integer, bitfield>() {
                private Iterator iterator;

                public Map.Entry<Integer, bitfield> init(Iterator iterator) {
                    this.iterator = iterator;
                    return this;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Integer getKey() {
                    return Integer.valueOf(this.iterator.getKey());
                }

                @Override
                public bitfield getValue() {
                    return this.iterator.getValue();
                }

                @Override
                public bitfield setValue(bitfield bitfieldVar) {
                    bitfield value = this.iterator.getValue();
                    this.iterator.setValue(bitfieldVar);
                    return value;
                }
            }.init(iteratorBegin));
        }
        return hashSet;
    }

    public void finalize() {
        delete();
    }

    @Override
    public boolean isEmpty() {
        return libtorrent_jni.int_bitfield_map_isEmpty(this.swigCPtr, this);
    }

    @Override
    public int size() {
        return sizeImpl();
    }

    @Override
    public bitfield get(Object obj) {
        if (!(obj instanceof Integer)) {
            return null;
        }
        Iterator iteratorFind = find(((Integer) obj).intValue());
        if (iteratorFind.isNot(end())) {
            return iteratorFind.getValue();
        }
        return null;
    }

    @Override
    public bitfield put(Integer num, bitfield bitfieldVar) {
        Iterator iteratorFind = find(num.intValue());
        if (!iteratorFind.isNot(end())) {
            putUnchecked(num.intValue(), bitfieldVar);
            return null;
        }
        bitfield value = iteratorFind.getValue();
        iteratorFind.setValue(bitfieldVar);
        return value;
    }

    @Override
    public bitfield remove(Object obj) {
        if (!(obj instanceof Integer)) {
            return null;
        }
        Iterator iteratorFind = find(((Integer) obj).intValue());
        if (!iteratorFind.isNot(end())) {
            return null;
        }
        bitfield value = iteratorFind.getValue();
        removeUnchecked(iteratorFind);
        return value;
    }

    public int_bitfield_map() {
        this(libtorrent_jni.new_int_bitfield_map__SWIG_0(), true);
    }

    public int_bitfield_map(int_bitfield_map int_bitfield_mapVar) {
        this(libtorrent_jni.new_int_bitfield_map__SWIG_1(getCPtr(int_bitfield_mapVar), int_bitfield_mapVar), true);
    }
}
