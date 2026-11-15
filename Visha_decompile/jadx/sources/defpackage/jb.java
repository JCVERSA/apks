package defpackage;

import androidx.media3.common.C;
import androidx.media3.extractor.AacUtil;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k;
import com.transsion.socket.pkgdata.SocketData;
import java.io.EOFException;
import java.util.Arrays;

public final class jb implements nk3 {
    public static final int[] r;
    public static final int u;
    public final byte[] a;
    public final int b;
    public boolean c;
    public long d;
    public int e;
    public int f;
    public boolean g;
    public long h;
    public int i;
    public int j;
    public long k;
    public qk3 l;
    public fva m;
    public ja9 n;
    public boolean o;
    public static final uk3 p = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return jb.l();
        }
    };
    public static final int[] q = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    public static final byte[] s = blb.f0("#!AMR\n");
    public static final byte[] t = blb.f0("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        r = iArr;
        u = iArr[8];
    }

    public jb() {
        this(0);
    }

    public static int f(int i, long j) {
        return (int) ((((long) i) * 8000000) / j);
    }

    public static nk3[] l() {
        return new nk3[]{new jb()};
    }

    public static boolean o(pk3 pk3Var, byte[] bArr) {
        pk3Var.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        pk3Var.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override
    public void a(qk3 qk3Var) {
        this.l = qk3Var;
        this.m = qk3Var.track(0, 1);
        qk3Var.endTracks();
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException {
        e();
        if (pk3Var.getPosition() == 0 && !q(pk3Var)) {
            throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        m();
        int iR = r(pk3Var);
        n(pk3Var.getLength(), iR);
        return iR;
    }

    @Override
    public boolean c(pk3 pk3Var) {
        return q(pk3Var);
    }

    public final void e() {
        zi.i(this.m);
        blb.j(this.l);
    }

    public final ja9 g(long j, boolean z) {
        return new lf1(j, this.h, f(this.i, 20000L), this.i, z);
    }

    public final int h(int i) throws ParserException {
        if (j(i)) {
            return this.c ? r[i] : q[i];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Illegal AMR ");
        sb.append(this.c ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i);
        throw ParserException.createForMalformedContainer(sb.toString(), null);
    }

    public final boolean i(int i) {
        return !this.c && (i < 12 || i > 14);
    }

    public final boolean j(int i) {
        return i >= 0 && i <= 15 && (k(i) || i(i));
    }

    public final boolean k(int i) {
        return this.c && (i < 10 || i > 13);
    }

    public final void m() {
        if (this.o) {
            return;
        }
        this.o = true;
        boolean z = this.c;
        this.m.b(new k.b().e0(z ? "audio/amr-wb" : "audio/3gpp").W(u).H(1).f0(z ? AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND : 8000).E());
    }

    public final void n(long j, int i) {
        int i2;
        if (this.g) {
            return;
        }
        int i3 = this.b;
        if ((i3 & 1) == 0 || j == -1 || !((i2 = this.i) == -1 || i2 == this.e)) {
            ja9.b bVar = new ja9.b(C.TIME_UNSET);
            this.n = bVar;
            this.l.d(bVar);
            this.g = true;
            return;
        }
        if (this.j >= 20 || i == -1) {
            ja9 ja9VarG = g(j, (i3 & 2) != 0);
            this.n = ja9VarG;
            this.l.d(ja9VarG);
            this.g = true;
        }
    }

    public final int p(pk3 pk3Var) throws ParserException {
        pk3Var.resetPeekPosition();
        pk3Var.peekFully(this.a, 0, 1);
        byte b = this.a[0];
        if ((b & SocketData.CLAZZ_TYPE_CONNECT_CHECK) <= 0) {
            return h((b >> 3) & 15);
        }
        throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) b), null);
    }

    public final boolean q(pk3 pk3Var) {
        byte[] bArr = s;
        if (o(pk3Var, bArr)) {
            this.c = false;
            pk3Var.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = t;
        if (!o(pk3Var, bArr2)) {
            return false;
        }
        this.c = true;
        pk3Var.skipFully(bArr2.length);
        return true;
    }

    public final int r(pk3 pk3Var) throws ParserException {
        if (this.f == 0) {
            try {
                int iP = p(pk3Var);
                this.e = iP;
                this.f = iP;
                if (this.i == -1) {
                    this.h = pk3Var.getPosition();
                    this.i = this.e;
                }
                if (this.i == this.e) {
                    this.j++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iC = this.m.c(pk3Var, this.f, true);
        if (iC == -1) {
            return -1;
        }
        int i = this.f - iC;
        this.f = i;
        if (i > 0) {
            return 0;
        }
        this.m.e(this.k + this.d, 1, this.e, 0, null);
        this.d += 20000;
        return 0;
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        this.d = 0L;
        this.e = 0;
        this.f = 0;
        if (j != 0) {
            ja9 ja9Var = this.n;
            if (ja9Var instanceof lf1) {
                this.k = ((lf1) ja9Var).b(j);
                return;
            }
        }
        this.k = 0L;
    }

    public jb(int i) {
        this.b = (i & 2) != 0 ? i | 1 : i;
        this.a = new byte[1];
        this.i = -1;
    }
}
