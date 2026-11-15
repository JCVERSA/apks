package com.google.common.collect;

import defpackage.kc7;
import defpackage.o74;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;

public abstract class Tables {
    public static final o74 a = new a();

    public static final class ImmutableCell<R, C, V> extends b implements Serializable {
        private static final long serialVersionUID = 0;
        private final C columnKey;
        private final R rowKey;
        private final V value;

        public ImmutableCell(R r, C c, V v) {
            this.rowKey = r;
            this.columnKey = c;
            this.value = v;
        }

        @Override
        public C getColumnKey() {
            return this.columnKey;
        }

        @Override
        public R getRowKey() {
            return this.rowKey;
        }

        @Override
        public V getValue() {
            return this.value;
        }
    }

    public class a implements o74 {
        @Override
        public Map apply(Map map) {
            return Collections.unmodifiableMap(map);
        }
    }

    public static abstract class b implements r.a {
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof r.a)) {
                return false;
            }
            r.a aVar = (r.a) obj;
            return kc7.a(getRowKey(), aVar.getRowKey()) && kc7.a(getColumnKey(), aVar.getColumnKey()) && kc7.a(getValue(), aVar.getValue());
        }

        public int hashCode() {
            return kc7.b(getRowKey(), getColumnKey(), getValue());
        }

        public String toString() {
            return "(" + getRowKey() + StringUtils.COMMA + getColumnKey() + ")=" + getValue();
        }
    }

    public static boolean a(r rVar, Object obj) {
        if (obj == rVar) {
            return true;
        }
        if (obj instanceof r) {
            return rVar.cellSet().equals(((r) obj).cellSet());
        }
        return false;
    }

    public static r.a b(Object obj, Object obj2, Object obj3) {
        return new ImmutableCell(obj, obj2, obj3);
    }
}
