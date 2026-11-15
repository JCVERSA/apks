package defpackage;

public final class vfi extends wfi {
    public vfi(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override
    public final int a() {
        return 12;
    }

    @Override
    public final int[] b(int[] iArr, int i) {
        int length = iArr.length;
        if (length != 3) {
            throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
        }
        int[] iArr2 = new int[16];
        ufi.b(iArr2, this.a);
        iArr2[12] = i;
        System.arraycopy(iArr, 0, iArr2, 13, 3);
        return iArr2;
    }
}
