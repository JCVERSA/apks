package com.yandex.mobile.ads.impl;

import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class rs<E> implements Iterable<E> {
    private final Object b = new Object();

    @GuardedBy("lock")
    private final HashMap c = new HashMap();

    @GuardedBy("lock")
    private Set<E> d = Collections.emptySet();

    @GuardedBy("lock")
    private List<E> e = Collections.emptyList();

    public final void a(E e) {
        synchronized (this.b) {
            try {
                ArrayList arrayList = new ArrayList(this.e);
                arrayList.add(e);
                this.e = Collections.unmodifiableList(arrayList);
                Integer num = (Integer) this.c.get(e);
                if (num == null) {
                    HashSet hashSet = new HashSet(this.d);
                    hashSet.add(e);
                    this.d = Collections.unmodifiableSet(hashSet);
                }
                this.c.put(e, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int b(E e) {
        int iIntValue;
        synchronized (this.b) {
            try {
                iIntValue = this.c.containsKey(e) ? ((Integer) this.c.get(e)).intValue() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    public final void c(E e) {
        synchronized (this.b) {
            try {
                Integer num = (Integer) this.c.get(e);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.e);
                arrayList.remove(e);
                this.e = Collections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.c.remove(e);
                    HashSet hashSet = new HashSet(this.d);
                    hashSet.remove(e);
                    this.d = Collections.unmodifiableSet(hashSet);
                } else {
                    this.c.put(e, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final Iterator<E> iterator() {
        Iterator<E> it;
        synchronized (this.b) {
            it = this.e.iterator();
        }
        return it;
    }

    public final Set<E> a() {
        Set<E> set;
        synchronized (this.b) {
            set = this.d;
        }
        return set;
    }
}
