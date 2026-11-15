package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;

class z implements Iterator {

    private Iterator f8625a;

    public z(Iterator it) {
        this.f8625a = it;
    }

    @Override
    public Map.Entry next() {
        Map.Entry entry = (Map.Entry) this.f8625a.next();
        entry.getValue();
        return entry;
    }

    @Override
    public boolean hasNext() {
        return this.f8625a.hasNext();
    }

    @Override
    public void remove() {
        this.f8625a.remove();
    }
}
