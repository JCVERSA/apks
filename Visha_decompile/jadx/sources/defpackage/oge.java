package defpackage;

import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import java.util.ArrayList;
import java.util.Arrays;

public final class oge extends mge {
    public nge n;
    public int o;
    public boolean p;
    public wae q;
    public uae r;

    @Override
    public final long a(u4h u4hVar) {
        if ((u4hVar.n()[0] & 1) == 1) {
            return -1L;
        }
        byte b = u4hVar.n()[0];
        nge ngeVar = this.n;
        n7g.b(ngeVar);
        int i = !ngeVar.d[(b >> 1) & (255 >>> (8 - ngeVar.e))].a ? ngeVar.a.e : ngeVar.a.f;
        int i2 = this.p ? (this.o + i) / 4 : 0;
        if (u4hVar.v() < u4hVar.x() + 4) {
            byte[] bArrCopyOf = Arrays.copyOf(u4hVar.n(), u4hVar.x() + 4);
            u4hVar.j(bArrCopyOf, bArrCopyOf.length);
        } else {
            u4hVar.k(u4hVar.x() + 4);
        }
        long j = i2;
        byte[] bArrN = u4hVar.n();
        bArrN[u4hVar.x() - 4] = (byte) (j & 255);
        bArrN[u4hVar.x() - 3] = (byte) ((j >>> 8) & 255);
        bArrN[u4hVar.x() - 2] = (byte) ((j >>> 16) & 255);
        bArrN[u4hVar.x() - 1] = (byte) ((j >>> 24) & 255);
        this.p = true;
        this.o = i;
        return j;
    }

    @Override
    public final void b(boolean z) {
        super.b(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }

    /* JADX WARN: Code duplicated, block: B:167:0x03c4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:169:0x03c6  */
    @Override
    public final boolean c(u4h u4hVar, long j, jge jgeVar) throws zzaz {
        nge ngeVar;
        int i;
        int iB;
        int i2;
        int i3;
        if (this.n != null) {
            jgeVar.a.getClass();
            return false;
        }
        wae waeVar = this.q;
        int i4 = 4;
        if (waeVar != null) {
            uae uaeVar = this.r;
            if (uaeVar == null) {
                this.r = xae.c(u4hVar, true, true);
            } else {
                byte[] bArr = new byte[u4hVar.x()];
                System.arraycopy(u4hVar.n(), 0, bArr, 0, u4hVar.x());
                int i5 = waeVar.a;
                int i6 = 5;
                xae.d(5, u4hVar, false);
                int iG = u4hVar.G() + 1;
                tae taeVar = new tae(u4hVar.n());
                taeVar.c(u4hVar.w() * 8);
                int i7 = 0;
                while (true) {
                    int i8 = 2;
                    int i9 = 16;
                    if (i7 >= iG) {
                        wae waeVar2 = waeVar;
                        int i10 = 6;
                        int iB2 = taeVar.b(6) + 1;
                        for (int i11 = 0; i11 < iB2; i11++) {
                            if (taeVar.b(16) != 0) {
                                throw zzaz.zza("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int i12 = 1;
                        int iB3 = taeVar.b(6) + 1;
                        int i13 = 0;
                        while (true) {
                            int i14 = 3;
                            if (i13 >= iB3) {
                                int i15 = 1;
                                int iB4 = taeVar.b(i10) + 1;
                                int i16 = 0;
                                while (i16 < iB4) {
                                    if (taeVar.b(16) > 2) {
                                        throw zzaz.zza("residueType greater than 2 is not decodable", null);
                                    }
                                    taeVar.c(24);
                                    taeVar.c(24);
                                    taeVar.c(24);
                                    int iB5 = taeVar.b(i10) + i15;
                                    int i17 = 8;
                                    taeVar.c(8);
                                    int[] iArr = new int[iB5];
                                    for (int i18 = 0; i18 < iB5; i18++) {
                                        iArr[i18] = ((taeVar.d() ? taeVar.b(5) : 0) * 8) + taeVar.b(3);
                                    }
                                    int i19 = 0;
                                    while (i19 < iB5) {
                                        int i20 = 0;
                                        while (i20 < i17) {
                                            if ((iArr[i19] & (1 << i20)) != 0) {
                                                taeVar.c(i17);
                                            }
                                            i20++;
                                            i17 = 8;
                                        }
                                        i19++;
                                        i17 = 8;
                                    }
                                    i16++;
                                    i10 = 6;
                                    i15 = 1;
                                }
                                int iB6 = taeVar.b(i10) + 1;
                                for (int i21 = 0; i21 < iB6; i21++) {
                                    int iB7 = taeVar.b(16);
                                    if (iB7 != 0) {
                                        zrg.c("VorbisUtil", "mapping type other than 0 not supported: " + iB7);
                                    } else {
                                        if (taeVar.d()) {
                                            i = 1;
                                            iB = taeVar.b(4) + 1;
                                        } else {
                                            i = 1;
                                            iB = 1;
                                        }
                                        if (taeVar.d()) {
                                            int iB8 = taeVar.b(8) + i;
                                            for (int i22 = 0; i22 < iB8; i22++) {
                                                int i23 = i5 - 1;
                                                taeVar.c(xae.a(i23));
                                                taeVar.c(xae.a(i23));
                                            }
                                        }
                                        if (taeVar.b(2) != 0) {
                                            throw zzaz.zza("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                        if (iB > 1) {
                                            for (int i24 = 0; i24 < i5; i24++) {
                                                taeVar.c(4);
                                            }
                                        }
                                        for (int i25 = 0; i25 < iB; i25++) {
                                            taeVar.c(8);
                                            taeVar.c(8);
                                            taeVar.c(8);
                                        }
                                    }
                                }
                                int iB9 = taeVar.b(6);
                                int i26 = iB9 + 1;
                                vae[] vaeVarArr = new vae[i26];
                                for (int i27 = 0; i27 < i26; i27++) {
                                    vaeVarArr[i27] = new vae(taeVar.d(), taeVar.b(16), taeVar.b(16), taeVar.b(8));
                                }
                                if (!taeVar.d()) {
                                    throw zzaz.zza("framing bit after modes not set as expected", null);
                                }
                                ngeVar = new nge(waeVar2, uaeVar, bArr, vaeVarArr, xae.a(iB9));
                                break;
                            }
                            int iB10 = taeVar.b(i9);
                            if (iB10 == 0) {
                                i2 = iB3;
                                int i28 = 8;
                                taeVar.c(8);
                                taeVar.c(16);
                                taeVar.c(16);
                                taeVar.c(6);
                                taeVar.c(8);
                                int iB11 = taeVar.b(4) + 1;
                                int i29 = 0;
                                while (i29 < iB11) {
                                    taeVar.c(i28);
                                    i29++;
                                    i28 = 8;
                                }
                            } else {
                                if (iB10 != i12) {
                                    throw zzaz.zza("floor type greater than 1 not decodable: " + iB10, null);
                                }
                                int iB12 = taeVar.b(i6);
                                int[] iArr2 = new int[iB12];
                                int i30 = -1;
                                for (int i31 = 0; i31 < iB12; i31++) {
                                    int iB13 = taeVar.b(4);
                                    iArr2[i31] = iB13;
                                    if (iB13 > i30) {
                                        i30 = iB13;
                                    }
                                }
                                int i32 = i30 + 1;
                                int[] iArr3 = new int[i32];
                                int i33 = 0;
                                while (i33 < i32) {
                                    iArr3[i33] = taeVar.b(i14) + 1;
                                    int iB14 = taeVar.b(i8);
                                    if (iB14 > 0) {
                                        i3 = 8;
                                        taeVar.c(8);
                                    } else {
                                        i3 = 8;
                                    }
                                    int i34 = iB3;
                                    int i35 = 0;
                                    for (int i36 = 1; i35 < (i36 << iB14); i36 = 1) {
                                        taeVar.c(i3);
                                        i35++;
                                        i3 = 8;
                                    }
                                    i33++;
                                    iB3 = i34;
                                    i8 = 2;
                                    i14 = 3;
                                }
                                i2 = iB3;
                                taeVar.c(i8);
                                int iB15 = taeVar.b(4);
                                int i37 = 0;
                                int i38 = 0;
                                for (int i39 = 0; i39 < iB12; i39++) {
                                    i37 += iArr3[iArr2[i39]];
                                    while (i38 < i37) {
                                        taeVar.c(iB15);
                                        i38++;
                                    }
                                }
                            }
                            i13++;
                            iB3 = i2;
                            i10 = 6;
                            i8 = 2;
                            i9 = 16;
                            i12 = 1;
                            i6 = 5;
                        }
                    } else {
                        if (taeVar.b(24) != 5653314) {
                            throw zzaz.zza("expected code book to start with [0x56, 0x43, 0x42] at " + taeVar.a(), null);
                        }
                        int iB16 = taeVar.b(16);
                        int iB17 = taeVar.b(24);
                        if (taeVar.d()) {
                            taeVar.c(5);
                            for (int iB18 = 0; iB18 < iB17; iB18 += taeVar.b(xae.a(iB17 - iB18))) {
                            }
                        } else {
                            boolean zD = taeVar.d();
                            for (int i40 = 0; i40 < iB17; i40++) {
                                if (!zD) {
                                    taeVar.c(5);
                                } else if (taeVar.d()) {
                                    taeVar.c(5);
                                }
                            }
                        }
                        int iB19 = taeVar.b(i4);
                        if (iB19 > 2) {
                            throw zzaz.zza("lookup type greater than 2 not decodable: " + iB19, null);
                        }
                        if (iB19 != 1) {
                            if (iB19 != 2) {
                                waeVar = waeVar;
                            }
                            i7++;
                            waeVar = waeVar;
                            i4 = 4;
                        } else {
                            i8 = iB19;
                        }
                        taeVar.c(32);
                        taeVar.c(32);
                        int iB20 = taeVar.b(i4) + 1;
                        taeVar.c(1);
                        taeVar.c((int) ((i8 == 1 ? iB16 != 0 ? (long) Math.floor(Math.pow(iB17, 1.0d / ((double) iB16))) : 0L : ((long) iB16) * ((long) iB17)) * ((long) iB20)));
                        i7++;
                        waeVar = waeVar;
                        i4 = 4;
                    }
                }
            }
            this.n = ngeVar;
            if (ngeVar == null) {
                return true;
            }
            ArrayList arrayList = new ArrayList();
            wae waeVar3 = ngeVar.a;
            arrayList.add(waeVar3.g);
            arrayList.add(ngeVar.c);
            hre hreVarB = xae.b(zzfww.zzm(ngeVar.b.a));
            gpj gpjVar = new gpj();
            gpjVar.e(MimeTypes.AUDIO_OGG);
            gpjVar.E("audio/vorbis");
            gpjVar.a(waeVar3.d);
            gpjVar.y(waeVar3.c);
            gpjVar.b(waeVar3.a);
            gpjVar.F(waeVar3.b);
            gpjVar.p(arrayList);
            gpjVar.w(hreVarB);
            jgeVar.a = gpjVar.K();
            return true;
        }
        xae.d(1, u4hVar, false);
        int iD = u4hVar.D();
        int iG2 = u4hVar.G();
        int iD2 = u4hVar.D();
        int iC = u4hVar.C();
        int i41 = iC <= 0 ? -1 : iC;
        int iC2 = u4hVar.C();
        int i42 = iC2 <= 0 ? -1 : iC2;
        int iC3 = u4hVar.C();
        int i43 = iC3 <= 0 ? -1 : iC3;
        int iG3 = u4hVar.G();
        this.q = new wae(iD, iG2, iD2, i41, i42, i43, (int) Math.pow(2.0d, iG3 & 15), (int) Math.pow(2.0d, (iG3 & 240) >> 4), 1 == (u4hVar.G() & 1), Arrays.copyOf(u4hVar.n(), u4hVar.x()));
        ngeVar = null;
        this.n = ngeVar;
        if (ngeVar == null) {
            return true;
        }
        ArrayList arrayList2 = new ArrayList();
        wae waeVar4 = ngeVar.a;
        arrayList2.add(waeVar4.g);
        arrayList2.add(ngeVar.c);
        hre hreVarB2 = xae.b(zzfww.zzm(ngeVar.b.a));
        gpj gpjVar2 = new gpj();
        gpjVar2.e(MimeTypes.AUDIO_OGG);
        gpjVar2.E("audio/vorbis");
        gpjVar2.a(waeVar4.d);
        gpjVar2.y(waeVar4.c);
        gpjVar2.b(waeVar4.a);
        gpjVar2.F(waeVar4.b);
        gpjVar2.p(arrayList2);
        gpjVar2.w(hreVarB2);
        jgeVar.a = gpjVar2.K();
        return true;
    }

    @Override
    public final void h(long j) {
        super.h(j);
        this.p = j != 0;
        wae waeVar = this.q;
        this.o = waeVar != null ? waeVar.e : 0;
    }
}
