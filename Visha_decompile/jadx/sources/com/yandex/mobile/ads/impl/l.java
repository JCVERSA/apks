package com.yandex.mobile.ads.impl;

import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class l<T> implements Iterator<T> {
    private int b = 2;
    private String c;

    @Override
    public final boolean hasNext() {
        String string;
        int i = this.b;
        if (i == 4) {
            throw new IllegalStateException();
        }
        int iA = f9.a(i);
        if (iA == 0) {
            return true;
        }
        if (iA == 2) {
            return false;
        }
        this.b = 4;
        y12.a aVar = (y12.a) this;
        int i2 = aVar.g;
        while (true) {
            int i3 = aVar.g;
            if (i3 == -1) {
                aVar.b = 3;
                string = null;
                break;
            }
            w12 w12Var = (w12) aVar;
            int iA2 = w12Var.i.a.a(w12Var.d, i3);
            if (iA2 == -1) {
                iA2 = aVar.d.length();
                aVar.g = -1;
            } else {
                aVar.g = iA2 + 1;
            }
            int i4 = aVar.g;
            if (i4 == i2) {
                int i5 = i4 + 1;
                aVar.g = i5;
                if (i5 > aVar.d.length()) {
                    aVar.g = -1;
                }
            } else {
                while (i2 < iA2 && aVar.e.a(aVar.d.charAt(i2))) {
                    i2++;
                }
                while (iA2 > i2 && aVar.e.a(aVar.d.charAt(iA2 - 1))) {
                    iA2--;
                }
                if (!aVar.f || i2 != iA2) {
                    int i6 = aVar.h;
                    if (i6 == 1) {
                        iA2 = aVar.d.length();
                        aVar.g = -1;
                        while (iA2 > i2 && aVar.e.a(aVar.d.charAt(iA2 - 1))) {
                            iA2--;
                        }
                    } else {
                        aVar.h = i6 - 1;
                    }
                    string = aVar.d.subSequence(i2, iA2).toString();
                    break;
                }
                i2 = aVar.g;
            }
        }
        this.c = string;
        if (this.b == 3) {
            return false;
        }
        this.b = 1;
        return true;
    }

    @Override
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.b = 2;
        T t = (T) this.c;
        this.c = null;
        return t;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
