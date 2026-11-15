package yd;

final class b {

    private final byte[] f76214a;

    private int f76215b = 0;

    b(int i10) {
        this.f76214a = new byte[i10];
    }

    private void c(int i10, boolean z10) {
        this.f76214a[i10] = z10 ? (byte) 1 : (byte) 0;
    }

    void a(boolean z10, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.f76215b;
            this.f76215b = i12 + 1;
            c(i12, z10);
        }
    }

    byte[] b(int i10) {
        int length = this.f76214a.length * i10;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            bArr[i11] = this.f76214a[i11 / i10];
        }
        return bArr;
    }
}
