package kotlinx.serialization.internal;

import defpackage.dx0;
import defpackage.e74;
import defpackage.ef5;
import defpackage.qe5;
import defpackage.y45;
import defpackage.zf5;
import defpackage.zfb;
import java.util.Map;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.b;
import org.mozilla.javascript.ES6Iterator;

public final class MapEntrySerializer extends zf5 {
    public final kotlinx.serialization.descriptors.a c;

    public static final class a implements Map.Entry, qe5 {
        public final Object b;
        public final Object c;

        public a(Object obj, Object obj2) {
            this.b = obj;
            this.c = obj2;
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.b, aVar.b) && y45.e(this.c, aVar.c);
        }

        @Override
        public Object getKey() {
            return this.b;
        }

        @Override
        public Object getValue() {
            return this.c;
        }

        @Override
        public int hashCode() {
            Object obj = this.b;
            int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
            Object obj2 = this.c;
            return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public String toString() {
            return "MapEntry(key=" + this.b + ", value=" + this.c + ')';
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MapEntrySerializer(final ef5 ef5Var, final ef5 ef5Var2) {
        super(ef5Var, ef5Var2, null);
        y45.j(ef5Var, "keySerializer");
        y45.j(ef5Var2, "valueSerializer");
        this.c = SerialDescriptorsKt.c("kotlin.collections.Map.Entry", b.c.a, new kotlinx.serialization.descriptors.a[0], new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((dx0) obj);
                return zfb.a;
            }

            public final void invoke(dx0 dx0Var) {
                y45.j(dx0Var, "$this$buildSerialDescriptor");
                dx0.b(dx0Var, "key", ef5Var.getDescriptor(), null, false, 12, null);
                dx0.b(dx0Var, ES6Iterator.VALUE_PROPERTY, ef5Var2.getDescriptor(), null, false, 12, null);
            }
        });
    }

    @Override
    public Object a(Map.Entry entry) {
        y45.j(entry, "<this>");
        return entry.getKey();
    }

    @Override
    public Object c(Map.Entry entry) {
        y45.j(entry, "<this>");
        return entry.getValue();
    }

    @Override
    public kotlinx.serialization.descriptors.a getDescriptor() {
        return this.c;
    }

    @Override
    public Map.Entry e(Object obj, Object obj2) {
        return new a(obj, obj2);
    }
}
