package defpackage;

import java.util.AbstractSet;
import java.util.Collection;

public abstract class p5i extends AbstractSet {
    @Override
    public boolean removeAll(Collection collection) {
        return s5i.e(this, collection);
    }

    @Override
    public boolean retainAll(Collection collection) {
        collection.getClass();
        return super.retainAll(collection);
    }
}
