package com.mbridge.msdk.tracker.network.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class c {

    protected static final Comparator<byte[]> f37818e = new a();

    private final List<byte[]> f37819a = new ArrayList();

    private final List<byte[]> f37820b = new ArrayList(64);

    private int f37821c = 0;

    private final int f37822d;

    class a implements Comparator<byte[]> {
        a() {
        }

        @Override
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public c(int i10) {
        this.f37822d = i10;
    }

    public synchronized byte[] a(int i10) {
        for (int i11 = 0; i11 < this.f37820b.size(); i11++) {
            byte[] bArr = this.f37820b.get(i11);
            if (bArr.length >= i10) {
                this.f37821c -= bArr.length;
                this.f37820b.remove(i11);
                this.f37819a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i10];
    }

    public synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f37822d) {
                this.f37819a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f37820b, bArr, f37818e);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f37820b.add(iBinarySearch, bArr);
                this.f37821c += bArr.length;
                a();
            }
        }
    }

    private synchronized void a() {
        while (this.f37821c > this.f37822d) {
            byte[] bArrRemove = this.f37819a.remove(0);
            this.f37820b.remove(bArrRemove);
            this.f37821c -= bArrRemove.length;
        }
    }
}
