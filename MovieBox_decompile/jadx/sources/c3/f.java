package c3;

import androidx.media3.common.util.j0;
import k2.s;

final class f {

    private final j0 f16477a = new j0(8);

    private int f16478b;

    private long a(s sVar) {
        int i10 = 0;
        sVar.peekFully(this.f16477a.e(), 0, 1);
        int i11 = this.f16477a.e()[0] & 255;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int i12 = 128;
        int i13 = 0;
        while ((i11 & i12) == 0) {
            i12 >>= 1;
            i13++;
        }
        int i14 = i11 & (~i12);
        sVar.peekFully(this.f16477a.e(), 1, i13);
        while (i10 < i13) {
            i10++;
            i14 = (this.f16477a.e()[i10] & 255) + (i14 << 8);
        }
        this.f16478b += i13 + 1;
        return i14;
    }

    public boolean b(s sVar) {
        long length = sVar.getLength();
        long j10 = 1024;
        if (length != -1 && length <= 1024) {
            j10 = length;
        }
        int i10 = (int) j10;
        sVar.peekFully(this.f16477a.e(), 0, 4);
        long J = this.f16477a.J();
        this.f16478b = 4;
        while (J != 440786851) {
            int i11 = this.f16478b + 1;
            this.f16478b = i11;
            if (i11 == i10) {
                return false;
            }
            sVar.peekFully(this.f16477a.e(), 0, 1);
            J = ((J << 8) & (-256)) | ((long) (this.f16477a.e()[0] & 255));
        }
        long jA = a(sVar);
        long j11 = this.f16478b;
        if (jA == Long.MIN_VALUE) {
            return false;
        }
        if (length != -1 && j11 + jA >= length) {
            return false;
        }
        while (true) {
            int i12 = this.f16478b;
            long j12 = j11 + jA;
            if (i12 >= j12) {
                return ((long) i12) == j12;
            }
            if (a(sVar) == Long.MIN_VALUE) {
                return false;
            }
            long jA2 = a(sVar);
            if (jA2 < 0 || jA2 > 2147483647L) {
                return false;
            }
            if (jA2 != 0) {
                int i13 = (int) jA2;
                sVar.advancePeekPosition(i13);
                this.f16478b += i13;
            }
        }
    }
}
