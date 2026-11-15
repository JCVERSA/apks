package org.libtorrent4j;

import java.io.File;
import java.io.IOException;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.libtorrent4j.swig.boost_string_entry_map;
import org.libtorrent4j.swig.entry;
import org.libtorrent4j.swig.entry_vector;

public final class Entry {
    private final entry e;

    public static final class EntryList extends AbstractList<Entry> {
        private final entry_vector v;

        public EntryList(entry_vector entry_vectorVar) {
            this.v = entry_vectorVar;
        }

        @Override
        public void clear() {
            this.v.clear();
        }

        @Override
        public boolean isEmpty() {
            return this.v.isEmpty();
        }

        @Override
        public int size() {
            return this.v.size();
        }

        @Override
        public boolean add(Entry entry) {
            this.v.add(entry.swig());
            return true;
        }

        @Override
        public Entry get(int i) {
            return new Entry(this.v.get(i));
        }
    }

    public static final class EntryMap extends AbstractMap<String, Entry> {
        private final boost_string_entry_map m;

        public EntryMap(boost_string_entry_map boost_string_entry_mapVar) {
            this.m = boost_string_entry_mapVar;
        }

        @Override
        public void clear() {
            this.m.clear();
        }

        @Override
        public boolean containsKey(Object obj) {
            return this.m.contains(obj.toString());
        }

        @Override
        public Set<Map.Entry<String, Entry>> entrySet() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean isEmpty() {
            return this.m.empty();
        }

        @Override
        public Set<String> keySet() {
            return new HashSet(this.m.keys());
        }

        @Override
        public int size() {
            return (int) this.m.size();
        }

        @Override
        public Entry get(Object obj) {
            if (this.m.contains(obj.toString())) {
                return new Entry(this.m.get(obj.toString()));
            }
            return null;
        }

        @Override
        public Entry put(String str, Entry entry) {
            Entry entry2 = get((Object) str);
            this.m.put(str, entry.swig());
            return entry2;
        }
    }

    public Entry(entry entryVar) {
        this.e = entryVar;
    }

    public static Entry bdecode(byte[] bArr) {
        return new Entry(entry.bdecode(Vectors.bytes2byte_vector(bArr)));
    }

    public static Entry fromList(List<?> list) {
        entry entryVar = new entry(entry.data_type.list_t);
        entry_vector list2 = entryVar.list();
        for (Object obj : list) {
            if (obj instanceof String) {
                list2.add(new entry((String) obj));
            } else if (obj instanceof Integer) {
                list2.add(new entry(((Integer) obj).intValue()));
            } else if (obj instanceof Entry) {
                list2.add(((Entry) obj).swig());
            } else if (obj instanceof entry) {
                list2.add((entry) obj);
            } else if (obj instanceof List) {
                list2.add(fromList((List) obj).swig());
            } else if (obj instanceof Map) {
                list2.add(fromMap((Map) obj).swig());
            } else {
                list2.add(new entry(obj.toString()));
            }
        }
        return new Entry(entryVar);
    }

    public static Entry fromMap(Map<String, ?> map) {
        entry entryVar = new entry(entry.data_type.dictionary_t);
        boost_string_entry_map boost_string_entry_mapVarDict = entryVar.dict();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof String) {
                boost_string_entry_mapVarDict.put(str, new entry((String) obj));
            } else if (obj instanceof Integer) {
                boost_string_entry_mapVarDict.put(str, new entry(((Integer) obj).intValue()));
            } else if (obj instanceof Entry) {
                boost_string_entry_mapVarDict.put(str, ((Entry) obj).swig());
            } else if (obj instanceof entry) {
                boost_string_entry_mapVarDict.put(str, (entry) obj);
            } else if (obj instanceof List) {
                boost_string_entry_mapVarDict.put(str, fromList((List) obj).swig());
            } else if (obj instanceof Map) {
                boost_string_entry_mapVarDict.put(str, fromMap((Map) obj).swig());
            } else {
                boost_string_entry_mapVarDict.put(str, new entry(obj.toString()));
            }
        }
        return new Entry(entryVar);
    }

    public byte[] bencode() {
        return Vectors.byte_vector2bytes(this.e.bencode());
    }

    public Map<String, Entry> dictionary() {
        return new EntryMap(this.e.dict());
    }

    public long integer() {
        return this.e.integer();
    }

    public List<Entry> list() {
        return new EntryList(this.e.list());
    }

    public String string() {
        return this.e.string();
    }

    public entry swig() {
        return this.e;
    }

    public String toString() {
        return this.e.to_string();
    }

    public static Entry bdecode(File file) throws IOException {
        return bdecode(Files.bytes(file));
    }

    public Entry(String str) {
        this(new entry(str));
    }

    public Entry(long j) {
        this(new entry(j));
    }
}
