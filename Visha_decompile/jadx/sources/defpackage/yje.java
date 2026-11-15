package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;

public final class yje implements lje {
    public String f;
    public rae g;
    public boolean j;
    public int l;
    public int m;
    public int o;
    public int p;
    public int t;
    public boolean v;
    public final String a = MimeTypes.VIDEO_MP2T;
    public int e = 0;
    public final u4h b = new u4h(new byte[15], 2);
    public final p3h c = new p3h();
    public final u4h d = new u4h();
    public final zje q = new zje();
    public int r = C.RATE_UNSET_INT;
    public int s = -1;
    public long u = -1;
    public boolean k = true;
    public boolean n = true;
    public double h = -9.223372036854776E18d;
    public double i = -9.223372036854776E18d;

    public yje(String str) {
    }

    public static final void d(u4h u4hVar, u4h u4hVar2, boolean z) {
        int iW = u4hVar.w();
        int iMin = Math.min(u4hVar.u(), u4hVar2.u());
        u4hVar.h(u4hVar2.n(), u4hVar2.w(), iMin);
        u4hVar2.m(iMin);
        if (z) {
            u4hVar.l(iW);
        }
    }

    @Override
    public final void a(u4h u4hVar) throws zzaz {
        int i;
        n7g.b(this.g);
        while (u4hVar.u() > 0) {
            int i2 = this.e;
            int iD = 0;
            if (i2 == 0) {
                int i3 = this.l;
                if ((i3 & 2) != 0) {
                    if ((i3 & 4) == 0) {
                        while (u4hVar.u() > 0) {
                            int i4 = this.m << 8;
                            this.m = i4;
                            int iG = i4 | u4hVar.G();
                            this.m = iG;
                            if ((iG & 16777215) == 12583333) {
                                u4hVar.l(u4hVar.w() - 3);
                                this.m = 0;
                            }
                        }
                    }
                    this.e = 1;
                    break;
                }
                u4hVar.l(u4hVar.x());
            } else if (i2 != 1) {
                zje zjeVar = this.q;
                int i5 = zjeVar.a;
                if (i5 == 1 || i5 == 17) {
                    d(u4hVar, this.d, true);
                }
                int iMin = Math.min(u4hVar.u(), zjeVar.c - this.o);
                this.g.d(u4hVar, iMin);
                int i6 = this.o + iMin;
                this.o = i6;
                if (i6 == zjeVar.c) {
                    int i7 = zjeVar.a;
                    if (i7 == 1) {
                        byte[] bArrN = this.d.n();
                        ake akeVarA = cke.a(new p3h(bArrN, bArrN.length));
                        this.r = akeVarA.b;
                        this.s = akeVarA.c;
                        long j = this.u;
                        long j2 = zjeVar.b;
                        if (j != j2) {
                            this.u = j2;
                            int i8 = akeVarA.a;
                            String strConcat = i8 != -1 ? "mhm1".concat(String.format(".%02X", Integer.valueOf(i8))) : "mhm1";
                            byte[] bArr = akeVarA.d;
                            zzfww zzfwwVarZzp = null;
                            if (bArr != null && bArr.length > 0) {
                                zzfwwVarZzp = zzfww.zzp(kfh.c, bArr);
                            }
                            gpj gpjVar = new gpj();
                            gpjVar.o(this.f);
                            gpjVar.e(this.a);
                            gpjVar.E(MimeTypes.AUDIO_MPEGH_MHM1);
                            gpjVar.F(this.r);
                            gpjVar.c(strConcat);
                            gpjVar.p(zzfwwVarZzp);
                            this.g.f(gpjVar.K());
                        }
                        this.v = true;
                    } else if (i7 == 17) {
                        byte[] bArrN2 = this.d.n();
                        p3h p3hVar = new p3h(bArrN2, bArrN2.length);
                        if (p3hVar.p()) {
                            p3hVar.n(2);
                            iD = p3hVar.d(13);
                        }
                        this.t = iD;
                    } else if (i7 == 2) {
                        if (this.v) {
                            this.k = false;
                            i = 1;
                        } else {
                            i = 0;
                        }
                        int i9 = this.s - this.t;
                        double d = this.r;
                        long jRound = Math.round(this.h);
                        if (this.j) {
                            this.j = false;
                            this.h = this.i;
                        } else {
                            this.h += (((double) i9) * 1000000.0d) / d;
                        }
                        this.g.g(jRound, i, this.p, 0, null);
                        this.v = false;
                        this.t = 0;
                        this.p = 0;
                    }
                    this.e = 1;
                }
            } else {
                u4h u4hVar2 = this.b;
                d(u4hVar, u4hVar2, false);
                if (u4hVar2.u() == 0) {
                    p3h p3hVar2 = this.c;
                    int iX = u4hVar2.x();
                    p3hVar2.k(u4hVar2.n(), iX);
                    zje zjeVar2 = this.q;
                    if (cke.b(p3hVar2, zjeVar2)) {
                        this.o = 0;
                        this.p += zjeVar2.c + iX;
                        u4hVar2.l(0);
                        this.g.d(u4hVar2, u4hVar2.x());
                        u4hVar2.i(2);
                        this.d.i(zjeVar2.c);
                        this.n = true;
                        this.e = 2;
                    } else if (u4hVar2.x() < 15) {
                        u4hVar2.k(u4hVar2.x() + 1);
                    }
                }
                this.n = false;
            }
        }
    }

    @Override
    public final void b(long j, int i) {
        this.l = i;
        if (!this.k && (this.p != 0 || !this.n)) {
            this.j = true;
        }
        if (j != C.TIME_UNSET) {
            double d = j;
            if (this.j) {
                this.i = d;
            } else {
                this.h = d;
            }
        }
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.f = cleVar.b();
        this.g = f9eVar.j(cleVar.a(), 1);
    }

    @Override
    public final void zzc(boolean z) {
    }

    @Override
    public final void zze() {
        this.e = 0;
        this.m = 0;
        this.b.i(2);
        this.o = 0;
        this.p = 0;
        this.r = C.RATE_UNSET_INT;
        this.s = -1;
        this.t = 0;
        this.u = -1L;
        this.v = false;
        this.j = false;
        this.n = true;
        this.k = true;
        this.h = -9.223372036854776E18d;
        this.i = -9.223372036854776E18d;
    }
}
