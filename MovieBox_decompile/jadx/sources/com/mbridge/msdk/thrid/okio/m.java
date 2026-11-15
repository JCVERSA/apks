package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.nio.ByteBuffer;

final class m implements d {

    public final c f37625a = new c();

    public final r f37626b;

    boolean f37627c;

    m(r rVar) {
        if (rVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f37626b = rVar;
    }

    @Override
    public c a() {
        return this.f37625a;
    }

    @Override
    public t b() {
        return this.f37626b.b();
    }

    @Override
    public void close() throws Throwable {
        if (this.f37627c) {
            return;
        }
        c cVar = this.f37625a;
        long j10 = cVar.f37600b;
        if (j10 > 0) {
            this.f37626b.a(cVar, j10);
        }
        th = null;
        try {
            this.f37626b.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f37627c = true;
        if (th != null) {
            u.a(th);
        }
    }

    public d d() throws IOException {
        if (this.f37627c) {
            throw new IllegalStateException("closed");
        }
        long jM = this.f37625a.m();
        if (jM > 0) {
            this.f37626b.a(this.f37625a, jM);
        }
        return this;
    }

    @Override
    public void flush() throws IOException {
        if (this.f37627c) {
            throw new IllegalStateException("closed");
        }
        c cVar = this.f37625a;
        long j10 = cVar.f37600b;
        if (j10 > 0) {
            this.f37626b.a(cVar, j10);
        }
        this.f37626b.flush();
    }

    @Override
    public boolean isOpen() {
        return !this.f37627c;
    }

    public String toString() {
        return "buffer(" + this.f37626b + ")";
    }

    @Override
    public d write(byte[] bArr) throws IOException {
        if (this.f37627c) {
            throw new IllegalStateException("closed");
        }
        this.f37625a.write(bArr);
        return d();
    }

    @Override
    public d writeByte(int i10) throws IOException {
        if (this.f37627c) {
            throw new IllegalStateException("closed");
        }
        this.f37625a.writeByte(i10);
        return d();
    }

    @Override
    public d writeInt(int i10) throws IOException {
        if (this.f37627c) {
            throw new IllegalStateException("closed");
        }
        this.f37625a.writeInt(i10);
        return d();
    }

    @Override
    public d writeShort(int i10) throws IOException {
        if (this.f37627c) {
            throw new IllegalStateException("closed");
        }
        this.f37625a.writeShort(i10);
        return d();
    }

    @Override
    public void a(c cVar, long j10) throws IOException {
        if (this.f37627c) {
            throw new IllegalStateException("closed");
        }
        this.f37625a.a(cVar, j10);
        d();
    }

    @Override
    public d write(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f37627c) {
            this.f37625a.write(bArr, i10, i11);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override
    public d a(String str) throws IOException {
        if (!this.f37627c) {
            this.f37625a.a(str);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.f37627c) {
            int iWrite = this.f37625a.write(byteBuffer);
            d();
            return iWrite;
        }
        throw new IllegalStateException("closed");
    }

    @Override
    public d a(long j10) throws IOException {
        if (!this.f37627c) {
            this.f37625a.a(j10);
            return d();
        }
        throw new IllegalStateException("closed");
    }
}
