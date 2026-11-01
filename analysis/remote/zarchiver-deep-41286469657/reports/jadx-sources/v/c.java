package v;

public final class c extends b {
    @Override
    public final int a(byte[] bArr, int i2) {
        int i3;
        if ((bArr[i2] & 255) != 130 || (i3 = bArr[i2 + 1] & 255) < 159 || i3 > 241) {
            return -1;
        }
        return i3 - 159;
    }
}
