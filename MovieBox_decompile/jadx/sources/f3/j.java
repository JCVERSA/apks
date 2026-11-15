package f3;

import androidx.media3.common.ParserException;
import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import k2.v0;

final class j extends i {

    private a f60028n;

    private int f60029o;

    private boolean f60030p;

    private v0.c f60031q;

    private v0.a f60032r;

    static final class a {

        public final v0.c f60033a;

        public final v0.a f60034b;

        public final byte[] f60035c;

        public final v0.b[] f60036d;

        public final int f60037e;

        public a(v0.c cVar, v0.a aVar, byte[] bArr, v0.b[] bVarArr, int i10) {
            this.f60033a = cVar;
            this.f60034b = aVar;
            this.f60035c = bArr;
            this.f60036d = bVarArr;
            this.f60037e = i10;
        }
    }

    j() {
    }

    static void n(j0 j0Var, long j10) {
        if (j0Var.b() < j0Var.g() + 4) {
            j0Var.T(Arrays.copyOf(j0Var.e(), j0Var.g() + 4));
        } else {
            j0Var.V(j0Var.g() + 4);
        }
        byte[] bArrE = j0Var.e();
        bArrE[j0Var.g() - 4] = (byte) (j10 & 255);
        bArrE[j0Var.g() - 3] = (byte) ((j10 >>> 8) & 255);
        bArrE[j0Var.g() - 2] = (byte) ((j10 >>> 16) & 255);
        bArrE[j0Var.g() - 1] = (byte) ((j10 >>> 24) & 255);
    }

    private static int o(byte b10, a aVar) {
        return !aVar.f60036d[p(b10, aVar.f60037e, 1)].f63705a ? aVar.f60033a.f63715g : aVar.f60033a.f63716h;
    }

    static int p(byte b10, int i10, int i11) {
        return (b10 >> i11) & (255 >>> (8 - i10));
    }

    public static boolean r(j0 j0Var) {
        try {
            return v0.o(1, j0Var, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override
    protected void e(long j10) {
        super.e(j10);
        this.f60030p = j10 != 0;
        v0.c cVar = this.f60031q;
        this.f60029o = cVar != null ? cVar.f63715g : 0;
    }

    @Override
    protected long f(j0 j0Var) {
        if ((j0Var.e()[0] & 1) == 1) {
            return -1L;
        }
        int iO = o(j0Var.e()[0], (a) androidx.media3.common.util.a.i(this.f60028n));
        long j10 = this.f60030p ? (this.f60029o + iO) / 4 : 0;
        n(j0Var, j10);
        this.f60030p = true;
        this.f60029o = iO;
        return j10;
    }

    @Override
    protected boolean h(j0 j0Var, long j10, i.b bVar) throws ParserException {
        if (this.f60028n != null) {
            androidx.media3.common.util.a.e(bVar.f60026a);
            return false;
        }
        a aVarQ = q(j0Var);
        this.f60028n = aVarQ;
        if (aVarQ == null) {
            return true;
        }
        v0.c cVar = aVarQ.f60033a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar.f63718j);
        arrayList.add(aVarQ.f60035c);
        bVar.f60026a = new r.b().U("audio/ogg").u0(MimeTypes.AUDIO_VORBIS).Q(cVar.f63713e).p0(cVar.f63712d).R(cVar.f63710b).v0(cVar.f63711c).g0(arrayList).n0(v0.d(ImmutableList.copyOf(aVarQ.f60034b.f63703b))).N();
        return true;
    }

    @Override
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f60028n = null;
            this.f60031q = null;
            this.f60032r = null;
        }
        this.f60029o = 0;
        this.f60030p = false;
    }

    a q(j0 j0Var) throws ParserException {
        v0.c cVar = this.f60031q;
        if (cVar == null) {
            this.f60031q = v0.l(j0Var);
            return null;
        }
        v0.a aVar = this.f60032r;
        if (aVar == null) {
            this.f60032r = v0.j(j0Var);
            return null;
        }
        byte[] bArr = new byte[j0Var.g()];
        System.arraycopy(j0Var.e(), 0, bArr, 0, j0Var.g());
        v0.b[] bVarArrM = v0.m(j0Var, cVar.f63710b);
        return new a(cVar, aVar, bArr, bVarArrM, v0.b(bVarArrM.length - 1));
    }
}
