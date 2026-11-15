package org.mvel2.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class q implements Map {

    private final Map f68925a;

    private final ArrayList f68926b;

    private class a {

        private int f68927a;

        private Object f68928b;

        private Object f68929c;

        public a(int i10, Object obj, Object obj2) {
            this.f68927a = i10;
            this.f68928b = obj;
            this.f68929c = obj2;
        }

        public int a() {
            return this.f68927a;
        }

        public Object b() {
            return this.f68928b;
        }

        public Object c() {
            return this.f68929c;
        }

        void d(Object obj) {
            this.f68929c = obj;
        }
    }

    public q() {
        this.f68925a = new HashMap();
        this.f68926b = new ArrayList();
    }

    public Object a(int i10) {
        return ((a) this.f68926b.get(i10)).c();
    }

    public int c(Object obj) {
        return ((a) this.f68925a.get(obj)).a();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("cannot clear map");
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f68925a.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f68925a.containsValue(obj);
    }

    public void d(int i10, Object obj) {
        ((a) this.f68926b.get(i10)).d(obj);
    }

    @Override
    public Set entrySet() {
        throw new UnsupportedOperationException();
    }

    @Override
    public Object get(Object obj) {
        return ((a) this.f68925a.get(obj)).c();
    }

    @Override
    public boolean isEmpty() {
        return this.f68925a.isEmpty();
    }

    @Override
    public Set keySet() {
        return this.f68925a.keySet();
    }

    @Override
    public Object put(Object obj, Object obj2) {
        a aVar = (a) this.f68925a.get(obj);
        if (aVar == null) {
            throw new RuntimeException("cannot add a new entry.  you must allocate a new key with addKey() first.");
        }
        this.f68926b.add(aVar);
        return ((a) this.f68925a.put(obj, aVar)).c();
    }

    @Override
    public Object remove(Object obj) {
        throw new UnsupportedOperationException("cannot remove keys");
    }

    @Override
    public int size() {
        return this.f68925a.size();
    }

    @Override
    public Collection values() {
        throw new UnsupportedOperationException();
    }

    public q(q qVar, boolean z10) {
        this.f68926b = new ArrayList(qVar.f68926b.size());
        this.f68925a = new HashMap();
        int i10 = 0;
        if (z10) {
            for (a aVar : qVar.f68926b) {
                a aVar2 = new a(i10, aVar.b(), null);
                this.f68926b.add(aVar2);
                this.f68925a.put(aVar.b(), aVar2);
                i10++;
            }
            return;
        }
        for (a aVar3 : qVar.f68926b) {
            a aVar4 = new a(i10, aVar3.b(), aVar3.c());
            this.f68926b.add(aVar4);
            this.f68925a.put(aVar3.b(), aVar4);
            i10++;
        }
    }

    @Override
    public void putAll(Map map) {
    }
}
