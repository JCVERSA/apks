package u;

import java.util.Iterator;
import kotlin.collections.AbstractSet;

public final class p extends AbstractSet implements t.e {

    private final d f72916b;

    public p(d dVar) {
        this.f72916b = dVar;
    }

    @Override
    public boolean contains(Object obj) {
        return this.f72916b.containsKey(obj);
    }

    @Override
    public int get_size() {
        return this.f72916b.size();
    }

    @Override
    public Iterator iterator() {
        return new q(this.f72916b.u());
    }
}
