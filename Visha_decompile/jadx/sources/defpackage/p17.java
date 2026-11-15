package defpackage;

import java.util.AbstractList;

public class p17 extends AbstractList {
    public final Object[] b;

    public p17(Object[] objArr) {
        this.b = objArr;
    }

    @Override
    public Object get(int i) {
        return this.b[i];
    }

    @Override
    public int size() {
        return this.b.length;
    }
}
