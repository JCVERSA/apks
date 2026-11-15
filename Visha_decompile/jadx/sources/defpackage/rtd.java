package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public class rtd extends tfd implements Map {
    public owd i;

    public class a extends owd {
        public a() {
        }

        @Override
        public int a(Object obj) {
            return rtd.this.b(obj);
        }

        @Override
        public Object b(int i, int i2) {
            return rtd.this.c[(i << 1) + i2];
        }

        @Override
        public Object c(int i, Object obj) {
            return rtd.this.e(i, obj);
        }

        @Override
        public void d() {
            rtd.this.clear();
        }

        @Override
        public void e(int i) {
            rtd.this.m(i);
        }

        @Override
        public void f(Object obj, Object obj2) {
            rtd.this.put(obj, obj2);
        }

        @Override
        public int j(Object obj) {
            return rtd.this.h(obj);
        }

        @Override
        public Map k() {
            return rtd.this;
        }

        @Override
        public int n() {
            return rtd.this.d;
        }
    }

    @Override
    public Set entrySet() {
        return o().p();
    }

    @Override
    public Set keySet() {
        return o().q();
    }

    public final owd o() {
        if (this.i == null) {
            this.i = new a();
        }
        return this.i;
    }

    @Override
    public void putAll(Map map) {
        k(this.d + map.size());
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public Collection values() {
        return o().r();
    }
}
