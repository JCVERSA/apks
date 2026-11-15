package defpackage;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzr;
import com.google.android.gms.internal.ads.zzs;
import com.transsion.socket.pkgdata.SocketData;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

public final class gfe implements c9e {
    public static final byte[] J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, SocketData.CLAZZ_TYPE_ERROR_CODE, -12};
    public static final erj K;
    public int A;
    public int B;
    public int C;
    public boolean D;
    public boolean E;
    public boolean I;
    public final vge a;
    public final int b;
    public final List c;
    public final byte[] h;
    public final u4h i;
    public int p;
    public int q;
    public long r;
    public int s;
    public u4h t;
    public long u;
    public int v;
    public ffe z;
    public final kce j = new kce();
    public final u4h k = new u4h(16);
    public final u4h e = new u4h(jzh.a);
    public final u4h f = new u4h(6);
    public final u4h g = new u4h();
    public final ArrayDeque l = new ArrayDeque();
    public final ArrayDeque m = new ArrayDeque();
    public final SparseArray d = new SparseArray();
    public zzfww o = zzfww.zzn();
    public long x = C.TIME_UNSET;
    public long w = C.TIME_UNSET;
    public long y = C.TIME_UNSET;
    public f9e F = f9e.C6;
    public rae[] G = new rae[0];
    public rae[] H = new rae[0];
    public final z2i n = new z2i(new b2i() {
        @Override
        public final void a(long j, u4h u4hVar) {
            j8e.a(j, u4hVar, this.a.H);
        }
    });

    static {
        gpj gpjVar = new gpj();
        gpjVar.E(MimeTypes.APPLICATION_EMSG);
        K = gpjVar.K();
    }

    public gfe(vge vgeVar, int i, fch fchVar, sfe sfeVar, List list, rae raeVar) {
        this.a = vgeVar;
        this.b = i;
        this.c = Collections.unmodifiableList(list);
        byte[] bArr = new byte[16];
        this.h = bArr;
        this.i = new u4h(bArr);
    }

    public static int c(int i) throws zzaz {
        if (i >= 0) {
            return i;
        }
        throw zzaz.zza("Unexpected negative value: " + i, null);
    }

    public static zzs g(List list) {
        int i;
        ArrayList arrayList;
        UUID[] uuidArr;
        ofe ofeVar;
        int size = list.size();
        int i2 = 0;
        ArrayList arrayList2 = null;
        while (i2 < size) {
            kjh kjhVar = (kjh) list.get(i2);
            if (kjhVar.a == 1886614376) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                byte[] bArrN = kjhVar.b.n();
                u4h u4hVar = new u4h(bArrN);
                if (u4hVar.x() < 32) {
                    i = i2;
                    arrayList = arrayList2;
                    ofeVar = null;
                } else {
                    u4hVar.l(0);
                    int iU = u4hVar.u();
                    int iA = u4hVar.A();
                    if (iA != iU) {
                        zrg.f("PsshAtomUtil", "Advertised atom size (" + iA + ") does not match buffer size: " + iU);
                    } else {
                        int iA2 = u4hVar.A();
                        if (iA2 != 1886614376) {
                            zrg.f("PsshAtomUtil", "Atom type is not pssh: " + iA2);
                        } else {
                            int iA3 = afe.a(u4hVar.A());
                            if (iA3 > 1) {
                                zrg.f("PsshAtomUtil", "Unsupported pssh version: " + iA3);
                            } else {
                                UUID uuid = new UUID(u4hVar.N(), u4hVar.N());
                                if (iA3 == 1) {
                                    int iJ = u4hVar.J();
                                    uuidArr = new UUID[iJ];
                                    int i3 = 0;
                                    while (i3 < iJ) {
                                        uuidArr[i3] = new UUID(u4hVar.N(), u4hVar.N());
                                        i3++;
                                        i2 = i2;
                                        arrayList2 = arrayList2;
                                    }
                                    i = i2;
                                    arrayList = arrayList2;
                                } else {
                                    i = i2;
                                    arrayList = arrayList2;
                                    uuidArr = null;
                                }
                                int iJ2 = u4hVar.J();
                                int iU2 = u4hVar.u();
                                if (iJ2 != iU2) {
                                    zrg.f("PsshAtomUtil", "Atom data size (" + iJ2 + ") does not match the bytes left: " + iU2);
                                    ofeVar = null;
                                } else {
                                    byte[] bArr = new byte[iJ2];
                                    u4hVar.h(bArr, 0, iJ2);
                                    ofeVar = new ofe(uuid, iA3, bArr, uuidArr);
                                }
                            }
                        }
                    }
                    i = i2;
                    arrayList = arrayList2;
                    ofeVar = null;
                }
                UUID uuid2 = ofeVar == null ? null : ofeVar.a;
                if (uuid2 == null) {
                    zrg.f("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                    arrayList2 = arrayList;
                } else {
                    arrayList2 = arrayList;
                    arrayList2.add(new zzr(uuid2, null, MimeTypes.VIDEO_MP4, bArrN));
                }
                i2 = i + 1;
            } else {
                i = i2;
            }
            i2 = i + 1;
        }
        if (arrayList2 == null) {
            return null;
        }
        return new zzs(arrayList2);
    }

    private final void h() {
        this.p = 0;
        this.s = 0;
    }

    public static void i(u4h u4hVar, int i, ufe ufeVar) throws zzaz {
        u4hVar.l(i + 8);
        int iA = u4hVar.A();
        byte[] bArr = afe.a;
        if ((iA & 1) != 0) {
            throw zzaz.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (iA & 2) != 0;
        int iJ = u4hVar.J();
        if (iJ == 0) {
            Arrays.fill(ufeVar.l, 0, ufeVar.e, false);
            return;
        }
        int i2 = ufeVar.e;
        if (iJ != i2) {
            throw zzaz.zza("Senc sample count " + iJ + " is different from fragment sample count" + i2, null);
        }
        Arrays.fill(ufeVar.l, 0, iJ, z);
        ufeVar.a(u4hVar.u());
        u4h u4hVar2 = ufeVar.n;
        u4hVar.h(u4hVar2.n(), 0, u4hVar2.x());
        u4hVar2.l(0);
        ufeVar.o = false;
    }

    public static final bfe k(SparseArray sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return (bfe) sparseArray.valueAt(0);
        }
        bfe bfeVar = (bfe) sparseArray.get(i);
        bfeVar.getClass();
        return bfeVar;
    }

    @Override
    public final void b(long j, long j2) {
        SparseArray sparseArray = this.d;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            ((ffe) sparseArray.valueAt(i)).i();
        }
        this.m.clear();
        this.v = 0;
        this.n.c();
        this.w = j2;
        this.l.clear();
        h();
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0205  */
    /* JADX WARN: Code duplicated, block: B:111:0x0217  */
    /* JADX WARN: Code duplicated, block: B:120:0x0237  */
    /* JADX WARN: Code duplicated, block: B:122:0x0240  */
    /* JADX WARN: Code duplicated, block: B:124:0x026f  */
    /* JADX WARN: Code duplicated, block: B:126:0x0277  */
    /* JADX WARN: Code duplicated, block: B:127:0x027b  */
    /* JADX WARN: Code duplicated, block: B:129:0x0283  */
    /* JADX WARN: Code duplicated, block: B:132:0x0293  */
    /* JADX WARN: Code duplicated, block: B:133:0x0297  */
    /* JADX WARN: Code duplicated, block: B:137:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:140:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:141:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:145:0x02db  */
    /* JADX WARN: Code duplicated, block: B:147:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:150:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:153:0x0310  */
    /* JADX WARN: Code duplicated, block: B:383:0x02ac A[EDGE_INSN: B:383:0x02ac->B:135:0x02ac BREAK  A[LOOP:4: B:67:0x014a->B:69:0x0150], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:384:0x030a A[EDGE_INSN: B:384:0x030a->B:151:0x030a BREAK  A[LOOP:5: B:143:0x02d3->B:387:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:389:0x022f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x014a A[LOOP:4: B:67:0x014a->B:69:0x0150, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:69:0x0150 A[LOOP:4: B:67:0x014a->B:69:0x0150, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:70:0x015b  */
    /* JADX WARN: Code duplicated, block: B:73:0x0173  */
    /* JADX WARN: Code duplicated, block: B:75:0x0177  */
    /* JADX WARN: Code duplicated, block: B:81:0x0183  */
    /* JADX WARN: Code duplicated, block: B:83:0x0194  */
    /* JADX WARN: Code duplicated, block: B:84:0x0196  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a7  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int d(d9e d9eVar, y9e y9eVar) throws zzaz {
        boolean z;
        int i;
        long jP;
        long j;
        long jP2;
        String str;
        String str2;
        long jO;
        long jQ;
        long jQ2;
        ffe ffeVar;
        sfe sfeVar;
        rae raeVar;
        long jE;
        int i2;
        u4h u4hVar;
        byte[] bArrN;
        int i3;
        int i4;
        int iA;
        int i5;
        z2i z2iVar;
        z2i z2iVar2;
        z2i z2iVar3;
        int iB;
        int i6;
        int iA2;
        String str3;
        int i7;
        char c;
        int iA3;
        tfe tfeVarF;
        qae qaeVar;
        ArrayDeque arrayDeque;
        int i8;
        efe efeVar;
        int i9;
        long j2;
        long j3;
        int i10;
        int i11;
        int i12;
        int iC;
        boolean z2;
        loop0: while (true) {
            z = true;
            while (true) {
                int i13 = this.p;
                i = 0;
                if (i13 == 0) {
                    if (this.s == 0) {
                        u4h u4hVar2 = this.k;
                        if (!d9eVar.d(u4hVar2.n(), 0, 8, true)) {
                            this.n.d();
                            return -1;
                        }
                        this.s = 8;
                        u4hVar2.l(0);
                        this.r = u4hVar2.O();
                        this.q = u4hVar2.A();
                    }
                    long j4 = this.r;
                    if (j4 == 1) {
                        u4h u4hVar3 = this.k;
                        d9eVar.h(u4hVar3.n(), 8, 8);
                        this.s += 8;
                        this.r = u4hVar3.Q();
                    } else if (j4 == 0) {
                        long jZzd = d9eVar.zzd();
                        if (jZzd == -1) {
                            ArrayDeque arrayDeque2 = this.l;
                            jZzd = !arrayDeque2.isEmpty() ? ((mih) arrayDeque2.peek()).b : -1L;
                        }
                        if (jZzd != -1) {
                            this.r = (jZzd - d9eVar.zzf()) + ((long) this.s);
                        }
                    }
                    long j5 = this.r;
                    long j6 = this.s;
                    if (j5 < j6) {
                        throw zzaz.zzc("Atom size less than header length (unsupported).");
                    }
                    long jZzf = d9eVar.zzf() - j6;
                    int i14 = this.q;
                    if ((i14 == 1836019558 || i14 == 1835295092) && !this.I) {
                        this.F.i(new jae(this.x, jZzf));
                        this.I = true;
                    }
                    if (this.q == 1836019558) {
                        SparseArray sparseArray = this.d;
                        int size = sparseArray.size();
                        for (int i15 = 0; i15 < size; i15++) {
                            ufe ufeVar = ((ffe) sparseArray.valueAt(i15)).b;
                            ufeVar.c = jZzf;
                            ufeVar.b = jZzf;
                        }
                    }
                    int i16 = this.q;
                    if (i16 == 1835295092) {
                        this.z = null;
                        this.u = jZzf + this.r;
                        this.p = 2;
                        break;
                    }
                    if (i16 == 1836019574 || i16 == 1953653099 || i16 == 1835297121 || i16 == 1835626086 || i16 == 1937007212 || i16 == 1836019558 || i16 == 1953653094 || i16 == 1836475768 || i16 == 1701082227) {
                        z2 = true;
                        long jZzf2 = (d9eVar.zzf() + this.r) - 8;
                        this.l.push(new mih(i16, jZzf2));
                        if (this.r == this.s) {
                            j(jZzf2);
                        } else {
                            h();
                        }
                    } else if (i16 == 1751411826 || i16 == 1835296868 || i16 == 1836476516 || i16 == 1936286840 || i16 == 1937011556 || i16 == 1937011827 || i16 == 1668576371 || i16 == 1937011555 || i16 == 1937011578 || i16 == 1937013298 || i16 == 1937007471 || i16 == 1668232756 || i16 == 1937011571 || i16 == 1952867444 || i16 == 1952868452 || i16 == 1953196132 || i16 == 1953654136 || i16 == 1953658222 || i16 == 1886614376 || i16 == 1935763834 || i16 == 1935763823 || i16 == 1936027235 || i16 == 1970628964 || i16 == 1935828848 || i16 == 1936158820 || i16 == 1701606260 || i16 == 1835362404 || i16 == 1701671783) {
                        if (this.s != 8) {
                            throw zzaz.zzc("Leaf atom defines extended atom size (unsupported).");
                        }
                        if (this.r > 2147483647L) {
                            throw zzaz.zzc("Leaf atom with length > 2147483647 (unsupported).");
                        }
                        u4h u4hVar4 = new u4h((int) this.r);
                        System.arraycopy(this.k.n(), 0, u4hVar4.n(), 0, 8);
                        this.t = u4hVar4;
                        z2 = true;
                        this.p = 1;
                    } else {
                        if (this.r > 2147483647L) {
                            throw zzaz.zzc("Skipping atom with length > 2147483647 (unsupported).");
                        }
                        this.t = null;
                        z2 = true;
                        this.p = 1;
                    }
                    z = z2;
                } else {
                    if (i13 == z) {
                        long j7 = this.r - ((long) this.s);
                        u4h u4hVar5 = this.t;
                        int i17 = (int) j7;
                        if (u4hVar5 != null) {
                            d9eVar.h(u4hVar5.n(), 8, i17);
                            kjh kjhVar = new kjh(this.q, u4hVar5);
                            long jZzf3 = d9eVar.zzf();
                            ArrayDeque arrayDeque3 = this.l;
                            if (arrayDeque3.isEmpty()) {
                                int i18 = kjhVar.a;
                                if (i18 == 1936286840) {
                                    u4h u4hVar6 = kjhVar.b;
                                    u4hVar6.l(8);
                                    int iA4 = afe.a(u4hVar6.A());
                                    u4hVar6.m(4);
                                    long jO2 = u4hVar6.O();
                                    if (iA4 == 0) {
                                        jQ = u4hVar6.O();
                                        jQ2 = u4hVar6.O();
                                    } else {
                                        jQ = u4hVar6.Q();
                                        jQ2 = u4hVar6.Q();
                                    }
                                    long j8 = jZzf3 + jQ2;
                                    long jP3 = kfh.P(jQ, 1000000L, jO2, RoundingMode.DOWN);
                                    u4hVar6.m(2);
                                    int iK = u4hVar6.K();
                                    int[] iArr = new int[iK];
                                    long[] jArr = new long[iK];
                                    long[] jArr2 = new long[iK];
                                    long[] jArr3 = new long[iK];
                                    long j9 = jP3;
                                    int i19 = 0;
                                    while (i19 < iK) {
                                        int iA5 = u4hVar6.A();
                                        if ((iA5 & Integer.MIN_VALUE) != 0) {
                                            throw zzaz.zza("Unhandled indirect reference", null);
                                        }
                                        long jO3 = u4hVar6.O();
                                        iArr[i19] = iA5 & Integer.MAX_VALUE;
                                        jArr[i19] = j8;
                                        jArr3[i19] = j9;
                                        long j10 = jQ + jO3;
                                        int i20 = i19;
                                        long[] jArr4 = jArr2;
                                        long[] jArr5 = jArr3;
                                        int[] iArr2 = iArr;
                                        long jP4 = kfh.P(j10, 1000000L, jO2, RoundingMode.DOWN);
                                        jArr4[i20] = jP4 - jArr5[i20];
                                        u4hVar6.m(4);
                                        j8 += (long) iArr2[i20];
                                        jArr3 = jArr5;
                                        iArr = iArr2;
                                        iK = iK;
                                        jArr2 = jArr4;
                                        j9 = jP4;
                                        i19 = i20 + 1;
                                        jQ = j10;
                                        jArr = jArr;
                                    }
                                    Pair pairCreate = Pair.create(Long.valueOf(jP3), new k8e(iArr, jArr, jArr2, jArr3));
                                    this.y = ((Long) pairCreate.first).longValue();
                                    this.F.i((kae) pairCreate.second);
                                    this.I = true;
                                } else if (i18 == 1701671783) {
                                    u4h u4hVar7 = kjhVar.b;
                                    if (this.G.length != 0) {
                                        u4hVar7.l(8);
                                        int iA6 = afe.a(u4hVar7.A());
                                        if (iA6 == 0) {
                                            String strS = u4hVar7.S((char) 0);
                                            strS.getClass();
                                            String strS2 = u4hVar7.S((char) 0);
                                            strS2.getClass();
                                            long jO4 = u4hVar7.O();
                                            long jO5 = u4hVar7.O();
                                            RoundingMode roundingMode = RoundingMode.DOWN;
                                            long jP5 = kfh.P(jO5, 1000000L, jO4, roundingMode);
                                            long j11 = this.y;
                                            long j12 = j11 != C.TIME_UNSET ? j11 + jP5 : -9223372036854775807L;
                                            jP = kfh.P(u4hVar7.O(), 1000L, jO4, roundingMode);
                                            j = jP5;
                                            jP2 = j12;
                                            str = strS;
                                            str2 = strS2;
                                            jO = u4hVar7.O();
                                        } else if (iA6 != 1) {
                                            zrg.f("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + iA6);
                                        } else {
                                            long jO6 = u4hVar7.O();
                                            long jQ3 = u4hVar7.Q();
                                            RoundingMode roundingMode2 = RoundingMode.DOWN;
                                            jP2 = kfh.P(jQ3, 1000000L, jO6, roundingMode2);
                                            long jP6 = kfh.P(u4hVar7.O(), 1000L, jO6, roundingMode2);
                                            long jO7 = u4hVar7.O();
                                            String strS3 = u4hVar7.S((char) 0);
                                            strS3.getClass();
                                            String strS4 = u4hVar7.S((char) 0);
                                            strS4.getClass();
                                            jP = jP6;
                                            jO = jO7;
                                            str = strS3;
                                            str2 = strS4;
                                            j = -9223372036854775807L;
                                        }
                                        byte[] bArr = new byte[u4hVar7.u()];
                                        u4hVar7.h(bArr, 0, u4hVar7.u());
                                        u4h u4hVar8 = new u4h(this.j.a(new jce(str, str2, jP, jO, bArr)));
                                        int iU = u4hVar8.u();
                                        for (rae raeVar2 : this.G) {
                                            u4hVar8.l(0);
                                            raeVar2.d(u4hVar8, iU);
                                        }
                                        if (jP2 == C.TIME_UNSET) {
                                            this.m.addLast(new efe(j, true, iU));
                                            this.v += iU;
                                        } else {
                                            ArrayDeque arrayDeque4 = this.m;
                                            if (arrayDeque4.isEmpty()) {
                                                for (rae raeVar3 : this.G) {
                                                    raeVar3.g(jP2, 1, iU, 0, null);
                                                }
                                            } else {
                                                arrayDeque4.addLast(new efe(jP2, false, iU));
                                                this.v += iU;
                                            }
                                        }
                                    }
                                }
                            } else {
                                ((mih) arrayDeque3.peek()).e(kjhVar);
                            }
                        } else {
                            d9eVar.f(i17);
                        }
                        j(d9eVar.zzf());
                        break;
                    }
                    long j13 = Long.MAX_VALUE;
                    if (i13 == 2) {
                        SparseArray sparseArray2 = this.d;
                        int size2 = sparseArray2.size();
                        ffe ffeVar2 = null;
                        for (int i21 = 0; i21 < size2; i21++) {
                            ufe ufeVar2 = ((ffe) sparseArray2.valueAt(i21)).b;
                            if (ufeVar2.o) {
                                long j14 = ufeVar2.c;
                                if (j14 < j13) {
                                    ffeVar2 = (ffe) sparseArray2.valueAt(i21);
                                    j13 = j14;
                                }
                            }
                        }
                        if (ffeVar2 == null) {
                            this.p = 3;
                            break;
                        }
                        int iZzf = (int) (j13 - d9eVar.zzf());
                        if (iZzf < 0) {
                            throw zzaz.zza("Offset to encryption data was negative.", null);
                        }
                        d9eVar.f(iZzf);
                        ufe ufeVar3 = ffeVar2.b;
                        u4h u4hVar9 = ufeVar3.n;
                        d9eVar.h(u4hVar9.n(), 0, u4hVar9.x());
                        u4hVar9.l(0);
                        ufeVar3.o = false;
                        break;
                    }
                    ffeVar = this.z;
                    if (ffeVar != null) {
                        break loop0;
                    }
                    SparseArray sparseArray3 = this.d;
                    int size3 = sparseArray3.size();
                    long j15 = Long.MAX_VALUE;
                    ffe ffeVar3 = null;
                    for (int i22 = 0; i22 < size3; i22 += z ? 1 : 0) {
                        ffe ffeVar4 = (ffe) sparseArray3.valueAt(i22);
                        if ((ffeVar4.m || ffeVar4.f != ffeVar4.d.b) && (!ffeVar4.m || ffeVar4.h != ffeVar4.b.d)) {
                            long jD = ffeVar4.d();
                            if (jD < j15) {
                                ffeVar3 = ffeVar4;
                                j15 = jD;
                            }
                        }
                    }
                    if (ffeVar3 != null) {
                        int iD = (int) (ffeVar3.d() - d9eVar.zzf());
                        if (iD < 0) {
                            zrg.f("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                            iD = 0;
                        }
                        d9eVar.f(iD);
                        this.z = ffeVar3;
                        ffeVar = ffeVar3;
                        break loop0;
                    }
                    int iZzf2 = (int) (this.u - d9eVar.zzf());
                    if (iZzf2 < 0) {
                        throw zzaz.zza("Offset to end of mdat was negative.", null);
                    }
                    d9eVar.f(iZzf2);
                    h();
                }
            }
        }
        String str4 = "video/avc";
        if (this.p == 3) {
            this.A = ffeVar.b();
            String str5 = ffeVar.d.a.g.o;
            if (!Objects.equals(str5, "video/avc")) {
                Objects.equals(str5, "video/hevc");
            }
            this.D = z;
            if (ffeVar.f < ffeVar.i) {
                d9eVar.f(this.A);
                tfe tfeVarF2 = ffeVar.f();
                if (tfeVarF2 != null) {
                    ufe ufeVar4 = ffeVar.b;
                    u4h u4hVar10 = ufeVar4.n;
                    int i23 = tfeVarF2.d;
                    if (i23 != 0) {
                        u4hVar10.m(i23);
                    }
                    if (ufeVar4.b(ffeVar.f)) {
                        u4hVar10.m(u4hVar10.K() * 6);
                    }
                }
                if (!ffeVar.l()) {
                    this.z = null;
                }
                i8 = 3;
            } else {
                if (ffeVar.d.a.h == z) {
                    this.A -= 8;
                    d9eVar.f(8);
                }
                if (MimeTypes.AUDIO_AC4.equals(ffeVar.d.a.g.o)) {
                    this.B = ffeVar.c(this.A, 7);
                    int i24 = this.A;
                    u4h u4hVar11 = this.i;
                    a8e.c(i24, u4hVar11);
                    ffeVar.a.d(u4hVar11, 7);
                    iC = this.B + 7;
                    this.B = iC;
                } else {
                    iC = ffeVar.c(this.A, 0);
                    this.B = iC;
                }
                this.A += iC;
                this.p = 4;
                this.C = 0;
                sfeVar = ffeVar.d.a;
                raeVar = ffeVar.a;
                jE = ffeVar.e();
                i2 = sfeVar.k;
                if (i2 == 0) {
                    while (true) {
                        i11 = this.B;
                        i12 = this.A;
                        if (i11 < i12) {
                            break;
                        }
                        this.B += raeVar.a(d9eVar, i12 - i11, false);
                    }
                } else {
                    u4hVar = this.f;
                    bArrN = u4hVar.n();
                    bArrN[0] = 0;
                    bArrN[z ? 1 : 0] = 0;
                    bArrN[2] = 0;
                    i3 = 4 - i2;
                    while (this.B < this.A) {
                        i4 = this.C;
                        if (i4 == 0) {
                            if (this.H.length <= 0 || !this.D) {
                                iB = jzh.b(sfeVar.g);
                                if (i2 + iB > this.A - this.B) {
                                    i6 = 0;
                                } else {
                                    i6 = iB;
                                }
                            } else {
                                i6 = i;
                            }
                            d9eVar.h(bArrN, i3, i2 + i6);
                            u4hVar.l(0);
                            iA2 = u4hVar.A();
                            if (iA2 >= 0) {
                                throw zzaz.zza("Invalid NAL length", null);
                            }
                            this.C = iA2 - i6;
                            u4h u4hVar12 = this.e;
                            u4hVar12.l(0);
                            raeVar.d(u4hVar12, 4);
                            this.B += 4;
                            this.A += i3;
                            if (this.H.length > 0 || i6 <= 0) {
                                str3 = str4;
                                i7 = i2;
                                c = 6;
                            } else {
                                erj erjVar = sfeVar.g;
                                byte b = bArrN[4];
                                byte[] bArr2 = jzh.a;
                                String str6 = erjVar.o;
                                if (Objects.equals(str6, str4)) {
                                    i7 = i2;
                                } else {
                                    i7 = i2;
                                    if (!bue.g(erjVar.k, str4)) {
                                        str3 = str4;
                                        c = 6;
                                    }
                                    boolean z3 = (!Objects.equals(str6, "video/hevc") || bue.g(erjVar.k, "video/hevc")) && ((b & 126) >> 1) == 39;
                                    this.E = z3;
                                    raeVar.d(u4hVar, i6);
                                    this.B += i6;
                                    if (i6 > 0 && !this.D && jzh.j(bArrN, 4, i6, sfeVar.g)) {
                                        this.D = true;
                                    }
                                    i2 = i7;
                                    str4 = str3;
                                }
                                str3 = str4;
                                c = 6;
                                if ((b & 31) != 6) {
                                    if (Objects.equals(str6, "video/hevc")) {
                                    }
                                }
                                this.E = z3;
                                raeVar.d(u4hVar, i6);
                                this.B += i6;
                                if (i6 > 0) {
                                    this.D = true;
                                }
                                i2 = i7;
                                str4 = str3;
                            }
                            this.E = z3;
                            raeVar.d(u4hVar, i6);
                            this.B += i6;
                            if (i6 > 0) {
                                this.D = true;
                            }
                            i2 = i7;
                            str4 = str3;
                        } else {
                            String str7 = str4;
                            int i25 = i2;
                            if (this.E) {
                                u4h u4hVar13 = this.g;
                                u4hVar13.i(i4);
                                d9eVar.h(u4hVar13.n(), 0, this.C);
                                raeVar.d(u4hVar13, this.C);
                                iA = this.C;
                                int iC2 = jzh.c(u4hVar13.n(), u4hVar13.x());
                                u4hVar13.l(0);
                                u4hVar13.k(iC2);
                                i5 = sfeVar.g.q;
                                if (i5 == -1) {
                                    z2iVar3 = this.n;
                                    if (z2iVar3.a() != 0) {
                                        z2iVar3.e(0);
                                    }
                                } else {
                                    z2iVar = this.n;
                                    if (z2iVar.a() != i5) {
                                        z2iVar.e(i5);
                                    }
                                }
                                z2iVar2 = this.n;
                                z2iVar2.b(jE, u4hVar13);
                                if ((ffeVar.a() & 4) != 0) {
                                    z2iVar2.d();
                                }
                            } else {
                                iA = raeVar.a(d9eVar, i4, false);
                            }
                            this.B += iA;
                            this.C -= iA;
                            i2 = i25;
                            str4 = str7;
                        }
                        i = 0;
                    }
                }
                iA3 = ffeVar.a();
                if (!this.D) {
                    iA3 |= 67108864;
                }
                int i26 = iA3;
                tfeVarF = ffeVar.f();
                if (tfeVarF != null) {
                    qaeVar = tfeVarF.c;
                } else {
                    qaeVar = null;
                }
                raeVar.g(jE, i26, this.A, 0, qaeVar);
                while (true) {
                    arrayDeque = this.m;
                    if (!arrayDeque.isEmpty()) {
                        break;
                    }
                    efeVar = (efe) arrayDeque.removeFirst();
                    int i27 = this.v;
                    i9 = efeVar.c;
                    this.v = i27 - i9;
                    j2 = efeVar.a;
                    if (efeVar.b) {
                        j2 += jE;
                    }
                    j3 = j2;
                    for (rae raeVar4 : this.G) {
                        raeVar4.g(j3, 1, i9, this.v, null);
                    }
                }
                if (!ffeVar.l()) {
                    this.z = null;
                }
                i8 = 3;
            }
        } else {
            sfeVar = ffeVar.d.a;
            raeVar = ffeVar.a;
            jE = ffeVar.e();
            i2 = sfeVar.k;
            if (i2 == 0) {
                while (true) {
                    i11 = this.B;
                    i12 = this.A;
                    if (i11 < i12) {
                        break;
                        break;
                    }
                    this.B += raeVar.a(d9eVar, i12 - i11, false);
                }
            } else {
                u4hVar = this.f;
                bArrN = u4hVar.n();
                bArrN[0] = 0;
                bArrN[z ? 1 : 0] = 0;
                bArrN[2] = 0;
                i3 = 4 - i2;
                while (this.B < this.A) {
                    i4 = this.C;
                    if (i4 == 0) {
                        if (this.H.length <= 0) {
                            iB = jzh.b(sfeVar.g);
                            if (i2 + iB > this.A - this.B) {
                                i6 = 0;
                            } else {
                                i6 = iB;
                            }
                        } else {
                            iB = jzh.b(sfeVar.g);
                            if (i2 + iB > this.A - this.B) {
                                i6 = 0;
                            } else {
                                i6 = iB;
                            }
                        }
                        d9eVar.h(bArrN, i3, i2 + i6);
                        u4hVar.l(0);
                        iA2 = u4hVar.A();
                        if (iA2 >= 0) {
                            throw zzaz.zza("Invalid NAL length", null);
                        }
                        this.C = iA2 - i6;
                        u4h u4hVar14 = this.e;
                        u4hVar14.l(0);
                        raeVar.d(u4hVar14, 4);
                        this.B += 4;
                        this.A += i3;
                        if (this.H.length > 0) {
                            str3 = str4;
                            i7 = i2;
                            c = 6;
                        } else {
                            str3 = str4;
                            i7 = i2;
                            c = 6;
                        }
                        this.E = z3;
                        raeVar.d(u4hVar, i6);
                        this.B += i6;
                        if (i6 > 0) {
                            this.D = true;
                        }
                        i2 = i7;
                        str4 = str3;
                    } else {
                        String str8 = str4;
                        int i28 = i2;
                        if (this.E) {
                            u4h u4hVar15 = this.g;
                            u4hVar15.i(i4);
                            d9eVar.h(u4hVar15.n(), 0, this.C);
                            raeVar.d(u4hVar15, this.C);
                            iA = this.C;
                            int iC3 = jzh.c(u4hVar15.n(), u4hVar15.x());
                            u4hVar15.l(0);
                            u4hVar15.k(iC3);
                            i5 = sfeVar.g.q;
                            if (i5 == -1) {
                                z2iVar3 = this.n;
                                if (z2iVar3.a() != 0) {
                                    z2iVar3.e(0);
                                }
                            } else {
                                z2iVar = this.n;
                                if (z2iVar.a() != i5) {
                                    z2iVar.e(i5);
                                }
                            }
                            z2iVar2 = this.n;
                            z2iVar2.b(jE, u4hVar15);
                            if ((ffeVar.a() & 4) != 0) {
                                z2iVar2.d();
                            }
                        } else {
                            iA = raeVar.a(d9eVar, i4, false);
                        }
                        this.B += iA;
                        this.C -= iA;
                        i2 = i28;
                        str4 = str8;
                    }
                    i = 0;
                }
            }
            iA3 = ffeVar.a();
            if (!this.D) {
                iA3 |= 67108864;
            }
            int i29 = iA3;
            tfeVarF = ffeVar.f();
            if (tfeVarF != null) {
                qaeVar = tfeVarF.c;
            } else {
                qaeVar = null;
            }
            raeVar.g(jE, i29, this.A, 0, qaeVar);
            while (true) {
                arrayDeque = this.m;
                if (!arrayDeque.isEmpty()) {
                    break;
                    break;
                }
                efeVar = (efe) arrayDeque.removeFirst();
                int i210 = this.v;
                i9 = efeVar.c;
                this.v = i210 - i9;
                j2 = efeVar.a;
                if (efeVar.b) {
                    j2 += jE;
                }
                j3 = j2;
                while (i10 < r13) {
                    raeVar4.g(j3, 1, i9, this.v, null);
                }
            }
            if (!ffeVar.l()) {
                this.z = null;
            }
            i8 = 3;
        }
        this.p = i8;
        return 0;
    }

    @Override
    public final boolean e(d9e d9eVar) {
        oae oaeVarA = rfe.a(d9eVar);
        this.o = oaeVarA != null ? zzfww.zzo(oaeVarA) : zzfww.zzn();
        return oaeVarA == null;
    }

    @Override
    public final void f(f9e f9eVar) {
        int i;
        int i2 = this.b;
        if ((i2 & 32) == 0) {
            f9eVar = new che(f9eVar, this.a);
        }
        this.F = f9eVar;
        h();
        rae[] raeVarArr = new rae[2];
        this.G = raeVarArr;
        int i3 = 100;
        int i4 = 0;
        if ((i2 & 4) != 0) {
            raeVarArr[0] = this.F.j(100, 5);
            i = 1;
            i3 = 101;
        } else {
            i = 0;
        }
        rae[] raeVarArr2 = (rae[]) kfh.q(this.G, i);
        this.G = raeVarArr2;
        for (rae raeVar : raeVarArr2) {
            raeVar.f(K);
        }
        List list = this.c;
        this.H = new rae[list.size()];
        while (i4 < this.H.length) {
            rae raeVarJ = this.F.j(i3, 3);
            raeVarJ.f((erj) list.get(i4));
            this.H[i4] = raeVarJ;
            i4++;
            i3++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0375  */
    /* JADX WARN: Code duplicated, block: B:136:0x037c  */
    /* JADX WARN: Code duplicated, block: B:139:0x038d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:140:0x038f  */
    /* JADX WARN: Code duplicated, block: B:141:0x0398  */
    /* JADX WARN: Code duplicated, block: B:144:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:145:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:148:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:149:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:150:0x03bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:151:0x03be  */
    /* JADX WARN: Code duplicated, block: B:152:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:153:0x03c3 A[PHI: r11
      0x03c3: PHI (r11v15 int) = (r11v13 int), (r11v16 int) binds: [B:149:0x03ba, B:152:0x03c2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:155:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:156:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:159:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:160:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:163:0x0410 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:164:0x0412 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:165:0x0414  */
    /* JADX WARN: Code duplicated, block: B:166:0x0417  */
    /* JADX WARN: Code duplicated, block: B:167:0x0419  */
    /* JADX WARN: Code duplicated, block: B:89:0x025f  */
    public final void j(long j) throws zzaz {
        gfe gfeVar;
        int i;
        SparseArray sparseArray;
        int i2;
        int i3;
        mih mihVar;
        int i4;
        int i5;
        int i6;
        int i7;
        byte[] bArr;
        byte[] bArr2;
        int i8;
        boolean z;
        List list;
        int i9;
        byte[] bArr3;
        int i10;
        int i11;
        int i12;
        int i13;
        long j2;
        int[] iArr;
        long[] jArr;
        boolean[] zArr;
        boolean z2;
        int i14;
        boolean z3;
        long j3;
        long j4;
        int iA;
        int iA2;
        int iA3;
        int iA4;
        long jP;
        ffe ffeVar;
        boolean z4;
        long[] jArr2;
        int i15;
        final gfe gfeVar2 = this;
        int i16 = 8;
        while (true) {
            ArrayDeque arrayDeque = gfeVar2.l;
            if (arrayDeque.isEmpty() || ((mih) arrayDeque.peek()).b != j) {
                break;
            }
            mih mihVar2 = (mih) arrayDeque.pop();
            int i17 = mihVar2.a;
            int i18 = 12;
            if (i17 == 1836019574) {
                zzs zzsVarG = g(mihVar2.c);
                mih mihVarB = mihVar2.b(Mp4Box.TYPE_mvex);
                mihVarB.getClass();
                SparseArray sparseArray2 = new SparseArray();
                List list2 = mihVarB.c;
                int size = list2.size();
                long jO = C.TIME_UNSET;
                int i19 = 0;
                while (i19 < size) {
                    kjh kjhVar = (kjh) list2.get(i19);
                    int i20 = kjhVar.a;
                    if (i20 == 1953654136) {
                        u4h u4hVar = kjhVar.b;
                        u4hVar.l(i18);
                        Pair pairCreate = Pair.create(Integer.valueOf(u4hVar.A()), new bfe(u4hVar.A() - 1, u4hVar.A(), u4hVar.A(), u4hVar.A()));
                        sparseArray2.put(((Integer) pairCreate.first).intValue(), (bfe) pairCreate.second);
                    } else if (i20 == 1835362404) {
                        u4h u4hVar2 = kjhVar.b;
                        u4hVar2.l(i16);
                        jO = afe.a(u4hVar2.A()) == 0 ? u4hVar2.O() : u4hVar2.Q();
                    }
                    i19++;
                    i18 = 12;
                }
                List listF = afe.f(mihVar2, new q9e(), jO, zzsVarG, (gfeVar2.b & 16) != 0, false, new m2i(gfeVar2) {
                    @Override
                    public final Object apply(Object obj) {
                        return (sfe) obj;
                    }
                });
                int size2 = listF.size();
                SparseArray sparseArray3 = gfeVar2.d;
                if (sparseArray3.size() == 0) {
                    String strA = jfe.a(listF);
                    for (int i21 = 0; i21 < size2; i21++) {
                        vfe vfeVar = (vfe) listF.get(i21);
                        sfe sfeVar = vfeVar.a;
                        rae raeVarJ = gfeVar2.F.j(i21, sfeVar.b);
                        long j5 = sfeVar.e;
                        raeVarJ.c(j5);
                        int i22 = sfeVar.a;
                        sparseArray3.put(i22, new ffe(raeVarJ, vfeVar, k(sparseArray2, i22), strA));
                        gfeVar2.x = Math.max(gfeVar2.x, j5);
                    }
                    gfeVar2.F.zzG();
                } else {
                    n7g.f(sparseArray3.size() == size2);
                    for (int i23 = 0; i23 < size2; i23++) {
                        vfe vfeVar2 = (vfe) listF.get(i23);
                        int i24 = vfeVar2.a.a;
                        ((ffe) sparseArray3.get(i24)).h(vfeVar2, k(sparseArray2, i24));
                    }
                }
            } else {
                int i25 = 0;
                if (i17 == 1836019558) {
                    SparseArray sparseArray4 = gfeVar2.d;
                    int i26 = gfeVar2.b;
                    byte[] bArr4 = gfeVar2.h;
                    List list3 = mihVar2.d;
                    int size3 = list3.size();
                    int i27 = 0;
                    while (i27 < size3) {
                        mih mihVar3 = (mih) list3.get(i27);
                        if (mihVar3.a == 1953653094) {
                            kjh kjhVarC = mihVar3.c(Mp4Box.TYPE_tfhd);
                            kjhVarC.getClass();
                            u4h u4hVar3 = kjhVarC.b;
                            u4hVar3.l(i16);
                            int iA5 = u4hVar3.A();
                            byte[] bArr5 = afe.a;
                            ffe ffeVar2 = (ffe) sparseArray4.get(u4hVar3.A());
                            if (ffeVar2 == null) {
                                ffeVar2 = null;
                            } else {
                                if ((iA5 & 1) != 0) {
                                    long jQ = u4hVar3.Q();
                                    ufe ufeVar = ffeVar2.b;
                                    ufeVar.b = jQ;
                                    ufeVar.c = jQ;
                                }
                                bfe bfeVar = ffeVar2.e;
                                ffeVar2.b.a = new bfe((iA5 & 2) != 0 ? u4hVar3.A() - 1 : bfeVar.a, (iA5 & 8) != 0 ? u4hVar3.A() : bfeVar.b, (iA5 & 16) != 0 ? u4hVar3.A() : bfeVar.c, (iA5 & 32) != 0 ? u4hVar3.A() : bfeVar.d);
                            }
                            if (ffeVar2 == null) {
                                sparseArray = sparseArray4;
                                i2 = i26;
                                i3 = size3;
                                mihVar = mihVar2;
                                i4 = i27;
                                i6 = 8;
                                i5 = 0;
                            } else {
                                ufe ufeVar2 = ffeVar2.b;
                                long j6 = ufeVar2.p;
                                boolean z5 = ufeVar2.q;
                                ffeVar2.i();
                                ffeVar2.m = true;
                                kjh kjhVarC2 = mihVar3.c(Mp4Box.TYPE_tfdt);
                                if (kjhVarC2 == null || (i26 & 2) != 0) {
                                    ufeVar2.p = j6;
                                    ufeVar2.q = z5;
                                } else {
                                    u4h u4hVar4 = kjhVarC2.b;
                                    u4hVar4.l(8);
                                    ufeVar2.p = afe.a(u4hVar4.A()) == 1 ? u4hVar4.Q() : u4hVar4.O();
                                    ufeVar2.q = true;
                                }
                                List list4 = mihVar3.c;
                                int size4 = list4.size();
                                int i28 = 0;
                                int i29 = 0;
                                int i30 = 0;
                                while (true) {
                                    i7 = Mp4Box.TYPE_trun;
                                    if (i28 >= size4) {
                                        break;
                                    }
                                    int i31 = size3;
                                    kjh kjhVar2 = (kjh) list4.get(i28);
                                    if (kjhVar2.a == 1953658222) {
                                        u4h u4hVar5 = kjhVar2.b;
                                        u4hVar5.l(12);
                                        int iJ = u4hVar5.J();
                                        if (iJ > 0) {
                                            i30 += iJ;
                                            i15 = 1;
                                            i29++;
                                        } else {
                                            i15 = 1;
                                        }
                                    } else {
                                        i15 = 1;
                                    }
                                    i28 += i15;
                                    size3 = i31;
                                }
                                i3 = size3;
                                ffeVar2.h = 0;
                                ffeVar2.g = 0;
                                ffeVar2.f = 0;
                                ufeVar2.d = i29;
                                ufeVar2.e = i30;
                                if (ufeVar2.g.length < i29) {
                                    ufeVar2.f = new long[i29];
                                    ufeVar2.g = new int[i29];
                                }
                                if (ufeVar2.h.length < i30) {
                                    int i32 = (i30 * 125) / 100;
                                    ufeVar2.h = new int[i32];
                                    ufeVar2.i = new long[i32];
                                    ufeVar2.j = new boolean[i32];
                                    ufeVar2.l = new boolean[i32];
                                }
                                int i33 = 0;
                                int i34 = 0;
                                int i35 = 0;
                                while (i33 < size4) {
                                    kjh kjhVar3 = (kjh) list4.get(i33);
                                    if (kjhVar3.a == i7) {
                                        int i36 = i34 + 1;
                                        u4h u4hVar6 = kjhVar3.b;
                                        u4hVar6.l(8);
                                        int iA6 = u4hVar6.A();
                                        sfe sfeVar2 = ffeVar2.d.a;
                                        bfe bfeVar2 = ufeVar2.a;
                                        int i37 = kfh.a;
                                        ufeVar2.g[i34] = u4hVar6.J();
                                        long[] jArr3 = ufeVar2.f;
                                        long j7 = ufeVar2.b;
                                        jArr3[i34] = j7;
                                        if ((iA6 & 1) != 0) {
                                            jArr3[i34] = j7 + ((long) u4hVar6.A());
                                        }
                                        boolean z6 = (iA6 & 4) != 0;
                                        int i38 = bfeVar2.d;
                                        int iA7 = z6 ? u4hVar6.A() : i38;
                                        int i39 = iA6 & 256;
                                        int i40 = iA6 & 512;
                                        int i41 = iA6 & 1024;
                                        int i42 = iA6 & 2048;
                                        int i43 = iA7;
                                        long[] jArr4 = sfeVar2.i;
                                        if (jArr4 != null) {
                                            bArr3 = bArr4;
                                            list = list4;
                                            if (jArr4.length == 1 && (jArr2 = sfeVar2.j) != null) {
                                                long j8 = jArr4[0];
                                                if (j8 == 0) {
                                                    i11 = i39;
                                                    i12 = i42;
                                                    i13 = i40;
                                                } else {
                                                    i13 = i40;
                                                    long j9 = sfeVar2.d;
                                                    RoundingMode roundingMode = RoundingMode.DOWN;
                                                    long jP2 = kfh.P(j8, 1000000L, j9, roundingMode);
                                                    i12 = i42;
                                                    i11 = i39;
                                                    if (jP2 + kfh.P(jArr2[0], 1000000L, sfeVar2.c, roundingMode) < sfeVar2.e) {
                                                    }
                                                    iArr = ufeVar2.h;
                                                    jArr = ufeVar2.i;
                                                    zArr = ufeVar2.j;
                                                    if (sfeVar2.b == 2 || (i26 & 1) == 0) {
                                                        z2 = false;
                                                    } else {
                                                        z2 = true;
                                                    }
                                                    i14 = ufeVar2.g[i34] + i35;
                                                    z3 = z2;
                                                    j3 = sfeVar2.c;
                                                    j4 = ufeVar2.p;
                                                    while (i35 < i14) {
                                                        if (i11 != 0) {
                                                            iA = u4hVar6.A();
                                                        } else {
                                                            iA = bfeVar2.b;
                                                        }
                                                        c(iA);
                                                        if (i13 != 0) {
                                                            iA2 = u4hVar6.A();
                                                        } else {
                                                            iA2 = bfeVar2.c;
                                                        }
                                                        c(iA2);
                                                        if (i41 != 0) {
                                                            iA3 = u4hVar6.A();
                                                        } else if (i35 != 0) {
                                                            iA3 = i38;
                                                        } else if (z6) {
                                                            iA3 = i43;
                                                            i35 = 0;
                                                        } else {
                                                            i35 = 0;
                                                            iA3 = i38;
                                                        }
                                                        if (i12 != 0) {
                                                            iA4 = u4hVar6.A();
                                                        } else {
                                                            iA4 = 0;
                                                        }
                                                        jP = kfh.P((((long) iA4) + j4) - j2, 1000000L, j3, RoundingMode.DOWN);
                                                        jArr[i35] = jP;
                                                        int i44 = i14;
                                                        if (ufeVar2.q) {
                                                            ffeVar = ffeVar2;
                                                        } else {
                                                            ffeVar = ffeVar2;
                                                            jArr[i35] = jP + ffeVar.d.h;
                                                        }
                                                        iArr[i35] = iA2;
                                                        if (((iA3 >> 16) & 1) != 0) {
                                                            z4 = false;
                                                        } else if (z3) {
                                                            z4 = true;
                                                        } else if (i35 == 0) {
                                                            z4 = true;
                                                            i35 = 0;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        zArr[i35] = z4;
                                                        j4 += (long) iA;
                                                        i35++;
                                                        bfeVar2 = bfeVar2;
                                                        u4hVar6 = u4hVar6;
                                                        j3 = j3;
                                                        i26 = i26;
                                                        i13 = i13;
                                                        i41 = i41;
                                                        ffeVar2 = ffeVar;
                                                        i14 = i44;
                                                    }
                                                    i9 = i26;
                                                    int i45 = i14;
                                                    i10 = 1;
                                                    ufeVar2.p = j4;
                                                    ffeVar2 = ffeVar2;
                                                    i34 = i36;
                                                    i35 = i45;
                                                }
                                                j2 = jArr2[0];
                                                iArr = ufeVar2.h;
                                                jArr = ufeVar2.i;
                                                zArr = ufeVar2.j;
                                                if (sfeVar2.b == 2) {
                                                    z2 = false;
                                                } else {
                                                    z2 = false;
                                                }
                                                i14 = ufeVar2.g[i34] + i35;
                                                z3 = z2;
                                                j3 = sfeVar2.c;
                                                j4 = ufeVar2.p;
                                                while (i35 < i14) {
                                                    if (i11 != 0) {
                                                        iA = u4hVar6.A();
                                                    } else {
                                                        iA = bfeVar2.b;
                                                    }
                                                    c(iA);
                                                    if (i13 != 0) {
                                                        iA2 = u4hVar6.A();
                                                    } else {
                                                        iA2 = bfeVar2.c;
                                                    }
                                                    c(iA2);
                                                    if (i41 != 0) {
                                                        iA3 = u4hVar6.A();
                                                    } else if (i35 != 0) {
                                                        iA3 = i38;
                                                    } else if (z6) {
                                                        iA3 = i43;
                                                        i35 = 0;
                                                    } else {
                                                        i35 = 0;
                                                        iA3 = i38;
                                                    }
                                                    if (i12 != 0) {
                                                        iA4 = u4hVar6.A();
                                                    } else {
                                                        iA4 = 0;
                                                    }
                                                    jP = kfh.P((((long) iA4) + j4) - j2, 1000000L, j3, RoundingMode.DOWN);
                                                    jArr[i35] = jP;
                                                    int i46 = i14;
                                                    if (ufeVar2.q) {
                                                        ffeVar = ffeVar2;
                                                        jArr[i35] = jP + ffeVar.d.h;
                                                    } else {
                                                        ffeVar = ffeVar2;
                                                    }
                                                    iArr[i35] = iA2;
                                                    if (((iA3 >> 16) & 1) != 0) {
                                                        z4 = false;
                                                    } else if (z3) {
                                                        z4 = true;
                                                    } else if (i35 == 0) {
                                                        z4 = true;
                                                        i35 = 0;
                                                    } else {
                                                        z4 = false;
                                                    }
                                                    zArr[i35] = z4;
                                                    j4 += (long) iA;
                                                    i35++;
                                                    bfeVar2 = bfeVar2;
                                                    u4hVar6 = u4hVar6;
                                                    j3 = j3;
                                                    i26 = i26;
                                                    i13 = i13;
                                                    i41 = i41;
                                                    ffeVar2 = ffeVar;
                                                    i14 = i46;
                                                }
                                                i9 = i26;
                                                int i47 = i14;
                                                i10 = 1;
                                                ufeVar2.p = j4;
                                                ffeVar2 = ffeVar2;
                                                i34 = i36;
                                                i35 = i47;
                                            }
                                            j2 = 0;
                                            iArr = ufeVar2.h;
                                            jArr = ufeVar2.i;
                                            zArr = ufeVar2.j;
                                            if (sfeVar2.b == 2) {
                                                z2 = false;
                                            } else {
                                                z2 = false;
                                            }
                                            i14 = ufeVar2.g[i34] + i35;
                                            z3 = z2;
                                            j3 = sfeVar2.c;
                                            j4 = ufeVar2.p;
                                            while (i35 < i14) {
                                                if (i11 != 0) {
                                                    iA = u4hVar6.A();
                                                } else {
                                                    iA = bfeVar2.b;
                                                }
                                                c(iA);
                                                if (i13 != 0) {
                                                    iA2 = u4hVar6.A();
                                                } else {
                                                    iA2 = bfeVar2.c;
                                                }
                                                c(iA2);
                                                if (i41 != 0) {
                                                    iA3 = u4hVar6.A();
                                                } else if (i35 != 0) {
                                                    iA3 = i38;
                                                } else if (z6) {
                                                    iA3 = i43;
                                                    i35 = 0;
                                                } else {
                                                    i35 = 0;
                                                    iA3 = i38;
                                                }
                                                if (i12 != 0) {
                                                    iA4 = u4hVar6.A();
                                                } else {
                                                    iA4 = 0;
                                                }
                                                jP = kfh.P((((long) iA4) + j4) - j2, 1000000L, j3, RoundingMode.DOWN);
                                                jArr[i35] = jP;
                                                int i48 = i14;
                                                if (ufeVar2.q) {
                                                    ffeVar = ffeVar2;
                                                    jArr[i35] = jP + ffeVar.d.h;
                                                } else {
                                                    ffeVar = ffeVar2;
                                                }
                                                iArr[i35] = iA2;
                                                if (((iA3 >> 16) & 1) != 0) {
                                                    z4 = false;
                                                } else if (z3) {
                                                    z4 = true;
                                                } else if (i35 == 0) {
                                                    z4 = true;
                                                    i35 = 0;
                                                } else {
                                                    z4 = false;
                                                }
                                                zArr[i35] = z4;
                                                j4 += (long) iA;
                                                i35++;
                                                bfeVar2 = bfeVar2;
                                                u4hVar6 = u4hVar6;
                                                j3 = j3;
                                                i26 = i26;
                                                i13 = i13;
                                                i41 = i41;
                                                ffeVar2 = ffeVar;
                                                i14 = i48;
                                            }
                                            i9 = i26;
                                            int i49 = i14;
                                            i10 = 1;
                                            ufeVar2.p = j4;
                                            ffeVar2 = ffeVar2;
                                            i34 = i36;
                                            i35 = i49;
                                        } else {
                                            list = list4;
                                            bArr3 = bArr4;
                                        }
                                        i11 = i39;
                                        i12 = i42;
                                        i13 = i40;
                                        j2 = 0;
                                        iArr = ufeVar2.h;
                                        jArr = ufeVar2.i;
                                        zArr = ufeVar2.j;
                                        if (sfeVar2.b == 2) {
                                            z2 = false;
                                        } else {
                                            z2 = false;
                                        }
                                        i14 = ufeVar2.g[i34] + i35;
                                        z3 = z2;
                                        j3 = sfeVar2.c;
                                        j4 = ufeVar2.p;
                                        while (i35 < i14) {
                                            if (i11 != 0) {
                                                iA = u4hVar6.A();
                                            } else {
                                                iA = bfeVar2.b;
                                            }
                                            c(iA);
                                            if (i13 != 0) {
                                                iA2 = u4hVar6.A();
                                            } else {
                                                iA2 = bfeVar2.c;
                                            }
                                            c(iA2);
                                            if (i41 != 0) {
                                                iA3 = u4hVar6.A();
                                            } else if (i35 != 0) {
                                                iA3 = i38;
                                            } else if (z6) {
                                                iA3 = i43;
                                                i35 = 0;
                                            } else {
                                                i35 = 0;
                                                iA3 = i38;
                                            }
                                            if (i12 != 0) {
                                                iA4 = u4hVar6.A();
                                            } else {
                                                iA4 = 0;
                                            }
                                            jP = kfh.P((((long) iA4) + j4) - j2, 1000000L, j3, RoundingMode.DOWN);
                                            jArr[i35] = jP;
                                            int i410 = i14;
                                            if (ufeVar2.q) {
                                                ffeVar = ffeVar2;
                                                jArr[i35] = jP + ffeVar.d.h;
                                            } else {
                                                ffeVar = ffeVar2;
                                            }
                                            iArr[i35] = iA2;
                                            if (((iA3 >> 16) & 1) != 0) {
                                                z4 = false;
                                            } else if (z3) {
                                                z4 = true;
                                            } else if (i35 == 0) {
                                                z4 = true;
                                                i35 = 0;
                                            } else {
                                                z4 = false;
                                            }
                                            zArr[i35] = z4;
                                            j4 += (long) iA;
                                            i35++;
                                            bfeVar2 = bfeVar2;
                                            u4hVar6 = u4hVar6;
                                            j3 = j3;
                                            i26 = i26;
                                            i13 = i13;
                                            i41 = i41;
                                            ffeVar2 = ffeVar;
                                            i14 = i410;
                                        }
                                        i9 = i26;
                                        int i411 = i14;
                                        i10 = 1;
                                        ufeVar2.p = j4;
                                        ffeVar2 = ffeVar2;
                                        i34 = i36;
                                        i35 = i411;
                                    } else {
                                        list = list4;
                                        i9 = i26;
                                        bArr3 = bArr4;
                                        i27 = i27;
                                        i10 = 1;
                                    }
                                    i33 += i10;
                                    size4 = size4;
                                    sparseArray4 = sparseArray4;
                                    mihVar2 = mihVar2;
                                    mihVar3 = mihVar3;
                                    i27 = i27;
                                    bArr4 = bArr3;
                                    list4 = list;
                                    i26 = i9;
                                    i7 = Mp4Box.TYPE_trun;
                                }
                                List list5 = list4;
                                sparseArray = sparseArray4;
                                i2 = i26;
                                byte[] bArr6 = bArr4;
                                mihVar = mihVar2;
                                mih mihVar4 = mihVar3;
                                i4 = i27;
                                sfe sfeVar3 = ffeVar2.d.a;
                                bfe bfeVar3 = ufeVar2.a;
                                bfeVar3.getClass();
                                tfe tfeVarB = sfeVar3.b(bfeVar3.a);
                                kjh kjhVarC3 = mihVar4.c(Mp4Box.TYPE_saiz);
                                if (kjhVarC3 != null) {
                                    tfeVarB.getClass();
                                    int i50 = tfeVarB.d;
                                    u4h u4hVar7 = kjhVarC3.b;
                                    u4hVar7.l(8);
                                    if ((u4hVar7.A() & 1) == 1) {
                                        u4hVar7.m(8);
                                    }
                                    int iG = u4hVar7.G();
                                    int iJ2 = u4hVar7.J();
                                    int i51 = ufeVar2.e;
                                    if (iJ2 > i51) {
                                        throw zzaz.zza("Saiz sample count " + iJ2 + " is greater than fragment sample count" + i51, null);
                                    }
                                    if (iG == 0) {
                                        boolean[] zArr2 = ufeVar2.l;
                                        i8 = 0;
                                        for (int i52 = 0; i52 < iJ2; i52++) {
                                            int iG2 = u4hVar7.G();
                                            i8 += iG2;
                                            zArr2[i52] = iG2 > i50;
                                        }
                                        z = false;
                                    } else {
                                        boolean z7 = iG > i50;
                                        i8 = iG * iJ2;
                                        z = false;
                                        Arrays.fill(ufeVar2.l, 0, iJ2, z7);
                                    }
                                    Arrays.fill(ufeVar2.l, iJ2, ufeVar2.e, z);
                                    if (i8 > 0) {
                                        ufeVar2.a(i8);
                                    }
                                }
                                kjh kjhVarC4 = mihVar4.c(Mp4Box.TYPE_saio);
                                if (kjhVarC4 != null) {
                                    u4h u4hVar8 = kjhVarC4.b;
                                    u4hVar8.l(8);
                                    int iA8 = u4hVar8.A();
                                    if ((iA8 & 1) == 1) {
                                        u4hVar8.m(8);
                                    }
                                    int iJ3 = u4hVar8.J();
                                    if (iJ3 != 1) {
                                        throw zzaz.zza("Unexpected saio entry count: " + iJ3, null);
                                    }
                                    ufeVar2.c += afe.a(iA8) == 0 ? u4hVar8.O() : u4hVar8.Q();
                                }
                                kjh kjhVarC5 = mihVar4.c(Mp4Box.TYPE_senc);
                                if (kjhVarC5 != null) {
                                    i(kjhVarC5.b, 0, ufeVar2);
                                }
                                String str = tfeVarB != null ? tfeVarB.b : null;
                                u4h u4hVar9 = null;
                                u4h u4hVar10 = null;
                                int i53 = 0;
                                while (i53 < list5.size()) {
                                    List list6 = list5;
                                    kjh kjhVar4 = (kjh) list6.get(i53);
                                    u4h u4hVar11 = kjhVar4.b;
                                    int i54 = kjhVar4.a;
                                    if (i54 == 1935828848) {
                                        u4hVar11.l(12);
                                        if (u4hVar11.A() == 1936025959) {
                                            u4hVar9 = u4hVar11;
                                        }
                                    } else if (i54 == 1936158820) {
                                        u4hVar11.l(12);
                                        if (u4hVar11.A() == 1936025959) {
                                            u4hVar10 = u4hVar11;
                                        }
                                    }
                                    i53++;
                                    list5 = list6;
                                }
                                List list7 = list5;
                                if (u4hVar9 != null && u4hVar10 != null) {
                                    u4hVar9.l(8);
                                    int iA9 = afe.a(u4hVar9.A());
                                    u4hVar9.m(4);
                                    if (iA9 == 1) {
                                        u4hVar9.m(4);
                                    }
                                    if (u4hVar9.A() != 1) {
                                        throw zzaz.zzc("Entry count in sbgp != 1 (unsupported).");
                                    }
                                    u4hVar10.l(8);
                                    int iA10 = afe.a(u4hVar10.A());
                                    u4hVar10.m(4);
                                    if (iA10 == 1) {
                                        if (u4hVar10.O() == 0) {
                                            throw zzaz.zzc("Variable length description in sgpd found (unsupported)");
                                        }
                                    } else if (iA10 >= 2) {
                                        u4hVar10.m(4);
                                    }
                                    if (u4hVar10.O() != 1) {
                                        throw zzaz.zzc("Entry count in sgpd != 1 (unsupported).");
                                    }
                                    u4hVar10.m(1);
                                    int iG3 = u4hVar10.G();
                                    int i55 = (iG3 & 240) >> 4;
                                    int i56 = iG3 & 15;
                                    if (u4hVar10.G() == 1) {
                                        int iG4 = u4hVar10.G();
                                        byte[] bArr7 = new byte[16];
                                        u4hVar10.h(bArr7, 0, 16);
                                        if (iG4 == 0) {
                                            int iG5 = u4hVar10.G();
                                            byte[] bArr8 = new byte[iG5];
                                            u4hVar10.h(bArr8, 0, iG5);
                                            bArr2 = bArr8;
                                        } else {
                                            bArr2 = null;
                                        }
                                        ufeVar2.k = true;
                                        ufeVar2.m = new tfe(true, str, iG4, bArr7, i55, i56, bArr2);
                                    }
                                }
                                int size5 = list7.size();
                                int i57 = 0;
                                while (i57 < size5) {
                                    kjh kjhVar5 = (kjh) list7.get(i57);
                                    if (kjhVar5.a == 1970628964) {
                                        u4h u4hVar12 = kjhVar5.b;
                                        u4hVar12.l(8);
                                        bArr = bArr6;
                                        u4hVar12.h(bArr, 0, 16);
                                        if (Arrays.equals(bArr, J)) {
                                            i(u4hVar12, 16, ufeVar2);
                                        }
                                    } else {
                                        bArr = bArr6;
                                    }
                                    i57++;
                                    bArr6 = bArr;
                                }
                                bArr4 = bArr6;
                                i6 = 8;
                                i5 = 0;
                            }
                        } else {
                            sparseArray = sparseArray4;
                            i2 = i26;
                            i3 = size3;
                            mihVar = mihVar2;
                            i4 = i27;
                            i5 = i25;
                            i6 = i16;
                        }
                        i27 = i4 + 1;
                        i16 = i6;
                        i25 = i5;
                        list3 = list3;
                        size3 = i3;
                        sparseArray4 = sparseArray;
                        mihVar2 = mihVar;
                        i26 = i2;
                    }
                    int i58 = i25;
                    SparseArray sparseArray5 = sparseArray4;
                    i = i16;
                    zzs zzsVarG2 = g(mihVar2.c);
                    if (zzsVarG2 != null) {
                        int size6 = sparseArray5.size();
                        for (int i59 = i58; i59 < size6; i59++) {
                            ((ffe) sparseArray5.valueAt(i59)).j(zzsVarG2);
                        }
                    }
                    gfeVar = this;
                    if (gfeVar.w != C.TIME_UNSET) {
                        int size7 = sparseArray5.size();
                        for (int i60 = i58; i60 < size7; i60++) {
                            ffe ffeVar3 = (ffe) sparseArray5.valueAt(i60);
                            long j10 = gfeVar.w;
                            int i61 = ffeVar3.f;
                            while (true) {
                                ufe ufeVar3 = ffeVar3.b;
                                if (i61 >= ufeVar3.e || ufeVar3.i[i61] > j10) {
                                    break;
                                }
                                if (ufeVar3.j[i61]) {
                                    ffeVar3.i = i61;
                                }
                                i61++;
                            }
                        }
                        gfeVar.w = C.TIME_UNSET;
                    }
                } else {
                    gfeVar = gfeVar2;
                    i = i16;
                    if (!arrayDeque.isEmpty()) {
                        ((mih) arrayDeque.peek()).d(mihVar2);
                    }
                }
                gfeVar2 = gfeVar;
                i16 = i;
            }
        }
        h();
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return this.o;
    }
}
