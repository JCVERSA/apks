package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.NoSuchElementException;

public final class b extends a {

    private final Object[] f3396c;

    public b(Object[] objArr, int i10, int i11) {
        super(i10, i11);
        this.f3396c = objArr;
    }

    @Override
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f3396c;
        int iE = e();
        h(iE + 1);
        return objArr[iE];
    }

    @Override
    public Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f3396c;
        h(e() - 1);
        return objArr[e()];
    }
}
