package freemarker.ext.util;

import defpackage.ox4;
import defpackage.px4;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public class IdentityHashMap extends AbstractMap implements Map, Cloneable, Serializable {
    private static final int ENTRIES = 2;
    private static final int KEYS = 0;
    private static final int VALUES = 1;
    private static a emptyHashIterator = new a();
    public static final long serialVersionUID = 362498820763181265L;
    private transient int count;
    private transient Set entrySet;
    private transient Set keySet;
    private float loadFactor;
    private transient int modCount;
    private transient b[] table;
    private int threshold;
    private transient Collection values;

    public static class a implements Iterator {
        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override
        public void remove() {
            throw new IllegalStateException();
        }
    }

    public static class b implements Map.Entry {
        public int b;
        public Object c;
        public Object d;
        public b e;

        public b(int i, Object obj, Object obj2, b bVar) {
            this.b = i;
            this.c = obj;
            this.d = obj2;
            this.e = bVar;
        }

        public Object clone() {
            int i = this.b;
            Object obj = this.c;
            Object obj2 = this.d;
            b bVar = this.e;
            return new b(i, obj, obj2, bVar == null ? null : (b) bVar.clone());
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (this.c != entry.getKey()) {
                return false;
            }
            Object obj2 = this.d;
            if (obj2 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!obj2.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override
        public Object getKey() {
            return this.c;
        }

        @Override
        public Object getValue() {
            return this.d;
        }

        @Override
        public int hashCode() {
            int i = this.b;
            Object obj = this.d;
            return (obj == null ? 0 : obj.hashCode()) ^ i;
        }

        @Override
        public Object setValue(Object obj) {
            Object obj2 = this.d;
            this.d = obj;
            return obj2;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.c);
            stringBuffer.append("=");
            stringBuffer.append(this.d);
            return stringBuffer.toString();
        }
    }

    public class c implements Iterator {
        public b[] b;
        public int c;
        public b d;
        public b e;
        public int f;
        public int g;

        public c(int i) {
            b[] bVarArr = IdentityHashMap.this.table;
            this.b = bVarArr;
            this.c = bVarArr.length;
            this.d = null;
            this.e = null;
            this.g = IdentityHashMap.this.modCount;
            this.f = i;
        }

        @Override
        public boolean hasNext() {
            b bVar = this.d;
            int i = this.c;
            b[] bVarArr = this.b;
            while (bVar == null && i > 0) {
                i--;
                bVar = bVarArr[i];
            }
            this.d = bVar;
            this.c = i;
            return bVar != null;
        }

        @Override
        public Object next() {
            if (IdentityHashMap.this.modCount != this.g) {
                throw new ConcurrentModificationException();
            }
            b bVar = this.d;
            int i = this.c;
            b[] bVarArr = this.b;
            while (bVar == null && i > 0) {
                i--;
                bVar = bVarArr[i];
            }
            this.d = bVar;
            this.c = i;
            if (bVar == null) {
                throw new NoSuchElementException();
            }
            this.e = bVar;
            this.d = bVar.e;
            int i2 = this.f;
            if (i2 == 0) {
                return bVar.c;
            }
            return i2 == 1 ? bVar.d : bVar;
        }

        @Override
        public void remove() {
            if (this.e == null) {
                throw new IllegalStateException();
            }
            if (IdentityHashMap.this.modCount != this.g) {
                throw new ConcurrentModificationException();
            }
            b[] bVarArr = IdentityHashMap.this.table;
            int length = (this.e.b & Integer.MAX_VALUE) % bVarArr.length;
            b bVar = null;
            for (b bVar2 = bVarArr[length]; bVar2 != null; bVar2 = bVar2.e) {
                if (bVar2 == this.e) {
                    IdentityHashMap.access$308(IdentityHashMap.this);
                    this.g++;
                    if (bVar == null) {
                        bVarArr[length] = bVar2.e;
                    } else {
                        bVar.e = bVar2.e;
                    }
                    IdentityHashMap.access$110(IdentityHashMap.this);
                    this.e = null;
                    return;
                }
                bVar = bVar2;
            }
            throw new ConcurrentModificationException();
        }
    }

    public IdentityHashMap(int i, float f) {
        this.modCount = 0;
        this.keySet = null;
        this.entrySet = null;
        this.values = null;
        if (i < 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Illegal Initial Capacity: ");
            stringBuffer.append(i);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        if (f <= 0.0f || Float.isNaN(f)) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Illegal Load factor: ");
            stringBuffer2.append(f);
            throw new IllegalArgumentException(stringBuffer2.toString());
        }
        i = i == 0 ? 1 : i;
        this.loadFactor = f;
        this.table = new b[i];
        this.threshold = (int) (i * f);
    }

    public static int access$110(IdentityHashMap identityHashMap) {
        int i = identityHashMap.count;
        identityHashMap.count = i - 1;
        return i;
    }

    public static int access$308(IdentityHashMap identityHashMap) {
        int i = identityHashMap.modCount;
        identityHashMap.modCount = i + 1;
        return i;
    }

    public Iterator getHashIterator(int i) {
        return this.count == 0 ? emptyHashIterator : new c(i);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.table = new b[objectInputStream.readInt()];
        int i = objectInputStream.readInt();
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void rehash() {
        b[] bVarArr = this.table;
        int length = bVarArr.length;
        int i = (length * 2) + 1;
        b[] bVarArr2 = new b[i];
        this.modCount++;
        this.threshold = (int) (i * this.loadFactor);
        this.table = bVarArr2;
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return;
            }
            b bVar = bVarArr[i2];
            while (bVar != null) {
                b bVar2 = bVar.e;
                int i3 = (bVar.b & Integer.MAX_VALUE) % i;
                bVar.e = bVarArr2[i3];
                bVarArr2[i3] = bVar;
                bVar = bVar2;
            }
            length = i2;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.table.length);
        objectOutputStream.writeInt(this.count);
        for (int length = this.table.length - 1; length >= 0; length--) {
            for (b bVar = this.table[length]; bVar != null; bVar = bVar.e) {
                objectOutputStream.writeObject(bVar.c);
                objectOutputStream.writeObject(bVar.d);
            }
        }
    }

    public int capacity() {
        return this.table.length;
    }

    @Override
    public void clear() {
        b[] bVarArr = this.table;
        this.modCount++;
        int length = bVarArr.length;
        while (true) {
            length--;
            if (length < 0) {
                this.count = 0;
                return;
            }
            bVarArr[length] = null;
        }
    }

    @Override
    public Object clone() {
        try {
            IdentityHashMap identityHashMap = (IdentityHashMap) super.clone();
            identityHashMap.table = new b[this.table.length];
            int length = this.table.length;
            while (true) {
                int i = length - 1;
                b bVar = null;
                if (length <= 0) {
                    identityHashMap.keySet = null;
                    identityHashMap.entrySet = null;
                    identityHashMap.values = null;
                    identityHashMap.modCount = 0;
                    return identityHashMap;
                }
                b[] bVarArr = identityHashMap.table;
                b bVar2 = this.table[i];
                if (bVar2 != null) {
                    bVar = (b) bVar2.clone();
                }
                bVarArr[i] = bVar;
                length = i;
            }
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        b[] bVarArr = this.table;
        if (obj != null) {
            int iIdentityHashCode = System.identityHashCode(obj);
            for (b bVar = bVarArr[(Integer.MAX_VALUE & iIdentityHashCode) % bVarArr.length]; bVar != null; bVar = bVar.e) {
                if (bVar.b == iIdentityHashCode && obj == bVar.c) {
                    return true;
                }
            }
        } else {
            for (b bVar2 = bVarArr[0]; bVar2 != null; bVar2 = bVar2.e) {
                if (bVar2.c == null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean containsValue(Object obj) {
        b[] bVarArr = this.table;
        if (obj == null) {
            int length = bVarArr.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    return false;
                }
                for (b bVar = bVarArr[i]; bVar != null; bVar = bVar.e) {
                    if (bVar.d == null) {
                        return true;
                    }
                }
                length = i;
            }
        } else {
            int length2 = bVarArr.length;
            while (true) {
                int i2 = length2 - 1;
                if (length2 <= 0) {
                    return false;
                }
                for (b bVar2 = bVarArr[i2]; bVar2 != null; bVar2 = bVar2.e) {
                    if (obj.equals(bVar2.d)) {
                        return true;
                    }
                }
                length2 = i2;
            }
        }
    }

    @Override
    public Set entrySet() {
        if (this.entrySet == null) {
            this.entrySet = new freemarker.ext.util.a(this);
        }
        return this.entrySet;
    }

    @Override
    public Object get(Object obj) {
        b[] bVarArr = this.table;
        if (obj == null) {
            for (b bVar = bVarArr[0]; bVar != null; bVar = bVar.e) {
                if (bVar.c == null) {
                    return bVar.d;
                }
            }
            return null;
        }
        int iIdentityHashCode = System.identityHashCode(obj);
        for (b bVar2 = bVarArr[(Integer.MAX_VALUE & iIdentityHashCode) % bVarArr.length]; bVar2 != null; bVar2 = bVar2.e) {
            if (bVar2.b == iIdentityHashCode && obj == bVar2.c) {
                return bVar2.d;
            }
        }
        return null;
    }

    @Override
    public boolean isEmpty() {
        return this.count == 0;
    }

    @Override
    public Set keySet() {
        if (this.keySet == null) {
            this.keySet = new ox4(this);
        }
        return this.keySet;
    }

    public float loadFactor() {
        return this.loadFactor;
    }

    @Override
    public Object put(Object obj, Object obj2) {
        int iIdentityHashCode;
        int length;
        b[] bVarArr = this.table;
        if (obj != null) {
            iIdentityHashCode = System.identityHashCode(obj);
            length = (iIdentityHashCode & Integer.MAX_VALUE) % bVarArr.length;
            for (b bVar = bVarArr[length]; bVar != null; bVar = bVar.e) {
                if (bVar.b == iIdentityHashCode && obj == bVar.c) {
                    Object obj3 = bVar.d;
                    bVar.d = obj2;
                    return obj3;
                }
            }
        } else {
            iIdentityHashCode = 0;
            for (b bVar2 = bVarArr[0]; bVar2 != null; bVar2 = bVar2.e) {
                if (bVar2.c == null) {
                    Object obj4 = bVar2.d;
                    bVar2.d = obj2;
                    return obj4;
                }
            }
            length = 0;
        }
        this.modCount++;
        if (this.count >= this.threshold) {
            rehash();
            bVarArr = this.table;
            length = (Integer.MAX_VALUE & iIdentityHashCode) % bVarArr.length;
        }
        bVarArr[length] = new b(iIdentityHashCode, obj, obj2, bVarArr[length]);
        this.count++;
        return null;
    }

    @Override
    public void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public Object remove(Object obj) {
        b[] bVarArr = this.table;
        if (obj != null) {
            int iIdentityHashCode = System.identityHashCode(obj);
            int length = (Integer.MAX_VALUE & iIdentityHashCode) % bVarArr.length;
            b bVar = null;
            for (b bVar2 = bVarArr[length]; bVar2 != null; bVar2 = bVar2.e) {
                if (bVar2.b == iIdentityHashCode && obj == bVar2.c) {
                    this.modCount++;
                    if (bVar != null) {
                        bVar.e = bVar2.e;
                    } else {
                        bVarArr[length] = bVar2.e;
                    }
                    this.count--;
                    Object obj2 = bVar2.d;
                    bVar2.d = null;
                    return obj2;
                }
                bVar = bVar2;
            }
        } else {
            b bVar3 = null;
            for (b bVar4 = bVarArr[0]; bVar4 != null; bVar4 = bVar4.e) {
                if (bVar4.c == null) {
                    this.modCount++;
                    if (bVar3 != null) {
                        bVar3.e = bVar4.e;
                    } else {
                        bVarArr[0] = bVar4.e;
                    }
                    this.count--;
                    Object obj3 = bVar4.d;
                    bVar4.d = null;
                    return obj3;
                }
                bVar3 = bVar4;
            }
        }
        return null;
    }

    @Override
    public int size() {
        return this.count;
    }

    @Override
    public Collection values() {
        if (this.values == null) {
            this.values = new px4(this);
        }
        return this.values;
    }

    public IdentityHashMap(int i) {
        this(i, 0.75f);
    }

    public IdentityHashMap() {
        this(11, 0.75f);
    }

    public IdentityHashMap(Map map) {
        this(Math.max(map.size() * 2, 11), 0.75f);
        putAll(map);
    }
}
