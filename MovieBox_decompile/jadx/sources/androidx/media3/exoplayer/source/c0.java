package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import k2.s0;

class c0 {

    private final androidx.media3.exoplayer.upstream.b f12413a;

    private final int f12414b;

    private final androidx.media3.common.util.j0 f12415c;

    private a f12416d;

    private a f12417e;

    private a f12418f;

    private long f12419g;

    private static final class a implements androidx.media3.exoplayer.upstream.b.a {

        public long f12420a;

        public long f12421b;

        public androidx.media3.exoplayer.upstream.a f12422c;

        public a f12423d;

        public a(long j10, int i10) {
            d(j10, i10);
        }

        @Override
        public androidx.media3.exoplayer.upstream.a a() {
            return (androidx.media3.exoplayer.upstream.a) androidx.media3.common.util.a.e(this.f12422c);
        }

        public a b() {
            this.f12422c = null;
            a aVar = this.f12423d;
            this.f12423d = null;
            return aVar;
        }

        public void c(androidx.media3.exoplayer.upstream.a aVar, a aVar2) {
            this.f12422c = aVar;
            this.f12423d = aVar2;
        }

        public void d(long j10, int i10) {
            androidx.media3.common.util.a.g(this.f12422c == null);
            this.f12420a = j10;
            this.f12421b = j10 + ((long) i10);
        }

        public int e(long j10) {
            return ((int) (j10 - this.f12420a)) + this.f12422c.f12645b;
        }

        @Override
        public androidx.media3.exoplayer.upstream.b.a next() {
            a aVar = this.f12423d;
            if (aVar == null || aVar.f12422c == null) {
                return null;
            }
            return aVar;
        }
    }

    public c0(androidx.media3.exoplayer.upstream.b bVar) {
        this.f12413a = bVar;
        int individualAllocationLength = bVar.getIndividualAllocationLength();
        this.f12414b = individualAllocationLength;
        this.f12415c = new androidx.media3.common.util.j0(32);
        a aVar = new a(0L, individualAllocationLength);
        this.f12416d = aVar;
        this.f12417e = aVar;
        this.f12418f = aVar;
    }

    private void a(a aVar) {
        if (aVar.f12422c == null) {
            return;
        }
        this.f12413a.a(aVar);
        aVar.b();
    }

    private static a d(a aVar, long j10) {
        while (j10 >= aVar.f12421b) {
            aVar = aVar.f12423d;
        }
        return aVar;
    }

    private void g(int i10) {
        long j10 = this.f12419g + ((long) i10);
        this.f12419g = j10;
        a aVar = this.f12418f;
        if (j10 == aVar.f12421b) {
            this.f12418f = aVar.f12423d;
        }
    }

    private int h(int i10) {
        a aVar = this.f12418f;
        if (aVar.f12422c == null) {
            aVar.c(this.f12413a.allocate(), new a(this.f12418f.f12421b, this.f12414b));
        }
        return Math.min(i10, (int) (this.f12418f.f12421b - this.f12419g));
    }

    private static a i(a aVar, long j10, ByteBuffer byteBuffer, int i10) {
        a aVarD = d(aVar, j10);
        while (i10 > 0) {
            int iMin = Math.min(i10, (int) (aVarD.f12421b - j10));
            byteBuffer.put(aVarD.f12422c.f12644a, aVarD.e(j10), iMin);
            i10 -= iMin;
            j10 += (long) iMin;
            if (j10 == aVarD.f12421b) {
                aVarD = aVarD.f12423d;
            }
        }
        return aVarD;
    }

    private static a j(a aVar, long j10, byte[] bArr, int i10) {
        a aVarD = d(aVar, j10);
        int i11 = i10;
        while (i11 > 0) {
            int iMin = Math.min(i11, (int) (aVarD.f12421b - j10));
            System.arraycopy(aVarD.f12422c.f12644a, aVarD.e(j10), bArr, i10 - i11, iMin);
            i11 -= iMin;
            j10 += (long) iMin;
            if (j10 == aVarD.f12421b) {
                aVarD = aVarD.f12423d;
            }
        }
        return aVarD;
    }

    private static a k(a aVar, DecoderInputBuffer decoderInputBuffer, e0.b bVar, androidx.media3.common.util.j0 j0Var) {
        long j10 = bVar.f12455b;
        int iP = 1;
        j0Var.S(1);
        a aVarJ = j(aVar, j10, j0Var.e(), 1);
        long j11 = j10 + 1;
        byte b10 = j0Var.e()[0];
        boolean z10 = (b10 & 128) != 0;
        int i10 = b10 & 127;
        androidx.media3.decoder.c cVar = decoderInputBuffer.f10605b;
        byte[] bArr = cVar.f10635a;
        if (bArr == null) {
            cVar.f10635a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a aVarJ2 = j(aVarJ, j11, cVar.f10635a, i10);
        long j12 = j11 + ((long) i10);
        if (z10) {
            j0Var.S(2);
            aVarJ2 = j(aVarJ2, j12, j0Var.e(), 2);
            j12 += 2;
            iP = j0Var.P();
        }
        int i11 = iP;
        int[] iArr = cVar.f10638d;
        if (iArr == null || iArr.length < i11) {
            iArr = new int[i11];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.f10639e;
        if (iArr3 == null || iArr3.length < i11) {
            iArr3 = new int[i11];
        }
        int[] iArr4 = iArr3;
        if (z10) {
            int i12 = i11 * 6;
            j0Var.S(i12);
            aVarJ2 = j(aVarJ2, j12, j0Var.e(), i12);
            j12 += (long) i12;
            j0Var.W(0);
            for (int i13 = 0; i13 < i11; i13++) {
                iArr2[i13] = j0Var.P();
                iArr4[i13] = j0Var.L();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.f12454a - ((int) (j12 - bVar.f12455b));
        }
        s0.a aVar2 = (s0.a) a1.i(bVar.f12456c);
        cVar.c(i11, iArr2, iArr4, aVar2.f63687b, cVar.f10635a, aVar2.f63686a, aVar2.f63688c, aVar2.f63689d);
        long j13 = bVar.f12455b;
        int i14 = (int) (j12 - j13);
        bVar.f12455b = j13 + ((long) i14);
        bVar.f12454a -= i14;
        return aVarJ2;
    }

    private static a l(a aVar, DecoderInputBuffer decoderInputBuffer, e0.b bVar, androidx.media3.common.util.j0 j0Var) {
        if (decoderInputBuffer.e()) {
            aVar = k(aVar, decoderInputBuffer, bVar, j0Var);
        }
        if (!decoderInputBuffer.hasSupplementalData()) {
            decoderInputBuffer.b(bVar.f12454a);
            return i(aVar, bVar.f12455b, decoderInputBuffer.f10606c, bVar.f12454a);
        }
        j0Var.S(4);
        a aVarJ = j(aVar, bVar.f12455b, j0Var.e(), 4);
        int iL = j0Var.L();
        bVar.f12455b += 4;
        bVar.f12454a -= 4;
        decoderInputBuffer.b(iL);
        a aVarI = i(aVarJ, bVar.f12455b, decoderInputBuffer.f10606c, iL);
        bVar.f12455b += (long) iL;
        int i10 = bVar.f12454a - iL;
        bVar.f12454a = i10;
        decoderInputBuffer.g(i10);
        return i(aVarI, bVar.f12455b, decoderInputBuffer.f10609f, bVar.f12454a);
    }

    public void b(long j10) {
        a aVar;
        if (j10 == -1) {
            return;
        }
        while (true) {
            aVar = this.f12416d;
            if (j10 < aVar.f12421b) {
                break;
            }
            this.f12413a.b(aVar.f12422c);
            this.f12416d = this.f12416d.b();
        }
        if (this.f12417e.f12420a < aVar.f12420a) {
            this.f12417e = aVar;
        }
    }

    public void c(long j10) {
        androidx.media3.common.util.a.a(j10 <= this.f12419g);
        this.f12419g = j10;
        if (j10 != 0) {
            a aVar = this.f12416d;
            if (j10 != aVar.f12420a) {
                while (this.f12419g > aVar.f12421b) {
                    aVar = aVar.f12423d;
                }
                a aVar2 = (a) androidx.media3.common.util.a.e(aVar.f12423d);
                a(aVar2);
                a aVar3 = new a(aVar.f12421b, this.f12414b);
                aVar.f12423d = aVar3;
                if (this.f12419g == aVar.f12421b) {
                    aVar = aVar3;
                }
                this.f12418f = aVar;
                if (this.f12417e == aVar2) {
                    this.f12417e = aVar3;
                    return;
                }
                return;
            }
        }
        a(this.f12416d);
        a aVar4 = new a(this.f12419g, this.f12414b);
        this.f12416d = aVar4;
        this.f12417e = aVar4;
        this.f12418f = aVar4;
    }

    public long e() {
        return this.f12419g;
    }

    public void f(DecoderInputBuffer decoderInputBuffer, e0.b bVar) {
        l(this.f12417e, decoderInputBuffer, bVar, this.f12415c);
    }

    public void m(DecoderInputBuffer decoderInputBuffer, e0.b bVar) {
        this.f12417e = l(this.f12417e, decoderInputBuffer, bVar, this.f12415c);
    }

    public void n() {
        a(this.f12416d);
        this.f12416d.d(0L, this.f12414b);
        a aVar = this.f12416d;
        this.f12417e = aVar;
        this.f12418f = aVar;
        this.f12419g = 0L;
        this.f12413a.trim();
    }

    public void o() {
        this.f12417e = this.f12416d;
    }

    public int p(androidx.media3.common.j jVar, int i10, boolean z10) throws EOFException {
        int iH = h(i10);
        a aVar = this.f12418f;
        int i11 = jVar.read(aVar.f12422c.f12644a, aVar.e(this.f12419g), iH);
        if (i11 != -1) {
            g(i11);
            return i11;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    public void q(androidx.media3.common.util.j0 j0Var, int i10) {
        while (i10 > 0) {
            int iH = h(i10);
            a aVar = this.f12418f;
            j0Var.l(aVar.f12422c.f12644a, aVar.e(this.f12419g), iH);
            i10 -= iH;
            g(iH);
        }
    }
}
