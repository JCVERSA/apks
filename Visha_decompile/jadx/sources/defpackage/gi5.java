package defpackage;

import org.bouncycastle.pqc.crypto.lms.LMSigParameters;

public class gi5 implements sb2 {
    public final byte[] a;
    public final di5 b;
    public final LMSigParameters c;
    public final byte[][] d;
    public final Object e = null;
    public volatile sb2 f;

    public gi5(di5 di5Var, LMSigParameters lMSigParameters, sb2 sb2Var, byte[] bArr, byte[][] bArr2) {
        this.b = di5Var;
        this.c = lMSigParameters;
        this.f = sb2Var;
        this.a = bArr;
        this.d = bArr2;
    }

    @Override
    public int a(byte[] bArr, int i) {
        return this.f.a(bArr, i);
    }

    @Override
    public void b(byte b) {
        this.f.b(b);
    }

    @Override
    public String c() {
        return this.f.c();
    }

    public byte[] d() {
        return this.a;
    }

    public byte[][] e() {
        return this.d;
    }

    @Override
    public int g() {
        return this.f.g();
    }

    public di5 i() {
        return this.b;
    }

    public byte[] j() {
        byte[] bArr = new byte[34];
        this.f.a(bArr, 0);
        this.f = null;
        return bArr;
    }

    public LMSigParameters k() {
        return this.c;
    }

    @Override
    public void reset() {
        this.f.reset();
    }

    @Override
    public void update(byte[] bArr, int i, int i2) {
        this.f.update(bArr, i, i2);
    }
}
