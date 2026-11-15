package defpackage;

import androidx.media3.common.C;
import com.google.android.gms.internal.ads.s7;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.math.RoundingMode;
import java.util.List;

public final class cee implements c9e {
    public final rae e;
    public f9e f;
    public rae g;
    public rae h;
    public int i;
    public hre j;
    public long l;
    public long m;
    public long n;
    public int o;
    public eee p;
    public boolean q;
    public final u4h a = new u4h(10);
    public final u9e b = new u9e();
    public final q9e c = new q9e();
    public long k = C.TIME_UNSET;
    public final s9e d = new s9e();

    public cee(int i) {
        s8e s8eVar = new s8e();
        this.e = s8eVar;
        this.h = s8eVar;
        this.n = -1L;
    }

    public static boolean i(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    public final void a() {
        this.q = true;
    }

    @Override
    public final void b(long j, long j2) {
        this.i = 0;
        this.k = C.TIME_UNSET;
        this.l = 0L;
        this.o = 0;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:124:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:128:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0067  */
    /* JADX WARN: Code duplicated, block: B:28:0x0070  */
    /* JADX WARN: Code duplicated, block: B:29:0x0072  */
    /* JADX WARN: Code duplicated, block: B:35:0x007e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0096  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:57:0x010c  */
    /* JADX WARN: Code duplicated, block: B:59:0x0112  */
    /* JADX WARN: Code duplicated, block: B:61:0x011d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0121  */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x00cb, please report this as an issue */
    public final int c(d9e d9eVar) {
        int iA;
        int i;
        int iA2;
        gee geeVarB;
        q9e q9eVar;
        long jZzf;
        long jZzd;
        long jA;
        long j;
        int i2;
        eee aeeVar;
        long j2;
        long j3;
        int i3;
        int i4;
        bee beeVarB;
        eee aeeVar2;
        long jN;
        if (this.i == 0) {
            try {
                k(d9eVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.p == null) {
            u9e u9eVar = this.b;
            u4h u4hVar = new u4h(u9eVar.c);
            d9eVar.i(u4hVar.n(), 0, u9eVar.c);
            int i5 = 21;
            if ((u9eVar.a & 1) != 0) {
                if (u9eVar.e != 1) {
                    i5 = 36;
                }
            } else if (u9eVar.e == 1) {
                i5 = 13;
            }
            if (u4hVar.x() >= i5 + 4) {
                u4hVar.l(i5);
                iA2 = u4hVar.A();
                if (iA2 != 1483304551) {
                    if (iA2 == 1231971951) {
                        iA2 = 1231971951;
                    } else if (u4hVar.x() >= 40) {
                        u4hVar.l(36);
                        if (u4hVar.A() == 1447187017) {
                            iA2 = 1447187017;
                        } else {
                            iA2 = 0;
                        }
                    } else {
                        iA2 = 0;
                    }
                }
            } else if (u4hVar.x() >= 40) {
                u4hVar.l(36);
                if (u4hVar.A() == 1447187017) {
                    iA2 = 1447187017;
                } else {
                    iA2 = 0;
                }
            } else {
                iA2 = 0;
            }
            eee eeeVar = null;
            if (iA2 == 1231971951) {
                geeVarB = gee.b(u9eVar, u4hVar);
                q9eVar = this.c;
                if (!q9eVar.a() && (i3 = geeVarB.d) != -1 && (i4 = geeVarB.e) != -1) {
                    q9eVar.a = i3;
                    q9eVar.b = i4;
                }
                jZzf = d9eVar.zzf();
                if (d9eVar.zzd() != -1) {
                    j2 = geeVarB.c;
                    if (j2 != -1) {
                        j3 = j2 + jZzf;
                        if (d9eVar.zzd() != j3) {
                            zrg.e("Mp3Extractor", "Data size mismatch between stream (" + d9eVar.zzd() + ") and Xing frame (" + j3 + "), using Xing value.");
                        }
                    }
                }
                d9eVar.f(u9eVar.c);
                if (iA2 == 1483304551) {
                    aeeVar = hee.b(geeVarB, jZzf);
                } else {
                    jZzd = d9eVar.zzd();
                    jA = geeVarB.a();
                    if (jA != C.TIME_UNSET) {
                        aeeVar = null;
                    } else {
                        j = geeVarB.c;
                        if (j != -1) {
                            jZzd = jZzf + j;
                            i2 = geeVarB.a.c;
                        } else if (jZzd != -1) {
                            j = jZzd - jZzf;
                            i2 = geeVarB.a.c;
                        } else {
                            aeeVar = null;
                        }
                        long j4 = j - ((long) i2);
                        long j5 = jZzd;
                        RoundingMode roundingMode = RoundingMode.HALF_UP;
                        aeeVar = new aee(j5, jZzf + ((long) geeVarB.a.c), s7.b(kfh.P(j4, 8000000L, jA, roundingMode)), s7.b(o6i.b(j4, geeVarB.b, roundingMode)), false);
                    }
                }
            } else if (iA2 != 1447187017) {
                if (iA2 != 1483304551) {
                    d9eVar.zzj();
                } else {
                    geeVarB = gee.b(u9eVar, u4hVar);
                    q9eVar = this.c;
                    if (!q9eVar.a()) {
                        q9eVar.a = i3;
                        q9eVar.b = i4;
                    }
                    jZzf = d9eVar.zzf();
                    if (d9eVar.zzd() != -1) {
                        j2 = geeVarB.c;
                        if (j2 != -1) {
                            j3 = j2 + jZzf;
                            if (d9eVar.zzd() != j3) {
                                zrg.e("Mp3Extractor", "Data size mismatch between stream (" + d9eVar.zzd() + ") and Xing frame (" + j3 + "), using Xing value.");
                            }
                        }
                    }
                    d9eVar.f(u9eVar.c);
                    if (iA2 == 1483304551) {
                        aeeVar = hee.b(geeVarB, jZzf);
                    } else {
                        jZzd = d9eVar.zzd();
                        jA = geeVarB.a();
                        if (jA != C.TIME_UNSET) {
                            j = geeVarB.c;
                            if (j != -1) {
                                jZzd = jZzf + j;
                                i2 = geeVarB.a.c;
                            } else if (jZzd != -1) {
                                j = jZzd - jZzf;
                                i2 = geeVarB.a.c;
                            }
                            long j6 = j - ((long) i2);
                            long j7 = jZzd;
                            RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                            aeeVar = new aee(j7, jZzf + ((long) geeVarB.a.c), s7.b(kfh.P(j6, 8000000L, jA, roundingMode2)), s7.b(o6i.b(j6, geeVarB.b, roundingMode2)), false);
                        }
                    }
                }
                aeeVar = null;
            } else {
                aeeVar = fee.b(d9eVar.zzd(), d9eVar.zzf(), u9eVar, u4hVar);
                d9eVar.f(u9eVar.c);
            }
            hre hreVar = this.j;
            long jZzf2 = d9eVar.zzf();
            if (hreVar == null) {
                beeVarB = null;
                break;
            }
            int iA3 = hreVar.a();
            int i6 = 0;
            while (true) {
                if (i6 >= iA3) {
                    beeVarB = null;
                    break;
                }
                iqe iqeVarB = hreVar.b(i6);
                if (iqeVarB instanceof fde) {
                    fde fdeVar = (fde) iqeVarB;
                    int iA4 = hreVar.a();
                    int i7 = 0;
                    while (true) {
                        if (i7 >= iA4) {
                            jN = -9223372036854775807L;
                            break;
                        }
                        iqe iqeVarB2 = hreVar.b(i7);
                        if (iqeVarB2 instanceof hde) {
                            hde hdeVar = (hde) iqeVarB2;
                            if (hdeVar.a.equals("TLEN")) {
                                jN = kfh.N(Long.parseLong((String) hdeVar.c.get(0)));
                                break;
                            }
                        }
                        i7++;
                    }
                    beeVarB = bee.b(jZzf2, fdeVar, jN);
                    break;
                }
                i6++;
            }
            if (this.q) {
                aeeVar2 = new dee();
            } else {
                if (beeVarB != null) {
                    eeeVar = beeVarB;
                } else if (aeeVar != null) {
                    eeeVar = aeeVar;
                }
                if (eeeVar == null) {
                    u4h u4hVar2 = this.a;
                    d9eVar.i(u4hVar2.n(), 0, 4);
                    u4hVar2.l(0);
                    u9eVar.a(u4hVar2.A());
                    aeeVar2 = new aee(d9eVar.zzd(), d9eVar.zzf(), u9eVar.f, u9eVar.c, false);
                } else {
                    aeeVar2 = eeeVar;
                }
                this.g.c(aeeVar2.zza());
            }
            this.p = aeeVar2;
            this.f.i(aeeVar2);
            gpj gpjVar = new gpj();
            gpjVar.e("audio/mpeg");
            gpjVar.E(u9eVar.b);
            gpjVar.t(4096);
            gpjVar.b(u9eVar.e);
            gpjVar.F(u9eVar.d);
            q9e q9eVar2 = this.c;
            gpjVar.i(q9eVar2.a);
            gpjVar.j(q9eVar2.b);
            gpjVar.w(this.j);
            if (this.p.zzc() != -2147483647) {
                gpjVar.a(this.p.zzc());
            }
            this.h.f(gpjVar.K());
            this.m = d9eVar.zzf();
        } else {
            long j8 = this.m;
            if (j8 != 0) {
                long jZzf3 = d9eVar.zzf();
                if (jZzf3 < j8) {
                    d9eVar.f((int) (j8 - jZzf3));
                }
            }
        }
        int i8 = this.o;
        if (i8 == 0) {
            d9eVar.zzj();
            if (j(d9eVar)) {
                return -1;
            }
            u4h u4hVar3 = this.a;
            u4hVar3.l(0);
            int iA5 = u4hVar3.A();
            if (!i(iA5, this.i) || v9e.b(iA5) == -1) {
                d9eVar.f(1);
                this.i = 0;
            } else {
                u9e u9eVar2 = this.b;
                u9eVar2.a(iA5);
                if (this.k == C.TIME_UNSET) {
                    this.k = this.p.c(d9eVar.zzf());
                }
                i8 = u9eVar2.c;
                this.o = i8;
                this.n = d9eVar.zzf() + ((long) i8);
                iA = this.h.a(d9eVar, i8, true);
                if (iA == -1) {
                    return -1;
                }
                i = this.o - iA;
                this.o = i;
                if (i <= 0) {
                    rae raeVar = this.h;
                    long jG = g(this.l);
                    u9e u9eVar3 = this.b;
                    raeVar.g(jG, 1, u9eVar3.c, 0, null);
                    this.l += (long) u9eVar3.g;
                    this.o = 0;
                    return 0;
                }
            }
        } else {
            iA = this.h.a(d9eVar, i8, true);
            if (iA == -1) {
                return -1;
            }
            i = this.o - iA;
            this.o = i;
            if (i <= 0) {
                rae raeVar2 = this.h;
                long jG2 = g(this.l);
                u9e u9eVar4 = this.b;
                raeVar2.g(jG2, 1, u9eVar4.c, 0, null);
                this.l += (long) u9eVar4.g;
                this.o = 0;
                return 0;
            }
        }
        return 0;
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        n7g.b(this.g);
        int i = kfh.a;
        return c(d9eVar);
    }

    @Override
    public final boolean e(d9e d9eVar) {
        return k(d9eVar, true);
    }

    @Override
    public final void f(f9e f9eVar) {
        this.f = f9eVar;
        rae raeVarJ = f9eVar.j(0, 1);
        this.g = raeVarJ;
        this.h = raeVarJ;
        this.f.zzG();
    }

    public final long g(long j) {
        return this.k + ((j * 1000000) / ((long) this.b.d));
    }

    public final void h() {
        eee eeeVar = this.p;
        if ((eeeVar instanceof aee) && eeeVar.zzh()) {
            long j = this.n;
            if (j == -1 || j == this.p.zzd()) {
                return;
            }
            this.p = ((aee) this.p).e(this.n);
            f9e f9eVar = this.f;
            f9eVar.getClass();
            f9eVar.i(this.p);
            this.g.getClass();
            this.p.zza();
        }
    }

    public final boolean j(d9e d9eVar) {
        eee eeeVar = this.p;
        if (eeeVar != null) {
            long jZzd = eeeVar.zzd();
            if (jZzd != -1 && d9eVar.zze() > jZzd - 4) {
                return true;
            }
        }
        try {
            return !d9eVar.e(this.a.n(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    public final boolean k(d9e d9eVar, boolean z) throws EOFException {
        int iZze;
        int i;
        int iB;
        d9eVar.zzj();
        if (d9eVar.zzf() == 0) {
            hre hreVarA = this.d.a(d9eVar, null);
            this.j = hreVarA;
            if (hreVarA != null) {
                this.c.b(hreVarA);
            }
            iZze = (int) d9eVar.zze();
            if (!z) {
                d9eVar.f(iZze);
            }
            i = 0;
        } else {
            iZze = 0;
            i = 0;
        }
        int i2 = i;
        int i3 = i2;
        while (true) {
            if (j(d9eVar)) {
                if (i2 > 0) {
                    break;
                }
                h();
                throw new EOFException();
            }
            u4h u4hVar = this.a;
            u4hVar.l(0);
            int iA = u4hVar.A();
            if ((i == 0 || i(iA, i)) && (iB = v9e.b(iA)) != -1) {
                i2++;
                if (i2 != 1) {
                    if (i2 == 4) {
                        break;
                    }
                } else {
                    this.b.a(iA);
                    i = iA;
                }
                d9eVar.zzg(iB - 4);
            } else {
                int i4 = i3 + 1;
                if (i3 == (true != z ? 131072 : 32768)) {
                    if (z) {
                        return false;
                    }
                    h();
                    throw new EOFException();
                }
                if (z) {
                    d9eVar.zzj();
                    d9eVar.zzg(iZze + i4);
                } else {
                    d9eVar.f(1);
                }
                i = 0;
                i3 = i4;
                i2 = 0;
            }
        }
        if (z) {
            d9eVar.f(iZze + i3);
        } else {
            d9eVar.zzj();
        }
        this.i = i;
        return true;
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
