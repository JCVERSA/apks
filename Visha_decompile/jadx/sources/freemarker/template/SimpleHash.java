package freemarker.template;

import defpackage.bfa;
import defpackage.gc7;
import defpackage.k0d;
import defpackage.npc;
import defpackage.pfa;
import defpackage.zfa;
import freemarker.core._TemplateModelException;
import freemarker.ext.beans.b;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

public class SimpleHash extends npc implements pfa, Serializable {
    private final Map map;
    private boolean putFailed;
    private Map unwrappedMap;

    public class SynchronizedHash extends SimpleHash {
        public SynchronizedHash() {
        }

        @Override
        public zfa get(String str) throws TemplateModelException {
            zfa zfaVar;
            synchronized (SimpleHash.this) {
                zfaVar = SimpleHash.this.get(str);
            }
            return zfaVar;
        }

        @Override
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (SimpleHash.this) {
                zIsEmpty = SimpleHash.this.isEmpty();
            }
            return zIsEmpty;
        }

        @Override
        public bfa keys() {
            bfa bfaVarKeys;
            synchronized (SimpleHash.this) {
                bfaVarKeys = SimpleHash.this.keys();
            }
            return bfaVarKeys;
        }

        @Override
        public void put(String str, Object obj) {
            synchronized (SimpleHash.this) {
                SimpleHash.this.put(str, obj);
            }
        }

        @Override
        public void remove(String str) {
            synchronized (SimpleHash.this) {
                SimpleHash.this.remove(str);
            }
        }

        @Override
        public int size() {
            int size;
            synchronized (SimpleHash.this) {
                size = SimpleHash.this.size();
            }
            return size;
        }

        @Override
        public Map toMap() throws TemplateModelException {
            Map map;
            synchronized (SimpleHash.this) {
                map = SimpleHash.this.toMap();
            }
            return map;
        }

        @Override
        public bfa values() {
            bfa bfaVarValues;
            synchronized (SimpleHash.this) {
                bfaVarValues = SimpleHash.this.values();
            }
            return bfaVarValues;
        }
    }

    public SimpleHash() {
        this((gc7) null);
    }

    public boolean containsKey(String str) {
        return this.map.containsKey(str);
    }

    public Map copyMap(Map map) {
        if (map instanceof HashMap) {
            return (Map) ((HashMap) map).clone();
        }
        if (map instanceof SortedMap) {
            return map instanceof TreeMap ? (Map) ((TreeMap) map).clone() : new TreeMap((SortedMap) map);
        }
        return new HashMap(map);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0063 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x0066  */
    public zfa get(String str) throws TemplateModelException {
        Object obj;
        Character ch;
        Object obj2;
        try {
            Object obj3 = this.map.get(str);
            Object obj4 = str;
            if (obj3 == null) {
                if (str.length() != 1 || (this.map instanceof SortedMap)) {
                    obj = obj3;
                } else {
                    ch = new Character(str.charAt(0));
                    try {
                        obj = this.map.get(ch);
                        if (obj == null && !this.map.containsKey(ch)) {
                        }
                        if (ch == null) {
                            obj2 = ch;
                        } else if (!this.map.containsKey(str)) {
                            obj2 = str;
                            return null;
                        }
                        obj2 = str;
                        obj3 = obj;
                        obj4 = obj2;
                    } catch (ClassCastException e) {
                        throw new _TemplateModelException(e, new Object[]{"ClassCastException while getting Map entry with Character key ", new k0d(str)});
                    } catch (NullPointerException e2) {
                        throw new _TemplateModelException(e2, new Object[]{"NullPointerException while getting Map entry with Character key ", new k0d(str)});
                    }
                }
                ch = null;
                if (ch == null) {
                    obj2 = ch;
                } else if (!this.map.containsKey(str)) {
                    obj2 = str;
                    return null;
                }
                obj2 = str;
                obj3 = obj;
                obj4 = obj2;
            }
            if (obj3 instanceof zfa) {
                return (zfa) obj3;
            }
            zfa zfaVarWrap = wrap(obj3);
            if (!this.putFailed) {
                try {
                    this.map.put(obj4, zfaVarWrap);
                } catch (Exception unused) {
                    this.putFailed = true;
                }
            }
            return zfaVarWrap;
        } catch (ClassCastException e3) {
            throw new _TemplateModelException(e3, new Object[]{"ClassCastException while getting Map entry with String key ", new k0d(str)});
        } catch (NullPointerException e4) {
            throw new _TemplateModelException(e4, new Object[]{"NullPointerException while getting Map entry with String key ", new k0d(str)});
        }
    }

    @Override
    public boolean isEmpty() {
        Map map = this.map;
        return map == null || map.isEmpty();
    }

    @Override
    public bfa keys() {
        return new SimpleCollection(this.map.keySet(), getObjectWrapper());
    }

    public void put(String str, Object obj) {
        this.map.put(str, obj);
        this.unwrappedMap = null;
    }

    public void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            put((String) entry.getKey(), entry.getValue());
        }
    }

    public void remove(String str) {
        this.map.remove(str);
    }

    @Override
    public int size() {
        return this.map.size();
    }

    public SimpleHash synchronizedWrapper() {
        return new SynchronizedHash();
    }

    public Map toMap() throws Throwable {
        if (this.unwrappedMap == null) {
            Class<?> cls = this.map.getClass();
            try {
                Map map = (Map) cls.newInstance();
                b bVarS = b.s();
                for (Map.Entry entry : this.map.entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof zfa) {
                        value = bVarS.b((zfa) value);
                    }
                    map.put(key, value);
                }
                this.unwrappedMap = map;
            } catch (Exception e) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Error instantiating map of type ");
                stringBuffer.append(cls.getName());
                stringBuffer.append("\n");
                stringBuffer.append(e.getMessage());
                throw new TemplateModelException(stringBuffer.toString());
            }
        }
        return this.unwrappedMap;
    }

    public String toString() {
        return this.map.toString();
    }

    @Override
    public bfa values() {
        return new SimpleCollection(this.map.values(), getObjectWrapper());
    }

    public SimpleHash(Map map) {
        this(map, null);
    }

    public SimpleHash(gc7 gc7Var) {
        super(gc7Var);
        this.map = new HashMap();
    }

    public void put(String str, boolean z) {
        put(str, z ? a.z6 : a.y6);
    }

    public SimpleHash(Map map, gc7 gc7Var) {
        Map mapCopyMap;
        super(gc7Var);
        try {
            mapCopyMap = copyMap(map);
        } catch (ConcurrentModificationException unused) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused2) {
            }
            synchronized (map) {
                mapCopyMap = copyMap(map);
            }
        }
        this.map = mapCopyMap;
    }
}
