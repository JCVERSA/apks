package l2;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import h3.s;
import java.io.EOFException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import k2.h0;
import k2.i;
import k2.l0;
import k2.m0;
import k2.n;
import k2.q;
import k2.r;
import k2.s0;
import k2.t;
import k2.w;
import k2.x;

public final class b implements r {

    public static final x f65570s = new x() {
        @Override
        public x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override
        public x b(int i10) {
            return w.b(this, i10);
        }

        @Override
        public r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override
        public final r[] createExtractors() {
            return b.o();
        }

        @Override
        public x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    private static final int[] f65571t = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    private static final int[] f65572u = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    private static final byte[] f65573v = a1.u0("#!AMR\n");

    private static final byte[] f65574w = a1.u0("#!AMR-WB\n");

    private final byte[] f65575a;

    private final int f65576b;

    private final s0 f65577c;

    private boolean f65578d;

    private long f65579e;

    private int f65580f;

    private int f65581g;

    private long f65582h;

    private int f65583i;

    private int f65584j;

    private long f65585k;

    private t f65586l;

    private s0 f65587m;

    private s0 f65588n;

    private m0 f65589o;

    private boolean f65590p;

    private long f65591q;

    private boolean f65592r;

    public b() {
        this(0);
    }

    private void g() {
        androidx.media3.common.util.a.i(this.f65587m);
        a1.i(this.f65586l);
    }

    private static int h(int i10, long j10) {
        return (int) ((((long) i10) * 8000000) / j10);
    }

    private m0 i(long j10, boolean z10) {
        return new i(j10, this.f65582h, h(this.f65583i, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT), this.f65583i, z10);
    }

    private int j(int i10) throws ParserException {
        if (m(i10)) {
            return this.f65578d ? f65572u[i10] : f65571t[i10];
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Illegal AMR ");
        sb2.append(this.f65578d ? "WB" : "NB");
        sb2.append(" frame type ");
        sb2.append(i10);
        throw ParserException.createForMalformedContainer(sb2.toString(), null);
    }

    private boolean k(int i10) {
        return !this.f65578d && (i10 < 12 || i10 > 14);
    }

    private boolean l(long j10, long j11) {
        return Math.abs(j11 - j10) < DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT;
    }

    private boolean m(int i10) {
        return i10 >= 0 && i10 <= 15 && (n(i10) || k(i10));
    }

    private boolean n(int i10) {
        return this.f65578d && (i10 < 10 || i10 > 13);
    }

    public static r[] o() {
        return new r[]{new b()};
    }

    private void p() {
        if (this.f65592r) {
            return;
        }
        this.f65592r = true;
        boolean z10 = this.f65578d;
        String str = MimeTypes.AUDIO_AMR_WB;
        String str2 = z10 ? MimeTypes.AUDIO_AMR_WB : "audio/amr";
        if (!z10) {
            str = MimeTypes.AUDIO_AMR_NB;
        }
        this.f65587m.d(new androidx.media3.common.r.b().U(str2).u0(str).k0(z10 ? f65572u[8] : f65571t[7]).R(1).v0(z10 ? 16000 : 8000).N());
    }

    private void q(long j10, int i10) {
        int i11;
        if (this.f65589o != null) {
            return;
        }
        int i12 = this.f65576b;
        if ((i12 & 4) != 0) {
            this.f65589o = new h0(new long[]{this.f65582h}, new long[]{0}, C.TIME_UNSET);
        } else if ((i12 & 1) == 0 || !((i11 = this.f65583i) == -1 || i11 == this.f65580f)) {
            this.f65589o = new m0.b(C.TIME_UNSET);
        } else if (this.f65584j >= 20 || i10 == -1) {
            m0 m0VarI = i(j10, (i12 & 2) != 0);
            this.f65589o = m0VarI;
            this.f65587m.f(m0VarI.getDurationUs());
        }
        m0 m0Var = this.f65589o;
        if (m0Var != null) {
            this.f65586l.d(m0Var);
        }
    }

    private static boolean r(k2.s sVar, byte[] bArr) {
        sVar.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        sVar.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int s(k2.s sVar) throws ParserException {
        sVar.resetPeekPosition();
        sVar.peekFully(this.f65575a, 0, 1);
        byte b10 = this.f65575a[0];
        if ((b10 & 131) <= 0) {
            return j((b10 >> 3) & 15);
        }
        throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) b10), null);
    }

    private boolean t(k2.s sVar) {
        byte[] bArr = f65573v;
        if (r(sVar, bArr)) {
            this.f65578d = false;
            sVar.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = f65574w;
        if (!r(sVar, bArr2)) {
            return false;
        }
        this.f65578d = true;
        sVar.skipFully(bArr2.length);
        return true;
    }

    private int u(k2.s sVar) throws ParserException {
        if (this.f65581g == 0) {
            try {
                int iS = s(sVar);
                this.f65580f = iS;
                this.f65581g = iS;
                if (this.f65583i == -1) {
                    this.f65582h = sVar.getPosition();
                    this.f65583i = this.f65580f;
                }
                if (this.f65583i == this.f65580f) {
                    this.f65584j++;
                }
                m0 m0Var = this.f65589o;
                if (m0Var instanceof h0) {
                    h0 h0Var = (h0) m0Var;
                    long j10 = this.f65585k + this.f65579e + DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT;
                    long position = sVar.getPosition() + ((long) this.f65580f);
                    if (!h0Var.c(j10, 100000L)) {
                        h0Var.b(j10, position);
                    }
                    if (this.f65590p && l(j10, this.f65591q)) {
                        this.f65590p = false;
                        this.f65588n = this.f65587m;
                    }
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iE = this.f65588n.e(sVar, this.f65581g, true);
        if (iE == -1) {
            return -1;
        }
        int i10 = this.f65581g - iE;
        this.f65581g = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f65588n.b(this.f65585k + this.f65579e, 1, this.f65580f, 0, null);
        this.f65579e += DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT;
        return 0;
    }

    @Override
    public boolean b(k2.s sVar) {
        return t(sVar);
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) throws ParserException {
        g();
        if (sVar.getPosition() == 0 && !t(sVar)) {
            throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        p();
        int iU = u(sVar);
        q(sVar.getLength(), iU);
        if (iU == -1) {
            m0 m0Var = this.f65589o;
            if (m0Var instanceof h0) {
                long j10 = this.f65585k + this.f65579e;
                ((h0) m0Var).d(j10);
                this.f65586l.d(this.f65589o);
                this.f65587m.f(j10);
            }
        }
        return iU;
    }

    @Override
    public void e(t tVar) {
        this.f65586l = tVar;
        s0 s0VarTrack = tVar.track(0, 1);
        this.f65587m = s0VarTrack;
        this.f65588n = s0VarTrack;
        tVar.endTracks();
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f65579e = 0L;
        this.f65580f = 0;
        this.f65581g = 0;
        this.f65591q = j11;
        m0 m0Var = this.f65589o;
        if (!(m0Var instanceof h0)) {
            if (j10 == 0 || !(m0Var instanceof i)) {
                this.f65585k = 0L;
                return;
            } else {
                this.f65585k = ((i) m0Var).c(j10);
                return;
            }
        }
        long timeUs = ((h0) m0Var).getTimeUs(j10);
        this.f65585k = timeUs;
        if (l(timeUs, this.f65591q)) {
            return;
        }
        this.f65590p = true;
        this.f65588n = this.f65577c;
    }

    public b(int i10) {
        this.f65576b = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f65575a = new byte[1];
        this.f65583i = -1;
        n nVar = new n();
        this.f65577c = nVar;
        this.f65588n = nVar;
    }

    @Override
    public void release() {
    }
}
