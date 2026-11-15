package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.transsion.socket.pkgdata.SocketData;
import defpackage.bb;
import defpackage.blb;
import defpackage.cb;
import defpackage.fva;
import defpackage.ms1;
import defpackage.qw7;
import defpackage.vl1;
import defpackage.zi;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class o {
    public final cb a;
    public final int b;
    public final qw7 c;
    public a d;
    public a e;
    public a f;
    public long g;

    public static final class a implements cb.a {
        public long a;
        public long b;
        public bb c;
        public a d;

        public a(long j, int i) {
            c(j, i);
        }

        public a a() {
            this.c = null;
            a aVar = this.d;
            this.d = null;
            return aVar;
        }

        public void b(bb bbVar, a aVar) {
            this.c = bbVar;
            this.d = aVar;
        }

        public void c(long j, int i) {
            zi.g(this.c == null);
            this.a = j;
            this.b = j + ((long) i);
        }

        public int d(long j) {
            return ((int) (j - this.a)) + this.c.b;
        }

        @Override
        public bb getAllocation() {
            return (bb) zi.e(this.c);
        }

        @Override
        public cb.a next() {
            a aVar = this.d;
            if (aVar == null || aVar.c == null) {
                return null;
            }
            return aVar;
        }
    }

    public o(cb cbVar) {
        this.a = cbVar;
        int individualAllocationLength = cbVar.getIndividualAllocationLength();
        this.b = individualAllocationLength;
        this.c = new qw7(32);
        a aVar = new a(0L, individualAllocationLength);
        this.d = aVar;
        this.e = aVar;
        this.f = aVar;
    }

    public static a c(a aVar, long j) {
        while (j >= aVar.b) {
            aVar = aVar.d;
        }
        return aVar;
    }

    public static a h(a aVar, long j, ByteBuffer byteBuffer, int i) {
        a aVarC = c(aVar, j);
        while (i > 0) {
            int iMin = Math.min(i, (int) (aVarC.b - j));
            byteBuffer.put(aVarC.c.a, aVarC.d(j), iMin);
            i -= iMin;
            j += (long) iMin;
            if (j == aVarC.b) {
                aVarC = aVarC.d;
            }
        }
        return aVarC;
    }

    public static a i(a aVar, long j, byte[] bArr, int i) {
        a aVarC = c(aVar, j);
        int i2 = i;
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (aVarC.b - j));
            System.arraycopy(aVarC.c.a, aVarC.d(j), bArr, i - i2, iMin);
            i2 -= iMin;
            j += (long) iMin;
            if (j == aVarC.b) {
                aVarC = aVarC.d;
            }
        }
        return aVarC;
    }

    public static a j(a aVar, DecoderInputBuffer decoderInputBuffer, p.b bVar, qw7 qw7Var) {
        long j = bVar.b;
        int I = 1;
        qw7Var.K(1);
        a aVarI = i(aVar, j, qw7Var.d(), 1);
        long j2 = j + 1;
        byte b = qw7Var.d()[0];
        boolean z = (b & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
        int i = b & 127;
        vl1 vl1Var = decoderInputBuffer.c;
        byte[] bArr = vl1Var.a;
        if (bArr == null) {
            vl1Var.a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a aVarI2 = i(aVarI, j2, vl1Var.a, i);
        long j3 = j2 + ((long) i);
        if (z) {
            qw7Var.K(2);
            aVarI2 = i(aVarI2, j3, qw7Var.d(), 2);
            j3 += 2;
            I = qw7Var.I();
        }
        int i2 = I;
        int[] iArr = vl1Var.d;
        if (iArr == null || iArr.length < i2) {
            iArr = new int[i2];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = vl1Var.e;
        if (iArr3 == null || iArr3.length < i2) {
            iArr3 = new int[i2];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i3 = i2 * 6;
            qw7Var.K(i3);
            aVarI2 = i(aVarI2, j3, qw7Var.d(), i3);
            j3 += (long) i3;
            qw7Var.O(0);
            for (int i4 = 0; i4 < i2; i4++) {
                iArr2[i4] = qw7Var.I();
                iArr4[i4] = qw7Var.G();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.a - ((int) (j3 - bVar.b));
        }
        fva.a aVar2 = (fva.a) blb.j(bVar.c);
        vl1Var.c(i2, iArr2, iArr4, aVar2.b, vl1Var.a, aVar2.a, aVar2.c, aVar2.d);
        long j4 = bVar.b;
        int i5 = (int) (j3 - j4);
        bVar.b = j4 + ((long) i5);
        bVar.a -= i5;
        return aVarI2;
    }

    public static a k(a aVar, DecoderInputBuffer decoderInputBuffer, p.b bVar, qw7 qw7Var) {
        if (decoderInputBuffer.o()) {
            aVar = j(aVar, decoderInputBuffer, bVar, qw7Var);
        }
        if (!decoderInputBuffer.f()) {
            decoderInputBuffer.m(bVar.a);
            return h(aVar, bVar.b, decoderInputBuffer.d, bVar.a);
        }
        qw7Var.K(4);
        a aVarI = i(aVar, bVar.b, qw7Var.d(), 4);
        int iG = qw7Var.G();
        bVar.b += 4;
        bVar.a -= 4;
        decoderInputBuffer.m(iG);
        a aVarH = h(aVarI, bVar.b, decoderInputBuffer.d, iG);
        bVar.b += (long) iG;
        int i = bVar.a - iG;
        bVar.a = i;
        decoderInputBuffer.q(i);
        return h(aVarH, bVar.b, decoderInputBuffer.g, bVar.a);
    }

    public final void a(a aVar) {
        if (aVar.c == null) {
            return;
        }
        this.a.b(aVar);
        aVar.a();
    }

    public void b(long j) {
        a aVar;
        if (j == -1) {
            return;
        }
        while (true) {
            aVar = this.d;
            if (j < aVar.b) {
                break;
            }
            this.a.a(aVar.c);
            this.d = this.d.a();
        }
        if (this.e.a < aVar.a) {
            this.e = aVar;
        }
    }

    public long d() {
        return this.g;
    }

    public void e(DecoderInputBuffer decoderInputBuffer, p.b bVar) {
        k(this.e, decoderInputBuffer, bVar, this.c);
    }

    public final void f(int i) {
        long j = this.g + ((long) i);
        this.g = j;
        a aVar = this.f;
        if (j == aVar.b) {
            this.f = aVar.d;
        }
    }

    public final int g(int i) {
        a aVar = this.f;
        if (aVar.c == null) {
            aVar.b(this.a.allocate(), new a(this.f.b, this.b));
        }
        return Math.min(i, (int) (this.f.b - this.g));
    }

    public void l(DecoderInputBuffer decoderInputBuffer, p.b bVar) {
        this.e = k(this.e, decoderInputBuffer, bVar, this.c);
    }

    public void m() {
        a(this.d);
        this.d.c(0L, this.b);
        a aVar = this.d;
        this.e = aVar;
        this.f = aVar;
        this.g = 0L;
        this.a.trim();
    }

    public void n() {
        this.e = this.d;
    }

    public int o(ms1 ms1Var, int i, boolean z) throws EOFException {
        int iG = g(i);
        a aVar = this.f;
        int i2 = ms1Var.read(aVar.c.a, aVar.d(this.g), iG);
        if (i2 != -1) {
            f(i2);
            return i2;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public void p(qw7 qw7Var, int i) {
        while (i > 0) {
            int iG = g(i);
            a aVar = this.f;
            qw7Var.j(aVar.c.a, aVar.d(this.g), iG);
            i -= iG;
            f(iG);
        }
    }
}
