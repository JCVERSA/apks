package androidx.media3.datasource.cache;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class CacheDataSink implements w1.d {

    private final Cache f10446a;

    private final long f10447b;

    private final int f10448c;

    private w1.h f10449d;

    private long f10450e;

    private File f10451f;

    private OutputStream f10452g;

    private long f10453h;

    private long f10454i;

    private r f10455j;

    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public static final class a implements w1.d.a {

        private Cache f10456a;

        private long f10457b = 5242880;

        private int f10458c = com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink.DEFAULT_BUFFER_SIZE;

        public a a(Cache cache) {
            this.f10456a = cache;
            return this;
        }

        @Override
        public w1.d createDataSink() {
            return new CacheDataSink((Cache) androidx.media3.common.util.a.e(this.f10456a), this.f10457b, this.f10458c);
        }
    }

    public CacheDataSink(Cache cache, long j10, int i10) {
        androidx.media3.common.util.a.h(j10 > 0 || j10 == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        if (j10 != -1 && j10 < 2097152) {
            u.h("CacheDataSink", "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.f10446a = (Cache) androidx.media3.common.util.a.e(cache);
        this.f10447b = j10 == -1 ? Long.MAX_VALUE : j10;
        this.f10448c = i10;
    }

    private void b() {
        OutputStream outputStream = this.f10452g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            a1.m(this.f10452g);
            this.f10452g = null;
            File file = (File) a1.i(this.f10451f);
            this.f10451f = null;
            this.f10446a.d(file, this.f10453h);
        } catch (Throwable th2) {
            a1.m(this.f10452g);
            this.f10452g = null;
            File file2 = (File) a1.i(this.f10451f);
            this.f10451f = null;
            file2.delete();
            throw th2;
        }
    }

    private void c(w1.h hVar) {
        long j10 = hVar.f74104h;
        this.f10451f = this.f10446a.startFile((String) a1.i(hVar.f74105i), hVar.f74103g + this.f10454i, j10 != -1 ? Math.min(j10 - this.f10454i, this.f10450e) : -1L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f10451f);
        if (this.f10448c > 0) {
            r rVar = this.f10455j;
            if (rVar == null) {
                this.f10455j = new r(fileOutputStream, this.f10448c);
            } else {
                rVar.b(fileOutputStream);
            }
            this.f10452g = this.f10455j;
        } else {
            this.f10452g = fileOutputStream;
        }
        this.f10453h = 0L;
    }

    @Override
    public void a(w1.h hVar) throws CacheDataSinkException {
        androidx.media3.common.util.a.e(hVar.f74105i);
        if (hVar.f74104h == -1 && hVar.d(2)) {
            this.f10449d = null;
            return;
        }
        this.f10449d = hVar;
        this.f10450e = hVar.d(4) ? this.f10447b : Long.MAX_VALUE;
        this.f10454i = 0L;
        try {
            c(hVar);
        } catch (IOException e10) {
            throw new CacheDataSinkException(e10);
        }
    }

    @Override
    public void close() throws CacheDataSinkException {
        if (this.f10449d == null) {
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
        w1.h hVar = this.f10449d;
        if (hVar == null) {
            return;
        }
        int i12 = 0;
        while (i12 < i11) {
            try {
                if (this.f10453h == this.f10450e) {
                    b();
                    c(hVar);
                }
                int iMin = (int) Math.min(i11 - i12, this.f10450e - this.f10453h);
                ((OutputStream) a1.i(this.f10452g)).write(bArr, i10 + i12, iMin);
                i12 += iMin;
                long j10 = iMin;
                this.f10453h += j10;
                this.f10454i += j10;
            } catch (IOException e10) {
                throw new CacheDataSinkException(e10);
            }
        }
    }
}
