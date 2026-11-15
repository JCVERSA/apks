package defpackage;

import java.util.Enumeration;
import java.util.NoSuchElementException;

public class xzc implements Enumeration {
    public final Object[] a;
    public final int b;
    public int c = 0;

    public xzc(Object[] objArr, int i) {
        this.a = objArr;
        this.b = i;
    }

    @Override
    public boolean hasMoreElements() {
        return this.c < this.b;
    }

    @Override
    public Object nextElement() {
        int i = this.c;
        if (i >= this.b) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.a;
        this.c = i + 1;
        return objArr[i];
    }
}
