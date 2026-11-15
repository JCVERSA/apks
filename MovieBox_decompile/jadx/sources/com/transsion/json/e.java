package com.transsion.json;

import java.util.Iterator;
import java.util.Set;

public class e implements Iterator {

    final Iterator[] f44697a;

    int f44698b = 0;

    public e(Set... setArr) {
        this.f44697a = new Iterator[setArr.length];
        for (int i10 = 0; i10 < setArr.length; i10++) {
            this.f44697a[i10] = setArr[i10].iterator();
        }
    }

    @Override
    public boolean hasNext() {
        if (this.f44697a[this.f44698b].hasNext()) {
            return true;
        }
        int i10 = this.f44698b + 1;
        this.f44698b = i10;
        Iterator[] itArr = this.f44697a;
        return i10 < itArr.length && itArr[i10].hasNext();
    }

    @Override
    public Object next() {
        return this.f44697a[this.f44698b].next();
    }

    @Override
    public void remove() {
        this.f44697a[this.f44698b].remove();
    }
}
