package com.android.net.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public final class d {
    protected static final Comparator<byte[]> a = new Comparator<byte[]>() {
        @Override
        public final int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };
    private final List<byte[]> b = new LinkedList();
    private final List<byte[]> c = new ArrayList(64);
    private int d = 0;
    private final int e = 4096;

    private synchronized void a() {
        while (this.d > this.e) {
            byte[] bArrRemove = this.b.remove(0);
            this.c.remove(bArrRemove);
            this.d -= bArrRemove.length;
        }
    }

    public final synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.e) {
                this.b.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.c, bArr, a);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.c.add(iBinarySearch, bArr);
                this.d += bArr.length;
                a();
            }
        }
    }

    public final synchronized byte[] a(int i) {
        for (int i2 = 0; i2 < this.c.size(); i2++) {
            byte[] bArr = this.c.get(i2);
            if (bArr.length >= i) {
                this.d -= bArr.length;
                this.c.remove(i2);
                this.b.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }
}
