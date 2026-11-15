package com.mbridge.msdk.thrid.okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

final class n implements e {

    public final c f37628a = new c();

    public final s f37629b;

    boolean f37630c;

    n(s sVar) {
        if (sVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f37629b = sVar;
    }

    @Override
    public c a() {
        return this.f37628a;
    }

    @Override
    public long b(c cVar, long j10) throws IOException {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f37630c) {
            throw new IllegalStateException("closed");
        }
        c cVar2 = this.f37628a;
        if (cVar2.f37600b == 0 && this.f37629b.b(cVar2, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.f37628a.b(cVar, Math.min(j10, this.f37628a.f37600b));
    }

    @Override
    public byte[] c(long j10) throws IOException {
        e(j10);
        return this.f37628a.c(j10);
    }

    @Override
    public void close() throws IOException {
        if (this.f37630c) {
            return;
        }
        this.f37630c = true;
        this.f37629b.close();
        this.f37628a.k();
    }

    @Override
    public String d(long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j10);
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        long jA = a((byte) 10, 0L, j11);
        if (jA != -1) {
            return this.f37628a.h(jA);
        }
        if (j11 < Long.MAX_VALUE && f(j11) && this.f37628a.f(j11 - 1) == 13 && f(1 + j11) && this.f37628a.f(j11) == 10) {
            return this.f37628a.h(j11);
        }
        c cVar = new c();
        c cVar2 = this.f37628a;
        cVar2.a(cVar, 0L, Math.min(32L, cVar2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f37628a.size(), j10) + " content=" + cVar.o().b() + (char) 8230);
    }

    @Override
    public void e(long j10) throws IOException {
        if (!f(j10)) {
            throw new EOFException();
        }
    }

    @Override
    public boolean f() throws IOException {
        if (this.f37630c) {
            throw new IllegalStateException("closed");
        }
        return this.f37628a.f() && this.f37629b.b(this.f37628a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    @Override
    public short g() throws IOException {
        e(2L);
        return this.f37628a.g();
    }

    @Override
    public long i() throws IOException {
        e(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!f(i11)) {
                break;
            }
            byte bF = this.f37628a.f(i10);
            if ((bF < 48 || bF > 57) && ((bF < 97 || bF > 102) && (bF < 65 || bF > 70))) {
                if (i10 != 0) {
                    break;
                }
                throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bF)));
            }
            i10 = i11;
        }
        return this.f37628a.i();
    }

    @Override
    public boolean isOpen() {
        return !this.f37630c;
    }

    @Override
    public InputStream j() {
        return new a();
    }

    @Override
    public int read(ByteBuffer byteBuffer) throws IOException {
        c cVar = this.f37628a;
        if (cVar.f37600b == 0 && this.f37629b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f37628a.read(byteBuffer);
    }

    @Override
    public byte readByte() throws IOException {
        e(1L);
        return this.f37628a.readByte();
    }

    @Override
    public void readFully(byte[] bArr) throws IOException {
        try {
            e(bArr.length);
            this.f37628a.readFully(bArr);
        } catch (EOFException e10) {
            int i10 = 0;
            while (true) {
                c cVar = this.f37628a;
                long j10 = cVar.f37600b;
                if (j10 <= 0) {
                    throw e10;
                }
                int i11 = cVar.read(bArr, i10, (int) j10);
                if (i11 == -1) {
                    throw new AssertionError();
                }
                i10 += i11;
            }
        }
    }

    @Override
    public int readInt() throws IOException {
        e(4L);
        return this.f37628a.readInt();
    }

    @Override
    public short readShort() throws IOException {
        e(2L);
        return this.f37628a.readShort();
    }

    @Override
    public void skip(long j10) throws IOException {
        if (this.f37630c) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            c cVar = this.f37628a;
            if (cVar.f37600b == 0 && this.f37629b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, this.f37628a.size());
            this.f37628a.skip(jMin);
            j10 -= jMin;
        }
    }

    public String toString() {
        return "buffer(" + this.f37629b + ")";
    }

    @Override
    public long a(byte b10) throws IOException {
        return a(b10, 0L, Long.MAX_VALUE);
    }

    @Override
    public int e() throws IOException {
        e(4L);
        return this.f37628a.e();
    }

    public long a(byte b10, long j10, long j11) throws IOException {
        if (this.f37630c) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || j11 < j10) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j10), Long.valueOf(j11)));
        }
        while (j10 < j11) {
            long jA = this.f37628a.a(b10, j10, j11);
            if (jA != -1) {
                return jA;
            }
            c cVar = this.f37628a;
            long j12 = cVar.f37600b;
            if (j12 >= j11 || this.f37629b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            j10 = Math.max(j10, j12);
        }
        return -1L;
    }

    @Override
    public String c() throws IOException {
        return d(Long.MAX_VALUE);
    }

    public boolean f(long j10) throws IOException {
        c cVar;
        if (j10 >= 0) {
            if (this.f37630c) {
                throw new IllegalStateException("closed");
            }
            do {
                cVar = this.f37628a;
                if (cVar.f37600b >= j10) {
                    return true;
                }
            } while (this.f37629b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
            return false;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j10);
    }

    class a extends InputStream {
        a() {
        }

        @Override
        public int available() throws IOException {
            n nVar = n.this;
            if (nVar.f37630c) {
                throw new IOException("closed");
            }
            return (int) Math.min(nVar.f37628a.f37600b, 2147483647L);
        }

        @Override
        public void close() throws IOException {
            n.this.close();
        }

        @Override
        public int read() throws IOException {
            n nVar = n.this;
            if (nVar.f37630c) {
                throw new IOException("closed");
            }
            c cVar = nVar.f37628a;
            if (cVar.f37600b == 0 && nVar.f37629b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            }
            return n.this.f37628a.readByte() & 255;
        }

        public String toString() {
            return n.this + ".inputStream()";
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (!n.this.f37630c) {
                u.a(bArr.length, i10, i11);
                n nVar = n.this;
                c cVar = nVar.f37628a;
                if (cVar.f37600b == 0 && nVar.f37629b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
                return n.this.f37628a.read(bArr, i10, i11);
            }
            throw new IOException("closed");
        }
    }

    @Override
    public f b(long j10) throws IOException {
        e(j10);
        return this.f37628a.b(j10);
    }

    @Override
    public t b() {
        return this.f37629b.b();
    }
}
