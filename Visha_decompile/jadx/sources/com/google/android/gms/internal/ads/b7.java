package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.ListIterator;

public final class b7 extends z6 implements ListIterator {
    public final c7 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b7(c7 c7Var) {
        super(c7Var);
        this.e = c7Var;
    }

    @Override
    public final void add(Object obj) {
        c7 c7Var = this.e;
        boolean zIsEmpty = c7Var.isEmpty();
        a();
        ((ListIterator) this.b).add(obj);
        c7Var.g.f++;
        if (zIsEmpty) {
            c7Var.b();
        }
    }

    @Override
    public final boolean hasPrevious() {
        a();
        return ((ListIterator) this.b).hasPrevious();
    }

    @Override
    public final int nextIndex() {
        a();
        return ((ListIterator) this.b).nextIndex();
    }

    @Override
    public final Object previous() {
        a();
        return ((ListIterator) this.b).previous();
    }

    @Override
    public final int previousIndex() {
        a();
        return ((ListIterator) this.b).previousIndex();
    }

    @Override
    public final void set(Object obj) {
        a();
        ((ListIterator) this.b).set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b7(c7 c7Var, int i) {
        super(c7Var, ((List) c7Var.c).listIterator(i));
        this.e = c7Var;
    }
}
