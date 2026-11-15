package com.google.zxing.aztec.encoder;

final class b extends f {

    private final int f32012c;

    private final int f32013d;

    b(f fVar, int i10, int i11) {
        super(fVar);
        this.f32012c = i10;
        this.f32013d = i11;
    }

    @Override
    public void c(kd.a aVar, byte[] bArr) {
        int i10 = this.f32013d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 == 0 || (i11 == 31 && i10 <= 62)) {
                aVar.c(31, 5);
                if (i10 > 62) {
                    aVar.c(i10 - 31, 16);
                } else if (i11 == 0) {
                    aVar.c(Math.min(i10, 31), 5);
                } else {
                    aVar.c(i10 - 31, 5);
                }
            }
            aVar.c(bArr[this.f32012c + i11], 8);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<");
        sb2.append(this.f32012c);
        sb2.append("::");
        sb2.append((this.f32012c + this.f32013d) - 1);
        sb2.append('>');
        return sb2.toString();
    }
}
