package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;

public final class xk1<T, V> {
    private final long a;
    private final int b;
    private final n70 c;
    private final o70 d;
    private final ArrayList e;

    public static final class a<T, V> implements m70 {
        private final T a;
        private final V b;
        private final long c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(wd0 wd0Var, Object obj, long j) {
            this.a = wd0Var;
            this.b = obj;
            this.c = j;
        }

        @Override
        public final long a() {
            return this.c;
        }

        public final V b() {
            return this.b;
        }

        public final T c() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b) && this.c == aVar.c;
        }

        public final int hashCode() {
            T t = this.a;
            int iHashCode = (t == null ? 0 : t.hashCode()) * 31;
            V v = this.b;
            return Long.hashCode(this.c) + ((iHashCode + (v != null ? v.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "CachedItem(params=" + this.a + ", item=" + this.b + ", expiresAtTimestampMillis=" + this.c + ")";
        }
    }

    public xk1() {
        this(86400000L, 5, new n70(), new o70());
    }

    public final synchronized void a(wd0 wd0Var, Object obj) {
        a();
        if (this.e.size() < this.b) {
            ArrayList arrayList = this.e;
            o70 o70Var = this.d;
            long j = this.a;
            o70Var.getClass();
            arrayList.add(new a(wd0Var, obj, System.currentTimeMillis() + j));
        }
    }

    public final synchronized boolean b() {
        a();
        return this.e.size() < this.b;
    }

    public xk1(long j, int i, n70 n70Var, o70 o70Var) {
        y45.j(n70Var, "expirationChecker");
        y45.j(o70Var, "expirationTimestampUtil");
        this.a = j;
        this.b = i;
        this.c = n70Var;
        this.d = o70Var;
        this.e = new ArrayList();
    }

    private final void a() {
        ArrayList arrayList = this.e;
        n70 n70Var = this.c;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            m70 m70Var = (m70) obj;
            n70Var.getClass();
            y45.j(m70Var, "any");
            if (System.currentTimeMillis() > m70Var.a()) {
                arrayList2.add(obj);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            this.e.remove((a) it.next());
        }
    }

    public final synchronized Object a(wd0 wd0Var) {
        Object obj;
        Object next;
        Object objB;
        try {
            a();
            Iterator it = this.e.iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!y45.e(((a) next).c(), wd0Var));
            a aVar = (a) next;
            if (aVar != null && (objB = aVar.b()) != null) {
                this.e.remove(aVar);
                obj = objB;
            }
        } catch (Throwable th) {
            throw th;
        }
        return obj;
    }
}
