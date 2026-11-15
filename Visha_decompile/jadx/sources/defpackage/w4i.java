package defpackage;

import java.util.Collection;
import java.util.HashSet;
import java.util.Map;

public abstract class w4i extends p5i {
    public abstract Map b();

    @Override
    public final void clear() {
        b().clear();
    }

    @Override
    public abstract boolean contains(Object obj);

    @Override
    public final boolean isEmpty() {
        return b().isEmpty();
    }

    @Override
    public final boolean removeAll(Collection collection) {
        try {
            if (collection != null) {
                return s5i.e(this, collection);
            }
            throw null;
        } catch (UnsupportedOperationException unused) {
            return s5i.f(this, collection.iterator());
        }
    }

    @Override
    public final boolean retainAll(Collection collection) {
        int iCeil;
        try {
            if (collection != null) {
                return super.retainAll(collection);
            }
            throw null;
        } catch (UnsupportedOperationException unused) {
            int size = collection.size();
            if (size < 3) {
                t3i.a(size, "expectedSize");
                iCeil = size + 1;
            } else {
                iCeil = size < 1073741824 ? (int) Math.ceil(((double) size) / 0.75d) : Integer.MAX_VALUE;
            }
            HashSet hashSet = new HashSet(iCeil);
            for (Object obj : collection) {
                if (contains(obj) && (obj instanceof Map.Entry)) {
                    hashSet.add(((Map.Entry) obj).getKey());
                }
            }
            return b().keySet().retainAll(hashSet);
        }
    }

    @Override
    public final int size() {
        return b().size();
    }
}
