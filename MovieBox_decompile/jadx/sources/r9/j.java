package r9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.h0;
import java.util.ArrayList;
import java.util.Arrays;

final class j extends i {

    private a f70925n;

    private int f70926o;

    private boolean f70927p;

    private h0.d f70928q;

    private h0.b f70929r;

    static final class a {

        public final h0.d f70930a;

        public final h0.b f70931b;

        public final byte[] f70932c;

        public final h0.c[] f70933d;

        public final int f70934e;

        public a(h0.d dVar, h0.b bVar, byte[] bArr, h0.c[] cVarArr, int i10) {
            this.f70930a = dVar;
            this.f70931b = bVar;
            this.f70932c = bArr;
            this.f70933d = cVarArr;
            this.f70934e = i10;
        }
    }

    j() {
    }

    static void n(d0 d0Var, long j10) {
        if (d0Var.b() < d0Var.f() + 4) {
            d0Var.M(Arrays.copyOf(d0Var.d(), d0Var.f() + 4));
        } else {
            d0Var.O(d0Var.f() + 4);
        }
        byte[] bArrD = d0Var.d();
        bArrD[d0Var.f() - 4] = (byte) (j10 & 255);
        bArrD[d0Var.f() - 3] = (byte) ((j10 >>> 8) & 255);
        bArrD[d0Var.f() - 2] = (byte) ((j10 >>> 16) & 255);
        bArrD[d0Var.f() - 1] = (byte) ((j10 >>> 24) & 255);
    }

    private static int o(byte b10, a aVar) {
        return !aVar.f70933d[p(b10, aVar.f70934e, 1)].f61935a ? aVar.f70930a.f61945g : aVar.f70930a.f61946h;
    }

    static int p(byte b10, int i10, int i11) {
        return (b10 >> i11) & (255 >>> (8 - i10));
    }

    public static boolean r(d0 d0Var) {
        try {
            return h0.m(1, d0Var, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override
    protected void e(long j10) {
        super.e(j10);
        this.f70927p = j10 != 0;
        h0.d dVar = this.f70928q;
        this.f70926o = dVar != null ? dVar.f61945g : 0;
    }

    @Override
    protected long f(d0 d0Var) {
        if ((d0Var.d()[0] & 1) == 1) {
            return -1L;
        }
        int iO = o(d0Var.d()[0], (a) com.google.android.exoplayer2.util.a.i(this.f70925n));
        long j10 = this.f70927p ? (this.f70926o + iO) / 4 : 0;
        n(d0Var, j10);
        this.f70927p = true;
        this.f70926o = iO;
        return j10;
    }

    @Override
    protected boolean h(d0 d0Var, long j10, i.b bVar) throws ParserException {
        if (this.f70925n != null) {
            com.google.android.exoplayer2.util.a.e(bVar.f70923a);
            return false;
        }
        a aVarQ = q(d0Var);
        this.f70925n = aVarQ;
        if (aVarQ == null) {
            return true;
        }
        h0.d dVar = aVarQ.f70930a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.f61948j);
        arrayList.add(aVarQ.f70932c);
        bVar.f70923a = new p1.b().e0(MimeTypes.AUDIO_VORBIS).G(dVar.f61943e).Z(dVar.f61942d).H(dVar.f61940b).f0(dVar.f61941c).T(arrayList).X(h0.c(ImmutableList.copyOf(aVarQ.f70931b.f61933b))).E();
        return true;
    }

    @Override
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f70925n = null;
            this.f70928q = null;
            this.f70929r = null;
        }
        this.f70926o = 0;
        this.f70927p = false;
    }

    a q(d0 d0Var) throws ParserException {
        h0.d dVar = this.f70928q;
        if (dVar == null) {
            this.f70928q = h0.k(d0Var);
            return null;
        }
        h0.b bVar = this.f70929r;
        if (bVar == null) {
            this.f70929r = h0.i(d0Var);
            return null;
        }
        byte[] bArr = new byte[d0Var.f()];
        System.arraycopy(d0Var.d(), 0, bArr, 0, d0Var.f());
        h0.c[] cVarArrL = h0.l(d0Var, dVar.f61940b);
        return new a(dVar, bVar, bArr, cVarArrL, h0.a(cVarArrL.length - 1));
    }
}
