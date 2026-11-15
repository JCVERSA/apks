package org.libtorrent4j.swig;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class string_string_map extends AbstractMap<String, String> {
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

        public String getKey() {
            return libtorrent_jni.string_string_map_Iterator_getKey(this.swigCPtr, this);
        }

        public Iterator getNextUnchecked() {
            return new Iterator(libtorrent_jni.string_string_map_Iterator_getNextUnchecked(this.swigCPtr, this), true);
        }

        public String getValue() {
            return libtorrent_jni.string_string_map_Iterator_getValue(this.swigCPtr, this);
        }

        public boolean isNot(Iterator iterator) {
            return libtorrent_jni.string_string_map_Iterator_isNot(this.swigCPtr, this, getCPtr(iterator), iterator);
        }

        public void setValue(String str) {
            libtorrent_jni.string_string_map_Iterator_setValue(this.swigCPtr, this, str);
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
                        libtorrent_jni.delete_string_string_map_Iterator(j);
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

    public string_string_map(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private Iterator begin() {
        return new Iterator(libtorrent_jni.string_string_map_begin(this.swigCPtr, this), true);
    }

    private boolean containsImpl(String str) {
        return libtorrent_jni.string_string_map_containsImpl(this.swigCPtr, this, str);
    }

    private Iterator end() {
        return new Iterator(libtorrent_jni.string_string_map_end(this.swigCPtr, this), true);
    }

    private Iterator find(String str) {
        return new Iterator(libtorrent_jni.string_string_map_find(this.swigCPtr, this, str), true);
    }

    public static long getCPtr(string_string_map string_string_mapVar) {
        if (string_string_mapVar == null) {
            return 0L;
        }
        return string_string_mapVar.swigCPtr;
    }

    private void putUnchecked(String str, String str2) {
        libtorrent_jni.string_string_map_putUnchecked(this.swigCPtr, this, str, str2);
    }

    private void removeUnchecked(Iterator iterator) {
        libtorrent_jni.string_string_map_removeUnchecked(this.swigCPtr, this, Iterator.getCPtr(iterator), iterator);
    }

    private int sizeImpl() {
        return libtorrent_jni.string_string_map_sizeImpl(this.swigCPtr, this);
    }

    public static long swigRelease(string_string_map string_string_mapVar) {
        if (string_string_mapVar == null) {
            return 0L;
        }
        if (!string_string_mapVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = string_string_mapVar.swigCPtr;
        string_string_mapVar.swigCMemOwn = false;
        string_string_mapVar.delete();
        return j;
    }

    @Override
    public void clear() {
        libtorrent_jni.string_string_map_clear(this.swigCPtr, this);
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return containsImpl((String) obj);
        }
        return false;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_string_string_map(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [org.libtorrent4j.swig.string_string_map$1] */
    @Override
    public Set<Map.Entry<String, String>> entrySet() {
        HashSet hashSet = new HashSet();
        Iterator iteratorEnd = end();
        for (Iterator iteratorBegin = begin(); iteratorBegin.isNot(iteratorEnd); iteratorBegin = iteratorBegin.getNextUnchecked()) {
            hashSet.add(new Map.Entry<String, String>() {
                private Iterator iterator;

                public Map.Entry<String, String> init(Iterator iterator) {
                    this.iterator = iterator;
                    return this;
                }

                @Override
                public String getKey() {
                    return this.iterator.getKey();
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
        return libtorrent_jni.string_string_map_isEmpty(this.swigCPtr, this);
    }

    @Override
    public int size() {
        return sizeImpl();
    }

    @Override
    public String get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        Iterator iteratorFind = find((String) obj);
        if (iteratorFind.isNot(end())) {
            return iteratorFind.getValue();
        }
        return null;
    }

    @Override
    public String put(String str, String str2) {
        Iterator iteratorFind = find(str);
        if (!iteratorFind.isNot(end())) {
            putUnchecked(str, str2);
            return null;
        }
        String value = iteratorFind.getValue();
        iteratorFind.setValue(str2);
        return value;
    }

    @Override
    public String remove(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        Iterator iteratorFind = find((String) obj);
        if (!iteratorFind.isNot(end())) {
            return null;
        }
        String value = iteratorFind.getValue();
        removeUnchecked(iteratorFind);
        return value;
    }

    public string_string_map() {
        this(libtorrent_jni.new_string_string_map__SWIG_0(), true);
    }

    public string_string_map(string_string_map string_string_mapVar) {
        this(libtorrent_jni.new_string_string_map__SWIG_1(getCPtr(string_string_mapVar), string_string_mapVar), true);
    }
}
