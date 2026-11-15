package defpackage;

import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.google.android.gms.internal.ads.s7;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzs;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

public abstract class afe {
    public static final byte[] a;

    static {
        int i = kfh.a;
        a = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static int a(int i) {
        return (i >> 24) & 255;
    }

    public static hre b(mih mihVar) {
        mhh mhhVar;
        kjh kjhVarC = mihVar.c(Mp4Box.TYPE_hdlr);
        kjh kjhVarC2 = mihVar.c(Mp4Box.TYPE_keys);
        kjh kjhVarC3 = mihVar.c(Mp4Box.TYPE_ilst);
        if (kjhVarC != null && kjhVarC2 != null && kjhVarC3 != null && i(kjhVarC.b) == 1835299937) {
            u4h u4hVar = kjhVarC2.b;
            u4hVar.l(12);
            int iA = u4hVar.A();
            String[] strArr = new String[iA];
            for (int i = 0; i < iA; i++) {
                int iA2 = u4hVar.A();
                u4hVar.m(4);
                strArr[i] = u4hVar.b(iA2 - 8, StandardCharsets.UTF_8);
            }
            u4h u4hVar2 = kjhVarC3.b;
            u4hVar2.l(8);
            ArrayList arrayList = new ArrayList();
            while (u4hVar2.u() > 8) {
                int iW = u4hVar2.w() + u4hVar2.A();
                int iA3 = u4hVar2.A() - 1;
                if (iA3 < 0 || iA3 >= iA) {
                    zrg.f("BoxParsers", "Skipped metadata with unknown key index: " + iA3);
                } else {
                    String str = strArr[iA3];
                    while (true) {
                        int iW2 = u4hVar2.w();
                        if (iW2 >= iW) {
                            mhhVar = null;
                            break;
                        }
                        int iA4 = u4hVar2.A();
                        if (u4hVar2.A() == 1684108385) {
                            int iA5 = u4hVar2.A();
                            int iA6 = u4hVar2.A();
                            int i2 = iA4 - 16;
                            byte[] bArr = new byte[i2];
                            u4hVar2.h(bArr, 0, i2);
                            mhhVar = new mhh(str, bArr, iA6, iA5);
                            break;
                        }
                        u4hVar2.l(iW2 + iA4);
                    }
                    if (mhhVar != null) {
                        arrayList.add(mhhVar);
                    }
                }
                u4hVar2.l(iW);
            }
            if (!arrayList.isEmpty()) {
                return new hre(arrayList);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00d9  */
    public static hre c(kjh kjhVar) {
        int iH;
        u4h u4hVar = kjhVar.b;
        u4hVar.l(8);
        hre hreVar = new hre(C.TIME_UNSET, new iqe[0]);
        while (u4hVar.u() >= 8) {
            int iW = u4hVar.w();
            int iA = u4hVar.A() + iW;
            int iA2 = u4hVar.A();
            hre hreVar2 = null;
            if (iA2 == 1835365473) {
                u4hVar.l(iW);
                u4hVar.m(8);
                g(u4hVar);
                while (u4hVar.w() < iA) {
                    int iW2 = u4hVar.w();
                    int iA3 = u4hVar.A() + iW2;
                    if (u4hVar.A() == 1768715124) {
                        u4hVar.l(iW2);
                        u4hVar.m(8);
                        ArrayList arrayList = new ArrayList();
                        while (u4hVar.w() < iA3) {
                            iqe iqeVarA = ife.a(u4hVar);
                            if (iqeVarA != null) {
                                arrayList.add(iqeVarA);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            hreVar2 = new hre(arrayList);
                            break;
                        }
                        break;
                    }
                    u4hVar.l(iA3);
                }
                hreVar = hreVar.d(hreVar2);
            } else if (iA2 == 1936553057) {
                u4hVar.l(iW);
                u4hVar.m(12);
                while (u4hVar.w() < iA) {
                    int iW3 = u4hVar.w();
                    int iA4 = u4hVar.A();
                    if (u4hVar.A() == 1935766900) {
                        if (iA4 < 16) {
                            break;
                        }
                        u4hVar.m(4);
                        int i = -1;
                        int i2 = 0;
                        for (int i3 = 0; i3 < 2; i3++) {
                            int iG = u4hVar.G();
                            int iG2 = u4hVar.G();
                            if (iG == 0) {
                                i = iG2;
                            } else if (iG == 1) {
                                i2 = iG2;
                            }
                        }
                        if (i == 12) {
                            iH = 240;
                        } else if (i == 13) {
                            iH = 120;
                        } else if (i == 21 && u4hVar.u() >= 8 && u4hVar.w() + 8 <= iA) {
                            int iA5 = u4hVar.A();
                            int iA6 = u4hVar.A();
                            if (iA5 < 12 || iA6 != 1936877170) {
                                iH = -2147483647;
                            } else {
                                iH = u4hVar.H();
                            }
                        } else {
                            iH = -2147483647;
                        }
                        if (iH == -2147483647) {
                            break;
                        }
                        hreVar2 = new hre(C.TIME_UNSET, new mde(iH, i2));
                        break;
                    }
                    u4hVar.l(iW3 + iA4);
                }
                hreVar = hreVar.d(hreVar2);
            } else if (iA2 == -1451722374) {
                hreVar = hreVar.d(l(u4hVar));
            }
            u4hVar.l(iA);
        }
        return hreVar;
    }

    public static qnh d(u4h u4hVar) {
        long jN;
        long jN2;
        u4hVar.l(8);
        if (a(u4hVar.A()) == 0) {
            jN = u4hVar.O();
            jN2 = u4hVar.O();
        } else {
            jN = u4hVar.N();
            jN2 = u4hVar.N();
        }
        return new qnh(jN, jN2, u4hVar.O());
    }

    /* JADX WARN: Code duplicated, block: B:100:0x026d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0276 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x0278  */
    /* JADX WARN: Code duplicated, block: B:105:0x0284  */
    /* JADX WARN: Code duplicated, block: B:110:0x02af A[DONT_INVERT, LOOP:14: B:110:0x02af->B:114:0x02b9, LOOP_START, PHI: r19
      0x02af: PHI (r19v6 int) = (r19v2 int), (r19v7 int) binds: [B:109:0x02ad, B:114:0x02b9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:111:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:114:0x02b9 A[LOOP:14: B:110:0x02af->B:114:0x02b9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:115:0x02c0 A[EDGE_INSN: B:115:0x02c0->B:116:0x02c1 BREAK  A[LOOP:14: B:110:0x02af->B:114:0x02b9]] */
    /* JADX WARN: Code duplicated, block: B:117:0x02c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x02c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x02c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x02c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x02cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:123:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:124:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:126:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:128:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:129:0x0301  */
    /* JADX WARN: Code duplicated, block: B:130:0x0302 A[PHI: r1
      0x0302: PHI (r1v11 int) = (r1v10 int), (r1v14 int) binds: [B:116:0x02c1, B:129:0x0301] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:133:0x034d  */
    /* JADX WARN: Code duplicated, block: B:134:0x0350  */
    /* JADX WARN: Code duplicated, block: B:282:0x02a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:283:0x0205 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:285:0x0285 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:287:0x01fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:288:0x01f3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:290:0x0234 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:0x02b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:0x02c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x01b0 A[PHI: r9
      0x01b0: PHI (r9v5 int) = (r9v4 int), (r9v4 int), (r9v27 int), (r9v4 int) binds: [B:40:0x00f3, B:47:0x010f, B:64:0x01af, B:46:0x010d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:68:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:70:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:72:0x01de A[LOOP:12: B:69:0x01d6->B:72:0x01de, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x021f  */
    /* JADX WARN: Code duplicated, block: B:80:0x0224 A[ADDED_TO_REGION, LOOP:13: B:80:0x0224->B:82:0x0228, LOOP_START, PHI: r12 r19 r30
      0x0224: PHI (r12v17 int) = (r12v14 int), (r12v18 int) binds: [B:78:0x0221, B:82:0x0228] A[DONT_GENERATE, DONT_INLINE]
      0x0224: PHI (r19v9 int) = (r19v2 int), (r19v10 int) binds: [B:78:0x0221, B:82:0x0228] A[DONT_GENERATE, DONT_INLINE]
      0x0224: PHI (r30v3 int) = (r30v1 int), (r30v7 int) binds: [B:78:0x0221, B:82:0x0228] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:81:0x0226 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x0228 A[LOOP:13: B:80:0x0224->B:82:0x0228, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:88:0x0245  */
    /* JADX WARN: Code duplicated, block: B:89:0x0248  */
    /* JADX WARN: Code duplicated, block: B:92:0x0251  */
    /* JADX WARN: Code duplicated, block: B:93:0x0253  */
    /* JADX WARN: Code duplicated, block: B:96:0x0258  */
    /* JADX WARN: Code duplicated, block: B:98:0x025f  */
    public static vfe e(sfe sfeVar, mih mihVar, q9e q9eVar) throws zzaz {
        oee xeeVar;
        boolean z;
        int iJ;
        int iJ2;
        int iJ3;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        long[] jArrCopyOf2;
        int[] iArrCopyOf2;
        int i;
        sfe sfeVar2;
        int iJ4;
        int i2;
        int i3;
        long j;
        long j2;
        int i4;
        int iJ5;
        int i5;
        boolean z2;
        int i6;
        int i7;
        int i8;
        int i9;
        long[] jArr;
        int[] iArr;
        long j3;
        int i10;
        long[] jArr2;
        int[] iArr2;
        String str;
        long j4;
        boolean zA;
        int i11;
        int iA;
        int iZzc;
        int i12;
        int i13;
        int iA2;
        int iJ6;
        int[] iArr3;
        int i14;
        long j5;
        sfe sfeVar3;
        int[] iArr4;
        long[] jArr3;
        int i15;
        sfe sfeVarA;
        long[] jArr4;
        int[] iArr5;
        int i16;
        int i17;
        int i18;
        int[] iArr6;
        int i19;
        int length;
        long j6;
        sfe sfeVarA2 = sfeVar;
        kjh kjhVarC = mihVar.c(Mp4Box.TYPE_stsz);
        if (kjhVarC != null) {
            xeeVar = new wee(kjhVarC, sfeVarA2.g);
        } else {
            kjh kjhVarC2 = mihVar.c(Mp4Box.TYPE_stz2);
            if (kjhVarC2 == null) {
                throw zzaz.zza("Track has no sample table size information", null);
            }
            xeeVar = new xee(kjhVarC2);
        }
        int iZzb = xeeVar.zzb();
        if (iZzb == 0) {
            return new vfe(sfeVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        if (sfeVarA2.b == 2) {
            long j7 = sfeVarA2.f;
            if (j7 > 0) {
                gpj gpjVarB = sfeVarA2.g.b();
                gpjVarB.k(iZzb / (j7 / 1000000.0f));
                sfeVarA2 = sfeVarA2.a(gpjVarB.K());
            }
        }
        sfe sfeVar4 = sfeVarA2;
        kjh kjhVarC3 = mihVar.c(Mp4Box.TYPE_stco);
        if (kjhVarC3 == null) {
            kjhVarC3 = mihVar.c(Mp4Box.TYPE_co64);
            kjhVarC3.getClass();
            z = true;
        } else {
            z = false;
        }
        kjh kjhVarC4 = mihVar.c(Mp4Box.TYPE_stsc);
        kjhVarC4.getClass();
        u4h u4hVar = kjhVarC4.b;
        kjh kjhVarC5 = mihVar.c(Mp4Box.TYPE_stts);
        kjhVarC5.getClass();
        u4h u4hVar2 = kjhVarC5.b;
        kjh kjhVarC6 = mihVar.c(Mp4Box.TYPE_stss);
        u4h u4hVar3 = kjhVarC6 != null ? kjhVarC6.b : null;
        kjh kjhVarC7 = mihVar.c(Mp4Box.TYPE_ctts);
        u4h u4hVar4 = kjhVarC7 != null ? kjhVarC7.b : null;
        kee keeVar = new kee(u4hVar, kjhVarC3.b, z);
        u4hVar2.l(12);
        int iJ7 = u4hVar2.J() - 1;
        int iJ8 = u4hVar2.J();
        int iJ9 = u4hVar2.J();
        if (u4hVar4 != null) {
            u4hVar4.l(12);
            iJ = u4hVar4.J();
        } else {
            iJ = 0;
        }
        if (u4hVar3 != null) {
            u4hVar3.l(12);
            iJ3 = u4hVar3.J();
            if (iJ3 > 0) {
                iJ2 = u4hVar3.J() - 1;
            } else {
                iJ2 = -1;
                u4hVar3 = null;
            }
        } else {
            iJ2 = -1;
            iJ3 = 0;
        }
        int iZza = xeeVar.zza();
        erj erjVar = sfeVar4.g;
        if (iZza != -1) {
            String str2 = erjVar.o;
            if ((!"audio/raw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/g711-alaw".equals(str2)) || iJ7 != 0) {
                jArrCopyOf = new long[iZzb];
                iArrCopyOf = new int[iZzb];
                jArrCopyOf2 = new long[iZzb];
                iArrCopyOf2 = new int[iZzb];
                i = iJ7;
                sfeVar2 = sfeVar4;
                iJ4 = iJ2;
                i2 = 0;
                i3 = 0;
                j = 0;
                j2 = 0;
                i4 = 0;
                iJ5 = 0;
                i5 = 0;
                while (true) {
                    if (i5 >= iZzb) {
                        iJ8 = iJ8;
                        break;
                    }
                    j4 = j;
                    zA = true;
                    while (true) {
                        if (i4 != 0) {
                            i11 = i4;
                            break;
                        }
                        zA = keeVar.a();
                        if (!zA) {
                            i11 = 0;
                            break;
                        }
                        int i20 = iJ8;
                        long j8 = keeVar.d;
                        i4 = keeVar.c;
                        j4 = j8;
                        iJ8 = i20;
                        iJ9 = iJ9;
                        iZzb = iZzb;
                    }
                    if (!zA) {
                        zrg.f("BoxParsers", "Unexpected end of chunk data");
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i5);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i5);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i5);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i5);
                        iZzb = i5;
                        break;
                    }
                    iA = i2;
                    if (u4hVar4 != null) {
                        while (iJ5 == 0) {
                            if (iJ <= 0) {
                                iJ5 = 0;
                                break;
                            }
                            iJ--;
                            iJ5 = u4hVar4.J();
                            iA = u4hVar4.A();
                        }
                        iJ5--;
                    }
                    jArrCopyOf[i5] = j4;
                    iZzc = xeeVar.zzc();
                    iArrCopyOf[i5] = iZzc;
                    if (iZzc > i3) {
                        i12 = iZzc;
                    } else {
                        i12 = i3;
                    }
                    jArrCopyOf2[i5] = j2 + ((long) iA);
                    if (u4hVar3 == null) {
                        i13 = 1;
                    } else {
                        i13 = 0;
                    }
                    iArrCopyOf2[i5] = i13;
                    if (i5 == iJ4) {
                        iArrCopyOf2[i5] = 1;
                        iJ3--;
                        if (iJ3 > 0) {
                            u4hVar3.getClass();
                            iJ4 = u4hVar3.J() - 1;
                        }
                    }
                    int i21 = iJ3;
                    long[] jArr5 = jArrCopyOf;
                    iA2 = iJ9;
                    j2 += (long) iA2;
                    iJ6 = iJ8 - 1;
                    if (iJ6 == 0) {
                        if (i > 0) {
                            iJ6 = u4hVar2.J();
                            i--;
                            iA2 = u4hVar2.A();
                        } else {
                            iJ6 = 0;
                        }
                    }
                    int i22 = iJ6;
                    long j9 = j4 + ((long) iArrCopyOf[i5]);
                    i4 = i11 - 1;
                    i5++;
                    iJ9 = iA2;
                    iZzb = iZzb;
                    i3 = i12;
                    i2 = iA;
                    iJ8 = i22;
                    iJ3 = i21;
                    jArrCopyOf = jArr5;
                    j = j9;
                }
                long j10 = j2 + ((long) i2);
                if (u4hVar4 == null) {
                    z2 = true;
                    break;
                }
                while (true) {
                    if (iJ <= 0) {
                        z2 = true;
                        break;
                    }
                    if (u4hVar4.J() != 0) {
                        z2 = false;
                        break;
                    }
                    u4hVar4.A();
                    iJ--;
                }
                if (iJ3 != 0) {
                    sfeVar2 = sfeVar2;
                    z2 = z2;
                    jArrCopyOf = jArrCopyOf;
                    i6 = iJ8;
                    i7 = i4;
                    i8 = i;
                    i9 = iJ5;
                    int i23 = sfeVar2.a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Inconsistent stbl box for track ");
                    sb.append(i23);
                    sb.append(": remainingSynchronizationSamples ");
                    sb.append(iJ3);
                    sb.append(", remainingSamplesAtTimestampDelta ");
                    sb.append(i6);
                    sb.append(", remainingSamplesInChunk ");
                    sb.append(i7);
                    sb.append(", remainingTimestampDeltaChanges ");
                    sb.append(i8);
                    sb.append(", remainingSamplesAtTimestampOffset ");
                    sb.append(i9);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    zrg.f("BoxParsers", sb.toString());
                } else if (iJ8 == 0) {
                    if (i4 != 0) {
                        iJ3 = 0;
                        i7 = i4;
                    } else if (i != 0) {
                        iJ3 = 0;
                        i7 = 0;
                    } else if (iJ5 != 0) {
                        iJ3 = 0;
                        i7 = 0;
                        i8 = 0;
                        sfeVar2 = sfeVar2;
                        z2 = z2;
                        jArrCopyOf = jArrCopyOf;
                        i9 = iJ5;
                        i6 = 0;
                        int i24 = sfeVar2.a;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Inconsistent stbl box for track ");
                        sb2.append(i24);
                        sb2.append(": remainingSynchronizationSamples ");
                        sb2.append(iJ3);
                        sb2.append(", remainingSamplesAtTimestampDelta ");
                        sb2.append(i6);
                        sb2.append(", remainingSamplesInChunk ");
                        sb2.append(i7);
                        sb2.append(", remainingTimestampDeltaChanges ");
                        sb2.append(i8);
                        sb2.append(", remainingSamplesAtTimestampOffset ");
                        sb2.append(i9);
                        if (true != z2) {
                            str = ", ctts invalid";
                        } else {
                            str = "";
                        }
                        sb2.append(str);
                        zrg.f("BoxParsers", sb2.toString());
                    } else if (z2) {
                        sfeVar2 = sfeVar2;
                        jArrCopyOf = jArrCopyOf;
                    } else {
                        i6 = 0;
                        iJ3 = 0;
                        i7 = 0;
                        i8 = 0;
                        i9 = 0;
                        z2 = false;
                        sfeVar2 = sfeVar2;
                        jArrCopyOf = jArrCopyOf;
                        int i25 = sfeVar2.a;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Inconsistent stbl box for track ");
                        sb3.append(i25);
                        sb3.append(": remainingSynchronizationSamples ");
                        sb3.append(iJ3);
                        sb3.append(", remainingSamplesAtTimestampDelta ");
                        sb3.append(i6);
                        sb3.append(", remainingSamplesInChunk ");
                        sb3.append(i7);
                        sb3.append(", remainingTimestampDeltaChanges ");
                        sb3.append(i8);
                        sb3.append(", remainingSamplesAtTimestampOffset ");
                        sb3.append(i9);
                        if (true != z2) {
                            str = ", ctts invalid";
                        } else {
                            str = "";
                        }
                        sb3.append(str);
                        zrg.f("BoxParsers", sb3.toString());
                    }
                    i8 = i;
                    i9 = iJ5;
                    i6 = 0;
                    int i26 = sfeVar2.a;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Inconsistent stbl box for track ");
                    sb4.append(i26);
                    sb4.append(": remainingSynchronizationSamples ");
                    sb4.append(iJ3);
                    sb4.append(", remainingSamplesAtTimestampDelta ");
                    sb4.append(i6);
                    sb4.append(", remainingSamplesInChunk ");
                    sb4.append(i7);
                    sb4.append(", remainingTimestampDeltaChanges ");
                    sb4.append(i8);
                    sb4.append(", remainingSamplesAtTimestampOffset ");
                    sb4.append(i9);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb4.append(str);
                    zrg.f("BoxParsers", sb4.toString());
                } else {
                    iJ3 = 0;
                    sfeVar2 = sfeVar2;
                    z2 = z2;
                    jArrCopyOf = jArrCopyOf;
                    i6 = iJ8;
                    i7 = i4;
                    i8 = i;
                    i9 = iJ5;
                    int i27 = sfeVar2.a;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Inconsistent stbl box for track ");
                    sb5.append(i27);
                    sb5.append(": remainingSynchronizationSamples ");
                    sb5.append(iJ3);
                    sb5.append(", remainingSamplesAtTimestampDelta ");
                    sb5.append(i6);
                    sb5.append(", remainingSamplesInChunk ");
                    sb5.append(i7);
                    sb5.append(", remainingTimestampDeltaChanges ");
                    sb5.append(i8);
                    sb5.append(", remainingSamplesAtTimestampOffset ");
                    sb5.append(i9);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb5.append(str);
                    zrg.f("BoxParsers", sb5.toString());
                }
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                j3 = j10;
                i10 = i3;
                jArr2 = jArrCopyOf2;
                iArr2 = iArrCopyOf2;
            } else if (iJ == 0 && iJ3 == 0) {
                int i28 = keeVar.a;
                long[] jArr6 = new long[i28];
                int[] iArr7 = new int[i28];
                while (keeVar.a()) {
                    int i29 = keeVar.b;
                    jArr6[i29] = keeVar.d;
                    iArr7[i29] = keeVar.c;
                }
                long j11 = iJ9;
                int i30 = 8192 / iZza;
                int i31 = 0;
                for (int i32 = 0; i32 < i28; i32++) {
                    int i33 = iArr7[i32];
                    int i34 = kfh.a;
                    i31 += ((i33 + i30) - 1) / i30;
                }
                long[] jArr7 = new long[i31];
                int[] iArr8 = new int[i31];
                long[] jArr8 = new long[i31];
                int[] iArr9 = new int[i31];
                int i35 = 0;
                int i36 = 0;
                int i37 = 0;
                int i38 = 0;
                while (i36 < i28) {
                    int i39 = iArr7[i36];
                    long j12 = jArr6[i36];
                    int i40 = i38;
                    int i41 = i28;
                    int iMax = i37;
                    int i42 = i40;
                    long[] jArr9 = jArr6;
                    int i43 = i39;
                    while (i43 > 0) {
                        int iMin = Math.min(i30, i43);
                        jArr7[i42] = j12;
                        int[] iArr10 = iArr7;
                        int i44 = iZza * iMin;
                        iArr8[i42] = i44;
                        iMax = Math.max(iMax, i44);
                        jArr8[i42] = ((long) i35) * j11;
                        iArr9[i42] = 1;
                        j12 += (long) iArr8[i42];
                        i35 += iMin;
                        i43 -= iMin;
                        i42++;
                        iArr7 = iArr10;
                        i30 = i30;
                    }
                    i36++;
                    iArr7 = iArr7;
                    jArr6 = jArr9;
                    int i45 = i42;
                    i37 = iMax;
                    i28 = i41;
                    i38 = i45;
                }
                jArr = jArr7;
                j3 = j11 * ((long) i35);
                iArr = iArr8;
                jArr2 = jArr8;
                sfeVar2 = sfeVar4;
                i10 = i37;
                iArr2 = iArr9;
            } else {
                iJ7 = 0;
                jArrCopyOf = new long[iZzb];
                iArrCopyOf = new int[iZzb];
                jArrCopyOf2 = new long[iZzb];
                iArrCopyOf2 = new int[iZzb];
                i = iJ7;
                sfeVar2 = sfeVar4;
                iJ4 = iJ2;
                i2 = 0;
                i3 = 0;
                j = 0;
                j2 = 0;
                i4 = 0;
                iJ5 = 0;
                i5 = 0;
                while (true) {
                    if (i5 >= iZzb) {
                        iJ8 = iJ8;
                        break;
                    }
                    j4 = j;
                    zA = true;
                    while (true) {
                        if (i4 != 0) {
                            i11 = i4;
                            break;
                        }
                        zA = keeVar.a();
                        if (!zA) {
                            i11 = 0;
                            break;
                        }
                        int i210 = iJ8;
                        long j13 = keeVar.d;
                        i4 = keeVar.c;
                        j4 = j13;
                        iJ8 = i210;
                        iJ9 = iJ9;
                        iZzb = iZzb;
                    }
                    if (!zA) {
                        zrg.f("BoxParsers", "Unexpected end of chunk data");
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i5);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i5);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i5);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i5);
                        iZzb = i5;
                        break;
                    }
                    iA = i2;
                    if (u4hVar4 != null) {
                        while (iJ5 == 0) {
                            if (iJ <= 0) {
                                iJ5 = 0;
                                break;
                            }
                            iJ--;
                            iJ5 = u4hVar4.J();
                            iA = u4hVar4.A();
                        }
                        iJ5--;
                    }
                    jArrCopyOf[i5] = j4;
                    iZzc = xeeVar.zzc();
                    iArrCopyOf[i5] = iZzc;
                    if (iZzc > i3) {
                        i12 = iZzc;
                    } else {
                        i12 = i3;
                    }
                    jArrCopyOf2[i5] = j2 + ((long) iA);
                    if (u4hVar3 == null) {
                        i13 = 1;
                    } else {
                        i13 = 0;
                    }
                    iArrCopyOf2[i5] = i13;
                    if (i5 == iJ4) {
                        iArrCopyOf2[i5] = 1;
                        iJ3--;
                        if (iJ3 > 0) {
                            u4hVar3.getClass();
                            iJ4 = u4hVar3.J() - 1;
                        }
                    }
                    int i211 = iJ3;
                    long[] jArr10 = jArrCopyOf;
                    iA2 = iJ9;
                    j2 += (long) iA2;
                    iJ6 = iJ8 - 1;
                    if (iJ6 == 0) {
                        if (i > 0) {
                            iJ6 = u4hVar2.J();
                            i--;
                            iA2 = u4hVar2.A();
                        } else {
                            iJ6 = 0;
                        }
                    }
                    int i212 = iJ6;
                    long j14 = j4 + ((long) iArrCopyOf[i5]);
                    i4 = i11 - 1;
                    i5++;
                    iJ9 = iA2;
                    iZzb = iZzb;
                    i3 = i12;
                    i2 = iA;
                    iJ8 = i212;
                    iJ3 = i211;
                    jArrCopyOf = jArr10;
                    j = j14;
                }
                long j15 = j2 + ((long) i2);
                if (u4hVar4 == null) {
                    z2 = true;
                    break;
                }
                while (true) {
                    if (iJ <= 0) {
                        z2 = true;
                        break;
                    }
                    if (u4hVar4.J() != 0) {
                        z2 = false;
                        break;
                    }
                    u4hVar4.A();
                    iJ--;
                }
                if (iJ3 != 0) {
                    sfeVar2 = sfeVar2;
                    z2 = z2;
                    jArrCopyOf = jArrCopyOf;
                    i6 = iJ8;
                    i7 = i4;
                    i8 = i;
                    i9 = iJ5;
                    int i213 = sfeVar2.a;
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Inconsistent stbl box for track ");
                    sb6.append(i213);
                    sb6.append(": remainingSynchronizationSamples ");
                    sb6.append(iJ3);
                    sb6.append(", remainingSamplesAtTimestampDelta ");
                    sb6.append(i6);
                    sb6.append(", remainingSamplesInChunk ");
                    sb6.append(i7);
                    sb6.append(", remainingTimestampDeltaChanges ");
                    sb6.append(i8);
                    sb6.append(", remainingSamplesAtTimestampOffset ");
                    sb6.append(i9);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb6.append(str);
                    zrg.f("BoxParsers", sb6.toString());
                } else if (iJ8 == 0) {
                    if (i4 != 0) {
                        iJ3 = 0;
                        i7 = i4;
                    } else if (i != 0) {
                        iJ3 = 0;
                        i7 = 0;
                    } else if (iJ5 != 0) {
                        iJ3 = 0;
                        i7 = 0;
                        i8 = 0;
                        sfeVar2 = sfeVar2;
                        z2 = z2;
                        jArrCopyOf = jArrCopyOf;
                        i9 = iJ5;
                        i6 = 0;
                        int i214 = sfeVar2.a;
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append("Inconsistent stbl box for track ");
                        sb7.append(i214);
                        sb7.append(": remainingSynchronizationSamples ");
                        sb7.append(iJ3);
                        sb7.append(", remainingSamplesAtTimestampDelta ");
                        sb7.append(i6);
                        sb7.append(", remainingSamplesInChunk ");
                        sb7.append(i7);
                        sb7.append(", remainingTimestampDeltaChanges ");
                        sb7.append(i8);
                        sb7.append(", remainingSamplesAtTimestampOffset ");
                        sb7.append(i9);
                        if (true != z2) {
                            str = ", ctts invalid";
                        } else {
                            str = "";
                        }
                        sb7.append(str);
                        zrg.f("BoxParsers", sb7.toString());
                    } else if (z2) {
                        i6 = 0;
                        iJ3 = 0;
                        i7 = 0;
                        i8 = 0;
                        i9 = 0;
                        z2 = false;
                        sfeVar2 = sfeVar2;
                        jArrCopyOf = jArrCopyOf;
                        int i215 = sfeVar2.a;
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append("Inconsistent stbl box for track ");
                        sb8.append(i215);
                        sb8.append(": remainingSynchronizationSamples ");
                        sb8.append(iJ3);
                        sb8.append(", remainingSamplesAtTimestampDelta ");
                        sb8.append(i6);
                        sb8.append(", remainingSamplesInChunk ");
                        sb8.append(i7);
                        sb8.append(", remainingTimestampDeltaChanges ");
                        sb8.append(i8);
                        sb8.append(", remainingSamplesAtTimestampOffset ");
                        sb8.append(i9);
                        if (true != z2) {
                            str = ", ctts invalid";
                        } else {
                            str = "";
                        }
                        sb8.append(str);
                        zrg.f("BoxParsers", sb8.toString());
                    } else {
                        sfeVar2 = sfeVar2;
                        jArrCopyOf = jArrCopyOf;
                    }
                    i8 = i;
                    i9 = iJ5;
                    i6 = 0;
                    int i216 = sfeVar2.a;
                    StringBuilder sb9 = new StringBuilder();
                    sb9.append("Inconsistent stbl box for track ");
                    sb9.append(i216);
                    sb9.append(": remainingSynchronizationSamples ");
                    sb9.append(iJ3);
                    sb9.append(", remainingSamplesAtTimestampDelta ");
                    sb9.append(i6);
                    sb9.append(", remainingSamplesInChunk ");
                    sb9.append(i7);
                    sb9.append(", remainingTimestampDeltaChanges ");
                    sb9.append(i8);
                    sb9.append(", remainingSamplesAtTimestampOffset ");
                    sb9.append(i9);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb9.append(str);
                    zrg.f("BoxParsers", sb9.toString());
                } else {
                    iJ3 = 0;
                    sfeVar2 = sfeVar2;
                    z2 = z2;
                    jArrCopyOf = jArrCopyOf;
                    i6 = iJ8;
                    i7 = i4;
                    i8 = i;
                    i9 = iJ5;
                    int i217 = sfeVar2.a;
                    StringBuilder sb10 = new StringBuilder();
                    sb10.append("Inconsistent stbl box for track ");
                    sb10.append(i217);
                    sb10.append(": remainingSynchronizationSamples ");
                    sb10.append(iJ3);
                    sb10.append(", remainingSamplesAtTimestampDelta ");
                    sb10.append(i6);
                    sb10.append(", remainingSamplesInChunk ");
                    sb10.append(i7);
                    sb10.append(", remainingTimestampDeltaChanges ");
                    sb10.append(i8);
                    sb10.append(", remainingSamplesAtTimestampOffset ");
                    sb10.append(i9);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb10.append(str);
                    zrg.f("BoxParsers", sb10.toString());
                }
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                j3 = j15;
                i10 = i3;
                jArr2 = jArrCopyOf2;
                iArr2 = iArrCopyOf2;
            }
        } else {
            jArrCopyOf = new long[iZzb];
            iArrCopyOf = new int[iZzb];
            jArrCopyOf2 = new long[iZzb];
            iArrCopyOf2 = new int[iZzb];
            i = iJ7;
            sfeVar2 = sfeVar4;
            iJ4 = iJ2;
            i2 = 0;
            i3 = 0;
            j = 0;
            j2 = 0;
            i4 = 0;
            iJ5 = 0;
            i5 = 0;
            while (true) {
                if (i5 >= iZzb) {
                    iJ8 = iJ8;
                    break;
                }
                j4 = j;
                zA = true;
                while (true) {
                    if (i4 != 0) {
                        i11 = i4;
                        break;
                    }
                    zA = keeVar.a();
                    if (!zA) {
                        i11 = 0;
                        break;
                    }
                    int i218 = iJ8;
                    long j16 = keeVar.d;
                    i4 = keeVar.c;
                    j4 = j16;
                    iJ8 = i218;
                    iJ9 = iJ9;
                    iZzb = iZzb;
                }
                if (!zA) {
                    zrg.f("BoxParsers", "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i5);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i5);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i5);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i5);
                    iZzb = i5;
                    break;
                }
                iA = i2;
                if (u4hVar4 != null) {
                    while (iJ5 == 0) {
                        if (iJ <= 0) {
                            iJ5 = 0;
                            break;
                        }
                        iJ--;
                        iJ5 = u4hVar4.J();
                        iA = u4hVar4.A();
                    }
                    iJ5--;
                }
                jArrCopyOf[i5] = j4;
                iZzc = xeeVar.zzc();
                iArrCopyOf[i5] = iZzc;
                if (iZzc > i3) {
                    i12 = iZzc;
                } else {
                    i12 = i3;
                }
                jArrCopyOf2[i5] = j2 + ((long) iA);
                if (u4hVar3 == null) {
                    i13 = 1;
                } else {
                    i13 = 0;
                }
                iArrCopyOf2[i5] = i13;
                if (i5 == iJ4) {
                    iArrCopyOf2[i5] = 1;
                    iJ3--;
                    if (iJ3 > 0) {
                        u4hVar3.getClass();
                        iJ4 = u4hVar3.J() - 1;
                    }
                }
                int i219 = iJ3;
                long[] jArr11 = jArrCopyOf;
                iA2 = iJ9;
                j2 += (long) iA2;
                iJ6 = iJ8 - 1;
                if (iJ6 == 0) {
                    if (i > 0) {
                        iJ6 = u4hVar2.J();
                        i--;
                        iA2 = u4hVar2.A();
                    } else {
                        iJ6 = 0;
                    }
                }
                int i2110 = iJ6;
                long j17 = j4 + ((long) iArrCopyOf[i5]);
                i4 = i11 - 1;
                i5++;
                iJ9 = iA2;
                iZzb = iZzb;
                i3 = i12;
                i2 = iA;
                iJ8 = i2110;
                iJ3 = i219;
                jArrCopyOf = jArr11;
                j = j17;
            }
            long j18 = j2 + ((long) i2);
            if (u4hVar4 == null) {
                z2 = true;
                break;
            }
            while (true) {
                if (iJ <= 0) {
                    z2 = true;
                    break;
                }
                if (u4hVar4.J() != 0) {
                    z2 = false;
                    break;
                }
                u4hVar4.A();
                iJ--;
            }
            if (iJ3 != 0) {
                sfeVar2 = sfeVar2;
                z2 = z2;
                jArrCopyOf = jArrCopyOf;
                i6 = iJ8;
                i7 = i4;
                i8 = i;
                i9 = iJ5;
                int i2111 = sfeVar2.a;
                StringBuilder sb11 = new StringBuilder();
                sb11.append("Inconsistent stbl box for track ");
                sb11.append(i2111);
                sb11.append(": remainingSynchronizationSamples ");
                sb11.append(iJ3);
                sb11.append(", remainingSamplesAtTimestampDelta ");
                sb11.append(i6);
                sb11.append(", remainingSamplesInChunk ");
                sb11.append(i7);
                sb11.append(", remainingTimestampDeltaChanges ");
                sb11.append(i8);
                sb11.append(", remainingSamplesAtTimestampOffset ");
                sb11.append(i9);
                if (true != z2) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                sb11.append(str);
                zrg.f("BoxParsers", sb11.toString());
            } else if (iJ8 == 0) {
                if (i4 != 0) {
                    iJ3 = 0;
                    i7 = i4;
                } else if (i != 0) {
                    iJ3 = 0;
                    i7 = 0;
                } else if (iJ5 != 0) {
                    iJ3 = 0;
                    i7 = 0;
                    i8 = 0;
                    sfeVar2 = sfeVar2;
                    z2 = z2;
                    jArrCopyOf = jArrCopyOf;
                    i9 = iJ5;
                    i6 = 0;
                    int i2112 = sfeVar2.a;
                    StringBuilder sb12 = new StringBuilder();
                    sb12.append("Inconsistent stbl box for track ");
                    sb12.append(i2112);
                    sb12.append(": remainingSynchronizationSamples ");
                    sb12.append(iJ3);
                    sb12.append(", remainingSamplesAtTimestampDelta ");
                    sb12.append(i6);
                    sb12.append(", remainingSamplesInChunk ");
                    sb12.append(i7);
                    sb12.append(", remainingTimestampDeltaChanges ");
                    sb12.append(i8);
                    sb12.append(", remainingSamplesAtTimestampOffset ");
                    sb12.append(i9);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb12.append(str);
                    zrg.f("BoxParsers", sb12.toString());
                } else if (z2) {
                    i6 = 0;
                    iJ3 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 0;
                    z2 = false;
                    sfeVar2 = sfeVar2;
                    jArrCopyOf = jArrCopyOf;
                    int i2113 = sfeVar2.a;
                    StringBuilder sb13 = new StringBuilder();
                    sb13.append("Inconsistent stbl box for track ");
                    sb13.append(i2113);
                    sb13.append(": remainingSynchronizationSamples ");
                    sb13.append(iJ3);
                    sb13.append(", remainingSamplesAtTimestampDelta ");
                    sb13.append(i6);
                    sb13.append(", remainingSamplesInChunk ");
                    sb13.append(i7);
                    sb13.append(", remainingTimestampDeltaChanges ");
                    sb13.append(i8);
                    sb13.append(", remainingSamplesAtTimestampOffset ");
                    sb13.append(i9);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb13.append(str);
                    zrg.f("BoxParsers", sb13.toString());
                } else {
                    sfeVar2 = sfeVar2;
                    jArrCopyOf = jArrCopyOf;
                }
                i8 = i;
                i9 = iJ5;
                i6 = 0;
                int i2114 = sfeVar2.a;
                StringBuilder sb14 = new StringBuilder();
                sb14.append("Inconsistent stbl box for track ");
                sb14.append(i2114);
                sb14.append(": remainingSynchronizationSamples ");
                sb14.append(iJ3);
                sb14.append(", remainingSamplesAtTimestampDelta ");
                sb14.append(i6);
                sb14.append(", remainingSamplesInChunk ");
                sb14.append(i7);
                sb14.append(", remainingTimestampDeltaChanges ");
                sb14.append(i8);
                sb14.append(", remainingSamplesAtTimestampOffset ");
                sb14.append(i9);
                if (true != z2) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                sb14.append(str);
                zrg.f("BoxParsers", sb14.toString());
            } else {
                iJ3 = 0;
                sfeVar2 = sfeVar2;
                z2 = z2;
                jArrCopyOf = jArrCopyOf;
                i6 = iJ8;
                i7 = i4;
                i8 = i;
                i9 = iJ5;
                int i2115 = sfeVar2.a;
                StringBuilder sb15 = new StringBuilder();
                sb15.append("Inconsistent stbl box for track ");
                sb15.append(i2115);
                sb15.append(": remainingSynchronizationSamples ");
                sb15.append(iJ3);
                sb15.append(", remainingSamplesAtTimestampDelta ");
                sb15.append(i6);
                sb15.append(", remainingSamplesInChunk ");
                sb15.append(i7);
                sb15.append(", remainingTimestampDeltaChanges ");
                sb15.append(i8);
                sb15.append(", remainingSamplesAtTimestampOffset ");
                sb15.append(i9);
                if (true != z2) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                sb15.append(str);
                zrg.f("BoxParsers", sb15.toString());
            }
            jArr = jArrCopyOf;
            iArr = iArrCopyOf;
            j3 = j18;
            i10 = i3;
            jArr2 = jArrCopyOf2;
            iArr2 = iArrCopyOf2;
        }
        long j19 = sfeVar2.c;
        long[] jArr12 = sfeVar2.i;
        RoundingMode roundingMode = RoundingMode.DOWN;
        sfe sfeVar5 = sfeVar2;
        long[] jArr13 = jArr12;
        long jP = kfh.P(j3, 1000000L, j19, roundingMode);
        if (jArr13 == null) {
            kfh.g(jArr2, 1000000L, j19);
            return new vfe(sfeVar5, jArr, iArr, i10, jArr2, iArr2, jP);
        }
        int length2 = jArr13.length;
        if (length2 == 1) {
            if (sfeVar5.b != 1 || (length = jArr2.length) < 2) {
                iArr3 = iArr;
                i14 = i10;
                j5 = j19;
                sfeVar3 = sfeVar5;
                iArr4 = iArr2;
                jArr3 = jArr;
            } else {
                long[] jArr14 = sfeVar5.j;
                jArr14.getClass();
                int[] iArr11 = iArr2;
                long j20 = jArr14[0];
                long j21 = jArr13[0];
                jArr3 = jArr;
                long j22 = sfeVar5.d;
                iArr3 = iArr;
                i14 = i10;
                sfeVar3 = sfeVar5;
                long jP2 = j20 + kfh.P(j21, j19, j22, roundingMode);
                int i46 = length - 1;
                int iMax2 = Math.max(0, Math.min(4, i46));
                int iMax3 = Math.max(0, Math.min(length - 4, i46));
                long j23 = jArr2[0];
                if (j23 <= j20 && j20 < jArr2[iMax2] && jArr2[iMax3] < jP2 && jP2 <= j3) {
                    long j24 = erjVar.F;
                    long jP3 = kfh.P(j20 - j23, j24, j19, roundingMode);
                    long jP4 = kfh.P(j3 - jP2, j24, j19, roundingMode);
                    if (jP3 != 0) {
                        j6 = jP3;
                    } else if (jP4 != 0) {
                        j6 = 0;
                    }
                    if (j6 <= 2147483647L && jP4 <= 2147483647L) {
                        q9eVar.a = (int) j6;
                        q9eVar.b = (int) jP4;
                        kfh.g(jArr2, 1000000L, j19);
                        return new vfe(sfeVar3, jArr3, iArr3, i14, jArr2, iArr11, kfh.P(jArr13[0], 1000000L, j22, roundingMode));
                    }
                }
                iArr4 = iArr11;
                j5 = j19;
            }
            i15 = 1;
            length2 = 1;
        } else {
            iArr3 = iArr;
            i14 = i10;
            sfeVar3 = sfeVar5;
            iArr4 = iArr2;
            jArr3 = jArr;
            i15 = 1;
        }
        if (length2 == i15) {
            j5 = j19;
            if (jArr13[0] == 0) {
                sfe sfeVar6 = sfeVar3;
                long[] jArr15 = sfeVar6.j;
                jArr15.getClass();
                long j25 = jArr15[0];
                for (int i47 = 0; i47 < jArr2.length; i47++) {
                    jArr2[i47] = kfh.P(jArr2[i47] - j25, 1000000L, j5, RoundingMode.DOWN);
                }
                return new vfe(sfeVar6, jArr3, iArr3, i14, jArr2, iArr4, kfh.P(j3 - j25, 1000000L, j5, RoundingMode.DOWN));
            }
        }
        j5 = j19;
        long j26 = j5;
        sfe sfeVar7 = sfeVar3;
        int i48 = sfeVar7.b;
        boolean z3 = i48 == 1;
        long[] jArr16 = sfeVar7.j;
        int[] iArr12 = new int[length2];
        int[] iArr13 = new int[length2];
        jArr16.getClass();
        int i49 = 0;
        int i50 = 0;
        int i51 = 0;
        boolean z4 = false;
        while (i50 < jArr13.length) {
            long j27 = jArr16[i50];
            if (j27 != -1) {
                int i52 = i51;
                int i53 = i49;
                i17 = i50;
                iArr6 = iArr13;
                long jP5 = kfh.P(jArr13[i50], j26, sfeVar7.d, RoundingMode.DOWN);
                int i54 = 1;
                iArr12[i17] = kfh.y(jArr2, j27, true, true);
                long j28 = jP5 + j27;
                iArr6[i17] = kfh.v(jArr2, j28, z3, false);
                int i55 = iArr12[i17];
                while (true) {
                    i19 = iArr12[i17];
                    if (i19 < 0 || (iArr4[i19] & i54) != 0) {
                        break;
                    }
                    iArr12[i17] = i19 - 1;
                    i54 = 1;
                }
                if (i19 < 0) {
                    iArr12[i17] = i55;
                    while (true) {
                        i19 = iArr12[i17];
                        if (i19 >= iArr6[i17] || (iArr4[i19] & 1) != 0) {
                            break;
                        }
                        iArr12[i17] = i19 + 1;
                    }
                }
                if (i48 == 2 && i19 != iArr6[i17]) {
                    while (true) {
                        int i56 = iArr6[i17];
                        if (i56 >= jArr2.length - 1) {
                            break;
                        }
                        int i57 = i56 + 1;
                        if (jArr2[i57] > j28) {
                            break;
                        }
                        iArr6[i17] = i57;
                    }
                }
                int i58 = iArr6[i17];
                int i59 = iArr12[i17];
                i18 = i52 + (i58 - i59);
                z4 |= i53 != i59;
                i16 = i58;
            } else {
                i16 = i49;
                i17 = i50;
                i18 = i51;
                iArr6 = iArr13;
            }
            i50 = i17 + 1;
            i49 = i16;
            i51 = i18;
            jArr16 = jArr16;
            iZzb = iZzb;
            sfeVar7 = sfeVar7;
            jArr13 = jArr13;
            iArr13 = iArr6;
        }
        long[] jArr17 = jArr16;
        int i60 = iZzb;
        int i61 = i51;
        int[] iArr14 = iArr13;
        long[] jArr18 = jArr13;
        sfe sfeVar8 = sfeVar7;
        boolean z5 = z4 | (i61 != i60);
        long[] jArr19 = z5 ? new long[i61] : jArr3;
        int[] iArr15 = z5 ? new int[i61] : iArr3;
        if (true == z5) {
            i14 = 0;
        }
        int[] iArr16 = z5 ? new int[i61] : iArr4;
        long[] jArr20 = new long[i61];
        int i62 = 0;
        int i63 = 0;
        boolean z6 = false;
        int i64 = i14;
        long[] jArr21 = jArr18;
        long j29 = 0;
        while (i63 < jArr21.length) {
            long j30 = jArr17[i63];
            int i65 = iArr12[i63];
            int i66 = iArr14[i63];
            if (z5) {
                int i67 = i66 - i65;
                jArr4 = jArr3;
                System.arraycopy(jArr4, i65, jArr19, i62, i67);
                iArr5 = iArr3;
                System.arraycopy(iArr5, i65, iArr15, i62, i67);
                System.arraycopy(iArr4, i65, iArr16, i62, i67);
            } else {
                jArr4 = jArr3;
                iArr5 = iArr3;
            }
            int i68 = i62;
            int i69 = i65;
            int i70 = i64;
            while (i69 < i66) {
                int i71 = i69;
                long[] jArr22 = jArr4;
                sfe sfeVar9 = sfeVar8;
                long j31 = sfeVar9.d;
                RoundingMode roundingMode2 = RoundingMode.DOWN;
                int[] iArr17 = iArr4;
                int[] iArr18 = iArr12;
                int i72 = i70;
                long[] jArr23 = jArr21;
                int i73 = i66;
                int i74 = i63;
                long jP6 = kfh.P(j29, 1000000L, j31, roundingMode2);
                long jP7 = kfh.P(jArr2[i71] - j30, 1000000L, j26, roundingMode2);
                z6 = (!(jP7 >= 0)) | z6;
                jArr20[i68] = jP6 + jP7;
                i70 = (!z5 || iArr15[i68] <= i72) ? i72 : iArr5[i71];
                i68++;
                i69 = i71 + 1;
                jArr4 = jArr22;
                jArr21 = jArr23;
                i66 = i73;
                iArr12 = iArr18;
                i63 = i74;
                sfeVar8 = sfeVar9;
                iArr4 = iArr17;
            }
            int[] iArr19 = iArr4;
            int i75 = i63;
            sfe sfeVar10 = sfeVar8;
            long[] jArr24 = jArr21;
            j29 += jArr24[i75];
            i63 = i75 + 1;
            i64 = i70;
            i62 = i68;
            jArr3 = jArr4;
            jArr21 = jArr24;
            iArr12 = iArr12;
            sfeVar8 = sfeVar10;
            iArr3 = iArr5;
            iArr4 = iArr19;
        }
        sfe sfeVar11 = sfeVar8;
        long jP8 = kfh.P(j29, 1000000L, sfeVar11.d, RoundingMode.DOWN);
        if (z6) {
            gpj gpjVarB2 = erjVar.b();
            gpjVarB2.l(true);
            sfeVarA = sfeVar11.a(gpjVarB2.K());
        } else {
            sfeVarA = sfeVar11;
        }
        return new vfe(sfeVarA, jArr19, iArr15, i64, jArr20, iArr16, jP8);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 37881. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public static java.util.List f(defpackage.mih r75, defpackage.q9e r76, long r77, com.google.android.gms.internal.ads.zzs r79, boolean r80, boolean r81, defpackage.m2i r82) {
        /*
            Method dump skipped, instruction units count: 3788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.afe.f(mih, q9e, long, com.google.android.gms.internal.ads.zzs, boolean, boolean, m2i):java.util.List");
    }

    public static void g(u4h u4hVar) {
        int iW = u4hVar.w();
        u4hVar.m(4);
        if (u4hVar.A() != 1751411826) {
            iW += 4;
        }
        u4hVar.l(iW);
    }

    public static int h(u4h u4hVar) {
        int iG = u4hVar.G();
        int i = iG & 127;
        while ((iG & 128) == 128) {
            iG = u4hVar.G();
            i = (i << 7) | (iG & 127);
        }
        return i;
    }

    public static int i(u4h u4hVar) {
        u4hVar.l(16);
        return u4hVar.A();
    }

    public static Pair j(u4h u4hVar, int i, int i2) throws zzaz {
        tfe tfeVar;
        Pair pairCreate;
        int i3;
        int i4;
        byte[] bArr;
        int iW = u4hVar.w();
        while (iW - i < i2) {
            u4hVar.l(iW);
            int iA = u4hVar.A();
            g9e.b(iA > 0, "childAtomSize must be positive");
            if (u4hVar.A() == 1936289382) {
                int i5 = iW + 8;
                int i6 = 0;
                int i7 = -1;
                String strB = null;
                Integer numValueOf = null;
                while (i5 - iW < iA) {
                    u4hVar.l(i5);
                    int iA2 = u4hVar.A();
                    int iA3 = u4hVar.A();
                    if (iA3 == 1718775137) {
                        numValueOf = Integer.valueOf(u4hVar.A());
                    } else if (iA3 == 1935894637) {
                        u4hVar.m(4);
                        strB = u4hVar.b(4, StandardCharsets.UTF_8);
                    } else if (iA3 == 1935894633) {
                        i7 = i5;
                        i6 = iA2;
                    }
                    i5 += iA2;
                }
                if (C.CENC_TYPE_cenc.equals(strB) || C.CENC_TYPE_cbc1.equals(strB) || C.CENC_TYPE_cens.equals(strB) || C.CENC_TYPE_cbcs.equals(strB)) {
                    g9e.b(numValueOf != null, "frma atom is mandatory");
                    g9e.b(i7 != -1, "schi atom is mandatory");
                    int i8 = i7 + 8;
                    while (true) {
                        if (i8 - i7 >= i6) {
                            tfeVar = null;
                            break;
                        }
                        u4hVar.l(i8);
                        int iA4 = u4hVar.A();
                        if (u4hVar.A() == 1952804451) {
                            int iA5 = a(u4hVar.A());
                            u4hVar.m(1);
                            if (iA5 == 0) {
                                u4hVar.m(1);
                                i3 = 0;
                                i4 = 0;
                            } else {
                                int iG = u4hVar.G();
                                int i9 = (iG & 240) >> 4;
                                i3 = iG & 15;
                                i4 = i9;
                            }
                            boolean z = u4hVar.G() == 1;
                            int iG2 = u4hVar.G();
                            byte[] bArr2 = new byte[16];
                            u4hVar.h(bArr2, 0, 16);
                            if (z && iG2 == 0) {
                                int iG3 = u4hVar.G();
                                byte[] bArr3 = new byte[iG3];
                                u4hVar.h(bArr3, 0, iG3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            tfeVar = new tfe(z, strB, iG2, bArr2, i4, i3, bArr);
                            break;
                        }
                        i8 += iA4;
                    }
                    g9e.b(tfeVar != null, "tenc atom is mandatory");
                    int i10 = kfh.a;
                    pairCreate = Pair.create(numValueOf, tfeVar);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            iW += iA;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0047 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:12:0x0049  */
    /* JADX WARN: Code duplicated, block: B:75:0x0154  */
    /* JADX WARN: Code duplicated, block: B:83:0x016e A[PHI: r3
      0x016e: PHI (r3v5 int) = (r3v4 int), (r3v4 int), (r3v8 int) binds: [B:76:0x0160, B:77:0x0162, B:82:0x016d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:88:0x017d  */
    public static h6j k(u4h u4hVar) {
        int i;
        int iD;
        int iD2;
        p1j p1jVar = new p1j();
        byte[] bArrN = u4hVar.n();
        p3h p3hVar = new p3h(bArrN, bArrN.length);
        p3hVar.l(u4hVar.w() * 8);
        p3hVar.o(1);
        int iD3 = p3hVar.d(3);
        p3hVar.n(6);
        boolean zP = p3hVar.p();
        boolean zP2 = p3hVar.p();
        boolean z = false;
        if (iD3 != 2) {
            if (iD3 <= 2) {
                i = true != zP ? 8 : 10;
                p1jVar.f(i);
                p1jVar.a(i);
            }
        } else if (zP) {
            i = true == zP2 ? 12 : 10;
            p1jVar.f(i);
            p1jVar.a(i);
        } else {
            zP = false;
            iD3 = 2;
            if (iD3 <= 2) {
                if (true != zP) {
                }
                p1jVar.f(i);
                p1jVar.a(i);
            }
        }
        int i2 = 13;
        p3hVar.n(13);
        p3hVar.m();
        int iD4 = p3hVar.d(4);
        if (iD4 != 1) {
            zrg.e("BoxParsers", "Unsupported obu_type: " + iD4);
            return p1jVar.g();
        }
        if (p3hVar.p()) {
            zrg.e("BoxParsers", "Unsupported obu_extension_flag");
            return p1jVar.g();
        }
        boolean zP3 = p3hVar.p();
        p3hVar.m();
        if (zP3 && p3hVar.d(8) > 127) {
            zrg.e("BoxParsers", "Excessive obu_size");
            return p1jVar.g();
        }
        int iD5 = p3hVar.d(3);
        p3hVar.m();
        if (p3hVar.p()) {
            zrg.e("BoxParsers", "Unsupported reduced_still_picture_header");
            return p1jVar.g();
        }
        if (p3hVar.p()) {
            zrg.e("BoxParsers", "Unsupported timing_info_present_flag");
            return p1jVar.g();
        }
        if (p3hVar.p()) {
            zrg.e("BoxParsers", "Unsupported initial_display_delay_present_flag");
            return p1jVar.g();
        }
        int iD6 = p3hVar.d(5);
        for (int i3 = 0; i3 <= iD6; i3++) {
            p3hVar.n(12);
            if (p3hVar.d(5) > 7) {
                p3hVar.m();
            }
        }
        int iD7 = p3hVar.d(4);
        int iD8 = p3hVar.d(4);
        p3hVar.n(iD7 + 1);
        p3hVar.n(iD8 + 1);
        if (p3hVar.p()) {
            p3hVar.n(7);
        }
        p3hVar.n(7);
        boolean zP4 = p3hVar.p();
        if (zP4) {
            p3hVar.n(2);
        }
        if ((p3hVar.p() || p3hVar.d(1) > 0) && !p3hVar.p()) {
            p3hVar.n(1);
        }
        if (zP4) {
            p3hVar.n(3);
        }
        p3hVar.n(3);
        boolean zP5 = p3hVar.p();
        if (iD5 != 2) {
            if (iD5 != 1) {
            }
            if (p3hVar.p()) {
                int iD9 = p3hVar.d(8);
                iD = p3hVar.d(8);
                int iD10 = p3hVar.d(8);
                if (!z || iD9 != 1) {
                    i2 = iD;
                    iD2 = p3hVar.d(1);
                } else if (iD != 13) {
                    iD9 = 1;
                    i2 = iD;
                    iD2 = p3hVar.d(1);
                } else if (iD10 == 0) {
                    iD2 = 1;
                    iD9 = 1;
                } else {
                    iD9 = 1;
                    iD2 = p3hVar.d(1);
                }
                p1jVar.c(h6j.a(iD9));
                p1jVar.b(iD2 != 1 ? 2 : 1);
                p1jVar.d(h6j.b(i2));
            }
            return p1jVar.g();
        }
        if (zP5) {
            p3hVar.m();
        }
        if (p3hVar.p()) {
            z = true;
        }
        if (p3hVar.p()) {
            int iD11 = p3hVar.d(8);
            iD = p3hVar.d(8);
            int iD12 = p3hVar.d(8);
            if (!z) {
                i2 = iD;
                iD2 = p3hVar.d(1);
            } else {
                i2 = iD;
                iD2 = p3hVar.d(1);
            }
            p1jVar.c(h6j.a(iD11));
            p1jVar.b(iD2 != 1 ? 2 : 1);
            p1jVar.d(h6j.b(i2));
        }
        return p1jVar.g();
    }

    public static hre l(u4h u4hVar) {
        short sE = u4hVar.e();
        u4hVar.m(2);
        String strB = u4hVar.b(sE, StandardCharsets.UTF_8);
        int iMax = Math.max(strB.lastIndexOf(43), strB.lastIndexOf(45));
        try {
            return new hre(C.TIME_UNSET, new omh(Float.parseFloat(strB.substring(0, iMax)), Float.parseFloat(strB.substring(iMax, strB.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    public static jee m(u4h u4hVar, int i) {
        u4hVar.l(i + 8);
        u4hVar.m(4);
        return new jee(u4hVar.O(), u4hVar.O());
    }

    public static lee n(u4h u4hVar, int i) {
        u4hVar.l(i + 12);
        u4hVar.m(1);
        h(u4hVar);
        u4hVar.m(2);
        int iG = u4hVar.G();
        if ((iG & 128) != 0) {
            u4hVar.m(2);
        }
        if ((iG & 64) != 0) {
            u4hVar.m(u4hVar.G());
        }
        if ((iG & 32) != 0) {
            u4hVar.m(2);
        }
        u4hVar.m(1);
        h(u4hVar);
        String strD = bue.d(u4hVar.G());
        if ("audio/mpeg".equals(strD) || MimeTypes.AUDIO_DTS.equals(strD) || MimeTypes.AUDIO_DTS_HD.equals(strD)) {
            return new lee(strD, null, -1L, -1L);
        }
        u4hVar.m(4);
        long jO = u4hVar.O();
        long jO2 = u4hVar.O();
        u4hVar.m(1);
        int iH = h(u4hVar);
        byte[] bArr = new byte[iH];
        u4hVar.h(bArr, 0, iH);
        return new lee(strD, bArr, jO2 <= 0 ? -1L : jO2, jO > 0 ? jO : -1L);
    }

    public static ByteBuffer o() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Code duplicated, block: B:217:0x0408 A[PHI: r1 r11 r12 r15 r16 r23
      0x0408: PHI (r1v38 java.lang.String) = 
      (r1v29 java.lang.String)
      (r1v39 java.lang.String)
      (r1v29 java.lang.String)
      (r1v29 java.lang.String)
      (r1v29 java.lang.String)
     binds: [B:223:0x0452, B:225:0x0460, B:221:0x042a, B:219:0x040e, B:216:0x03c0] A[DONT_GENERATE, DONT_INLINE]
      0x0408: PHI (r11v7 int) = (r11v6 int), (r11v6 int), (r11v6 int), (r11v6 int), (r11v11 int) binds: [B:223:0x0452, B:225:0x0460, B:221:0x042a, B:219:0x040e, B:216:0x03c0] A[DONT_GENERATE, DONT_INLINE]
      0x0408: PHI (r12v9 int) = (r12v8 int), (r12v8 int), (r12v8 int), (r12v8 int), (r12v13 int) binds: [B:223:0x0452, B:225:0x0460, B:221:0x042a, B:219:0x040e, B:216:0x03c0] A[DONT_GENERATE, DONT_INLINE]
      0x0408: PHI (r15v6 java.util.List) = (r15v5 java.util.List), (r15v5 java.util.List), (r15v5 java.util.List), (r15v5 java.util.List), (r15v17 java.util.List) binds: [B:223:0x0452, B:225:0x0460, B:221:0x042a, B:219:0x040e, B:216:0x03c0] A[DONT_GENERATE, DONT_INLINE]
      0x0408: PHI (r16v3 lee) = (r16v2 lee), (r16v4 lee), (r16v2 lee), (r16v2 lee), (r16v2 lee) binds: [B:223:0x0452, B:225:0x0460, B:221:0x042a, B:219:0x040e, B:216:0x03c0] A[DONT_GENERATE, DONT_INLINE]
      0x0408: PHI (r23v1 java.lang.String) = 
      (r23v2 java.lang.String)
      (r23v2 java.lang.String)
      (r23v3 java.lang.String)
      (r23v3 java.lang.String)
      (r23v3 java.lang.String)
     binds: [B:223:0x0452, B:225:0x0460, B:221:0x042a, B:219:0x040e, B:216:0x03c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    /* JADX WARN: Code duplicated, block: B:84:0x0152  */
    public static void p(u4h u4hVar, int i, int i2, int i3, int i4, String str, boolean z, zzs zzsVar, qee qeeVar, int i5) throws zzaz {
        int iK;
        int iH;
        int iA;
        int i6;
        int i7;
        String str2;
        int i8;
        int i9;
        String str3;
        int i10;
        String str4;
        boolean z2;
        boolean z3;
        u4h u4hVar2 = u4hVar;
        int i11 = i;
        int i12 = i2;
        int i13 = i3;
        zzs zzsVarZzb = zzsVar;
        u4hVar2.l(i12 + 16);
        if (z) {
            iK = u4hVar.K();
            u4hVar2.m(6);
        } else {
            u4hVar2.m(8);
            iK = 0;
        }
        if (iK == 0 || iK == 1) {
            int iK2 = u4hVar.K();
            u4hVar2.m(6);
            iH = u4hVar.H();
            u4hVar2.l(u4hVar.w() - 4);
            iA = u4hVar.A();
            if (iK == 1) {
                u4hVar2.m(16);
            }
            i6 = iK2;
            i7 = -1;
        } else {
            if (iK != 2) {
                return;
            }
            u4hVar2.m(16);
            iH = (int) Math.round(Double.longBitsToDouble(u4hVar.N()));
            int iJ = u4hVar.J();
            u4hVar2.m(4);
            int iJ2 = u4hVar.J();
            int iJ3 = u4hVar.J();
            int i14 = iJ3 & 1;
            int i15 = iJ3 & 2;
            if (i14 == 0) {
                if (iJ2 == 8) {
                    i7 = 3;
                } else if (iJ2 == 16) {
                    i7 = i15 != 0 ? 268435456 : 2;
                } else if (iJ2 == 24) {
                    i7 = i15 != 0 ? C.ENCODING_PCM_24BIT_BIG_ENDIAN : 21;
                } else if (iJ2 == 32) {
                    i7 = i15 != 0 ? C.ENCODING_PCM_32BIT_BIG_ENDIAN : 22;
                } else {
                    i7 = -1;
                }
            } else if (iJ2 == 32) {
                i7 = 4;
            } else {
                i7 = -1;
            }
            u4hVar2.m(8);
            i6 = iJ;
            iA = 0;
        }
        if (i11 == 1767992678) {
            i6 = -1;
            iH = -1;
        } else {
            if (i11 == 1935764850) {
                iH = 8000;
            } else if (i11 == 1935767394) {
                iH = 16000;
                i11 = 1935767394;
            }
            i6 = 1;
        }
        int iW = u4hVar.w();
        int iIntValue = Mp4Box.TYPE_enca;
        if (i11 == 1701733217) {
            Pair pairJ = j(u4hVar2, i12, i13);
            if (pairJ != null) {
                iIntValue = ((Integer) pairJ.first).intValue();
                zzsVarZzb = zzsVarZzb == null ? null : zzsVarZzb.zzb(((tfe) pairJ.second).b);
                qeeVar.a[i5] = (tfe) pairJ.second;
            }
            i11 = iIntValue;
            u4hVar2.l(iW);
        }
        String str5 = MimeTypes.AUDIO_MPEGH_MHM1;
        if (i11 == 1633889587) {
            str2 = "audio/ac3";
        } else if (i11 == 1700998451) {
            str2 = "audio/eac3";
        } else if (i11 == 1633889588) {
            str2 = MimeTypes.AUDIO_AC4;
        } else if (i11 == 1685353315) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (i11 == 1685353320 || i11 == 1685353324) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (i11 == 1685353317) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (i11 == 1685353336) {
            str2 = MimeTypes.AUDIO_DTS_X;
        } else if (i11 == 1935764850) {
            str2 = "audio/3gpp";
        } else if (i11 == 1935767394) {
            str2 = "audio/amr-wb";
        } else if (i11 == 1936684916) {
            str2 = "audio/raw";
            i7 = 2;
        } else if (i11 == 1953984371) {
            str2 = "audio/raw";
            i7 = 268435456;
        } else if (i11 == 1819304813) {
            if (i7 == -1) {
                str2 = "audio/raw";
                i7 = 2;
            } else {
                str2 = "audio/raw";
            }
        } else if (i11 == 778924082 || i11 == 778924083) {
            str2 = "audio/mpeg";
        } else if (i11 == 1835557169) {
            str2 = MimeTypes.AUDIO_MPEGH_MHA1;
        } else if (i11 == 1835560241) {
            str2 = MimeTypes.AUDIO_MPEGH_MHM1;
        } else if (i11 == 1634492771) {
            str2 = MimeTypes.AUDIO_ALAC;
        } else if (i11 == 1634492791) {
            str2 = "audio/g711-alaw";
        } else if (i11 == 1970037111) {
            str2 = "audio/g711-mlaw";
        } else if (i11 == 1332770163) {
            str2 = "audio/opus";
        } else if (i11 == 1716281667) {
            str2 = "audio/flac";
        } else if (i11 == 1835823201) {
            str2 = MimeTypes.AUDIO_TRUEHD;
        } else {
            str2 = i11 == 1767992678 ? MimeTypes.AUDIO_IAMF : null;
        }
        int i16 = i7;
        String str6 = null;
        List listZzo = null;
        lee leeVarN = null;
        jee jeeVarM = null;
        while (iW - i12 < i13) {
            u4hVar2.l(iW);
            int iA2 = u4hVar.A();
            String str7 = "childAtomSize must be positive";
            g9e.b(iA2 > 0, "childAtomSize must be positive");
            int iA3 = u4hVar.A();
            str6 = str6;
            if (iA3 == 1835557187) {
                u4hVar2.l(iW + 8);
                u4hVar2.m(1);
                int iG = u4hVar.G();
                u4hVar2.m(1);
                String str8 = Objects.equals(str2, str5) ? String.format("mhm1.%02X", Integer.valueOf(iG)) : String.format("mha1.%02X", Integer.valueOf(iG));
                int iK3 = u4hVar.K();
                byte[] bArr = new byte[iK3];
                str6 = str8;
                z3 = false;
                u4hVar2.h(bArr, 0, iK3);
                listZzo = listZzo == null ? zzfww.zzo(bArr) : zzfww.zzp(bArr, (byte[]) listZzo.get(0));
            } else {
                if (iA3 == 1835557200) {
                    u4hVar2.l(iW + 8);
                    int iG2 = u4hVar.G();
                    if (iG2 > 0) {
                        byte[] bArr2 = new byte[iG2];
                        z3 = false;
                        u4hVar2.h(bArr2, 0, iG2);
                        if (listZzo == null) {
                            listZzo = zzfww.zzo(bArr2);
                        } else {
                            listZzo = zzfww.zzp((byte[]) listZzo.get(0), bArr2);
                            str5 = str5;
                        }
                    } else {
                        str5 = str5;
                        str6 = str6;
                    }
                } else {
                    if (iA3 == 1702061171) {
                        str5 = str5;
                        i8 = iW;
                        i9 = -1;
                    } else if (z && iA3 == 2002876005) {
                        int iW2 = u4hVar.w();
                        if (iW2 >= iW) {
                            str4 = null;
                            z2 = true;
                        } else {
                            str4 = null;
                            z2 = false;
                        }
                        g9e.b(z2, str4);
                        i8 = iW2;
                        while (true) {
                            if (i8 - iW >= iA2) {
                                str5 = str5;
                                i9 = -1;
                                i8 = -1;
                                break;
                            }
                            u4hVar2.l(i8);
                            int iA4 = u4hVar.A();
                            g9e.b(iA4 > 0, str7);
                            String str9 = str7;
                            if (u4hVar.A() == 1702061171) {
                                i9 = -1;
                                break;
                            } else {
                                i8 += iA4;
                                str5 = str5;
                                str7 = str9;
                            }
                        }
                    } else {
                        str5 = str5;
                        if (iA3 == 1651798644) {
                            jeeVarM = m(u4hVar2, iW);
                        } else {
                            if (iA3 == 1684103987) {
                                u4hVar2.l(iW + 8);
                                qeeVar.b = w7e.c(u4hVar2, Integer.toString(i4), str, zzsVarZzb);
                            } else if (iA3 == 1684366131) {
                                u4hVar2.l(iW + 8);
                                qeeVar.b = w7e.d(u4hVar2, Integer.toString(i4), str, zzsVarZzb);
                            } else if (iA3 == 1684103988) {
                                u4hVar2.l(iW + 8);
                                qeeVar.b = a8e.a(u4hVar2, Integer.toString(i4), str, zzsVarZzb);
                            } else if (iA3 != 1684892784) {
                                if (iA3 == 1684305011 || iA3 == 1969517683) {
                                    gpj gpjVar = new gpj();
                                    gpjVar.n(i4);
                                    gpjVar.E(str2);
                                    gpjVar.b(i6);
                                    gpjVar.F(iH);
                                    gpjVar.h(zzsVarZzb);
                                    gpjVar.s(str);
                                    qeeVar.b = gpjVar.K();
                                } else if (iA3 == 1682927731) {
                                    int i17 = iA2 - 8;
                                    byte[] bArr3 = a;
                                    int length = bArr3.length;
                                    byte[] bArrCopyOf = Arrays.copyOf(bArr3, length + i17);
                                    u4hVar2.l(iW + 8);
                                    u4hVar2.h(bArrCopyOf, length, i17);
                                    listZzo = x9e.e(bArrCopyOf);
                                } else {
                                    if (iA3 == 1684425825) {
                                        byte[] bArr4 = new byte[iA2 - 8];
                                        bArr4[0] = 102;
                                        bArr4[1] = 76;
                                        bArr4[2] = 97;
                                        bArr4[3] = 67;
                                        u4hVar2.l(iW + 12);
                                        u4hVar2.h(bArr4, 4, iA2 - 12);
                                        listZzo = zzfww.zzo(bArr4);
                                    } else if (iA3 == 1634492771) {
                                        int i18 = iA2 - 12;
                                        byte[] bArr5 = new byte[i18];
                                        u4hVar2.l(iW + 12);
                                        u4hVar2.h(bArr5, 0, i18);
                                        byte[] bArr6 = vcg.a;
                                        u4h u4hVar3 = new u4h(bArr5);
                                        u4hVar3.l(9);
                                        int iG3 = u4hVar3.G();
                                        u4hVar3.l(20);
                                        Pair pairCreate = Pair.create(Integer.valueOf(u4hVar3.J()), Integer.valueOf(iG3));
                                        int iIntValue2 = ((Integer) pairCreate.first).intValue();
                                        int iIntValue3 = ((Integer) pairCreate.second).intValue();
                                        listZzo = zzfww.zzo(bArr5);
                                        i6 = iIntValue3;
                                        iH = iIntValue2;
                                    } else if (iA3 == 1767990114) {
                                        u4hVar2.l(iW + 9);
                                        int iB = s7.b(u4hVar.P());
                                        byte[] bArr7 = new byte[iB];
                                        u4hVar2.h(bArr7, 0, iB);
                                        listZzo = zzfww.zzo(bArr7);
                                    }
                                    str6 = str6;
                                }
                                str6 = str6;
                            } else {
                                if (iA <= 0) {
                                    throw zzaz.zza("Invalid sample rate for Dolby TrueHD MLP stream: " + iA, null);
                                }
                                str6 = str6;
                                iH = iA;
                                i6 = 2;
                            }
                            str6 = str6;
                        }
                    }
                    if (i8 != i9) {
                        leeVarN = n(u4hVar2, i8);
                        str2 = leeVarN.a;
                        byte[] bArr8 = leeVarN.b;
                        if (bArr8 != null) {
                            if ("audio/vorbis".equals(str2)) {
                                u4h u4hVar4 = new u4h(bArr8);
                                int i19 = 1;
                                u4hVar4.m(1);
                                int i20 = 0;
                                while (true) {
                                    if (u4hVar4.u() <= 0) {
                                        i10 = 255;
                                        break;
                                    }
                                    i10 = 255;
                                    if (u4hVar4.z() != 255) {
                                        break;
                                    }
                                    u4hVar4.m(i19);
                                    i20 += 255;
                                    i19 = 1;
                                }
                                int iG4 = i20 + u4hVar4.G();
                                int i21 = 0;
                                while (u4hVar4.u() > 0 && u4hVar4.z() == i10) {
                                    u4hVar4.m(1);
                                    i21 += i10;
                                }
                                int iG5 = i21 + u4hVar4.G();
                                byte[] bArr9 = new byte[iG4];
                                int iW3 = u4hVar4.w();
                                System.arraycopy(bArr8, iW3, bArr9, 0, iG4);
                                int i22 = iW3 + iG4 + iG5;
                                int length2 = bArr8.length - i22;
                                byte[] bArr10 = new byte[length2];
                                System.arraycopy(bArr8, i22, bArr10, 0, length2);
                                listZzo = zzfww.zzp(bArr9, bArr10);
                            } else {
                                if ("audio/mp4a-latm".equals(str2)) {
                                    n7e n7eVarA = p7e.a(bArr8);
                                    iH = n7eVarA.a;
                                    i6 = n7eVarA.b;
                                    str3 = n7eVarA.c;
                                } else {
                                    str3 = str6;
                                }
                                listZzo = zzfww.zzo(bArr8);
                                str6 = str3;
                            }
                        }
                        str6 = str6;
                    } else {
                        str6 = str6;
                    }
                }
                iW += iA2;
                u4hVar2 = u4hVar;
                i12 = i2;
                i13 = i3;
                str5 = str5;
            }
            str5 = str5;
            str6 = str6;
            iW += iA2;
            u4hVar2 = u4hVar;
            i12 = i2;
            i13 = i3;
            str5 = str5;
        }
        String str10 = str6;
        if (qeeVar.b != null || str2 == null) {
            return;
        }
        gpj gpjVar2 = new gpj();
        gpjVar2.n(i4);
        gpjVar2.E(str2);
        gpjVar2.c(str10);
        gpjVar2.b(i6);
        gpjVar2.F(iH);
        gpjVar2.x(i16);
        gpjVar2.p(listZzo);
        gpjVar2.h(zzsVarZzb);
        gpjVar2.s(str);
        if (leeVarN != null) {
            gpjVar2.a(s7.f(leeVarN.c));
            gpjVar2.y(s7.f(leeVarN.d));
        } else if (jeeVarM != null) {
            gpjVar2.a(s7.f(jeeVarM.a));
            gpjVar2.y(s7.f(jeeVarM.b));
        }
        qeeVar.b = gpjVar2.K();
    }
}
