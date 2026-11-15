package o9;

import com.google.android.exoplayer2.util.d0;
import i9.m;

final class f {

    private final d0 f67711a = new d0(8);

    private int f67712b;

    private long a(m mVar) {
        int i10 = 0;
        mVar.peekFully(this.f67711a.d(), 0, 1);
        int i11 = this.f67711a.d()[0] & 255;
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
        mVar.peekFully(this.f67711a.d(), 1, i13);
        while (i10 < i13) {
            i10++;
            i14 = (this.f67711a.d()[i10] & 255) + (i14 << 8);
        }
        this.f67712b += i13 + 1;
        return i14;
    }

    public boolean b(m mVar) {
        long length = mVar.getLength();
        long j10 = 1024;
        if (length != -1 && length <= 1024) {
            j10 = length;
        }
        int i10 = (int) j10;
        mVar.peekFully(this.f67711a.d(), 0, 4);
        long jF = this.f67711a.F();
        this.f67712b = 4;
        while (jF != 440786851) {
            int i11 = this.f67712b + 1;
            this.f67712b = i11;
            if (i11 == i10) {
                return false;
            }
            mVar.peekFully(this.f67711a.d(), 0, 1);
            jF = ((jF << 8) & (-256)) | ((long) (this.f67711a.d()[0] & 255));
        }
        long jA = a(mVar);
        long j11 = this.f67712b;
        if (jA == Long.MIN_VALUE) {
            return false;
        }
        if (length != -1 && j11 + jA >= length) {
            return false;
        }
        while (true) {
            int i12 = this.f67712b;
            long j12 = j11 + jA;
            if (i12 >= j12) {
                return ((long) i12) == j12;
            }
            if (a(mVar) == Long.MIN_VALUE) {
                return false;
            }
            long jA2 = a(mVar);
            if (jA2 < 0 || jA2 > 2147483647L) {
                return false;
            }
            if (jA2 != 0) {
                int i13 = (int) jA2;
                mVar.advancePeekPosition(i13);
                this.f67712b += i13;
            }
        }
    }
}
