package freemarker.ext.util;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

public class a extends AbstractSet {
    public final IdentityHashMap b;

    public a(IdentityHashMap identityHashMap) {
        this.b = identityHashMap;
    }

    @Override
    public void clear() {
        this.b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        IdentityHashMap.b[] bVarArr = this.b.table;
        int iIdentityHashCode = key == null ? 0 : System.identityHashCode(key);
        for (IdentityHashMap.b bVar = bVarArr[(Integer.MAX_VALUE & iIdentityHashCode) % bVarArr.length]; bVar != null; bVar = bVar.e) {
            if (bVar.b == iIdentityHashCode && bVar.equals(entry)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Iterator iterator() {
        return this.b.getHashIterator(2);
    }

    @Override
    public boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        IdentityHashMap.b[] bVarArr = this.b.table;
        int iIdentityHashCode = key == null ? 0 : System.identityHashCode(key);
        int length = (Integer.MAX_VALUE & iIdentityHashCode) % bVarArr.length;
        IdentityHashMap.b bVar = null;
        for (IdentityHashMap.b bVar2 = bVarArr[length]; bVar2 != null; bVar2 = bVar2.e) {
            if (bVar2.b == iIdentityHashCode && bVar2.equals(entry)) {
                IdentityHashMap.access$308(this.b);
                if (bVar != null) {
                    bVar.e = bVar2.e;
                } else {
                    bVarArr[length] = bVar2.e;
                }
                IdentityHashMap.access$110(this.b);
                bVar2.d = null;
                return true;
            }
            bVar = bVar2;
        }
        return false;
    }

    @Override
    public int size() {
        return this.b.count;
    }
}
