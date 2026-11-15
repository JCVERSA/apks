package g00;

import java.util.Iterator;

public class b implements Iterator {

    int f60549a;

    int f60550b;

    public b(int i10) {
        this.f60550b = i10;
    }

    @Override
    public boolean hasNext() {
        return this.f60549a < this.f60550b;
    }

    @Override
    public Object next() {
        int i10 = this.f60549a;
        this.f60549a = i10 + 1;
        return Integer.valueOf(i10);
    }

    @Override
    public void remove() {
    }
}
