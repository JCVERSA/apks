package com.google.zxing;

public final class d extends e {

    private final e f32027c;

    public d(e eVar) {
        super(eVar.d(), eVar.a());
        this.f32027c = eVar;
    }

    @Override
    public byte[] b() {
        byte[] bArrB = this.f32027c.b();
        int iD = d() * a();
        byte[] bArr = new byte[iD];
        for (int i10 = 0; i10 < iD; i10++) {
            bArr[i10] = (byte) (255 - (bArrB[i10] & 255));
        }
        return bArr;
    }

    @Override
    public byte[] c(int i10, byte[] bArr) {
        byte[] bArrC = this.f32027c.c(i10, bArr);
        int iD = d();
        for (int i11 = 0; i11 < iD; i11++) {
            bArrC[i11] = (byte) (255 - (bArrC[i11] & 255));
        }
        return bArrC;
    }

    @Override
    public e e() {
        return this.f32027c;
    }

    @Override
    public boolean f() {
        return this.f32027c.f();
    }

    @Override
    public e g() {
        return new d(this.f32027c.g());
    }
}
