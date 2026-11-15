package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

class Dq {

    private final RandomAccessFile f19581a;

    static class Sj extends Exception {
        Sj(Throwable th2) {
            super(th2);
        }
    }

    Dq(File file, String str) throws Sj {
        try {
            this.f19581a = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e10) {
            throw new Sj(e10);
        }
    }

    int a(byte[] bArr) throws Sj {
        try {
            return this.f19581a.read(bArr);
        } catch (IOException e10) {
            throw new Sj(e10);
        }
    }

    void b() {
        h6.a.n(this.f19581a);
    }

    void c(long j10) throws Sj {
        try {
            this.f19581a.seek(j10);
        } catch (IOException e10) {
            throw new Sj(e10);
        }
    }

    void d(byte[] bArr, int i10, int i11) throws Sj {
        try {
            this.f19581a.write(bArr, i10, i11);
        } catch (IOException e10) {
            throw new Sj(e10);
        }
    }
}
