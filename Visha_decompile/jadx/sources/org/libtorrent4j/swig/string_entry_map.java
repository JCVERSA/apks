package org.libtorrent4j.swig;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class string_entry_map extends AbstractMap<String, entry> {
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
            return libtorrent_jni.string_entry_map_Iterator_getKey(this.swigCPtr, this);
        }

        public Iterator getNextUnchecked() {
            return new Iterator(libtorrent_jni.string_entry_map_Iterator_getNextUnchecked(this.swigCPtr, this), true);
        }

        public entry getValue() {
            return new entry(libtorrent_jni.string_entry_map_Iterator_getValue(this.swigCPtr, this), true);
        }

        public boolean isNot(Iterator iterator) {
            return libtorrent_jni.string_entry_map_Iterator_isNot(this.swigCPtr, this, getCPtr(iterator), iterator);
        }

        public void setValue(entry entryVar) {
            libtorrent_jni.string_entry_map_Iterator_setValue(this.swigCPtr, this, entry.getCPtr(entryVar), entryVar);
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
                        libtorrent_jni.delete_string_entry_map_Iterator(j);
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

    public string_entry_map(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private Iterator begin() {
        return new Iterator(libtorrent_jni.string_entry_map_begin(this.swigCPtr, this), true);
    }

    private boolean containsImpl(String str) {
        return libtorrent_jni.string_entry_map_containsImpl(this.swigCPtr, this, str);
    }

    private Iterator end() {
        return new Iterator(libtorrent_jni.string_entry_map_end(this.swigCPtr, this), true);
    }

    private Iterator find(String str) {
        return new Iterator(libtorrent_jni.string_entry_map_find(this.swigCPtr, this, str), true);
    }

    public static long getCPtr(string_entry_map string_entry_mapVar) {
        if (string_entry_mapVar == null) {
            return 0L;
        }
        return string_entry_mapVar.swigCPtr;
    }

    private void putUnchecked(String str, entry entryVar) {
        libtorrent_jni.string_entry_map_putUnchecked(this.swigCPtr, this, str, entry.getCPtr(entryVar), entryVar);
    }

    private void removeUnchecked(Iterator iterator) {
        libtorrent_jni.string_entry_map_removeUnchecked(this.swigCPtr, this, Iterator.getCPtr(iterator), iterator);
    }

    private int sizeImpl() {
        return libtorrent_jni.string_entry_map_sizeImpl(this.swigCPtr, this);
    }

    public static long swigRelease(string_entry_map string_entry_mapVar) {
        if (string_entry_mapVar == null) {
            return 0L;
        }
        if (!string_entry_mapVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = string_entry_mapVar.swigCPtr;
        string_entry_mapVar.swigCMemOwn = false;
        string_entry_mapVar.delete();
        return j;
    }

    @Override
    public void clear() {
        libtorrent_jni.string_entry_map_clear(this.swigCPtr, this);
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
                    libtorrent_jni.delete_string_entry_map(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [org.libtorrent4j.swig.string_entry_map$1] */
    @Override
    public Set<Map.Entry<String, entry>> entrySet() {
        HashSet hashSet = new HashSet();
        Iterator iteratorEnd = end();
        for (Iterator iteratorBegin = begin(); iteratorBegin.isNot(iteratorEnd); iteratorBegin = iteratorBegin.getNextUnchecked()) {
            hashSet.add(new Map.Entry<String, entry>() {
                private Iterator iterator;

                public Map.Entry<String, entry> init(Iterator iterator) {
                    this.iterator = iterator;
                    return this;
                }

                @Override
                public String getKey() {
                    return this.iterator.getKey();
                }

                @Override
                public entry getValue() {
                    return this.iterator.getValue();
                }

                @Override
                public entry setValue(entry entryVar) {
                    entry value = this.iterator.getValue();
                    this.iterator.setValue(entryVar);
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
        return libtorrent_jni.string_entry_map_isEmpty(this.swigCPtr, this);
    }

    @Override
    public int size() {
        return sizeImpl();
    }

    @Override
    public entry get(Object obj) {
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
    public entry put(String str, entry entryVar) {
        Iterator iteratorFind = find(str);
        if (!iteratorFind.isNot(end())) {
            putUnchecked(str, entryVar);
            return null;
        }
        entry value = iteratorFind.getValue();
        iteratorFind.setValue(entryVar);
        return value;
    }

    @Override
    public entry remove(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        Iterator iteratorFind = find((String) obj);
        if (!iteratorFind.isNot(end())) {
            return null;
        }
        entry value = iteratorFind.getValue();
        removeUnchecked(iteratorFind);
        return value;
    }

    public string_entry_map() {
        this(libtorrent_jni.new_string_entry_map__SWIG_0(), true);
    }

    public string_entry_map(string_entry_map string_entry_mapVar) {
        this(libtorrent_jni.new_string_entry_map__SWIG_1(getCPtr(string_entry_mapVar), string_entry_mapVar), true);
    }
}
