package v;

public final class a extends b {
    @Override
    public final int a(byte[] bArr, int i2) {
        int i3;
        if ((bArr[i2] & 255) != 164 || (i3 = bArr[i2 + 1] & 255) < 161 || i3 > 243) {
            return -1;
        }
        return i3 - 161;
    }
}
