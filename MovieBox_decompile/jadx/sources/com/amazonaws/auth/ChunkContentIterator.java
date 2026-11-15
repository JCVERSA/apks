package com.amazonaws.auth;

class ChunkContentIterator {

    private final byte[] f17738a;

    private int f17739b;

    public ChunkContentIterator(byte[] bArr) {
        this.f17738a = bArr;
    }

    public boolean a() {
        return this.f17739b < this.f17738a.length;
    }

    public int b(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        if (!a()) {
            return -1;
        }
        int iMin = Math.min(this.f17738a.length - this.f17739b, i11);
        System.arraycopy(this.f17738a, this.f17739b, bArr, i10, iMin);
        this.f17739b += iMin;
        return iMin;
    }
}
