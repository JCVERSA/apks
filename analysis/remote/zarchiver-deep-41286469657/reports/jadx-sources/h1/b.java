package h1;

public final class b {

    public final int[] f1113a;

    public final String[] f1114b;

    public final byte[] f1115c;

    public int f1116d;

    public b(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Capacity: " + i2);
        }
        this.f1116d = 0;
        this.f1113a = new int[i2];
        this.f1114b = new String[i2];
        this.f1115c = new byte[i2];
    }

    public final byte a(String str) {
        boolean z2;
        int iHashCode = str.hashCode();
        for (int i2 = 0; i2 < this.f1116d; i2++) {
            if (this.f1113a[i2] == iHashCode) {
                String str2 = this.f1114b[i2];
                int length = str2.length();
                if (length != str.length()) {
                    z2 = false;
                    break;
                }
                int i3 = 0;
                while (true) {
                    int i4 = length - 1;
                    if (length == 0) {
                        z2 = true;
                        break;
                    }
                    if (str2.charAt(i3) != str.charAt(i3)) {
                        z2 = false;
                        break;
                    }
                    i3++;
                    length = i4;
                }
                if (z2) {
                    return this.f1115c[i2];
                }
            }
        }
        return (byte) 0;
    }

    public final void b(String str, byte b2) {
        int i2 = this.f1116d;
        int[] iArr = this.f1113a;
        if (i2 >= iArr.length) {
            throw new IllegalArgumentException("Capacity: " + iArr.length);
        }
        iArr[i2] = str.hashCode();
        int i3 = this.f1116d;
        this.f1114b[i3] = str;
        this.f1115c[i3] = b2;
        this.f1116d = i3 + 1;
    }
}
