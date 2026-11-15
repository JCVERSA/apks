package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.p0;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;

class y {

    private final com.google.android.exoplayer2.upstream.b f26049a;

    private final int f26050b;

    private final com.google.android.exoplayer2.util.d0 f26051c;

    private a f26052d;

    private a f26053e;

    private a f26054f;

    private long f26055g;

    private static final class a implements com.google.android.exoplayer2.upstream.b.a {

        public long f26056a;

        public long f26057b;

        public com.google.android.exoplayer2.upstream.a f26058c;

        public a f26059d;

        public a(long j10, int i10) {
            d(j10, i10);
        }

        @Override
        public com.google.android.exoplayer2.upstream.a a() {
            return (com.google.android.exoplayer2.upstream.a) com.google.android.exoplayer2.util.a.e(this.f26058c);
        }

        public a b() {
            this.f26058c = null;
            a aVar = this.f26059d;
            this.f26059d = null;
            return aVar;
        }

        public void c(com.google.android.exoplayer2.upstream.a aVar, a aVar2) {
            this.f26058c = aVar;
            this.f26059d = aVar2;
        }

        public void d(long j10, int i10) {
            com.google.android.exoplayer2.util.a.g(this.f26058c == null);
            this.f26056a = j10;
            this.f26057b = j10 + ((long) i10);
        }

        public int e(long j10) {
            return ((int) (j10 - this.f26056a)) + this.f26058c.f26498b;
        }

        @Override
        public com.google.android.exoplayer2.upstream.b.a next() {
            a aVar = this.f26059d;
            if (aVar == null || aVar.f26058c == null) {
                return null;
            }
            return aVar;
        }
    }

    public y(com.google.android.exoplayer2.upstream.b bVar) {
        this.f26049a = bVar;
        int individualAllocationLength = bVar.getIndividualAllocationLength();
        this.f26050b = individualAllocationLength;
        this.f26051c = new com.google.android.exoplayer2.util.d0(32);
        a aVar = new a(0L, individualAllocationLength);
        this.f26052d = aVar;
        this.f26053e = aVar;
        this.f26054f = aVar;
    }

    private void a(a aVar) {
        if (aVar.f26058c == null) {
            return;
        }
        this.f26049a.a(aVar);
        aVar.b();
    }

    private static a d(a aVar, long j10) {
        while (j10 >= aVar.f26057b) {
            aVar = aVar.f26059d;
        }
        return aVar;
    }

    private void g(int i10) {
        long j10 = this.f26055g + ((long) i10);
        this.f26055g = j10;
        a aVar = this.f26054f;
        if (j10 == aVar.f26057b) {
            this.f26054f = aVar.f26059d;
        }
    }

    private int h(int i10) {
        a aVar = this.f26054f;
        if (aVar.f26058c == null) {
            aVar.c(this.f26049a.allocate(), new a(this.f26054f.f26057b, this.f26050b));
        }
        return Math.min(i10, (int) (this.f26054f.f26057b - this.f26055g));
    }

    private static a i(a aVar, long j10, ByteBuffer byteBuffer, int i10) {
        a aVarD = d(aVar, j10);
        while (i10 > 0) {
            int iMin = Math.min(i10, (int) (aVarD.f26057b - j10));
            byteBuffer.put(aVarD.f26058c.f26497a, aVarD.e(j10), iMin);
            i10 -= iMin;
            j10 += (long) iMin;
            if (j10 == aVarD.f26057b) {
                aVarD = aVarD.f26059d;
            }
        }
        return aVarD;
    }

    private static a j(a aVar, long j10, byte[] bArr, int i10) {
        a aVarD = d(aVar, j10);
        int i11 = i10;
        while (i11 > 0) {
            int iMin = Math.min(i11, (int) (aVarD.f26057b - j10));
            System.arraycopy(aVarD.f26058c.f26497a, aVarD.e(j10), bArr, i10 - i11, iMin);
            i11 -= iMin;
            j10 += (long) iMin;
            if (j10 == aVarD.f26057b) {
                aVarD = aVarD.f26059d;
            }
        }
        return aVarD;
    }

    private static a k(a aVar, DecoderInputBuffer decoderInputBuffer, a0.b bVar, com.google.android.exoplayer2.util.d0 d0Var) {
        long j10 = bVar.f25054b;
        int iJ = 1;
        d0Var.L(1);
        a aVarJ = j(aVar, j10, d0Var.d(), 1);
        long j11 = j10 + 1;
        byte b10 = d0Var.d()[0];
        boolean z10 = (b10 & 128) != 0;
        int i10 = b10 & 127;
        com.google.android.exoplayer2.decoder.c cVar = decoderInputBuffer.f24201b;
        byte[] bArr = cVar.f24222a;
        if (bArr == null) {
            cVar.f24222a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a aVarJ2 = j(aVarJ, j11, cVar.f24222a, i10);
        long j12 = j11 + ((long) i10);
        if (z10) {
            d0Var.L(2);
            aVarJ2 = j(aVarJ2, j12, d0Var.d(), 2);
            j12 += 2;
            iJ = d0Var.J();
        }
        int i11 = iJ;
        int[] iArr = cVar.f24225d;
        if (iArr == null || iArr.length < i11) {
            iArr = new int[i11];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.f24226e;
        if (iArr3 == null || iArr3.length < i11) {
            iArr3 = new int[i11];
        }
        int[] iArr4 = iArr3;
        if (z10) {
            int i12 = i11 * 6;
            d0Var.L(i12);
            aVarJ2 = j(aVarJ2, j12, d0Var.d(), i12);
            j12 += (long) i12;
            d0Var.P(0);
            for (int i13 = 0; i13 < i11; i13++) {
                iArr2[i13] = d0Var.J();
                iArr4[i13] = d0Var.H();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.f25053a - ((int) (j12 - bVar.f25054b));
        }
        i9.e0.a aVar2 = (i9.e0.a) p0.j(bVar.f25055c);
        cVar.c(i11, iArr2, iArr4, aVar2.f61906b, cVar.f24222a, aVar2.f61905a, aVar2.f61907c, aVar2.f61908d);
        long j13 = bVar.f25054b;
        int i14 = (int) (j12 - j13);
        bVar.f25054b = j13 + ((long) i14);
        bVar.f25053a -= i14;
        return aVarJ2;
    }

    private static a l(a aVar, DecoderInputBuffer decoderInputBuffer, a0.b bVar, com.google.android.exoplayer2.util.d0 d0Var) {
        if (decoderInputBuffer.o()) {
            aVar = k(aVar, decoderInputBuffer, bVar, d0Var);
        }
        if (!decoderInputBuffer.f()) {
            decoderInputBuffer.m(bVar.f25053a);
            return i(aVar, bVar.f25054b, decoderInputBuffer.f24202c, bVar.f25053a);
        }
        d0Var.L(4);
        a aVarJ = j(aVar, bVar.f25054b, d0Var.d(), 4);
        int iH = d0Var.H();
        bVar.f25054b += 4;
        bVar.f25053a -= 4;
        decoderInputBuffer.m(iH);
        a aVarI = i(aVarJ, bVar.f25054b, decoderInputBuffer.f24202c, iH);
        bVar.f25054b += (long) iH;
        int i10 = bVar.f25053a - iH;
        bVar.f25053a = i10;
        decoderInputBuffer.q(i10);
        return i(aVarI, bVar.f25054b, decoderInputBuffer.f24205f, bVar.f25053a);
    }

    public void b(long j10) {
        a aVar;
        if (j10 == -1) {
            return;
        }
        while (true) {
            aVar = this.f26052d;
            if (j10 < aVar.f26057b) {
                break;
            }
            this.f26049a.b(aVar.f26058c);
            this.f26052d = this.f26052d.b();
        }
        if (this.f26053e.f26056a < aVar.f26056a) {
            this.f26053e = aVar;
        }
    }

    public void c(long j10) {
        com.google.android.exoplayer2.util.a.a(j10 <= this.f26055g);
        this.f26055g = j10;
        if (j10 != 0) {
            a aVar = this.f26052d;
            if (j10 != aVar.f26056a) {
                while (this.f26055g > aVar.f26057b) {
                    aVar = aVar.f26059d;
                }
                a aVar2 = (a) com.google.android.exoplayer2.util.a.e(aVar.f26059d);
                a(aVar2);
                a aVar3 = new a(aVar.f26057b, this.f26050b);
                aVar.f26059d = aVar3;
                if (this.f26055g == aVar.f26057b) {
                    aVar = aVar3;
                }
                this.f26054f = aVar;
                if (this.f26053e == aVar2) {
                    this.f26053e = aVar3;
                    return;
                }
                return;
            }
        }
        a(this.f26052d);
        a aVar4 = new a(this.f26055g, this.f26050b);
        this.f26052d = aVar4;
        this.f26053e = aVar4;
        this.f26054f = aVar4;
    }

    public long e() {
        return this.f26055g;
    }

    public void f(DecoderInputBuffer decoderInputBuffer, a0.b bVar) {
        l(this.f26053e, decoderInputBuffer, bVar, this.f26051c);
    }

    public void m(DecoderInputBuffer decoderInputBuffer, a0.b bVar) {
        this.f26053e = l(this.f26053e, decoderInputBuffer, bVar, this.f26051c);
    }

    public void n() {
        a(this.f26052d);
        this.f26052d.d(0L, this.f26050b);
        a aVar = this.f26052d;
        this.f26053e = aVar;
        this.f26054f = aVar;
        this.f26055g = 0L;
        this.f26049a.trim();
    }

    public void o() {
        this.f26053e = this.f26052d;
    }

    public int p(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10) throws EOFException {
        int iH = h(i10);
        a aVar = this.f26054f;
        int i11 = gVar.read(aVar.f26058c.f26497a, aVar.e(this.f26055g), iH);
        if (i11 != -1) {
            g(i11);
            return i11;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    public void q(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        while (i10 > 0) {
            int iH = h(i10);
            a aVar = this.f26054f;
            d0Var.j(aVar.f26058c.f26497a, aVar.e(this.f26055g), iH);
            i10 -= iH;
            g(iH);
        }
    }
}
