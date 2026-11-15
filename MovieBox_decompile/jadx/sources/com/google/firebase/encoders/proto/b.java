package com.google.firebase.encoders.proto;

import java.io.OutputStream;

final class b extends OutputStream {

    private long f30996a = 0;

    b() {
    }

    long d() {
        return this.f30996a;
    }

    @Override
    public void write(int i10) {
        this.f30996a++;
    }

    @Override
    public void write(byte[] bArr) {
        this.f30996a += (long) bArr.length;
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) {
        int i12;
        if (i10 >= 0 && i10 <= bArr.length && i11 >= 0 && (i12 = i10 + i11) <= bArr.length && i12 >= 0) {
            this.f30996a += (long) i11;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
