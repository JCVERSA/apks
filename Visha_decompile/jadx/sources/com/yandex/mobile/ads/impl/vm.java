package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.datasource.cache.CacheDataSink;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class vm implements sv {
    private final sm a;
    private final long b = CacheDataSink.DEFAULT_FRAGMENT_SIZE;
    private final int c = CacheDataSink.DEFAULT_BUFFER_SIZE;

    @Nullable
    private xv d;
    private long e;

    @Nullable
    private File f;

    @Nullable
    private OutputStream g;
    private long h;
    private long i;
    private or1 j;

    public static final class a extends sm.a {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public static final class b {
        private sm a;

        public final b a(sm smVar) {
            this.a = smVar;
            return this;
        }

        public final vm a() {
            sm smVar = this.a;
            smVar.getClass();
            return new vm(smVar);
        }
    }

    public vm(sm smVar) {
        this.a = (sm) hg.a(smVar);
    }

    private void a() throws IOException {
        OutputStream outputStream = this.g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            f92.a((Closeable) this.g);
            this.g = null;
            File file = this.f;
            this.f = null;
            this.a.a(file, this.h);
        } catch (Throwable th) {
            f92.a((Closeable) this.g);
            this.g = null;
            File file2 = this.f;
            this.f = null;
            file2.delete();
            throw th;
        }
    }

    private void b(xv xvVar) throws IOException {
        long j = xvVar.g;
        long jMin = j != -1 ? Math.min(j - this.i, this.e) : -1L;
        sm smVar = this.a;
        String str = xvVar.h;
        int i = f92.a;
        this.f = smVar.a(str, xvVar.f + this.i, jMin);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f);
        if (this.c > 0) {
            or1 or1Var = this.j;
            if (or1Var == null) {
                this.j = new or1(fileOutputStream, this.c);
            } else {
                or1Var.a(fileOutputStream);
            }
            this.g = this.j;
        } else {
            this.g = fileOutputStream;
        }
        this.h = 0L;
    }

    @Override
    public final void close() throws a {
        if (this.d == null) {
            return;
        }
        try {
            a();
        } catch (IOException e) {
            throw new a(e);
        }
    }

    @Override
    public final void write(byte[] bArr, int i, int i2) throws a {
        xv xvVar = this.d;
        if (xvVar == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.h == this.e) {
                    a();
                    b(xvVar);
                }
                int iMin = (int) Math.min(i2 - i3, this.e - this.h);
                OutputStream outputStream = this.g;
                int i4 = f92.a;
                outputStream.write(bArr, i + i3, iMin);
                i3 += iMin;
                long j = iMin;
                this.h += j;
                this.i += j;
            } catch (IOException e) {
                throw new a(e);
            }
        }
    }

    @Override
    public final void a(xv xvVar) throws a {
        xvVar.h.getClass();
        if (xvVar.g == -1 && (xvVar.i & 2) == 2) {
            this.d = null;
            return;
        }
        this.d = xvVar;
        this.e = (xvVar.i & 4) == 4 ? this.b : Long.MAX_VALUE;
        this.i = 0L;
        try {
            b(xvVar);
        } catch (IOException e) {
            throw new a(e);
        }
    }
}
