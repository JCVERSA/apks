package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class wj1 implements Iterable {
    public final Object b = new Object();
    public final Map c = new HashMap();
    public Set d = Collections.emptySet();
    public List e = Collections.emptyList();

    public void b(Object obj) {
        synchronized (this.b) {
            try {
                ArrayList arrayList = new ArrayList(this.e);
                arrayList.add(obj);
                this.e = Collections.unmodifiableList(arrayList);
                Integer num = (Integer) this.c.get(obj);
                if (num == null) {
                    HashSet hashSet = new HashSet(this.d);
                    hashSet.add(obj);
                    this.d = Collections.unmodifiableSet(hashSet);
                }
                this.c.put(obj, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(Object obj) {
        synchronized (this.b) {
            try {
                Integer num = (Integer) this.c.get(obj);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.e);
                arrayList.remove(obj);
                this.e = Collections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.c.remove(obj);
                    HashSet hashSet = new HashSet(this.d);
                    hashSet.remove(obj);
                    this.d = Collections.unmodifiableSet(hashSet);
                } else {
                    this.c.put(obj, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int count(Object obj) {
        int iIntValue;
        synchronized (this.b) {
            try {
                iIntValue = this.c.containsKey(obj) ? ((Integer) this.c.get(obj)).intValue() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    public Set elementSet() {
        Set set;
        synchronized (this.b) {
            set = this.d;
        }
        return set;
    }

    @Override
    public Iterator iterator() {
        Iterator it;
        synchronized (this.b) {
            it = this.e.iterator();
        }
        return it;
    }
}
