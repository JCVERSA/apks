package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.util.p0;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class CacheDataSink implements com.google.android.exoplayer2.upstream.i {

    private final Cache f26505a;

    private final long f26506b;

    private final int f26507c;

    private com.google.android.exoplayer2.upstream.n f26508d;

    private long f26509e;

    private File f26510f;

    private OutputStream f26511g;

    private long f26512h;

    private long f26513i;

    private r f26514j;

    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public static final class a implements com.google.android.exoplayer2.upstream.i.a {

        private Cache f26515a;

        private long f26516b = 5242880;

        private int f26517c = com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink.DEFAULT_BUFFER_SIZE;

        public a a(Cache cache) {
            this.f26515a = cache;
            return this;
        }

        @Override
        public com.google.android.exoplayer2.upstream.i createDataSink() {
            return new CacheDataSink((Cache) com.google.android.exoplayer2.util.a.e(this.f26515a), this.f26516b, this.f26517c);
        }
    }

    public CacheDataSink(Cache cache, long j10, int i10) {
        com.google.android.exoplayer2.util.a.h(j10 > 0 || j10 == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        if (j10 != -1 && j10 < 2097152) {
            com.google.android.exoplayer2.util.s.i("CacheDataSink", "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.f26505a = (Cache) com.google.android.exoplayer2.util.a.e(cache);
        this.f26506b = j10 == -1 ? Long.MAX_VALUE : j10;
        this.f26507c = i10;
    }

    private void b() {
        OutputStream outputStream = this.f26511g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            p0.n(this.f26511g);
            this.f26511g = null;
            File file = (File) p0.j(this.f26510f);
            this.f26510f = null;
            this.f26505a.d(file, this.f26512h);
        } catch (Throwable th2) {
            p0.n(this.f26511g);
            this.f26511g = null;
            File file2 = (File) p0.j(this.f26510f);
            this.f26510f = null;
            file2.delete();
            throw th2;
        }
    }

    private void c(com.google.android.exoplayer2.upstream.n nVar) {
        long j10 = nVar.f26672h;
        this.f26510f = this.f26505a.startFile((String) p0.j(nVar.f26673i), nVar.f26671g + this.f26513i, j10 != -1 ? Math.min(j10 - this.f26513i, this.f26509e) : -1L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f26510f);
        if (this.f26507c > 0) {
            r rVar = this.f26514j;
            if (rVar == null) {
                this.f26514j = new r(fileOutputStream, this.f26507c);
            } else {
                rVar.b(fileOutputStream);
            }
            this.f26511g = this.f26514j;
        } else {
            this.f26511g = fileOutputStream;
        }
        this.f26512h = 0L;
    }

    @Override
    public void a(com.google.android.exoplayer2.upstream.n nVar) throws CacheDataSinkException {
        com.google.android.exoplayer2.util.a.e(nVar.f26673i);
        if (nVar.f26672h == -1 && nVar.d(2)) {
            this.f26508d = null;
            return;
        }
        this.f26508d = nVar;
        this.f26509e = nVar.d(4) ? this.f26506b : Long.MAX_VALUE;
        this.f26513i = 0L;
        try {
            c(nVar);
        } catch (IOException e10) {
            throw new CacheDataSinkException(e10);
        }
    }

    @Override
    public void close() throws CacheDataSinkException {
        if (this.f26508d == null) {
            return;
        }
        try {
            b();
        } catch (IOException e10) {
            throw new CacheDataSinkException(e10);
        }
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws CacheDataSinkException {
        com.google.android.exoplayer2.upstream.n nVar = this.f26508d;
        if (nVar == null) {
            return;
        }
        int i12 = 0;
        while (i12 < i11) {
            try {
                if (this.f26512h == this.f26509e) {
                    b();
                    c(nVar);
                }
                int iMin = (int) Math.min(i11 - i12, this.f26509e - this.f26512h);
                ((OutputStream) p0.j(this.f26511g)).write(bArr, i10 + i12, iMin);
                i12 += iMin;
                long j10 = iMin;
                this.f26512h += j10;
                this.f26513i += j10;
            } catch (IOException e10) {
                throw new CacheDataSinkException(e10);
            }
        }
    }
}
