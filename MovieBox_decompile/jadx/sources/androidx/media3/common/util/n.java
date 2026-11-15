package androidx.media3.common.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class n implements Iterable {

    private final Object f10099a = new Object();

    private final Map f10100b = new HashMap();

    private Set f10101c = Collections.emptySet();

    private List f10102d = Collections.emptyList();

    public void a(Object obj) {
        synchronized (this.f10099a) {
            try {
                ArrayList arrayList = new ArrayList(this.f10102d);
                arrayList.add(obj);
                this.f10102d = Collections.unmodifiableList(arrayList);
                Integer num = (Integer) this.f10100b.get(obj);
                if (num == null) {
                    HashSet hashSet = new HashSet(this.f10101c);
                    hashSet.add(obj);
                    this.f10101c = Collections.unmodifiableSet(hashSet);
                }
                this.f10100b.put(obj, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(Object obj) {
        synchronized (this.f10099a) {
            try {
                Integer num = (Integer) this.f10100b.get(obj);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.f10102d);
                arrayList.remove(obj);
                this.f10102d = Collections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.f10100b.remove(obj);
                    HashSet hashSet = new HashSet(this.f10101c);
                    hashSet.remove(obj);
                    this.f10101c = Collections.unmodifiableSet(hashSet);
                } else {
                    this.f10100b.put(obj, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int count(Object obj) {
        int iIntValue;
        synchronized (this.f10099a) {
            try {
                iIntValue = this.f10100b.containsKey(obj) ? ((Integer) this.f10100b.get(obj)).intValue() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iIntValue;
    }

    public Set elementSet() {
        Set set;
        synchronized (this.f10099a) {
            set = this.f10101c;
        }
        return set;
    }

    @Override
    public Iterator iterator() {
        Iterator it;
        synchronized (this.f10099a) {
            it = this.f10102d.iterator();
        }
        return it;
    }
}
