package v;

import java.util.Iterator;
import kotlin.collections.AbstractSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import t.h;
import u.d;

public final class b extends AbstractSet implements h {

    public static final a f73406e = new a(null);

    public static final int f73407f = 8;

    private static final b f73408g;

    private final Object f73409b;

    private final Object f73410c;

    private final d f73411d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            return b.f73408g;
        }

        private a() {
        }
    }

    static {
        w.c cVar = w.c.f74078a;
        f73408g = new b(cVar, cVar, d.f72893f.a());
    }

    public b(Object obj, Object obj2, d dVar) {
        this.f73409b = obj;
        this.f73410c = obj2;
        this.f73411d = dVar;
    }

    @Override
    public h add(Object obj) {
        if (this.f73411d.containsKey(obj)) {
            return this;
        }
        if (isEmpty()) {
            return new b(obj, obj, this.f73411d.w(obj, new v.a()));
        }
        Object obj2 = this.f73410c;
        Object obj3 = this.f73411d.get(obj2);
        Intrinsics.e(obj3);
        return new b(this.f73409b, obj, this.f73411d.w(obj2, ((v.a) obj3).e(obj)).w(obj, new v.a(obj2)));
    }

    @Override
    public boolean contains(Object obj) {
        return this.f73411d.containsKey(obj);
    }

    @Override
    public int get_size() {
        return this.f73411d.size();
    }

    @Override
    public Iterator iterator() {
        return new c(this.f73409b, this.f73411d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public h remove(Object obj) {
        v.a aVar = (v.a) this.f73411d.get(obj);
        if (aVar == null) {
            return this;
        }
        d dVarX = this.f73411d.x(obj);
        if (aVar.b()) {
            V v10 = dVarX.get(aVar.d());
            Intrinsics.e(v10);
            dVarX = dVarX.w(aVar.d(), ((v.a) v10).e(aVar.c()));
        }
        if (aVar.a()) {
            V v11 = dVarX.get(aVar.c());
            Intrinsics.e(v11);
            dVarX = dVarX.w(aVar.c(), ((v.a) v11).f(aVar.d()));
        }
        return new b(!aVar.b() ? aVar.c() : this.f73409b, !aVar.a() ? aVar.d() : this.f73410c, dVarX);
    }
}
