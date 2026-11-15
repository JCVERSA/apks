package com.google.zxing;

public final class h extends e {

    private final byte[] f32080c;

    private final int f32081d;

    private final int f32082e;

    private final int f32083f;

    private final int f32084g;

    public h(byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10) {
        super(i14, i15);
        if (i12 + i14 > i10 || i13 + i15 > i11) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f32080c = bArr;
        this.f32081d = i10;
        this.f32082e = i11;
        this.f32083f = i12;
        this.f32084g = i13;
        if (z10) {
            h(i14, i15);
        }
    }

    private void h(int i10, int i11) {
        byte[] bArr = this.f32080c;
        int i12 = (this.f32084g * this.f32081d) + this.f32083f;
        int i13 = 0;
        while (i13 < i11) {
            int i14 = (i10 / 2) + i12;
            int i15 = (i12 + i10) - 1;
            int i16 = i12;
            while (i16 < i14) {
                byte b10 = bArr[i16];
                bArr[i16] = bArr[i15];
                bArr[i15] = b10;
                i16++;
                i15--;
            }
            i13++;
            i12 += this.f32081d;
        }
    }

    @Override
    public byte[] b() {
        int iD = d();
        int iA = a();
        int i10 = this.f32081d;
        if (iD == i10 && iA == this.f32082e) {
            return this.f32080c;
        }
        int i11 = iD * iA;
        byte[] bArr = new byte[i11];
        int i12 = (this.f32084g * i10) + this.f32083f;
        if (iD == i10) {
            System.arraycopy(this.f32080c, i12, bArr, 0, i11);
            return bArr;
        }
        for (int i13 = 0; i13 < iA; i13++) {
            System.arraycopy(this.f32080c, i12, bArr, i13 * iD, iD);
            i12 += this.f32081d;
        }
        return bArr;
    }

    @Override
    public byte[] c(int i10, byte[] bArr) {
        if (i10 < 0 || i10 >= a()) {
            throw new IllegalArgumentException("Requested row is outside the image: " + i10);
        }
        int iD = d();
        if (bArr == null || bArr.length < iD) {
            bArr = new byte[iD];
        }
        System.arraycopy(this.f32080c, ((i10 + this.f32084g) * this.f32081d) + this.f32083f, bArr, 0, iD);
        return bArr;
    }
}
