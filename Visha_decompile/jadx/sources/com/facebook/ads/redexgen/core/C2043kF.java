package com.facebook.ads.redexgen.core;

import com.google.common.collect.ParametricNullness;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

public class C2043kF<K> implements Iterator<K> {
    public static byte[] A03;

    @CheckForNull
    public Map.Entry<K, Collection<V>> A00;
    public final C05591l A01;
    public final Iterator A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 81);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-39, -38, SocketData.CLAZZ_TYPE_STRING, -50, -52, -41, -41, -34, SocketData.CLAZZ_TYPE_STRING, -33, -38, SocketData.CLAZZ_TYPE_STRING, -39, -48, -29, -33, -109, -108, SocketData.CLAZZ_TYPE_STRING, -34, -44, -39, -50, -48, SocketData.CLAZZ_TYPE_STRING, -33, -45, -48, SocketData.CLAZZ_TYPE_STRING, -41, -52, -34, -33, SocketData.CLAZZ_TYPE_STRING, -50, -52, -41, -41, SocketData.CLAZZ_TYPE_STRING, -33, -38, SocketData.CLAZZ_TYPE_STRING, -35, -48, -40, -38, -31, -48, -109, -108};
    }

    public C2043kF(final C05591l this$1, final Iterator val$entryIterator) {
        this.A01 = this$1;
        this.A02 = val$entryIterator;
    }

    @Override
    public final boolean hasNext() {
        return this.A02.hasNext();
    }

    @Override
    @ParametricNullness
    public final K next() {
        this.A00 = (Map.Entry) this.A02.next();
        return this.A00.getKey();
    }

    @Override
    public final void remove() {
        AbstractC1977jA.A0F(this.A00 != null, A00(0, 50, 26));
        Collection collection = (Collection) this.A00.getValue();
        this.A02.remove();
        AbstractC05561i.A03(this.A01.A00, collection.size());
        collection.clear();
        this.A00 = null;
    }
}
