package j9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.a0;
import i9.b0;
import i9.e;
import i9.e0;
import i9.l;
import i9.m;
import i9.n;
import i9.q;
import i9.r;
import java.io.EOFException;
import java.util.Arrays;
import java.util.Map;

public final class b implements l {

    private static final int[] f63063r;

    private static final int f63066u;

    private final byte[] f63067a;

    private final int f63068b;

    private boolean f63069c;

    private long f63070d;

    private int f63071e;

    private int f63072f;

    private boolean f63073g;

    private long f63074h;

    private int f63075i;

    private int f63076j;

    private long f63077k;

    private n f63078l;

    private e0 f63079m;

    private b0 f63080n;

    private boolean f63081o;

    public static final r f63061p = new r() {
        @Override
        public l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override
        public final l[] createExtractors() {
            return b.l();
        }
    };

    private static final int[] f63062q = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    private static final byte[] f63064s = p0.n0("#!AMR\n");

    private static final byte[] f63065t = p0.n0("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f63063r = iArr;
        f63066u = iArr[8];
    }

    public b() {
        this(0);
    }

    private void e() {
        com.google.android.exoplayer2.util.a.i(this.f63079m);
        p0.j(this.f63078l);
    }

    private static int f(int i10, long j10) {
        return (int) ((((long) i10) * 8000000) / j10);
    }

    private b0 g(long j10, boolean z10) {
        return new e(j10, this.f63074h, f(this.f63075i, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT), this.f63075i, z10);
    }

    private int h(int i10) throws ParserException {
        if (j(i10)) {
            return this.f63069c ? f63063r[i10] : f63062q[i10];
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Illegal AMR ");
        sb2.append(this.f63069c ? "WB" : "NB");
        sb2.append(" frame type ");
        sb2.append(i10);
        throw ParserException.createForMalformedContainer(sb2.toString(), null);
    }

    private boolean i(int i10) {
        return !this.f63069c && (i10 < 12 || i10 > 14);
    }

    private boolean j(int i10) {
        return i10 >= 0 && i10 <= 15 && (k(i10) || i(i10));
    }

    private boolean k(int i10) {
        return this.f63069c && (i10 < 10 || i10 > 13);
    }

    public static l[] l() {
        return new l[]{new b()};
    }

    private void m() {
        if (this.f63081o) {
            return;
        }
        this.f63081o = true;
        boolean z10 = this.f63069c;
        this.f63079m.d(new p1.b().e0(z10 ? MimeTypes.AUDIO_AMR_WB : MimeTypes.AUDIO_AMR_NB).W(f63066u).H(1).f0(z10 ? 16000 : 8000).E());
    }

    private void n(long j10, int i10) {
        int i11;
        if (this.f63073g) {
            return;
        }
        int i12 = this.f63068b;
        if ((i12 & 1) == 0 || j10 == -1 || !((i11 = this.f63075i) == -1 || i11 == this.f63071e)) {
            b0.b bVar = new b0.b(C.TIME_UNSET);
            this.f63080n = bVar;
            this.f63078l.g(bVar);
            this.f63073g = true;
            return;
        }
        if (this.f63076j >= 20 || i10 == -1) {
            b0 b0VarG = g(j10, (i12 & 2) != 0);
            this.f63080n = b0VarG;
            this.f63078l.g(b0VarG);
            this.f63073g = true;
        }
    }

    private static boolean o(m mVar, byte[] bArr) {
        mVar.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        mVar.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int p(m mVar) throws ParserException {
        mVar.resetPeekPosition();
        mVar.peekFully(this.f63067a, 0, 1);
        byte b10 = this.f63067a[0];
        if ((b10 & 131) <= 0) {
            return h((b10 >> 3) & 15);
        }
        throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) b10), null);
    }

    private boolean q(m mVar) {
        byte[] bArr = f63064s;
        if (o(mVar, bArr)) {
            this.f63069c = false;
            mVar.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = f63065t;
        if (!o(mVar, bArr2)) {
            return false;
        }
        this.f63069c = true;
        mVar.skipFully(bArr2.length);
        return true;
    }

    private int r(m mVar) throws ParserException {
        if (this.f63072f == 0) {
            try {
                int iP = p(mVar);
                this.f63071e = iP;
                this.f63072f = iP;
                if (this.f63075i == -1) {
                    this.f63074h = mVar.getPosition();
                    this.f63075i = this.f63071e;
                }
                if (this.f63075i == this.f63071e) {
                    this.f63076j++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iB = this.f63079m.b(mVar, this.f63072f, true);
        if (iB == -1) {
            return -1;
        }
        int i10 = this.f63072f - iB;
        this.f63072f = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f63079m.e(this.f63077k + this.f63070d, 1, this.f63071e, 0, null);
        this.f63070d += DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT;
        return 0;
    }

    @Override
    public void b(n nVar) {
        this.f63078l = nVar;
        this.f63079m = nVar.track(0, 1);
        nVar.endTracks();
    }

    @Override
    public boolean c(m mVar) {
        return q(mVar);
    }

    @Override
    public int d(m mVar, a0 a0Var) throws ParserException {
        e();
        if (mVar.getPosition() == 0 && !q(mVar)) {
            throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        m();
        int iR = r(mVar);
        n(mVar.getLength(), iR);
        return iR;
    }

    @Override
    public void seek(long j10, long j11) {
        this.f63070d = 0L;
        this.f63071e = 0;
        this.f63072f = 0;
        if (j10 != 0) {
            b0 b0Var = this.f63080n;
            if (b0Var instanceof e) {
                this.f63077k = ((e) b0Var).c(j10);
                return;
            }
        }
        this.f63077k = 0L;
    }

    public b(int i10) {
        this.f63068b = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f63067a = new byte[1];
        this.f63075i = -1;
    }

    @Override
    public void release() {
    }
}
