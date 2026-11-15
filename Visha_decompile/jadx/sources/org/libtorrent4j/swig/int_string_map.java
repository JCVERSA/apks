package org.libtorrent4j.swig;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class int_string_map extends AbstractMap<Integer, String> {
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
            return libtorrent_jni.int_string_map_Iterator_getKey(this.swigCPtr, this);
        }

        public Iterator getNextUnchecked() {
            return new Iterator(libtorrent_jni.int_string_map_Iterator_getNextUnchecked(this.swigCPtr, this), true);
        }

        public String getValue() {
            return libtorrent_jni.int_string_map_Iterator_getValue(this.swigCPtr, this);
        }

        public boolean isNot(Iterator iterator) {
            return libtorrent_jni.int_string_map_Iterator_isNot(this.swigCPtr, this, getCPtr(iterator), iterator);
        }

        public void setValue(String str) {
            libtorrent_jni.int_string_map_Iterator_setValue(this.swigCPtr, this, str);
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
                        libtorrent_jni.delete_int_string_map_Iterator(j);
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

    public int_string_map(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private Iterator begin() {
        return new Iterator(libtorrent_jni.int_string_map_begin(this.swigCPtr, this), true);
    }

    private boolean containsImpl(int i) {
        return libtorrent_jni.int_string_map_containsImpl(this.swigCPtr, this, i);
    }

    private Iterator end() {
        return new Iterator(libtorrent_jni.int_string_map_end(this.swigCPtr, this), true);
    }

    private Iterator find(int i) {
        return new Iterator(libtorrent_jni.int_string_map_find(this.swigCPtr, this, i), true);
    }

    public static long getCPtr(int_string_map int_string_mapVar) {
        if (int_string_mapVar == null) {
            return 0L;
        }
        return int_string_mapVar.swigCPtr;
    }

    private void putUnchecked(int i, String str) {
        libtorrent_jni.int_string_map_putUnchecked(this.swigCPtr, this, i, str);
    }

    private void removeUnchecked(Iterator iterator) {
        libtorrent_jni.int_string_map_removeUnchecked(this.swigCPtr, this, Iterator.getCPtr(iterator), iterator);
    }

    private int sizeImpl() {
        return libtorrent_jni.int_string_map_sizeImpl(this.swigCPtr, this);
    }

    public static long swigRelease(int_string_map int_string_mapVar) {
        if (int_string_mapVar == null) {
            return 0L;
        }
        if (!int_string_mapVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = int_string_mapVar.swigCPtr;
        int_string_mapVar.swigCMemOwn = false;
        int_string_mapVar.delete();
        return j;
    }

    @Override
    public void clear() {
        libtorrent_jni.int_string_map_clear(this.swigCPtr, this);
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
                    libtorrent_jni.delete_int_string_map(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [org.libtorrent4j.swig.int_string_map$1] */
    @Override
    public Set<Map.Entry<Integer, String>> entrySet() {
        HashSet hashSet = new HashSet();
        Iterator iteratorEnd = end();
        for (Iterator iteratorBegin = begin(); iteratorBegin.isNot(iteratorEnd); iteratorBegin = iteratorBegin.getNextUnchecked()) {
            hashSet.add(new Map.Entry<Integer, String>() {
                private Iterator iterator;

                public Map.Entry<Integer, String> init(Iterator iterator) {
                    this.iterator = iterator;
                    return this;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Integer getKey() {
                    return Integer.valueOf(this.iterator.getKey());
                }

                @Override
                public String getValue() {
                    return this.iterator.getValue();
                }

                @Override
                public String setValue(String str) {
                    String value = this.iterator.getValue();
                    this.iterator.setValue(str);
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
        return libtorrent_jni.int_string_map_isEmpty(this.swigCPtr, this);
    }

    @Override
    public int size() {
        return sizeImpl();
    }

    @Override
    public String get(Object obj) {
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
    public String put(Integer num, String str) {
        Iterator iteratorFind = find(num.intValue());
        if (!iteratorFind.isNot(end())) {
            putUnchecked(num.intValue(), str);
            return null;
        }
        String value = iteratorFind.getValue();
        iteratorFind.setValue(str);
        return value;
    }

    @Override
    public String remove(Object obj) {
        if (!(obj instanceof Integer)) {
            return null;
        }
        Iterator iteratorFind = find(((Integer) obj).intValue());
        if (!iteratorFind.isNot(end())) {
            return null;
        }
        String value = iteratorFind.getValue();
        removeUnchecked(iteratorFind);
        return value;
    }

    public int_string_map() {
        this(libtorrent_jni.new_int_string_map__SWIG_0(), true);
    }

    public int_string_map(int_string_map int_string_mapVar) {
        this(libtorrent_jni.new_int_string_map__SWIG_1(getCPtr(int_string_mapVar), int_string_mapVar), true);
    }
}
