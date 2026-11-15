package defpackage;

import java.util.AbstractList;
import java.util.List;

public abstract class k3 extends AbstractList implements List, te5 {
    public abstract int getSize();

    @Override
    public final Object remove(int i) {
        return removeAt(i);
    }

    public abstract Object removeAt(int i);

    @Override
    public final int size() {
        return getSize();
    }
}
