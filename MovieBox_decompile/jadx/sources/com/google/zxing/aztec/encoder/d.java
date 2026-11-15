package com.google.zxing.aztec.encoder;

final class d extends f {

    private final short f32015c;

    private final short f32016d;

    d(f fVar, int i10, int i11) {
        super(fVar);
        this.f32015c = (short) i10;
        this.f32016d = (short) i11;
    }

    @Override
    void c(kd.a aVar, byte[] bArr) {
        aVar.c(this.f32015c, this.f32016d);
    }

    public String toString() {
        short s10 = this.f32015c;
        short s11 = this.f32016d;
        return '<' + Integer.toBinaryString((s10 & ((1 << s11) - 1)) | (1 << s11) | (1 << this.f32016d)).substring(1) + '>';
    }
}
