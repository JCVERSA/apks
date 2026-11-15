package com.yandex.mobile.ads.impl;

import com.transsion.dbdata.beans.media.PlayAudioData;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class lk0<K, V> implements Map<K, V>, Serializable {
    private transient mk0<Map.Entry<K, V>> b;
    private transient mk0<K> c;
    private transient ik0<V> d;

    public static class a<K, V> {
        Object[] a;
        int b;

        public a() {
            this(4);
        }

        public a(int i) {
            this.a = new Object[i * 2];
            this.b = 0;
        }

        public final lk0<K, V> a() {
            return mo1.a(this.b, this.a);
        }

        public void a(int i) {
            int i2 = i * 2;
            Object[] objArr = this.a;
            if (i2 > objArr.length) {
                int length = objArr.length;
                if (i2 >= 0) {
                    int iHighestOneBit = length + (length >> 1) + 1;
                    if (iHighestOneBit < i2) {
                        iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
                    }
                    if (iHighestOneBit < 0) {
                        iHighestOneBit = Integer.MAX_VALUE;
                    }
                    this.a = Arrays.copyOf(objArr, iHighestOneBit);
                    return;
                }
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
        }

        public final a<K, V> a(K k, V v) {
            a(this.b + 1);
            if (k == null) {
                throw new NullPointerException("null key in entry: null=" + v);
            }
            if (v != null) {
                Object[] objArr = this.a;
                int i = this.b;
                int i2 = i * 2;
                objArr[i2] = k;
                objArr[i2 + 1] = v;
                this.b = i + 1;
                return this;
            }
            throw new NullPointerException("null value in entry: " + k + "=null");
        }
    }

    public static class b<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object[] b;
        private final Object[] c;

        public b(lk0<K, V> lk0Var) {
            Object[] objArr = new Object[lk0Var.size()];
            Object[] objArr2 = new Object[lk0Var.size()];
            i82<Map.Entry<K, V>> it = lk0Var.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                objArr[i] = next.getKey();
                objArr2[i] = next.getValue();
                i++;
            }
            this.b = objArr;
            this.c = objArr2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object readResolve() {
            Object[] objArr = this.b;
            if (!(objArr instanceof mk0)) {
                Object[] objArr2 = this.c;
                a aVar = new a(objArr.length);
                for (int i = 0; i < objArr.length; i++) {
                    aVar.a(objArr[i], objArr2[i]);
                }
                return mo1.a(aVar.b, aVar.a);
            }
            mk0 mk0Var = (mk0) objArr;
            ik0 ik0Var = (ik0) this.c;
            a aVar2 = new a(mk0Var.size());
            Iterator it = mk0Var.iterator();
            i82 it2 = ik0Var.iterator();
            while (it.hasNext()) {
                aVar2.a(it.next(), it2.next());
            }
            return mo1.a(aVar2.b, aVar2.a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static lk0 a(HashMap map) {
        Set<Map.Entry<K, V>> setEntrySet = map.entrySet();
        boolean z = setEntrySet instanceof Collection;
        a aVar = new a(z ? setEntrySet.size() : 4);
        if (z) {
            aVar.a(setEntrySet.size());
        }
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            aVar.a(entry.getKey(), entry.getValue());
        }
        return mo1.a(aVar.b, aVar.a);
    }

    public static <K, V> lk0<K, V> g() {
        return (lk0<K, V>) mo1.h;
    }

    public abstract mk0<Map.Entry<K, V>> b();

    public abstract mk0<K> c();

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public abstract ik0<V> d();

    @Override
    public final mk0<Map.Entry<K, V>> entrySet() {
        mk0<Map.Entry<K, V>> mk0Var = this.b;
        if (mk0Var != null) {
            return mk0Var;
        }
        mk0<Map.Entry<K, V>> mk0VarB = b();
        this.b = mk0VarB;
        return mk0VarB;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return ((mk0) entrySet()).equals(((Map) obj).entrySet());
    }

    @Override
    public final mk0<K> keySet() {
        mk0<K> mk0Var = this.c;
        if (mk0Var != null) {
            return mk0Var;
        }
        mk0<K> mk0VarC = c();
        this.c = mk0VarC;
        return mk0VarC;
    }

    @Override
    public abstract V get(Object obj);

    @Override
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override
    public final ik0<V> values() {
        ik0<V> ik0Var = this.d;
        if (ik0Var != null) {
            return ik0Var;
        }
        ik0<V> ik0VarD = d();
        this.d = ik0VarD;
        return ik0VarD;
    }

    @Override
    public final int hashCode() {
        return wx1.a(entrySet());
    }

    @Override
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        pq.a(size, PlayAudioData.TAG_SIZE);
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public Object writeReplace() {
        return new b(this);
    }

    public static <K, V> a<K, V> a() {
        return new a<>(4);
    }
}
