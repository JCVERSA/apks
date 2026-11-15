package g00;

import java.util.Iterator;

public class a implements Iterator {

    private Object[] f60547a;

    private int f60548b = 0;

    public a(Object[] objArr) {
        this.f60547a = objArr;
    }

    @Override
    public boolean hasNext() {
        return this.f60548b != this.f60547a.length;
    }

    @Override
    public Object next() {
        Object[] objArr = this.f60547a;
        int i10 = this.f60548b;
        this.f60548b = i10 + 1;
        return objArr[i10];
    }

    @Override
    public void remove() {
    }
}
