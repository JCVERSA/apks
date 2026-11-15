package u;

import java.util.Iterator;
import kotlin.collections.AbstractCollection;

public final class r extends AbstractCollection implements t.b {

    private final d f72917a;

    public r(d dVar) {
        this.f72917a = dVar;
    }

    @Override
    public boolean contains(Object obj) {
        return this.f72917a.containsValue(obj);
    }

    @Override
    public int get_size() {
        return this.f72917a.size();
    }

    @Override
    public Iterator iterator() {
        return new s(this.f72917a.u());
    }
}
