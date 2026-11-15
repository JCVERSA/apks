package u;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.markers.KMutableIterator;

public final class i implements Iterator, KMutableIterator {

    private final g f72912a;

    public i(f fVar) {
        u[] uVarArr = new u[8];
        for (int i10 = 0; i10 < 8; i10++) {
            uVarArr[i10] = new y(this);
        }
        this.f72912a = new g(fVar, uVarArr);
    }

    @Override
    public Map.Entry next() {
        return (Map.Entry) this.f72912a.next();
    }

    public final void c(Object obj, Object obj2) {
        this.f72912a.n(obj, obj2);
    }

    @Override
    public boolean hasNext() {
        return this.f72912a.hasNext();
    }

    @Override
    public void remove() {
        this.f72912a.remove();
    }
}
