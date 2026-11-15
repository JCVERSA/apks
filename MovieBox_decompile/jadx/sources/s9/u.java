package s9;

import java.util.Arrays;

final class u {

    private final int f71946a;

    private boolean f71947b;

    private boolean f71948c;

    public byte[] f71949d;

    public int f71950e;

    public u(int i10, int i11) {
        this.f71946a = i10;
        byte[] bArr = new byte[i11 + 3];
        this.f71949d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i10, int i11) {
        if (this.f71947b) {
            int i12 = i11 - i10;
            byte[] bArr2 = this.f71949d;
            int length = bArr2.length;
            int i13 = this.f71950e;
            if (length < i13 + i12) {
                this.f71949d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.f71949d, this.f71950e, i12);
            this.f71950e += i12;
        }
    }

    public boolean b(int i10) {
        if (!this.f71947b) {
            return false;
        }
        this.f71950e -= i10;
        this.f71947b = false;
        this.f71948c = true;
        return true;
    }

    public boolean c() {
        return this.f71948c;
    }

    public void d() {
        this.f71947b = false;
        this.f71948c = false;
    }

    public void e(int i10) {
        com.google.android.exoplayer2.util.a.g(!this.f71947b);
        boolean z10 = i10 == this.f71946a;
        this.f71947b = z10;
        if (z10) {
            this.f71950e = 3;
            this.f71948c = false;
        }
    }
}
