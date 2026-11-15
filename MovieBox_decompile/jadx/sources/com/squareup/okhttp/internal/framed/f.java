package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSource;
import okio.InflaterSource;
import okio.Okio;
import okio.Source;

class f {

    private final InflaterSource f39580a;

    private int f39581b;

    private final BufferedSource f39582c;

    class a extends ForwardingSource {
        a(Source source) {
            super(source);
        }

        @Override
        public long read(Buffer buffer, long j10) throws IOException {
            if (f.this.f39581b == 0) {
                return -1L;
            }
            long j11 = super.read(buffer, Math.min(j10, f.this.f39581b));
            if (j11 == -1) {
                return -1L;
            }
            f fVar = f.this;
            fVar.f39581b = (int) (((long) fVar.f39581b) - j11);
            return j11;
        }
    }

    class b extends Inflater {
        b() {
        }

        @Override
        public int inflate(byte[] bArr, int i10, int i11) throws DataFormatException {
            int iInflate = super.inflate(bArr, i10, i11);
            if (iInflate != 0 || !needsDictionary()) {
                return iInflate;
            }
            setDictionary(i.f39589a);
            return super.inflate(bArr, i10, i11);
        }
    }

    public f(BufferedSource bufferedSource) {
        InflaterSource inflaterSource = new InflaterSource(new a(bufferedSource), new b());
        this.f39580a = inflaterSource;
        this.f39582c = Okio.buffer(inflaterSource);
    }

    private void d() throws IOException {
        if (this.f39581b > 0) {
            this.f39580a.refill();
            if (this.f39581b == 0) {
                return;
            }
            throw new IOException("compressedLimit > 0: " + this.f39581b);
        }
    }

    private ByteString e() throws IOException {
        return this.f39582c.readByteString(this.f39582c.readInt());
    }

    public void c() {
        this.f39582c.close();
    }

    public List f(int i10) {
        this.f39581b += i10;
        int i11 = this.f39582c.readInt();
        if (i11 < 0) {
            throw new IOException("numberOfPairs < 0: " + i11);
        }
        if (i11 > 1024) {
            throw new IOException("numberOfPairs > 1024: " + i11);
        }
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            ByteString asciiLowercase = e().toAsciiLowercase();
            ByteString byteStringE = e();
            if (asciiLowercase.size() == 0) {
                throw new IOException("name.size == 0");
            }
            arrayList.add(new com.squareup.okhttp.internal.framed.b(asciiLowercase, byteStringE));
        }
        d();
        return arrayList;
    }
}
