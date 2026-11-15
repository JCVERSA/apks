package com.google.common.collect;

import java.util.NoSuchElementException;

abstract class a extends s4 {

    private final int f29930a;

    private int f29931b;

    protected a(int i10) {
        this(i10, 0);
    }

    protected abstract Object a(int i10);

    @Override
    public final boolean hasNext() {
        return this.f29931b < this.f29930a;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f29931b > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f29931b;
        this.f29931b = i10 + 1;
        return a(i10);
    }

    @Override
    public final int nextIndex() {
        return this.f29931b;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f29931b - 1;
        this.f29931b = i10;
        return a(i10);
    }

    @Override
    public final int previousIndex() {
        return this.f29931b - 1;
    }

    protected a(int i10, int i11) {
        com.google.common.base.m.r(i11, i10);
        this.f29930a = i10;
        this.f29931b = i11;
    }
}
