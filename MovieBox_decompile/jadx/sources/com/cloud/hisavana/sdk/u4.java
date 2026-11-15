package com.cloud.hisavana.sdk;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public class u4 extends x1 implements Map {

    g4 f22353h;

    class a extends g4 {
        a() {
        }

        @Override
        protected int a(Object obj) {
            return u4.this.c(obj);
        }

        @Override
        protected Object b(int i10, int i11) {
            return u4.this.f22437b[(i10 << 1) + i11];
        }

        @Override
        protected Object c(int i10, Object obj) {
            return u4.this.f(i10, obj);
        }

        @Override
        protected void d() {
            u4.this.clear();
        }

        @Override
        protected void e(int i10) {
            u4.this.m(i10);
        }

        @Override
        protected void f(Object obj, Object obj2) {
            u4.this.put(obj, obj2);
        }

        @Override
        protected int j(Object obj) {
            return u4.this.j(obj);
        }

        @Override
        protected Map k() {
            return u4.this;
        }

        @Override
        protected int n() {
            return u4.this.f22438c;
        }
    }

    private g4 o() {
        if (this.f22353h == null) {
            this.f22353h = new a();
        }
        return this.f22353h;
    }

    @Override
    public Set entrySet() {
        return o().p();
    }

    @Override
    public Set keySet() {
        return o().q();
    }

    @Override
    public void putAll(Map map) {
        k(this.f22438c + map.size());
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public Collection values() {
        return o().r();
    }
}
