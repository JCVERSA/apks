package r3;

import java.util.Arrays;

public final class w {

    private final int f70796a;

    private boolean f70797b;

    private boolean f70798c;

    public byte[] f70799d;

    public int f70800e;

    public w(int i10, int i11) {
        this.f70796a = i10;
        byte[] bArr = new byte[i11 + 3];
        this.f70799d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i10, int i11) {
        if (this.f70797b) {
            int i12 = i11 - i10;
            byte[] bArr2 = this.f70799d;
            int length = bArr2.length;
            int i13 = this.f70800e;
            if (length < i13 + i12) {
                this.f70799d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.f70799d, this.f70800e, i12);
            this.f70800e += i12;
        }
    }

    public boolean b(int i10) {
        if (!this.f70797b) {
            return false;
        }
        this.f70800e -= i10;
        this.f70797b = false;
        this.f70798c = true;
        return true;
    }

    public boolean c() {
        return this.f70798c;
    }

    public void d() {
        this.f70797b = false;
        this.f70798c = false;
    }

    public void e(int i10) {
        androidx.media3.common.util.a.g(!this.f70797b);
        boolean z10 = i10 == this.f70796a;
        this.f70797b = z10;
        if (z10) {
            this.f70800e = 3;
            this.f70798c = false;
        }
    }
}
