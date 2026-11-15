package defpackage;

import java.io.EOFException;
import java.io.InterruptedIOException;

public final class yde {
    public final u4h a = new u4h(8);
    public int b;

    public final boolean a(d9e d9eVar) throws EOFException, InterruptedIOException {
        long jZzd = d9eVar.zzd();
        long j = 1024;
        if (jZzd != -1 && jZzd <= 1024) {
            j = jZzd;
        }
        u4h u4hVar = this.a;
        m8e m8eVar = (m8e) d9eVar;
        m8eVar.e(u4hVar.n(), 0, 4, false);
        this.b = 4;
        for (long jO = u4hVar.O(); jO != 440786851; jO = ((jO << 8) & (-256)) | ((long) (u4hVar.n()[0] & 255))) {
            int i = (int) j;
            int i2 = this.b + 1;
            this.b = i2;
            if (i2 == i) {
                return false;
            }
            m8eVar.e(u4hVar.n(), 0, 1, false);
        }
        long jB = b(d9eVar);
        long j2 = this.b;
        if (jB != Long.MIN_VALUE) {
            long j3 = j2 + jB;
            if (jZzd == -1 || j3 < jZzd) {
                while (true) {
                    long j4 = this.b;
                    if (j4 < j3) {
                        if (b(d9eVar) == Long.MIN_VALUE) {
                            return false;
                        }
                        long jB2 = b(d9eVar);
                        if (jB2 < 0) {
                            return false;
                        }
                        if (jB2 != 0) {
                            int i3 = (int) jB2;
                            m8eVar.k(i3, false);
                            this.b += i3;
                        }
                    } else if (j4 == j3) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final long b(d9e d9eVar) {
        int i;
        u4h u4hVar = this.a;
        m8e m8eVar = (m8e) d9eVar;
        int i2 = 0;
        m8eVar.e(u4hVar.n(), 0, 1, false);
        int i3 = u4hVar.n()[0] & 255;
        if (i3 == 0) {
            return Long.MIN_VALUE;
        }
        int i4 = 128;
        int i5 = 0;
        while (true) {
            i = i5 + 1;
            if ((i3 & i4) != 0) {
                break;
            }
            i4 >>= 1;
            i5 = i;
        }
        int i6 = i3 & (~i4);
        m8eVar.e(u4hVar.n(), 1, i5, false);
        while (i2 < i5) {
            i2++;
            i6 = (u4hVar.n()[i2] & 255) + (i6 << 8);
        }
        this.b += i;
        return i6;
    }
}
