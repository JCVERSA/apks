package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public final class mfe implements c9e, kae {
    public long A;
    public int B;
    public jde C;
    public final vge a;
    public final int b;
    public final u4h c;
    public final u4h d;
    public final u4h e;
    public final u4h f;
    public final ArrayDeque g;
    public final qfe h;
    public final List i;
    public zzfww j;
    public int k;
    public int l;
    public long m;
    public int n;
    public u4h o;
    public int p;
    public int q;
    public int r;
    public int s;
    public boolean t;
    public boolean u;
    public long v;
    public f9e w;
    public lfe[] x;
    public long[][] y;
    public int z;

    public mfe() {
        this(vge.a, 16);
    }

    public static int g(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    public static int h(vfe vfeVar, long j) {
        int iA = vfeVar.a(j);
        return iA == -1 ? vfeVar.b(j) : iA;
    }

    public static long i(vfe vfeVar, long j, long j2) {
        int iH = h(vfeVar, j);
        return iH == -1 ? j2 : Math.min(vfeVar.c[iH], j2);
    }

    @Override
    public final z9e a(long j) {
        long j2;
        long j3;
        long jI;
        long j4;
        int iB;
        long j5 = j;
        lfe[] lfeVarArr = this.x;
        if (lfeVarArr.length == 0) {
            lae laeVar = lae.c;
            return new z9e(laeVar, laeVar);
        }
        int i = this.z;
        if (i != -1) {
            vfe vfeVar = lfeVarArr[i].b;
            int iH = h(vfeVar, j5);
            if (iH == -1) {
                lae laeVar2 = lae.c;
                return new z9e(laeVar2, laeVar2);
            }
            long[] jArr = vfeVar.f;
            long j6 = jArr[iH];
            long[] jArr2 = vfeVar.c;
            j2 = jArr2[iH];
            if (j6 >= j5 || iH >= vfeVar.b - 1 || (iB = vfeVar.b(j5)) == -1 || iB == iH) {
                j4 = -9223372036854775807L;
                jI = -1;
            } else {
                j4 = jArr[iB];
                jI = jArr2[iB];
            }
            j3 = j4;
            j5 = j6;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
            jI = -1;
        }
        int i2 = 0;
        while (true) {
            lfe[] lfeVarArr2 = this.x;
            if (i2 >= lfeVarArr2.length) {
                break;
            }
            if (i2 != this.z) {
                vfe vfeVar2 = lfeVarArr2[i2].b;
                long jI2 = i(vfeVar2, j5, j2);
                if (j3 != C.TIME_UNSET) {
                    jI = i(vfeVar2, j3, jI);
                }
                j2 = jI2;
            }
            i2++;
        }
        lae laeVar3 = new lae(j5, j2);
        return j3 == C.TIME_UNSET ? new z9e(laeVar3, laeVar3) : new z9e(laeVar3, new lae(j3, jI));
    }

    @Override
    public final void b(long j, long j2) {
        this.g.clear();
        this.n = 0;
        this.p = -1;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = false;
        if (j == 0) {
            if (this.k != 3) {
                j();
                return;
            } else {
                this.h.b();
                this.i.clear();
                return;
            }
        }
        for (lfe lfeVar : this.x) {
            vfe vfeVar = lfeVar.b;
            int iA = vfeVar.a(j2);
            if (iA == -1) {
                iA = vfeVar.b(j2);
            }
            lfeVar.e = iA;
            sae saeVar = lfeVar.d;
            if (saeVar != null) {
                saeVar.b();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:271:0x0094 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:274:0x017c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:276:0x0179 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x0179 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x007f  */
    /* JADX WARN: Code duplicated, block: B:38:0x008e  */
    /* JADX WARN: Code duplicated, block: B:77:0x0155  */
    /* JADX WARN: Code duplicated, block: B:79:0x0168  */
    /* JADX WARN: Code duplicated, block: B:81:0x0176  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int d(d9e d9eVar, y9e y9eVar) throws zzaz {
        int i;
        int i2;
        int[] iArr;
        int i3;
        int iB;
        int iA;
        int i4;
        boolean z;
        int i5;
        while (true) {
            int i6 = 1;
            while (true) {
                i = this.k;
                if (i != 0) {
                    break;
                }
                boolean z2 = i6;
                if (this.n == 0) {
                    u4h u4hVar = this.f;
                    if (!d9eVar.d(u4hVar.n(), 0, 8, z2)) {
                        if (this.B != 2 || (this.b & 2) == 0) {
                            return -1;
                        }
                        rae raeVarJ = this.w.j(0, 4);
                        jde jdeVar = this.C;
                        hre hreVar = jdeVar == null ? null : new hre(C.TIME_UNSET, jdeVar);
                        gpj gpjVar = new gpj();
                        gpjVar.w(hreVar);
                        raeVarJ.f(gpjVar.K());
                        this.w.zzG();
                        this.w.i(new jae(C.TIME_UNSET, 0L));
                        return -1;
                    }
                    this.n = 8;
                    u4hVar.l(0);
                    this.m = u4hVar.O();
                    this.l = u4hVar.A();
                }
                long j = this.m;
                if (j == 1) {
                    u4h u4hVar2 = this.f;
                    d9eVar.h(u4hVar2.n(), 8, 8);
                    this.n += 8;
                    this.m = u4hVar2.Q();
                } else if (j == 0) {
                    long jZzd = d9eVar.zzd();
                    if (jZzd == -1) {
                        mih mihVar = (mih) this.g.peek();
                        jZzd = mihVar != null ? mihVar.b : -1L;
                    }
                    if (jZzd != -1) {
                        this.m = (jZzd - d9eVar.zzf()) + ((long) this.n);
                    }
                }
                long j2 = this.m;
                int i7 = this.n;
                if (j2 < i7) {
                    throw zzaz.zzc("Atom size less than header length (unsupported).");
                }
                int i8 = this.l;
                if (i8 == 1836019574 || i8 == 1953653099 || i8 == 1835297121 || i8 == 1835626086 || i8 == 1937007212 || i8 == 1701082227 || i8 == 1835365473 || i8 == 1635284069) {
                    i5 = 1;
                    long jZzf = d9eVar.zzf();
                    long j3 = this.m;
                    long j4 = jZzf + j3;
                    long j5 = this.n;
                    if (j3 != j5 && this.l == 1835365473) {
                        u4h u4hVar3 = this.e;
                        u4hVar3.i(8);
                        d9eVar.i(u4hVar3.n(), 0, 8);
                        afe.g(u4hVar3);
                        d9eVar.f(u4hVar3.w());
                        d9eVar.zzj();
                    }
                    long j6 = j4 - j5;
                    this.g.push(new mih(this.l, j6));
                    if (this.m == this.n) {
                        k(j6);
                    } else {
                        j();
                    }
                } else if (i8 == 1835296868 || i8 == 1836476516 || i8 == 1751411826 || i8 == 1937011556 || i8 == 1937011827 || i8 == 1937011571 || i8 == 1668576371 || i8 == 1701606260 || i8 == 1937011555 || i8 == 1937011578 || i8 == 1937013298 || i8 == 1937007471 || i8 == 1668232756 || i8 == 1953196132 || i8 == 1718909296 || i8 == 1969517665 || i8 == 1801812339 || i8 == 1768715124) {
                    n7g.f(i7 == 8);
                    n7g.f(this.m <= 2147483647L);
                    u4h u4hVar4 = new u4h((int) this.m);
                    System.arraycopy(this.f.n(), 0, u4hVar4.n(), 0, 8);
                    this.o = u4hVar4;
                    i5 = 1;
                    this.k = 1;
                } else {
                    long jZzf2 = d9eVar.zzf();
                    long j7 = this.n;
                    long j8 = jZzf2 - j7;
                    if (this.l == 1836086884) {
                        this.C = new jde(0L, j8, C.TIME_UNSET, j8 + j7, this.m - j7);
                    }
                    this.o = null;
                    i5 = 1;
                    this.k = 1;
                }
                i6 = i5;
            }
            if (i != i6) {
                if (i != 2) {
                    this.h.a(d9eVar, y9eVar, this.i);
                    if (y9eVar.a == 0) {
                        j();
                    }
                    return i6;
                }
                long jZzf3 = d9eVar.zzf();
                int i9 = this.p;
                if (i9 == -1) {
                    int i10 = i6;
                    int i11 = i10;
                    int i12 = -1;
                    int i13 = -1;
                    long j9 = Long.MAX_VALUE;
                    long j10 = Long.MAX_VALUE;
                    long j11 = Long.MAX_VALUE;
                    int i14 = 0;
                    while (true) {
                        lfe[] lfeVarArr = this.x;
                        if (i14 >= lfeVarArr.length) {
                            break;
                        }
                        lfe lfeVar = lfeVarArr[i14];
                        int i15 = lfeVar.e;
                        vfe vfeVar = lfeVar.b;
                        if (i15 != vfeVar.b) {
                            long j12 = vfeVar.c[i15];
                            long[][] jArr = this.y;
                            int i16 = kfh.a;
                            long j13 = jArr[i14][i15];
                            long j14 = j12 - jZzf3;
                            int i17 = (j14 < 0 || j14 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) ? i6 : 0;
                            if (i17 == 0) {
                                if (i11 == 0) {
                                    i4 = 0;
                                } else {
                                    i11 = i17;
                                    i13 = i14;
                                    j11 = j14;
                                    j10 = j13;
                                }
                                if (j13 < j9) {
                                    i10 = i17;
                                    i12 = i14;
                                    j9 = j13;
                                }
                            } else {
                                i4 = i11;
                            }
                            if (i17 != i4 || j14 >= j11) {
                                i11 = i4;
                            } else {
                                i11 = i17;
                                i13 = i14;
                                j11 = j14;
                                j10 = j13;
                            }
                            if (j13 < j9) {
                                i10 = i17;
                                i12 = i14;
                                j9 = j13;
                            }
                        }
                        i14 += i6;
                    }
                    i9 = (j9 == Long.MAX_VALUE || i10 == 0 || j10 < j9 + 10485760) ? i13 : i12;
                    this.p = i9;
                    if (i9 == -1) {
                        return -1;
                    }
                }
                lfe lfeVar2 = this.x[i9];
                rae raeVar = lfeVar2.c;
                int i18 = lfeVar2.e;
                vfe vfeVar2 = lfeVar2.b;
                long j15 = vfeVar2.c[i18] + this.v;
                int[] iArr2 = vfeVar2.d;
                int i19 = iArr2[i18];
                sae saeVar = lfeVar2.d;
                long j16 = (j15 - jZzf3) + ((long) this.q);
                if (j16 < 0 || j16 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                    y9eVar.a = j15;
                    return 1;
                }
                sfe sfeVar = lfeVar2.a;
                if (sfeVar.h == 1) {
                    j16 += 8;
                    i19 -= 8;
                }
                int i20 = i19;
                d9eVar.f((int) j16);
                erj erjVar = sfeVar.g;
                String str = erjVar.o;
                if (!Objects.equals(str, "video/avc")) {
                    Objects.equals(str, "video/hevc");
                }
                this.t = true;
                int i21 = sfeVar.k;
                if (i21 == 0) {
                    if (MimeTypes.AUDIO_AC4.equals(str)) {
                        if (this.r == 0) {
                            u4h u4hVar5 = this.e;
                            a8e.c(i20, u4hVar5);
                            i2 = 7;
                            raeVar.d(u4hVar5, 7);
                            this.r += 7;
                        } else {
                            i2 = 7;
                        }
                        i20 += i2;
                    } else if (saeVar != null) {
                        saeVar.d(d9eVar);
                    }
                    while (true) {
                        int i22 = this.r;
                        if (i22 >= i20) {
                            break;
                        }
                        int iA2 = raeVar.a(d9eVar, i20 - i22, false);
                        this.q += iA2;
                        this.r += iA2;
                        this.s -= iA2;
                    }
                } else {
                    u4h u4hVar6 = this.d;
                    byte[] bArrN = u4hVar6.n();
                    bArrN[0] = 0;
                    bArrN[1] = 0;
                    bArrN[2] = 0;
                    int i23 = 4 - i21;
                    i20 += i23;
                    while (this.r < i20) {
                        int i24 = this.s;
                        if (i24 == 0) {
                            if (this.t) {
                                iArr = iArr2;
                            } else {
                                iArr = iArr2;
                                if (jzh.b(erjVar) + i21 <= iArr2[i18] - this.q) {
                                    iB = jzh.b(erjVar);
                                    i3 = i21 + iB;
                                }
                                d9eVar.h(bArrN, i23, i3);
                                this.q += i3;
                                u4hVar6.l(0);
                                iA = u4hVar6.A();
                                if (iA >= 0) {
                                    throw zzaz.zza("Invalid NAL length", null);
                                }
                                this.s = iA - iB;
                                u4h u4hVar7 = this.c;
                                u4hVar7.l(0);
                                raeVar.d(u4hVar7, 4);
                                this.r += 4;
                                if (iB > 0) {
                                    raeVar.d(u4hVar6, iB);
                                    this.r += iB;
                                    if (jzh.j(bArrN, 4, iB, erjVar)) {
                                        this.t = true;
                                    }
                                }
                            }
                            i3 = i21;
                            iB = 0;
                            d9eVar.h(bArrN, i23, i3);
                            this.q += i3;
                            u4hVar6.l(0);
                            iA = u4hVar6.A();
                            if (iA >= 0) {
                                throw zzaz.zza("Invalid NAL length", null);
                            }
                            this.s = iA - iB;
                            u4h u4hVar8 = this.c;
                            u4hVar8.l(0);
                            raeVar.d(u4hVar8, 4);
                            this.r += 4;
                            if (iB > 0) {
                                raeVar.d(u4hVar6, iB);
                                this.r += iB;
                                if (jzh.j(bArrN, 4, iB, erjVar)) {
                                    this.t = true;
                                }
                            }
                        } else {
                            iArr = iArr2;
                            int iA3 = raeVar.a(d9eVar, i24, false);
                            this.q += iA3;
                            this.r += iA3;
                            this.s -= iA3;
                        }
                        iArr2 = iArr;
                    }
                }
                long j17 = vfeVar2.f[i18];
                int i25 = vfeVar2.g[i18];
                if (!this.t) {
                    i25 |= 67108864;
                }
                if (saeVar != null) {
                    saeVar.c(raeVar, j17, i25, i20, 0, null);
                    if (i18 + 1 == vfeVar2.b) {
                        saeVar.a(raeVar, null);
                    }
                } else {
                    raeVar.g(j17, i25, i20, 0, null);
                }
                lfeVar2.e++;
                this.p = -1;
                this.q = 0;
                this.r = 0;
                this.s = 0;
                this.t = false;
                return 0;
            }
            long j18 = this.m - ((long) this.n);
            long jZzf4 = d9eVar.zzf() + j18;
            u4h u4hVar9 = this.o;
            if (u4hVar9 != null) {
                d9eVar.h(u4hVar9.n(), this.n, (int) j18);
                if (this.l == 1718909296) {
                    this.u = true;
                    u4hVar9.l(8);
                    int iG = g(u4hVar9.A());
                    if (iG == 0) {
                        u4hVar9.m(4);
                        do {
                            if (u4hVar9.u() <= 0) {
                                iG = 0;
                                break;
                            }
                            iG = g(u4hVar9.A());
                        } while (iG == 0);
                    }
                    this.B = iG;
                } else {
                    ArrayDeque arrayDeque = this.g;
                    if (!arrayDeque.isEmpty()) {
                        ((mih) arrayDeque.peek()).e(new kjh(this.l, u4hVar9));
                    }
                }
            } else {
                if (!this.u && this.l == 1835295092) {
                    this.B = 1;
                }
                if (j18 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                    d9eVar.f((int) j18);
                } else {
                    y9eVar.a = d9eVar.zzf() + j18;
                    z = true;
                }
                k(jZzf4);
                if (!z && this.k != 2) {
                    return 1;
                }
            }
            z = false;
            k(jZzf4);
            if (!z) {
            }
        }
    }

    @Override
    public final boolean e(d9e d9eVar) {
        oae oaeVarB = rfe.b(d9eVar, (this.b & 2) != 0);
        this.j = oaeVarB != null ? zzfww.zzo(oaeVarB) : zzfww.zzn();
        return oaeVarB == null;
    }

    @Override
    public final void f(f9e f9eVar) {
        if ((this.b & 16) == 0) {
            f9eVar = new che(f9eVar, this.a);
        }
        this.w = f9eVar;
    }

    public final void j() {
        this.k = 0;
        this.n = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void k(long j) {
        int i;
        int i2;
        mfe mfeVar;
        hre hreVar;
        long j2;
        q9e q9eVar;
        ArrayList arrayList;
        int i3;
        int i4;
        hre hreVarC;
        mfe mfeVar2 = this;
        int i5 = 0;
        int i6 = 1;
        while (true) {
            ArrayDeque arrayDeque = mfeVar2.g;
            if (arrayDeque.isEmpty() || ((mih) arrayDeque.peek()).b != j) {
                break;
            }
            mih mihVar = (mih) arrayDeque.pop();
            if (mihVar.a == 1836019574) {
                mih mihVarB = mihVar.b(Mp4Box.TYPE_meta);
                new ArrayList();
                hre hreVarB = mihVarB != null ? afe.b(mihVarB) : null;
                ArrayList arrayList2 = new ArrayList();
                boolean z = mfeVar2.B == i6 ? i6 : i5;
                q9e q9eVar2 = new q9e();
                kjh kjhVarC = mihVar.c(Mp4Box.TYPE_udta);
                if (kjhVarC != null) {
                    hre hreVarC2 = afe.c(kjhVarC);
                    q9eVar2.b(hreVarC2);
                    hreVar = hreVarC2;
                } else {
                    hreVar = null;
                }
                kjh kjhVarC2 = mihVar.c(Mp4Box.TYPE_mvhd);
                kjhVarC2.getClass();
                iqe[] iqeVarArr = new iqe[i6];
                iqeVarArr[i5] = afe.d(kjhVarC2.b);
                ArrayList arrayList3 = arrayList2;
                hre hreVar2 = new hre(C.TIME_UNSET, iqeVarArr);
                int i7 = mfeVar2.b;
                int i8 = i6 != (i7 & 1) ? i5 : i6;
                hre hreVar3 = hreVar2;
                hre hreVar4 = hreVar;
                boolean z2 = i8;
                q9e q9eVar3 = q9eVar2;
                List listF = afe.f(mihVar, q9eVar2, C.TIME_UNSET, null, z2, z, new m2i() {
                    @Override
                    public final Object apply(Object obj) {
                        return (sfe) obj;
                    }
                });
                String strA = jfe.a(listF);
                long j3 = -9223372036854775807L;
                int i9 = 0;
                int i10 = 0;
                int size = -1;
                while (true) {
                    j2 = 0;
                    if (i9 >= listF.size()) {
                        break;
                    }
                    vfe vfeVar = (vfe) listF.get(i9);
                    int i11 = vfeVar.b;
                    if (i11 == 0) {
                        arrayList = arrayList3;
                        q9eVar = q9eVar3;
                        hreVar4 = hreVar4;
                        i3 = i6;
                    } else {
                        sfe sfeVar = vfeVar.a;
                        f9e f9eVar = mfeVar2.w;
                        int i12 = i10 + 1;
                        int i13 = sfeVar.b;
                        lfe lfeVar = new lfe(sfeVar, vfeVar, f9eVar.j(i10, i13));
                        long j4 = sfeVar.e;
                        if (j4 == C.TIME_UNSET) {
                            j4 = vfeVar.h;
                        }
                        rae raeVar = lfeVar.c;
                        raeVar.c(j4);
                        long jMax = Math.max(j3, j4);
                        erj erjVar = sfeVar.g;
                        int i14 = MimeTypes.AUDIO_TRUEHD.equals(erjVar.o) ? vfeVar.e * 16 : vfeVar.e + 30;
                        gpj gpjVarB = erjVar.b();
                        gpjVarB.t(i14);
                        if (i13 == 2) {
                            int i15 = erjVar.f;
                            if ((i7 & 8) != 0) {
                                i15 |= size == -1 ? 1 : 2;
                            }
                            if (erjVar.x == -1.0f && j4 > 0) {
                                gpjVarB.k(i11 / (j4 / 1000000.0f));
                            }
                            gpjVarB.C(i15);
                            i13 = 2;
                        }
                        if (i13 == 1 && q9eVar3.a()) {
                            q9eVar = q9eVar3;
                            gpjVarB.i(q9eVar.a);
                            gpjVarB.j(q9eVar.b);
                        } else {
                            q9eVar = q9eVar3;
                        }
                        List list = mfeVar2.i;
                        hre[] hreVarArr = {list.isEmpty() ? null : new hre(list), hreVar4, hreVar3};
                        hre hreVar5 = new hre(C.TIME_UNSET, new iqe[0]);
                        if (hreVarB != null) {
                            int i16 = 0;
                            while (i16 < hreVarB.a()) {
                                iqe iqeVarB = hreVarB.b(i16);
                                if (iqeVarB instanceof mhh) {
                                    mhh mhhVar = (mhh) iqeVarB;
                                    if (!mhhVar.a.equals("com.android.capture.fps")) {
                                        i4 = 1;
                                        hreVarC = hreVar5.c(mhhVar);
                                    } else if (i13 == 2) {
                                        i4 = 1;
                                        hreVarC = hreVar5.c(mhhVar);
                                    } else {
                                        i4 = 1;
                                    }
                                    hreVar5 = hreVarC;
                                } else {
                                    i4 = 1;
                                }
                                i16 += i4;
                            }
                        }
                        for (int i17 = 0; i17 < 3; i17++) {
                            hreVar5 = hreVar5.d(hreVarArr[i17]);
                        }
                        if (hreVar5.a() > 0) {
                            gpjVarB.w(hreVar5);
                        }
                        gpjVarB.e(strA);
                        raeVar.f(gpjVarB.K());
                        if (i13 == 2 && size == -1) {
                            size = arrayList3.size();
                        }
                        arrayList = arrayList3;
                        arrayList.add(lfeVar);
                        i10 = i12;
                        j3 = jMax;
                        i3 = 1;
                    }
                    i9++;
                    arrayList3 = arrayList;
                    i6 = i3;
                    hreVar4 = hreVar4;
                    hreVar3 = hreVar3;
                    listF = listF;
                    arrayDeque = arrayDeque;
                    mfeVar2 = this;
                    q9eVar3 = q9eVar;
                }
                mfeVar = mfeVar2;
                ArrayDeque arrayDeque2 = arrayDeque;
                mfeVar.z = size;
                mfeVar.A = j3;
                lfe[] lfeVarArr = (lfe[]) arrayList3.toArray(new lfe[0]);
                mfeVar.x = lfeVarArr;
                int length = lfeVarArr.length;
                long[][] jArr = new long[length][];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i18 = 0; i18 < lfeVarArr.length; i18++) {
                    jArr[i18] = new long[lfeVarArr[i18].b.b];
                    jArr2[i18] = lfeVarArr[i18].b.f[0];
                }
                i = 0;
                int i19 = 0;
                while (i19 < lfeVarArr.length) {
                    long j5 = Long.MAX_VALUE;
                    int i20 = -1;
                    for (int i21 = 0; i21 < lfeVarArr.length; i21++) {
                        if (!zArr[i21]) {
                            long j6 = jArr2[i21];
                            if (j6 <= j5) {
                                i20 = i21;
                                j5 = j6;
                            }
                        }
                    }
                    int i22 = iArr[i20];
                    long[] jArr3 = jArr[i20];
                    jArr3[i22] = j2;
                    vfe vfeVar2 = lfeVarArr[i20].b;
                    j2 += (long) vfeVar2.d[i22];
                    int i23 = i22 + 1;
                    iArr[i20] = i23;
                    if (i23 < jArr3.length) {
                        jArr2[i20] = vfeVar2.f[i23];
                    } else {
                        zArr[i20] = true;
                        i19++;
                    }
                }
                i2 = 1;
                mfeVar.y = jArr;
                mfeVar.w.zzG();
                mfeVar.w.i(mfeVar);
                arrayDeque2.clear();
                mfeVar.k = 2;
            } else {
                i = i5;
                i2 = i6;
                mfeVar = mfeVar2;
                if (!arrayDeque.isEmpty()) {
                    ((mih) arrayDeque.peek()).d(mihVar);
                }
            }
            mfeVar2 = mfeVar;
            i5 = i;
            i6 = i2;
        }
        if (mfeVar2.k != 2) {
            j();
        }
    }

    @Override
    public final long zza() {
        return this.A;
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return this.j;
    }

    @Override
    public final boolean zzh() {
        return true;
    }

    public mfe(vge vgeVar, int i) {
        this.a = vgeVar;
        this.b = i;
        this.j = zzfww.zzn();
        this.k = (i & 4) != 0 ? 3 : 0;
        this.h = new qfe();
        this.i = new ArrayList();
        this.f = new u4h(16);
        this.g = new ArrayDeque();
        this.c = new u4h(jzh.a);
        this.d = new u4h(6);
        this.e = new u4h();
        this.p = -1;
        this.w = f9e.C6;
        this.x = new lfe[0];
    }
}
