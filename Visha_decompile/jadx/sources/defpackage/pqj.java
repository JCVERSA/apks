package defpackage;

import androidx.media3.exoplayer.RendererCapabilities;
import com.google.android.gms.internal.ads.zzfyh;
import java.util.Objects;

public final class pqj extends oqj {
    public final boolean f;
    public final hqj g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final boolean q;
    public final int r;
    public final int s;
    public final boolean t;
    public final boolean u;
    public final int v;

    /* JADX WARN: Code duplicated, block: B:120:0x0174  */
    /* JADX WARN: Code duplicated, block: B:13:0x0020  */
    /* JADX WARN: Code duplicated, block: B:33:0x004d  */
    /* JADX WARN: Code duplicated, block: B:88:0x011a  */
    public pqj(int i, n5f n5fVar, int i2, hqj hqjVar, int i3, String str, int i4, boolean z) {
        boolean z2;
        boolean z3;
        int i5;
        int iM;
        int i6;
        byte b;
        boolean z4;
        erj erjVar;
        int i7;
        int i8;
        int i9;
        erj erjVar2;
        int i10;
        int i11;
        int i12;
        super(i, n5fVar, i2);
        this.g = hqjVar;
        int i13 = 1;
        int i14 = true != hqjVar.H ? 16 : 24;
        if (!z || (((i10 = (erjVar2 = this.e).v) != -1 && i10 > hqjVar.a) || ((i11 = erjVar2.w) != -1 && i11 > hqjVar.b))) {
            z2 = false;
        } else {
            float f = erjVar2.x;
            if ((f == -1.0f || f <= hqjVar.c) && ((i12 = erjVar2.j) == -1 || i12 <= hqjVar.d)) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        this.f = z2;
        if (!z || (((i7 = (erjVar = this.e).v) != -1 && i7 < 0) || ((i8 = erjVar.w) != -1 && i8 < 0))) {
            z3 = false;
        } else {
            float f2 = erjVar.x;
            if ((f2 == -1.0f || f2 >= 0.0f) && ((i9 = erjVar.j) == -1 || i9 >= 0)) {
                z3 = true;
            } else {
                z3 = false;
            }
        }
        this.h = z3;
        this.i = y9j.a(i3, false);
        erj erjVar3 = this.e;
        float f3 = erjVar3.x;
        this.j = f3 != -1.0f && f3 >= 10.0f;
        this.k = erjVar3.j;
        this.l = erjVar3.a();
        int i15 = 0;
        while (true) {
            i5 = Integer.MAX_VALUE;
            if (i15 >= hqjVar.n.size()) {
                iM = 0;
                i15 = Integer.MAX_VALUE;
                break;
            } else {
                iM = rqj.m(this.e, (String) hqjVar.n.get(i15), false);
                if (iM > 0) {
                    break;
                } else {
                    i15++;
                }
            }
        }
        this.n = i15;
        this.o = iM;
        this.p = rqj.l(this.e.f, 0);
        int i16 = this.e.f;
        this.q = i16 == 0 || (i16 & 1) != 0;
        this.r = rqj.m(this.e, str, rqj.p(str) == null);
        for (int i17 = 0; i17 < hqjVar.m.size(); i17++) {
            String str2 = this.e.o;
            if (str2 != null && str2.equals(hqjVar.m.get(i17))) {
                i5 = i17;
                break;
            }
        }
        this.m = i5;
        this.t = (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 128;
        this.u = (i3 & 64) == 64;
        erj erjVar4 = this.e;
        String str3 = erjVar4.o;
        if (str3 == null) {
            i6 = 0;
        } else {
            i6 = 4;
            switch (str3) {
                case "video/dolby-vision":
                    b = 0;
                    break;
                case "video/av01":
                    b = 1;
                    break;
                case "video/hevc":
                    b = 2;
                    break;
                case "video/avc":
                    b = 4;
                    break;
                case "video/x-vnd.on2.vp9":
                    b = 3;
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                i6 = 5;
            } else if (b != 1) {
                if (b == 2) {
                    i6 = 3;
                } else if (b == 3) {
                    i6 = 2;
                } else if (b != 4) {
                    i6 = 0;
                } else {
                    i6 = 1;
                }
            }
        }
        this.v = i6;
        if ((erjVar4.f & 16384) != 0) {
            i13 = 0;
        } else {
            hqj hqjVar2 = this.g;
            if (!y9j.a(i3, hqjVar2.Q) || (!(z4 = this.f) && !hqjVar2.F)) {
                i13 = 0;
            } else if (y9j.a(i3, false) && this.h && z4 && erjVar4.j != -1 && (i14 & i3) != 0) {
                i13 = 2;
            }
        }
        this.s = i13;
    }

    public static int d(pqj pqjVar, pqj pqjVar2) {
        zzfyh zzfyhVarZza = (pqjVar.f && pqjVar.i) ? rqj.i : rqj.i.zza();
        f4i f4iVarI = f4i.i();
        boolean z = pqjVar.g.B;
        return f4iVarI.c(Integer.valueOf(pqjVar.l), Integer.valueOf(pqjVar2.l), zzfyhVarZza).c(Integer.valueOf(pqjVar.k), Integer.valueOf(pqjVar2.k), zzfyhVarZza).a();
    }

    public static int e(pqj pqjVar, pqj pqjVar2) {
        f4i f4iVarC = f4i.i().d(pqjVar.i, pqjVar2.i).c(Integer.valueOf(pqjVar.n), Integer.valueOf(pqjVar2.n), zzfyh.zzc().zza()).b(pqjVar.o, pqjVar2.o).b(pqjVar.p, pqjVar2.p).d(pqjVar.q, pqjVar2.q).b(pqjVar.r, pqjVar2.r).d(pqjVar.j, pqjVar2.j).d(pqjVar.f, pqjVar2.f).d(pqjVar.h, pqjVar2.h).c(Integer.valueOf(pqjVar.m), Integer.valueOf(pqjVar2.m), zzfyh.zzc().zza());
        boolean z = pqjVar.t;
        f4i f4iVarD = f4iVarC.d(z, pqjVar2.t);
        boolean z2 = pqjVar.u;
        f4i f4iVarD2 = f4iVarD.d(z2, pqjVar2.u);
        if (z && z2) {
            f4iVarD2 = f4iVarD2.b(pqjVar.v, pqjVar2.v);
        }
        return f4iVarD2.a();
    }

    @Override
    public final int a() {
        return this.s;
    }

    @Override
    public final boolean b(oqj oqjVar) {
        pqj pqjVar = (pqj) oqjVar;
        if (!Objects.equals(this.e.o, pqjVar.e.o)) {
            return false;
        }
        boolean z = this.g.I;
        return this.t == pqjVar.t && this.u == pqjVar.u;
    }
}
