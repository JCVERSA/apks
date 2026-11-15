package com.android.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ByteArrayPool {

    protected static final Comparator f18652e = new Comparator<byte[]>() {
        @Override
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    private final List f18653a = new ArrayList();

    private final List f18654b = new ArrayList(64);

    private int f18655c = 0;

    private final int f18656d;

    public ByteArrayPool(int i10) {
        this.f18656d = i10;
    }

    private synchronized void c() {
        while (this.f18655c > this.f18656d) {
            byte[] bArr = (byte[]) this.f18653a.remove(0);
            this.f18654b.remove(bArr);
            this.f18655c -= bArr.length;
        }
    }

    public synchronized byte[] a(int i10) {
        for (int i11 = 0; i11 < this.f18654b.size(); i11++) {
            byte[] bArr = (byte[]) this.f18654b.get(i11);
            if (bArr.length >= i10) {
                this.f18655c -= bArr.length;
                this.f18654b.remove(i11);
                this.f18653a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i10];
    }

    public synchronized void b(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f18656d) {
                this.f18653a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f18654b, bArr, f18652e);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f18654b.add(iBinarySearch, bArr);
                this.f18655c += bArr.length;
                c();
            }
        }
    }
}
