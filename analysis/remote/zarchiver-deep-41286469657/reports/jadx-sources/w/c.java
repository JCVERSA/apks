package w;

public final class c extends g {

    public final int f2200f;

    public c(int i2) {
        this.f2200f = i2;
    }

    @Override
    public final int b(byte[] bArr, int i2) {
        int i3;
        switch (this.f2200f) {
            case 0:
                int i4 = bArr[i2] & 255;
                if (i4 < 161) {
                    return -1;
                }
                return (((i4 - 161) * 94) + (bArr[i2 + 1] & 255)) - 161;
            default:
                int i5 = bArr[i2] & 255;
                if (i5 >= 129 && i5 <= 159) {
                    i3 = i5 - 129;
                } else {
                    if (i5 < 224 || i5 > 239) {
                        return -1;
                    }
                    i3 = (i5 - 224) + 31;
                }
                int i6 = bArr[i2 + 1] & 255;
                int i7 = (i6 - 64) + (i3 * 188);
                if (i6 >= 128) {
                    i7--;
                }
                return i7;
        }
    }
}
