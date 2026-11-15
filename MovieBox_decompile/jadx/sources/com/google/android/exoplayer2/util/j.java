package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class j implements Iterable {

    private final Object f26819a = new Object();

    private final Map f26820b = new HashMap();

    private Set f26821c = Collections.emptySet();

    private List f26822d = Collections.emptyList();

    public void a(Object obj) {
        synchronized (this.f26819a) {
            try {
                ArrayList arrayList = new ArrayList(this.f26822d);
                arrayList.add(obj);
                this.f26822d = Collections.unmodifiableList(arrayList);
                Integer num = (Integer) this.f26820b.get(obj);
                if (num == null) {
                    HashSet hashSet = new HashSet(this.f26821c);
                    hashSet.add(obj);
                    this.f26821c = Collections.unmodifiableSet(hashSet);
                }
                this.f26820b.put(obj, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(Object obj) {
        synchronized (this.f26819a) {
            try {
                Integer num = (Integer) this.f26820b.get(obj);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.f26822d);
                arrayList.remove(obj);
                this.f26822d = Collections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.f26820b.remove(obj);
                    HashSet hashSet = new HashSet(this.f26821c);
                    hashSet.remove(obj);
                    this.f26821c = Collections.unmodifiableSet(hashSet);
                } else {
                    this.f26820b.put(obj, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int count(Object obj) {
        int iIntValue;
        synchronized (this.f26819a) {
            try {
                iIntValue = this.f26820b.containsKey(obj) ? ((Integer) this.f26820b.get(obj)).intValue() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iIntValue;
    }

    public Set elementSet() {
        Set set;
        synchronized (this.f26819a) {
            set = this.f26821c;
        }
        return set;
    }

    @Override
    public Iterator iterator() {
        Iterator it;
        synchronized (this.f26819a) {
            it = this.f26822d.iterator();
        }
        return it;
    }
}
