package com.google.android.exoplayer2.upstream.cache;

import android.support.v4.media.session.PlaybackStateCompat;
import defpackage.blb;
import defpackage.op5;
import defpackage.rs1;
import defpackage.wu8;
import defpackage.zi;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class CacheDataSink implements rs1 {
    public final Cache a;
    public final long b;
    public final int c;
    public com.google.android.exoplayer2.upstream.b d;
    public long e;
    public File f;
    public OutputStream g;
    public long h;
    public long i;
    public wu8 j;

    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public static final class a implements rs1.a {
        public Cache a;
        public long b = androidx.media3.datasource.cache.CacheDataSink.DEFAULT_FRAGMENT_SIZE;
        public int c = androidx.media3.datasource.cache.CacheDataSink.DEFAULT_BUFFER_SIZE;

        public a a(Cache cache) {
            this.a = cache;
            return this;
        }

        @Override
        public rs1 createDataSink() {
            return new CacheDataSink((Cache) zi.e(this.a), this.b, this.c);
        }
    }

    public CacheDataSink(Cache cache, long j, int i) {
        zi.h(j > 0 || j == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        if (j != -1 && j < PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) {
            op5.i("CacheDataSink", "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.a = (Cache) zi.e(cache);
        this.b = j == -1 ? Long.MAX_VALUE : j;
        this.c = i;
    }

    @Override
    public void a(com.google.android.exoplayer2.upstream.b bVar) throws CacheDataSinkException {
        zi.e(bVar.i);
        if (bVar.h == -1 && bVar.d(2)) {
            this.d = null;
            return;
        }
        this.d = bVar;
        this.e = bVar.d(4) ? this.b : Long.MAX_VALUE;
        this.i = 0L;
        try {
            c(bVar);
        } catch (IOException e) {
            throw new CacheDataSinkException(e);
        }
    }

    public final void b() {
        OutputStream outputStream = this.g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            blb.m(this.g);
            this.g = null;
            File file = (File) blb.j(this.f);
            this.f = null;
            this.a.commitFile(file, this.h);
        } catch (Throwable th) {
            blb.m(this.g);
            this.g = null;
            File file2 = (File) blb.j(this.f);
            this.f = null;
            file2.delete();
            throw th;
        }
    }

    public final void c(com.google.android.exoplayer2.upstream.b bVar) {
        long j = bVar.h;
        this.f = this.a.startFile((String) blb.j(bVar.i), bVar.g + this.i, j != -1 ? Math.min(j - this.i, this.e) : -1L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f);
        if (this.c > 0) {
            wu8 wu8Var = this.j;
            if (wu8Var == null) {
                this.j = new wu8(fileOutputStream, this.c);
            } else {
                wu8Var.a(fileOutputStream);
            }
            this.g = this.j;
        } else {
            this.g = fileOutputStream;
        }
        this.h = 0L;
    }

    @Override
    public void close() throws CacheDataSinkException {
        if (this.d == null) {
            return;
        }
        try {
            b();
        } catch (IOException e) {
            throw new CacheDataSinkException(e);
        }
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws CacheDataSinkException {
        com.google.android.exoplayer2.upstream.b bVar = this.d;
        if (bVar == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.h == this.e) {
                    b();
                    c(bVar);
                }
                int iMin = (int) Math.min(i2 - i3, this.e - this.h);
                ((OutputStream) blb.j(this.g)).write(bArr, i + i3, iMin);
                i3 += iMin;
                long j = iMin;
                this.h += j;
                this.i += j;
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        }
    }
}
