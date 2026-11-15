package defpackage;

public final class g0i {
    public byte[] a;
    public int b;
    public int c;
    public int d = 0;

    public g0i(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.c = i;
        this.b = i2;
        j();
    }

    public final int a(int i) {
        int i2;
        this.d += i;
        int i3 = 0;
        while (true) {
            i2 = this.d;
            int i4 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.d = i5;
            byte[] bArr = this.a;
            int i6 = this.c;
            i3 |= (bArr[i6] & 255) << i5;
            if (true != k(i6 + 1)) {
                i4 = 1;
            }
            this.c = i6 + i4;
        }
        byte[] bArr2 = this.a;
        int i7 = this.c;
        int i8 = i3 | ((bArr2[i7] & 255) >> (8 - i2));
        int i9 = 32 - i;
        if (i2 == 8) {
            this.d = 0;
            this.c = i7 + (true != k(i7 + 1) ? 1 : 2);
        }
        int i10 = ((-1) >>> i9) & i8;
        j();
        return i10;
    }

    public final int b() {
        int i = i();
        return (i % 2 == 0 ? -1 : 1) * ((i + 1) / 2);
    }

    public final int c() {
        return i();
    }

    public final void d() {
        int i = this.d;
        if (i > 0) {
            f(8 - i);
        }
    }

    public final void e() {
        int i = this.d + 1;
        this.d = i;
        if (i == 8) {
            this.d = 0;
            int i2 = this.c;
            this.c = i2 + (true == k(i2 + 1) ? 2 : 1);
        }
        j();
    }

    public final void f(int i) {
        int i2 = this.c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.c = i4;
        int i5 = this.d + (i - (i3 * 8));
        this.d = i5;
        if (i5 > 7) {
            this.c = i4 + 1;
            this.d = i5 - 8;
        }
        while (true) {
            i2++;
            if (i2 > this.c) {
                j();
                return;
            } else if (k(i2)) {
                this.c++;
                i2 += 2;
            }
        }
    }

    public final boolean g(int i) {
        int i2 = this.c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.d + i) - (i3 * 8);
        if (i5 > 7) {
            i4++;
            i5 -= 8;
        }
        while (true) {
            i2++;
            if (i2 > i4 || i4 >= this.b) {
                break;
            }
            if (k(i2)) {
                i4++;
                i2 += 2;
            }
        }
        int i6 = this.b;
        if (i4 >= i6) {
            return i4 == i6 && i5 == 0;
        }
        return true;
    }

    public final boolean h() {
        int i = this.a[this.c] & (128 >> this.d);
        e();
        return i != 0;
    }

    public final int i() {
        int i = 0;
        while (!h()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? a(i) : 0);
    }

    public final void j() {
        int i;
        int i2 = this.c;
        boolean z = false;
        if (i2 >= 0 && (i2 < (i = this.b) || (i2 == i && this.d == 0))) {
            z = true;
        }
        n7g.f(z);
    }

    public final boolean k(int i) {
        if (i < 2 || i >= this.b) {
            return false;
        }
        byte[] bArr = this.a;
        return bArr[i] == 3 && bArr[i + (-2)] == 0 && bArr[i + (-1)] == 0;
    }
}
