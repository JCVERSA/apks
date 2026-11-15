package com.google.zxing.aztec.encoder;

abstract class f {

    static final f f32023b = new d(null, 0, 0);

    private final f f32024a;

    f(f fVar) {
        this.f32024a = fVar;
    }

    final f a(int i10, int i11) {
        return new d(this, i10, i11);
    }

    final f b(int i10, int i11) {
        return new b(this, i10, i11);
    }

    abstract void c(kd.a aVar, byte[] bArr);

    final f d() {
        return this.f32024a;
    }
}
