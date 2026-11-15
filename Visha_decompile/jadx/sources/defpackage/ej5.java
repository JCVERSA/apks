package defpackage;

import java.util.Iterator;
import java.util.Map;

public class ej5 implements Iterator {
    public Iterator b;

    public ej5(Iterator it) {
        this.b = it;
    }

    @Override
    public Map.Entry next() {
        Map.Entry entry = (Map.Entry) this.b.next();
        entry.getValue();
        return entry;
    }

    @Override
    public boolean hasNext() {
        return this.b.hasNext();
    }

    @Override
    public void remove() {
        this.b.remove();
    }
}
