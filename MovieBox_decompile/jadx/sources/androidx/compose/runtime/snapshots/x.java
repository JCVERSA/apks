package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;

final class x extends y implements Iterator, KMutableIterator {

    public static final class a implements Map.Entry, KMutableMap.Entry {

        private final Object f3724a;

        private Object f3725b;

        a() {
            Map.Entry entryF = x.this.f();
            Intrinsics.e(entryF);
            this.f3724a = entryF.getKey();
            Map.Entry entryF2 = x.this.f();
            Intrinsics.e(entryF2);
            this.f3725b = entryF2.getValue();
        }

        public void a(Object obj) {
            this.f3725b = obj;
        }

        @Override
        public Object getKey() {
            return this.f3724a;
        }

        @Override
        public Object getValue() {
            return this.f3725b;
        }

        @Override
        public Object setValue(Object obj) {
            x xVar = x.this;
            if (xVar.h().e() != ((y) xVar).f3729c) {
                throw new ConcurrentModificationException();
            }
            Object value = getValue();
            xVar.h().put(getKey(), obj);
            a(obj);
            return value;
        }
    }

    public x(t tVar, Iterator it) {
        super(tVar, it);
    }

    @Override
    public Map.Entry next() {
        e();
        if (f() != null) {
            return new a();
        }
        throw new IllegalStateException();
    }
}
