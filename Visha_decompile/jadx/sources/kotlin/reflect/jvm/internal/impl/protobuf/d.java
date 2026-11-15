package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class d {
    public static final d b = new d(true);
    public final Map a;

    public static final class a {
        public final Object a;
        public final int b;

        public a(Object obj, int i) {
            this.a = obj;
            this.b = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public int hashCode() {
            return (System.identityHashCode(this.a) * 65535) + this.b;
        }
    }

    public d() {
        this.a = new HashMap();
    }

    public static d c() {
        return b;
    }

    public static d d() {
        return new d();
    }

    public final void a(GeneratedMessageLite.e eVar) {
        this.a.put(new a(eVar.b(), eVar.d()), eVar);
    }

    public GeneratedMessageLite.e b(g gVar, int i) {
        return (GeneratedMessageLite.e) this.a.get(new a(gVar, i));
    }

    public d(boolean z) {
        this.a = Collections.emptyMap();
    }
}
