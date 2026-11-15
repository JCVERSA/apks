package androidx.compose.runtime.snapshots;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.markers.KMutableIterator;

final class z extends y implements Iterator, KMutableIterator {
    public z(t tVar, Iterator it) {
        super(tVar, it);
    }

    @Override
    public Object next() {
        Map.Entry entryI = i();
        if (entryI == null) {
            throw new IllegalStateException();
        }
        e();
        return entryI.getKey();
    }
}
