package com.facebook.ads.redexgen.core;

import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

public class AI<E> extends AbstractC2313os<E> {
    public final Set A00;
    public final Set A01;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AI(final Set val$set1, final Set val$set2) {
        super(null);
        this.A00 = val$set1;
        this.A01 = val$set2;
    }

    @Override
    public final AbstractC2346pg<E> iterator() {
        return new BI<E>() {
            public final Iterator<? extends E> A00;
            public final Iterator<? extends E> A01;

            {
                this.A00 = this.A02.A00.iterator();
                this.A01 = this.A02.A01.iterator();
            }

            @Override
            @CheckForNull
            public final E A02() {
                if (this.A00.hasNext()) {
                    return this.A00.next();
                }
                while (this.A01.hasNext()) {
                    E next = this.A01.next();
                    if (!this.A02.A00.contains(next)) {
                        return next;
                    }
                }
                E e = A01();
                return e;
            }
        };
    }

    @Override
    public final boolean contains(@CheckForNull Object object) {
        return this.A00.contains(object) || this.A01.contains(object);
    }

    @Override
    public final boolean isEmpty() {
        return this.A00.isEmpty() && this.A01.isEmpty();
    }

    @Override
    public final int size() {
        int size = this.A00.size();
        Iterator<E> it = this.A01.iterator();
        while (it.hasNext()) {
            if (!this.A00.contains(it.next())) {
                size++;
            }
        }
        return size;
    }
}
