package ba;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;
import i9.n;

final class e implements j {

    private final com.google.android.exoplayer2.source.rtsp.j f15699a;

    private e0 f15700b;

    private int f15702d;

    private int f15704f;

    private int f15705g;

    private boolean f15706h;

    private boolean f15707i;

    private long f15708j;

    private long f15701c = C.TIME_UNSET;

    private int f15703e = -1;

    public e(com.google.android.exoplayer2.source.rtsp.j jVar) {
        this.f15699a = jVar;
    }

    private void d(d0 d0Var, boolean z10) {
        int iE = d0Var.e();
        if (((d0Var.F() >> 10) & 63) != 32) {
            d0Var.P(iE);
            this.f15706h = false;
            return;
        }
        int iH = d0Var.h();
        int i10 = (iH >> 1) & 1;
        if (!z10 && i10 == 0) {
            int i11 = (iH >> 2) & 7;
            if (i11 == 1) {
                this.f15704f = 128;
                this.f15705g = 96;
            } else {
                int i12 = i11 - 2;
                this.f15704f = 176 << i12;
                this.f15705g = 144 << i12;
            }
        }
        d0Var.P(iE);
        this.f15706h = i10 == 0;
    }

    private static long e(long j10, long j11, long j12) {
        return j10 + p0.N0(j11 - j12, 1000000L, 90000L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void a(d0 d0Var, long j10, int i10, boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f15700b);
        int iE = d0Var.e();
        int iJ = d0Var.J();
        Object[] objArr = (iJ & 1024) > 0;
        if ((iJ & 512) != 0 || (iJ & 504) != 0 || (iJ & 7) != 0) {
            s.i("RtpH263Reader", "Dropping packet: video reduncancy coding is not supported, packet header VRC, or PLEN or PEBIT is non-zero");
            return;
        }
        if (objArr != true) {
            int iB = com.google.android.exoplayer2.source.rtsp.g.b(this.f15703e);
            if (i10 != iB) {
                s.i("RtpH263Reader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iB), Integer.valueOf(i10)));
                return;
            }
        } else if ((d0Var.h() & 252) < 128) {
            s.i("RtpH263Reader", "Picture start Code (PSC) missing, dropping packet.");
            return;
        } else {
            d0Var.d()[iE] = 0;
            d0Var.d()[iE + 1] = 0;
            d0Var.P(iE);
        }
        if (this.f15702d == 0) {
            d(d0Var, this.f15707i);
            if (!this.f15707i && this.f15706h) {
                int i11 = this.f15704f;
                p1 p1Var = this.f15699a.f25773c;
                if (i11 != p1Var.f24906q || this.f15705g != p1Var.f24907r) {
                    this.f15700b.d(p1Var.b().j0(this.f15704f).Q(this.f15705g).E());
                }
                this.f15707i = true;
            }
        }
        int iA = d0Var.a();
        this.f15700b.c(d0Var, iA);
        this.f15702d += iA;
        if (z10) {
            if (this.f15701c == C.TIME_UNSET) {
                this.f15701c = j10;
            }
            this.f15700b.e(e(this.f15708j, j10, this.f15701c), this.f15706h ? 1 : 0, this.f15702d, 0, null);
            this.f15702d = 0;
            this.f15706h = false;
        }
        this.f15703e = i10;
    }

    @Override
    public void c(n nVar, int i10) {
        e0 e0VarTrack = nVar.track(i10, 2);
        this.f15700b = e0VarTrack;
        e0VarTrack.d(this.f15699a.f25773c);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f15701c = j10;
        this.f15702d = 0;
        this.f15708j = j11;
    }

    @Override
    public void b(long j10, int i10) {
    }
}
