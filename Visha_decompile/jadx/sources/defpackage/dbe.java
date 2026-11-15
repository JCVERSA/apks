package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.C;
import androidx.media3.extractor.avi.AviExtractor;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import java.util.ArrayList;
import java.util.List;

public final class dbe implements c9e {
    public final u4h a;
    public final bbe b;
    public final boolean c;
    public final vge d;
    public int e;
    public f9e f;
    public ebe g;
    public long h;
    public gbe[] i;
    public long j;
    public gbe k;
    public int l;
    public long m;
    public long n;
    public int o;
    public boolean p;

    public dbe(int i, vge vgeVar) {
        this.d = vgeVar;
        this.c = 1 == (i ^ 1);
        this.a = new u4h(12);
        this.b = new bbe(null);
        this.f = new w9e();
        this.i = new gbe[0];
        this.m = -1L;
        this.n = -1L;
        this.l = -1;
        this.h = C.TIME_UNSET;
    }

    @Override
    public final void b(long j, long j2) {
        this.j = -1L;
        this.k = null;
        for (gbe gbeVar : this.i) {
            gbeVar.e(j);
        }
        if (j == 0) {
            this.e = this.i.length != 0 ? 3 : 0;
        } else {
            this.e = 6;
        }
    }

    public final gbe c(int i) {
        for (gbe gbeVar : this.i) {
            if (gbeVar.f(i)) {
                return gbeVar;
            }
        }
        return null;
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) throws zzaz {
        boolean z;
        long j;
        long j2 = this.j;
        if (j2 != -1) {
            long jZzf = d9eVar.zzf();
            if (j2 < jZzf || j2 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE + jZzf) {
                y9eVar.a = j2;
                z = true;
            } else {
                d9eVar.f((int) (j2 - jZzf));
                z = false;
            }
        } else {
            z = false;
        }
        this.j = -1L;
        if (z) {
            return 1;
        }
        int i = this.e;
        gbe gbeVar = null;
        if (i == 0) {
            if (!e(d9eVar)) {
                throw zzaz.zza("AVI Header List not found", null);
            }
            d9eVar.f(12);
            this.e = 1;
            return 0;
        }
        if (i == 1) {
            u4h u4hVar = this.a;
            d9eVar.h(u4hVar.n(), 0, 12);
            u4hVar.l(0);
            bbe bbeVar = this.b;
            bbeVar.a(u4hVar);
            int i2 = bbeVar.a;
            if (i2 != 1414744396) {
                throw zzaz.zza("LIST expected, found: " + i2, null);
            }
            int iC = u4hVar.C();
            if (iC == 1819436136) {
                this.l = bbeVar.b;
                this.e = 2;
                return 0;
            }
            throw zzaz.zza("hdrl expected, found: " + iC, null);
        }
        if (i == 2) {
            int i3 = this.l - 4;
            u4h u4hVar2 = new u4h(i3);
            d9eVar.h(u4hVar2.n(), 0, i3);
            hbe hbeVarB = hbe.b(AviExtractor.FOURCC_hdrl, u4hVar2);
            if (hbeVarB.zza() != 1819436136) {
                throw zzaz.zza("Unexpected header list type " + hbeVarB.zza(), null);
            }
            ebe ebeVar = (ebe) hbeVarB.a(ebe.class);
            if (ebeVar == null) {
                throw zzaz.zza("AviHeader not found", null);
            }
            this.g = ebeVar;
            this.h = ((long) ebeVar.c) * ((long) ebeVar.a);
            ArrayList arrayList = new ArrayList();
            zzfww zzfwwVar = hbeVarB.a;
            int size = zzfwwVar.size();
            int i4 = 0;
            int i5 = 0;
            while (i4 < size) {
                zae zaeVar = (zae) zzfwwVar.get(i4);
                if (zaeVar.zza() == 1819440243) {
                    hbe hbeVar = (hbe) zaeVar;
                    int i6 = i5 + 1;
                    fbe fbeVar = (fbe) hbeVar.a(fbe.class);
                    ibe ibeVar = (ibe) hbeVar.a(ibe.class);
                    if (fbeVar == null) {
                        zrg.f("AviExtractor", "Missing Stream Header");
                    } else if (ibeVar == null) {
                        zrg.f("AviExtractor", "Missing Stream Format");
                    } else {
                        long jB = fbeVar.b();
                        erj erjVar = ibeVar.a;
                        gpj gpjVarB = erjVar.b();
                        gpjVarB.n(i5);
                        int i7 = fbeVar.e;
                        if (i7 != 0) {
                            gpjVarB.t(i7);
                        }
                        mbe mbeVar = (mbe) hbeVar.a(mbe.class);
                        if (mbeVar != null) {
                            gpjVarB.q(mbeVar.a);
                        }
                        int iB = bue.b(erjVar.o);
                        if (iB == 1) {
                            rae raeVarJ = this.f.j(i5, iB);
                            raeVarJ.f(gpjVarB.K());
                            raeVarJ.c(jB);
                            this.h = Math.max(this.h, jB);
                            gbeVar = new gbe(i5, fbeVar, raeVarJ);
                        } else if (iB == 2) {
                            iB = 2;
                            rae raeVarJ2 = this.f.j(i5, iB);
                            raeVarJ2.f(gpjVarB.K());
                            raeVarJ2.c(jB);
                            this.h = Math.max(this.h, jB);
                            gbeVar = new gbe(i5, fbeVar, raeVarJ2);
                        } else {
                            gbeVar = null;
                        }
                    }
                    if (gbeVar != null) {
                        arrayList.add(gbeVar);
                    }
                    i5 = i6;
                }
                i4++;
                gbeVar = null;
            }
            this.i = (gbe[]) arrayList.toArray(new gbe[0]);
            this.f.zzG();
            this.e = 3;
            return 0;
        }
        if (i == 3) {
            long j3 = this.m;
            if (j3 != -1 && d9eVar.zzf() != j3) {
                this.j = j3;
                return 0;
            }
            u4h u4hVar3 = this.a;
            d9eVar.i(u4hVar3.n(), 0, 12);
            d9eVar.zzj();
            u4hVar3.l(0);
            bbe bbeVar2 = this.b;
            bbeVar2.a(u4hVar3);
            int iC2 = u4hVar3.C();
            int i8 = bbeVar2.a;
            if (i8 == 1179011410) {
                d9eVar.f(12);
                return 0;
            }
            if (i8 != 1414744396 || iC2 != 1769369453) {
                this.j = d9eVar.zzf() + ((long) bbeVar2.b) + 8;
                return 0;
            }
            long jZzf2 = d9eVar.zzf();
            this.m = jZzf2;
            long j4 = jZzf2 + ((long) bbeVar2.b) + 8;
            this.n = j4;
            if (!this.p) {
                ebe ebeVar2 = this.g;
                ebeVar2.getClass();
                if ((ebeVar2.b & 16) == 16) {
                    this.e = 4;
                    this.j = j4;
                    return 0;
                }
                this.f.i(new jae(this.h, 0L));
                this.p = true;
            }
            this.j = d9eVar.zzf() + 12;
            this.e = 6;
            return 0;
        }
        if (i == 4) {
            u4h u4hVar4 = this.a;
            d9eVar.h(u4hVar4.n(), 0, 8);
            u4hVar4.l(0);
            int iC3 = u4hVar4.C();
            int iC4 = u4hVar4.C();
            if (iC3 == 829973609) {
                this.e = 5;
                this.o = iC4;
            } else {
                this.j = d9eVar.zzf() + ((long) iC4);
            }
            return 0;
        }
        if (i == 5) {
            u4h u4hVar5 = new u4h(this.o);
            d9eVar.h(u4hVar5.n(), 0, this.o);
            if (u4hVar5.u() < 16) {
                j = 0;
            } else {
                int iW = u4hVar5.w();
                u4hVar5.m(8);
                long jC = u4hVar5.C();
                long j5 = this.m;
                j = jC > j5 ? 0L : 8 + j5;
                u4hVar5.l(iW);
            }
            while (u4hVar5.u() >= 16) {
                int iC5 = u4hVar5.C();
                int iC6 = u4hVar5.C();
                long jC2 = ((long) u4hVar5.C()) + j;
                u4hVar5.m(4);
                gbe gbeVarC = c(iC5);
                if (gbeVarC != null) {
                    gbeVarC.b(jC2, (iC6 & 16) == 16);
                }
            }
            for (gbe gbeVar2 : this.i) {
                gbeVar2.c();
            }
            this.p = true;
            if (this.i.length == 0) {
                this.f.i(new jae(this.h, 0L));
            } else {
                this.f.i(new abe(this, this.h));
            }
            this.e = 6;
            this.j = this.m;
            return 0;
        }
        if (d9eVar.zzf() >= this.n) {
            return -1;
        }
        gbe gbeVar3 = this.k;
        if (gbeVar3 != null) {
            if (!gbeVar3.g(d9eVar)) {
                return 0;
            }
            this.k = null;
            return 0;
        }
        if ((d9eVar.zzf() & 1) == 1) {
            d9eVar.f(1);
        }
        u4h u4hVar6 = this.a;
        d9eVar.i(u4hVar6.n(), 0, 12);
        u4hVar6.l(0);
        int iC7 = u4hVar6.C();
        if (iC7 == 1414744396) {
            u4hVar6.l(8);
            d9eVar.f(u4hVar6.C() != 1769369453 ? 8 : 12);
            d9eVar.zzj();
            return 0;
        }
        int iC8 = u4hVar6.C();
        if (iC7 == 1263424842) {
            this.j = d9eVar.zzf() + ((long) iC8) + 8;
            return 0;
        }
        d9eVar.f(8);
        d9eVar.zzj();
        gbe gbeVarC2 = c(iC7);
        if (gbeVarC2 == null) {
            this.j = d9eVar.zzf() + ((long) iC8);
            return 0;
        }
        gbeVarC2.d(iC8);
        this.k = gbeVarC2;
        return 0;
    }

    @Override
    public final boolean e(d9e d9eVar) {
        u4h u4hVar = this.a;
        d9eVar.i(u4hVar.n(), 0, 12);
        u4hVar.l(0);
        if (u4hVar.C() != 1179011410) {
            return false;
        }
        u4hVar.m(4);
        return u4hVar.C() == 541677121;
    }

    @Override
    public final void f(f9e f9eVar) {
        this.e = 0;
        if (this.c) {
            f9eVar = new che(f9eVar, this.d);
        }
        this.f = f9eVar;
        this.j = -1L;
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return zzfww.zzn();
    }
}
