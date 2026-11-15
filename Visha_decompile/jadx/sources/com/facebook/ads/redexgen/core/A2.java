package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

/* JADX WARN: Unexpected interfaces in signature: [kotlin.jvm.internal.markers.KMappedMarker] */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0092\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0096\u0002J\u000e\u0010\u000b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lkotlin/collections/AbstractList$IteratorImpl;", "", "(Lkotlin/collections/AbstractList;)V", "index", "", "getIndex", "()I", "setIndex", "(I)V", "hasNext", "", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class A2<E> implements Iterator<E> {
    public static byte[] A02;
    public int A00;
    public final C1F<E> A01;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{87, 104, 125, 106, 121, 108, 113, 119, 118, 56, 113, 107, 56, 118, 119, 108, 56, 107, 109, 104, 104, 119, 106, 108, 125, 124, 56, 126, 119, 106, 56, 106, 125, 121, 124, 53, 119, 118, 116, 97, 56, 123, 119, 116, 116, 125, 123, 108, 113, 119, 118};
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException(A02(0, 51, 72));
    }

    public A2(C1F c1f) {
        this.A01 = c1f;
    }

    public final int getA00() {
        return this.A00;
    }

    public final void A05(int i) {
        this.A00 = i;
    }

    @Override
    public final boolean hasNext() {
        return this.A00 < this.A01.size();
    }

    @Override
    public final E next() {
        if (hasNext()) {
            C1F<E> c1f = this.A01;
            int i = this.A00;
            this.A00 = i + 1;
            return c1f.get(i);
        }
        throw new NoSuchElementException();
    }
}
