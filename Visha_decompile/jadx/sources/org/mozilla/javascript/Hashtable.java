package org.mozilla.javascript;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import org.mozilla.javascript.Hashtable;

public class Hashtable implements Serializable, Iterable<Entry> {
    static final boolean $assertionsDisabled = false;
    private static final long serialVersionUID = -7151554912419543747L;
    private final HashMap<Object, Entry> map = new HashMap<>();
    private Entry first = null;
    private Entry last = null;

    public static final class a implements Iterator {
        public Entry b;

        public a(Entry entry) {
            Entry entryMakeDummy = Hashtable.makeDummy();
            entryMakeDummy.next = entry;
            this.b = entryMakeDummy;
        }

        @Override
        public Entry next() {
            Entry entry;
            b();
            Entry entry2 = this.b;
            if (entry2 == null || (entry = entry2.next) == null) {
                throw new NoSuchElementException();
            }
            this.b = entry;
            return entry;
        }

        public final void b() {
            while (true) {
                Entry entry = this.b.next;
                if (entry == null || !entry.deleted) {
                    return;
                } else {
                    this.b = entry;
                }
            }
        }

        @Override
        public boolean hasNext() {
            b();
            Entry entry = this.b;
            return (entry == null || entry.next == null) ? false : true;
        }
    }

    public static Entry makeDummy() {
        Entry entry = new Entry();
        entry.clear();
        return entry;
    }

    public void clear() {
        iterator().forEachRemaining(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((Hashtable.Entry) obj).clear();
            }
        });
        if (this.first != null) {
            Entry entryMakeDummy = makeDummy();
            this.last.next = entryMakeDummy;
            this.last = entryMakeDummy;
            this.first = entryMakeDummy;
        }
        this.map.clear();
    }

    public Object delete(Object obj) {
        Entry entryRemove = this.map.remove(new Entry(obj, null));
        if (entryRemove == null) {
            return null;
        }
        if (entryRemove != this.first) {
            Entry entry = entryRemove.prev;
            entry.next = entryRemove.next;
            entryRemove.prev = null;
            Entry entry2 = entryRemove.next;
            if (entry2 != null) {
                entry2.prev = entry;
            } else {
                this.last = entry;
            }
        } else if (entryRemove == this.last) {
            entryRemove.clear();
            entryRemove.prev = null;
        } else {
            Entry entry3 = entryRemove.next;
            this.first = entry3;
            entry3.prev = null;
            Entry entry4 = entry3.next;
            if (entry4 != null) {
                entry4.prev = entry3;
            }
        }
        return entryRemove.clear();
    }

    public Object get(Object obj) {
        Entry entry = this.map.get(new Entry(obj, null));
        if (entry == null) {
            return null;
        }
        return entry.value;
    }

    public boolean has(Object obj) {
        return this.map.containsKey(new Entry(obj, null));
    }

    @Override
    public Iterator<Entry> iterator() {
        return new a(this.first);
    }

    public void put(Object obj, Object obj2) {
        Entry entry = new Entry(obj, obj2);
        Entry entryPutIfAbsent = this.map.putIfAbsent(entry, entry);
        if (entryPutIfAbsent != null) {
            entryPutIfAbsent.value = obj2;
            return;
        }
        if (this.first == null) {
            this.last = entry;
            this.first = entry;
        } else {
            Entry entry2 = this.last;
            entry2.next = entry;
            entry.prev = entry2;
            this.last = entry;
        }
    }

    public int size() {
        return this.map.size();
    }

    public static final class Entry implements Serializable {
        private static final long serialVersionUID = 4086572107122965503L;
        protected boolean deleted;
        private final int hashCode;
        protected Object key;
        protected Entry next;
        protected Entry prev;
        protected Object value;

        public Entry() {
            this.hashCode = 0;
        }

        public Object clear() {
            Object obj = this.value;
            Object obj2 = Undefined.instance;
            this.key = obj2;
            this.value = obj2;
            this.deleted = true;
            return obj;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return ScriptRuntime.sameZero(this.key, ((Entry) obj).key);
            } catch (ClassCastException unused) {
                return false;
            }
        }

        public int hashCode() {
            return this.hashCode;
        }

        public Object key() {
            return this.key;
        }

        public Object value() {
            return this.value;
        }

        public Entry(Object obj, Object obj2) {
            if ((obj instanceof Number) && !(obj instanceof Double)) {
                this.key = Double.valueOf(((Number) obj).doubleValue());
            } else if (obj instanceof ConsString) {
                this.key = obj.toString();
            } else {
                this.key = obj;
            }
            if (this.key == null || obj.equals(ScriptRuntime.negativeZeroObj)) {
                this.hashCode = 0;
            } else {
                this.hashCode = this.key.hashCode();
            }
            this.value = obj2;
        }
    }
}
