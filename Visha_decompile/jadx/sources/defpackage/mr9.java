package defpackage;

public final class mr9 {
    public final qw7 a = new qw7(8);
    public int b;

    public final long a(pk3 pk3Var) {
        int i = 0;
        pk3Var.peekFully(this.a.d(), 0, 1);
        int i2 = this.a.d()[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (~i3);
        pk3Var.peekFully(this.a.d(), 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.a.d()[i] & 255) + (i5 << 8);
        }
        this.b += i4 + 1;
        return i5;
    }

    public boolean b(pk3 pk3Var) {
        long length = pk3Var.getLength();
        long j = 1024;
        if (length != -1 && length <= 1024) {
            j = length;
        }
        int i = (int) j;
        pk3Var.peekFully(this.a.d(), 0, 4);
        long jE = this.a.E();
        this.b = 4;
        while (jE != 440786851) {
            int i2 = this.b + 1;
            this.b = i2;
            if (i2 == i) {
                return false;
            }
            pk3Var.peekFully(this.a.d(), 0, 1);
            jE = ((jE << 8) & (-256)) | ((long) (this.a.d()[0] & 255));
        }
        long jA = a(pk3Var);
        long j2 = this.b;
        if (jA == Long.MIN_VALUE) {
            return false;
        }
        if (length != -1 && j2 + jA >= length) {
            return false;
        }
        while (true) {
            int i3 = this.b;
            long j3 = j2 + jA;
            if (i3 >= j3) {
                return ((long) i3) == j3;
            }
            if (a(pk3Var) == Long.MIN_VALUE) {
                return false;
            }
            long jA2 = a(pk3Var);
            if (jA2 < 0 || jA2 > 2147483647L) {
                return false;
            }
            if (jA2 != 0) {
                int i4 = (int) jA2;
                pk3Var.advancePeekPosition(i4);
                this.b += i4;
            }
        }
    }
}
