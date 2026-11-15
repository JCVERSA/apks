package com.facebook.ads.redexgen.core;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

public class AH<E> extends AbstractC2313os<E> {
    public final Set A00;
    public final Set A01;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AH(final Set val$set1, final Set val$set2) {
        super(null);
        this.A00 = val$set1;
        this.A01 = val$set2;
    }

    @Override
    public final AbstractC2346pg<E> iterator() {
        return new BI<E>() {
            public final Iterator<E> A00;

            {
                this.A00 = this.A01.A00.iterator();
            }

            @Override
            @CheckForNull
            public final E A02() {
                while (this.A00.hasNext()) {
                    E next = this.A00.next();
                    if (this.A01.A01.contains(next)) {
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
        return this.A00.contains(object) && this.A01.contains(object);
    }

    @Override
    public final boolean containsAll(Collection<?> collection) {
        return this.A00.containsAll(collection) && this.A01.containsAll(collection);
    }

    @Override
    public final boolean isEmpty() {
        return Collections.disjoint(this.A01, this.A00);
    }

    @Override
    public final int size() {
        int i = 0;
        Iterator<E> it = this.A00.iterator();
        while (it.hasNext()) {
            if (this.A01.contains(it.next())) {
                i++;
            }
        }
        return i;
    }
}
