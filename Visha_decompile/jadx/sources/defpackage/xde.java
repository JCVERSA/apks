package defpackage;

import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzr;
import com.google.android.gms.internal.ads.zzs;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.socket.pkgdata.SocketData;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import org.mozilla.classfile.ByteCode;

public final class xde implements c9e {
    public static final byte[] f0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    public static final byte[] g0;
    public static final byte[] h0;
    public static final byte[] i0;
    public static final UUID j0;
    public static final Map k0;
    public boolean A;
    public long B;
    public long C;
    public long D;
    public xsg E;
    public xsg F;
    public boolean G;
    public boolean H;
    public int I;
    public long J;
    public long K;
    public int L;
    public int M;
    public int[] N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public boolean S;
    public long T;
    public int U;
    public int V;
    public int W;
    public boolean X;
    public boolean Y;
    public boolean Z;
    public final zde a;
    public int a0;
    public final SparseArray b;
    public byte b0;
    public final boolean c;
    public boolean c0;
    public final boolean d;
    public f9e d0;
    public final vge e;
    public final sde e0;
    public final u4h f;
    public final u4h g;
    public final u4h h;
    public final u4h i;
    public final u4h j;
    public final u4h k;
    public final u4h l;
    public final u4h m;
    public final u4h n;
    public final u4h o;
    public ByteBuffer p;
    public long q;
    public long r;
    public long s;
    public long t;
    public long u;
    public boolean v;
    public vde w;
    public boolean x;
    public int y;
    public long z;

    static {
        int i = kfh.a;
        g0 = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        h0 = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        i0 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        j0 = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        k0 = Collections.unmodifiableMap(map);
    }

    public xde() {
        this(new sde(), 2, vge.a);
    }

    public static byte[] w(long j, String str, long j2) {
        n7g.d(j != C.TIME_UNSET);
        Locale locale = Locale.US;
        int i = (int) (j / 3600000000L);
        Integer numValueOf = Integer.valueOf(i);
        long j3 = j - (((long) i) * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        Integer numValueOf2 = Integer.valueOf(i2);
        long j4 = j3 - (((long) i2) * 60000000);
        int i3 = (int) (j4 / 1000000);
        String str2 = String.format(locale, str, numValueOf, numValueOf2, Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2)));
        int i4 = kfh.a;
        return str2.getBytes(StandardCharsets.UTF_8);
    }

    public static int[] x(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
    }

    @Override
    public final void b(long j, long j2) {
        this.D = C.TIME_UNSET;
        int i = 0;
        this.I = 0;
        this.e0.b();
        this.a.e();
        u();
        while (true) {
            SparseArray sparseArray = this.b;
            if (i >= sparseArray.size()) {
                return;
            }
            sae saeVar = ((vde) sparseArray.valueAt(i)).V;
            if (saeVar != null) {
                saeVar.b();
            }
            i++;
        }
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        int i = 0;
        this.H = false;
        while (!this.H) {
            if (this.e0.c(d9eVar)) {
                long jZzf = d9eVar.zzf();
                if (this.A) {
                    this.C = jZzf;
                    y9eVar.a = this.B;
                    this.A = false;
                    return 1;
                }
                if (this.x) {
                    long j = this.C;
                    if (j != -1) {
                        y9eVar.a = j;
                        this.C = -1L;
                        return 1;
                    }
                }
            } else {
                while (true) {
                    SparseArray sparseArray = this.b;
                    if (i >= sparseArray.size()) {
                        return -1;
                    }
                    vde vdeVar = (vde) sparseArray.valueAt(i);
                    vdeVar.Z.getClass();
                    sae saeVar = vdeVar.V;
                    if (saeVar != null) {
                        saeVar.a(vdeVar.Z, vdeVar.k);
                    }
                    i++;
                }
            }
        }
        return 0;
    }

    @Override
    public final boolean e(d9e d9eVar) {
        return new yde().a(d9eVar);
    }

    @Override
    public final void f(f9e f9eVar) {
        if (this.d) {
            f9eVar = new che(f9eVar, this.e);
        }
        this.d0 = f9eVar;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x028c  */
    /* JADX WARN: Code duplicated, block: B:113:0x0290  */
    /* JADX WARN: Code duplicated, block: B:115:0x029b  */
    /* JADX WARN: Code duplicated, block: B:116:0x029d A[PHI: r0
      0x029d: PHI (r0v18 int) = (r0v0 int), (r0v25 int) binds: [B:110:0x028a, B:115:0x029b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:117:0x029f  */
    public final void g(int i, int i2, d9e d9eVar) {
        vde vdeVar;
        int i3;
        vde vdeVar2;
        vde vdeVar3;
        long j;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = i;
        int i9 = 1;
        int i10 = 0;
        if (i8 != 161 && i8 != 163) {
            if (i8 == 165) {
                if (this.I != 2) {
                    return;
                }
                vde vdeVar4 = (vde) this.b.get(this.O);
                if (this.R != 4 || !"V_VP9".equals(vdeVar4.c)) {
                    d9eVar.f(i2);
                    return;
                }
                u4h u4hVar = this.o;
                u4hVar.i(i2);
                d9eVar.h(u4hVar.n(), 0, i2);
                return;
            }
            if (i8 == 16877) {
                r(i);
                vde vdeVar5 = this.w;
                if (vdeVar5.h != 1685485123 && vdeVar5.h != 1685480259) {
                    d9eVar.f(i2);
                    return;
                }
                byte[] bArr = new byte[i2];
                vdeVar5.P = bArr;
                d9eVar.h(bArr, 0, i2);
                return;
            }
            if (i8 == 16981) {
                r(i);
                byte[] bArr2 = new byte[i2];
                this.w.j = bArr2;
                d9eVar.h(bArr2, 0, i2);
                return;
            }
            if (i8 == 18402) {
                byte[] bArr3 = new byte[i2];
                d9eVar.h(bArr3, 0, i2);
                r(i);
                this.w.k = new qae(1, bArr3, 0, 0);
                return;
            }
            if (i8 == 21419) {
                u4h u4hVar2 = this.j;
                Arrays.fill(u4hVar2.n(), (byte) 0);
                d9eVar.h(u4hVar2.n(), 4 - i2, i2);
                u4hVar2.l(0);
                this.y = (int) u4hVar2.O();
                return;
            }
            if (i8 == 25506) {
                r(i);
                byte[] bArr4 = new byte[i2];
                this.w.l = bArr4;
                d9eVar.h(bArr4, 0, i2);
                return;
            }
            if (i8 != 30322) {
                throw zzaz.zza("Unexpected id: " + i8, null);
            }
            r(i);
            byte[] bArr5 = new byte[i2];
            this.w.x = bArr5;
            d9eVar.h(bArr5, 0, i2);
            return;
        }
        int i11 = 8;
        if (this.I == 0) {
            zde zdeVar = this.a;
            this.O = (int) zdeVar.d(d9eVar, false, true, 8);
            this.P = zdeVar.a();
            this.K = C.TIME_UNSET;
            this.I = 1;
            this.h.i(0);
        }
        vde vdeVar6 = (vde) this.b.get(this.O);
        if (vdeVar6 == null) {
            d9eVar.f(i2 - this.P);
            this.I = 0;
            return;
        }
        vdeVar6.Z.getClass();
        if (this.I == 1) {
            t(d9eVar, 3);
            u4h u4hVar3 = this.h;
            int i12 = (u4hVar3.n()[2] & 6) >> 1;
            if (i12 == 0) {
                this.M = 1;
                int[] iArrX = x(this.N, 1);
                this.N = iArrX;
                iArrX[0] = (i2 - this.P) - 3;
            } else {
                t(d9eVar, 4);
                int i13 = (u4hVar3.n()[3] & 255) + 1;
                this.M = i13;
                int[] iArrX2 = x(this.N, i13);
                this.N = iArrX2;
                if (i12 == 2) {
                    int i14 = (i2 - this.P) - 4;
                    int i15 = this.M;
                    Arrays.fill(iArrX2, 0, i15, i14 / i15);
                } else {
                    if (i12 == 1) {
                        int i16 = 0;
                        int i17 = 0;
                        int i18 = 4;
                        while (true) {
                            i4 = this.M - 1;
                            if (i16 >= i4) {
                                break;
                            }
                            this.N[i16] = 0;
                            while (true) {
                                i5 = i18 + 1;
                                t(d9eVar, i5);
                                int i19 = u4hVar3.n()[i18] & 255;
                                int[] iArr = this.N;
                                i6 = iArr[i16] + i19;
                                iArr[i16] = i6;
                                if (i19 != 255) {
                                    break;
                                } else {
                                    i18 = i5;
                                }
                            }
                            i17 += i6;
                            i16++;
                            i18 = i5;
                        }
                        this.N[i4] = ((i2 - this.P) - i18) - i17;
                    } else {
                        if (i12 != 3) {
                            throw zzaz.zza("Unexpected lacing value: 2", null);
                        }
                        int i20 = 0;
                        int i21 = 0;
                        int i22 = 4;
                        while (true) {
                            int i23 = this.M - 1;
                            if (i20 >= i23) {
                                vdeVar2 = vdeVar6;
                                this.N[i23] = ((i2 - this.P) - i22) - i21;
                                break;
                            }
                            this.N[i20] = i10;
                            int i24 = i22 + 1;
                            t(d9eVar, i24);
                            if (u4hVar3.n()[i22] == 0) {
                                throw zzaz.zza("No valid varint length mask found", null);
                            }
                            int i25 = i10;
                            while (true) {
                                if (i25 >= i11) {
                                    vdeVar3 = vdeVar6;
                                    j = 0;
                                    break;
                                }
                                int i26 = i9 << (7 - i25);
                                if ((u4hVar3.n()[i22] & i26) != 0) {
                                    i24 += i25;
                                    t(d9eVar, i24);
                                    j = u4hVar3.n()[i22] & 255 & (~i26);
                                    int i27 = i22 + 1;
                                    while (i27 < i24) {
                                        j = (j << i11) | ((long) (u4hVar3.n()[i27] & 255));
                                        i27++;
                                        vdeVar6 = vdeVar6;
                                        i11 = 8;
                                    }
                                    vdeVar3 = vdeVar6;
                                    if (i20 <= 0) {
                                        break;
                                    }
                                    j -= (1 << ((i25 * 7) + 6)) - 1;
                                    break;
                                }
                                i25++;
                                i9 = 1;
                                i11 = 8;
                            }
                            i22 = i24;
                            if (j < -2147483648L || j > 2147483647L) {
                                throw zzaz.zza("EBML lacing sample size out of range.", null);
                            }
                            int[] iArr2 = this.N;
                            int i28 = (int) j;
                            if (i20 != 0) {
                                i28 += iArr2[i20 - 1];
                            }
                            iArr2[i20] = i28;
                            i21 += i28;
                            i20++;
                            vdeVar6 = vdeVar3;
                            i9 = 1;
                            i10 = 0;
                            i11 = 8;
                        }
                    }
                    this.J = this.D + p((u4hVar3.n()[0] << 8) | (u4hVar3.n()[1] & 255));
                    vdeVar = vdeVar2;
                    if (vdeVar.e == 2) {
                        i7 = 1;
                    } else {
                        if (i8 == 163) {
                            if ((u4hVar3.n()[2] & SocketData.CLAZZ_TYPE_END_SOCKET) == 128) {
                                i8 = 163;
                                i7 = 1;
                            } else {
                                i8 = 163;
                            }
                        }
                        i7 = 0;
                    }
                    this.Q = i7;
                    this.I = 2;
                    this.L = 0;
                    i3 = 163;
                }
            }
            vdeVar2 = vdeVar6;
            this.J = this.D + p((u4hVar3.n()[0] << 8) | (u4hVar3.n()[1] & 255));
            vdeVar = vdeVar2;
            if (vdeVar.e == 2) {
                i7 = 1;
            } else {
                if (i8 == 163) {
                    if ((u4hVar3.n()[2] & SocketData.CLAZZ_TYPE_END_SOCKET) == 128) {
                        i8 = 163;
                        i7 = 1;
                    } else {
                        i8 = 163;
                    }
                }
                i7 = 0;
            }
            this.Q = i7;
            this.I = 2;
            this.L = 0;
            i3 = 163;
        } else {
            vdeVar = vdeVar6;
            i3 = 163;
        }
        if (i8 == i3) {
            while (true) {
                int i29 = this.L;
                if (i29 >= this.M) {
                    this.I = 0;
                    return;
                }
                s(vdeVar, ((long) ((this.L * vdeVar.f) / 1000)) + this.J, this.Q, n(d9eVar, vdeVar, this.N[i29], false), 0);
                this.L++;
            }
        } else {
            while (true) {
                int i30 = this.L;
                if (i30 >= this.M) {
                    return;
                }
                int[] iArr3 = this.N;
                iArr3[i30] = n(d9eVar, vdeVar, iArr3[i30], true);
                this.L++;
            }
        }
    }

    public final void h(int i) {
        int i2;
        kae jaeVar;
        int i3;
        n7g.b(this.d0);
        byte b = 2;
        int i4 = 0;
        if (i == 160) {
            if (this.I == 2) {
                vde vdeVar = (vde) this.b.get(this.O);
                vdeVar.Z.getClass();
                if (this.T > 0 && "A_OPUS".equals(vdeVar.c)) {
                    u4h u4hVar = this.o;
                    byte[] bArrArray = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.T).array();
                    u4hVar.j(bArrArray, bArrArray.length);
                }
                int i5 = 0;
                for (int i6 = 0; i6 < this.M; i6++) {
                    i5 += this.N[i6];
                }
                int i7 = 0;
                while (i7 < this.M) {
                    long j = this.J + ((long) ((vdeVar.f * i7) / 1000));
                    int i8 = this.Q;
                    if (i7 == 0) {
                        if (!this.S) {
                            i8 |= 1;
                        }
                        i2 = 0;
                    } else {
                        i2 = i7;
                    }
                    int i9 = this.N[i2];
                    int i10 = i5 - i9;
                    s(vdeVar, j, i8, i9, i10);
                    i7 = i2 + 1;
                    i5 = i10;
                }
                this.I = 0;
                return;
            }
            return;
        }
        if (i != 174) {
            if (i == 19899) {
                int i11 = this.y;
                if (i11 != -1) {
                    long j2 = this.z;
                    if (j2 != -1) {
                        if (i11 == 475249515) {
                            this.B = j2;
                            return;
                        }
                        return;
                    }
                }
                throw zzaz.zza("Mandatory element SeekID or SeekPosition not found", null);
            }
            if (i == 25152) {
                r(i);
                vde vdeVar2 = this.w;
                if (vdeVar2.i) {
                    if (vdeVar2.k == null) {
                        throw zzaz.zza("Encrypted Track found but ContentEncKeyID was not found", null);
                    }
                    vdeVar2.m = new zzs(null, new zzr(eui.a, null, MimeTypes.VIDEO_WEBM, this.w.k.b));
                    return;
                }
                return;
            }
            if (i == 28032) {
                r(i);
                vde vdeVar3 = this.w;
                if (vdeVar3.i && vdeVar3.j != null) {
                    throw zzaz.zza("Combining encryption and compression is not supported", null);
                }
                return;
            }
            if (i == 357149030) {
                if (this.s == C.TIME_UNSET) {
                    this.s = 1000000L;
                }
                long j3 = this.t;
                if (j3 != C.TIME_UNSET) {
                    this.u = p(j3);
                    return;
                }
                return;
            }
            if (i == 374648427) {
                if (this.b.size() == 0) {
                    throw zzaz.zza("No valid tracks were found", null);
                }
                this.d0.zzG();
                return;
            }
            if (i != 475249515) {
                return;
            }
            if (!this.x) {
                f9e f9eVar = this.d0;
                xsg xsgVar = this.E;
                xsg xsgVar2 = this.F;
                if (this.r == -1 || this.u == C.TIME_UNSET || xsgVar == null || xsgVar.a() == 0 || xsgVar2 == null || xsgVar2.a() != xsgVar.a()) {
                    jaeVar = new jae(this.u, 0L);
                } else {
                    int iA = xsgVar.a();
                    int[] iArrCopyOf = new int[iA];
                    long[] jArrCopyOf = new long[iA];
                    long[] jArrCopyOf2 = new long[iA];
                    long[] jArrCopyOf3 = new long[iA];
                    for (int i12 = 0; i12 < iA; i12++) {
                        jArrCopyOf3[i12] = xsgVar.b(i12);
                        jArrCopyOf[i12] = this.r + xsgVar2.b(i12);
                    }
                    while (true) {
                        i3 = iA - 1;
                        if (i4 >= i3) {
                            break;
                        }
                        int i13 = i4 + 1;
                        iArrCopyOf[i4] = (int) (jArrCopyOf[i13] - jArrCopyOf[i4]);
                        jArrCopyOf2[i4] = jArrCopyOf3[i13] - jArrCopyOf3[i4];
                        i4 = i13;
                    }
                    int i14 = i3;
                    while (i14 > 0 && jArrCopyOf3[i14] > this.u) {
                        i14--;
                    }
                    iArrCopyOf[i14] = (int) ((this.r + this.q) - jArrCopyOf[i14]);
                    jArrCopyOf2[i14] = this.u - jArrCopyOf3[i14];
                    if (i14 < i3) {
                        zrg.f("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration");
                        int i15 = i14 + 1;
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i15);
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i15);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i15);
                        jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i15);
                    }
                    jaeVar = new k8e(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
                }
                f9eVar.i(jaeVar);
                this.x = true;
            }
            this.E = null;
            this.F = null;
            return;
        }
        vde vdeVar4 = this.w;
        n7g.b(vdeVar4);
        String str = vdeVar4.c;
        if (str == null) {
            throw zzaz.zza("CodecId is missing in TrackEntry element", null);
        }
        switch (str.hashCode()) {
            case -2095576542:
                b = str.equals("V_MPEG4/ISO/AP") ? (byte) 6 : (byte) -1;
                break;
            case -2095575984:
                b = str.equals("V_MPEG4/ISO/SP") ? (byte) 4 : (byte) -1;
                break;
            case -1985379776:
                b = str.equals("A_MS/ACM") ? (byte) 23 : (byte) -1;
                break;
            case -1784763192:
                b = str.equals("A_TRUEHD") ? (byte) 18 : (byte) -1;
                break;
            case -1730367663:
                b = str.equals("A_VORBIS") ? (byte) 12 : (byte) -1;
                break;
            case -1482641358:
                b = str.equals("A_MPEG/L2") ? (byte) 14 : (byte) -1;
                break;
            case -1482641357:
                b = str.equals("A_MPEG/L3") ? (byte) 15 : (byte) -1;
                break;
            case -1373388978:
                b = str.equals("V_MS/VFW/FOURCC") ? (byte) 9 : (byte) -1;
                break;
            case -933872740:
                b = str.equals("S_DVBSUB") ? (byte) 32 : (byte) -1;
                break;
            case -538363189:
                b = str.equals("V_MPEG4/ISO/ASP") ? (byte) 5 : (byte) -1;
                break;
            case -538363109:
                b = str.equals("V_MPEG4/ISO/AVC") ? (byte) 7 : (byte) -1;
                break;
            case -425012669:
                b = str.equals("S_VOBSUB") ? (byte) 30 : (byte) -1;
                break;
            case -356037306:
                b = str.equals("A_DTS/LOSSLESS") ? (byte) 21 : (byte) -1;
                break;
            case 62923557:
                b = str.equals("A_AAC") ? (byte) 13 : (byte) -1;
                break;
            case 62923603:
                b = str.equals("A_AC3") ? (byte) 16 : (byte) -1;
                break;
            case 62927045:
                b = str.equals("A_DTS") ? (byte) 19 : (byte) -1;
                break;
            case 82318131:
                if (!str.equals("V_AV1")) {
                    b = -1;
                }
                break;
            case 82338133:
                b = str.equals("V_VP8") ? (byte) 0 : (byte) -1;
                break;
            case 82338134:
                b = str.equals("V_VP9") ? (byte) 1 : (byte) -1;
                break;
            case 99146302:
                b = str.equals("S_HDMV/PGS") ? (byte) 31 : (byte) -1;
                break;
            case 444813526:
                b = str.equals("V_THEORA") ? (byte) 10 : (byte) -1;
                break;
            case 542569478:
                b = str.equals("A_DTS/EXPRESS") ? (byte) 20 : (byte) -1;
                break;
            case 635596514:
                b = str.equals("A_PCM/FLOAT/IEEE") ? (byte) 26 : (byte) -1;
                break;
            case 725948237:
                b = str.equals("A_PCM/INT/BIG") ? (byte) 25 : (byte) -1;
                break;
            case 725957860:
                b = str.equals("A_PCM/INT/LIT") ? (byte) 24 : (byte) -1;
                break;
            case 738597099:
                b = str.equals("S_TEXT/ASS") ? (byte) 28 : (byte) -1;
                break;
            case 855502857:
                b = str.equals("V_MPEGH/ISO/HEVC") ? (byte) 8 : (byte) -1;
                break;
            case 1045209816:
                b = str.equals("S_TEXT/WEBVTT") ? (byte) 29 : (byte) -1;
                break;
            case 1422270023:
                b = str.equals("S_TEXT/UTF8") ? (byte) 27 : (byte) -1;
                break;
            case 1809237540:
                b = str.equals("V_MPEG2") ? (byte) 3 : (byte) -1;
                break;
            case 1950749482:
                b = str.equals("A_EAC3") ? (byte) 17 : (byte) -1;
                break;
            case 1950789798:
                b = str.equals("A_FLAC") ? (byte) 22 : (byte) -1;
                break;
            case 1951062397:
                b = str.equals("A_OPUS") ? ByteCode.T_LONG : (byte) -1;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
                vdeVar4.e(this.d0, vdeVar4.d);
                this.b.put(vdeVar4.d, vdeVar4);
                break;
        }
        this.w = null;
    }

    public final void i(int i, double d) {
        if (i == 181) {
            r(i);
            this.w.S = (int) d;
            return;
        }
        if (i == 17545) {
            this.t = (long) d;
            return;
        }
        switch (i) {
            case 21969:
                r(i);
                this.w.F = (float) d;
                break;
            case 21970:
                r(i);
                this.w.G = (float) d;
                break;
            case 21971:
                r(i);
                this.w.H = (float) d;
                break;
            case 21972:
                r(i);
                this.w.I = (float) d;
                break;
            case 21973:
                r(i);
                this.w.J = (float) d;
                break;
            case 21974:
                r(i);
                this.w.K = (float) d;
                break;
            case 21975:
                r(i);
                this.w.L = (float) d;
                break;
            case 21976:
                r(i);
                this.w.M = (float) d;
                break;
            case 21977:
                r(i);
                this.w.N = (float) d;
                break;
            case 21978:
                r(i);
                this.w.O = (float) d;
                break;
            default:
                switch (i) {
                    case 30323:
                        r(i);
                        this.w.u = (float) d;
                        break;
                    case 30324:
                        r(i);
                        this.w.v = (float) d;
                        break;
                    case 30325:
                        r(i);
                        this.w.w = (float) d;
                        break;
                }
                break;
        }
    }

    public final void j(int i, long j) {
        boolean z;
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw zzaz.zza("ContentEncodingOrder " + j + " not supported", null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw zzaz.zza("ContentEncodingScope " + j + " not supported", null);
        }
        switch (i) {
            case 131:
                r(i);
                this.w.e = (int) j;
                return;
            case 136:
                z = j == 1;
                r(i);
                this.w.X = z;
                return;
            case 155:
                this.K = p(j);
                return;
            case 159:
                r(i);
                this.w.Q = (int) j;
                return;
            case 176:
                r(i);
                this.w.n = (int) j;
                return;
            case ByteCode.PUTSTATIC:
                q(i);
                this.E.c(p(j));
                return;
            case ByteCode.INVOKEDYNAMIC:
                r(i);
                this.w.o = (int) j;
                return;
            case IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR:
                r(i);
                this.w.d = (int) j;
                return;
            case 231:
                this.D = p(j);
                return;
            case 238:
                this.R = (int) j;
                return;
            case 241:
                if (this.G) {
                    return;
                }
                q(i);
                this.F.c(j);
                this.G = true;
                return;
            case 251:
                this.S = true;
                return;
            case 16871:
                r(i);
                this.w.h = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw zzaz.zza("ContentCompAlgo " + j + " not supported", null);
            case 17029:
                if (j < 1 || j > 2) {
                    throw zzaz.zza("DocTypeReadVersion " + j + " not supported", null);
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                throw zzaz.zza("EBMLReadVersion " + j + " not supported", null);
            case 18401:
                if (j == 5) {
                    return;
                }
                throw zzaz.zza("ContentEncAlgo " + j + " not supported", null);
            case 18408:
                if (j == 1) {
                    return;
                }
                throw zzaz.zza("AESSettingsCipherMode " + j + " not supported", null);
            case 21420:
                this.z = j + this.r;
                return;
            case 21432:
                int i2 = (int) j;
                r(i);
                if (i2 == 0) {
                    this.w.y = 0;
                    return;
                }
                if (i2 == 1) {
                    this.w.y = 2;
                    return;
                } else if (i2 == 3) {
                    this.w.y = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.w.y = 3;
                    return;
                }
            case 21680:
                r(i);
                this.w.q = (int) j;
                return;
            case 21682:
                r(i);
                this.w.s = (int) j;
                return;
            case 21690:
                r(i);
                this.w.r = (int) j;
                return;
            case 21930:
                z = j == 1;
                r(i);
                this.w.W = z;
                return;
            case 21938:
                r(i);
                vde vdeVar = this.w;
                vdeVar.z = true;
                vdeVar.p = (int) j;
                return;
            case 21998:
                r(i);
                this.w.g = (int) j;
                return;
            case 22186:
                r(i);
                this.w.T = j;
                return;
            case 22203:
                r(i);
                this.w.U = j;
                return;
            case 25188:
                r(i);
                this.w.R = (int) j;
                return;
            case 30114:
                this.T = j;
                return;
            case 30321:
                int i3 = (int) j;
                r(i);
                if (i3 == 0) {
                    this.w.t = 0;
                    return;
                }
                if (i3 == 1) {
                    this.w.t = 1;
                    return;
                } else if (i3 == 2) {
                    this.w.t = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.w.t = 3;
                    return;
                }
            case 2352003:
                r(i);
                this.w.f = (int) j;
                return;
            case 2807729:
                this.s = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        int i4 = (int) j;
                        r(i);
                        if (i4 == 1) {
                            this.w.C = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.w.C = 1;
                            return;
                        }
                    case 21946:
                        r(i);
                        int iB = h6j.b((int) j);
                        if (iB != -1) {
                            this.w.B = iB;
                            return;
                        }
                        return;
                    case 21947:
                        r(i);
                        this.w.z = true;
                        int iA = h6j.a((int) j);
                        if (iA != -1) {
                            this.w.A = iA;
                            return;
                        }
                        return;
                    case 21948:
                        r(i);
                        this.w.D = (int) j;
                        return;
                    case 21949:
                        r(i);
                        this.w.E = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    public final void k(int i, long j, long j2) {
        n7g.b(this.d0);
        if (i == 160) {
            this.S = false;
            this.T = 0L;
            return;
        }
        if (i == 174) {
            vde vdeVar = new vde();
            this.w = vdeVar;
            vdeVar.a = this.v;
            return;
        }
        if (i == 187) {
            this.G = false;
            return;
        }
        if (i == 19899) {
            this.y = -1;
            this.z = -1L;
            return;
        }
        if (i == 20533) {
            r(i);
            this.w.i = true;
            return;
        }
        if (i == 21968) {
            r(i);
            this.w.z = true;
            return;
        }
        if (i == 408125543) {
            long j3 = this.r;
            if (j3 != -1 && j3 != j) {
                throw zzaz.zza("Multiple Segment elements not supported", null);
            }
            this.r = j;
            this.q = j2;
            return;
        }
        if (i == 475249515) {
            this.E = new xsg(32);
            this.F = new xsg(32);
        } else if (i == 524531317 && !this.x) {
            if (this.c && this.B != -1) {
                this.A = true;
            } else {
                this.d0.i(new jae(this.u, 0L));
                this.x = true;
            }
        }
    }

    public final void l(int i, String str) {
        if (i == 134) {
            r(i);
            this.w.c = str;
            return;
        }
        if (i != 17026) {
            if (i == 21358) {
                r(i);
                this.w.b = str;
                return;
            } else {
                if (i != 2274716) {
                    return;
                }
                r(i);
                this.w.Y = str;
                return;
            }
        }
        if ("webm".equals(str) || "matroska".equals(str)) {
            this.v = Objects.equals(str, "webm");
            return;
        }
        throw zzaz.zza("DocType " + str + " not supported", null);
    }

    public final int n(d9e d9eVar, vde vdeVar, int i, boolean z) throws zzaz {
        int i2;
        if ("S_TEXT/UTF8".equals(vdeVar.c)) {
            v(d9eVar, f0, i);
            int i3 = this.V;
            u();
            return i3;
        }
        if ("S_TEXT/ASS".equals(vdeVar.c)) {
            v(d9eVar, h0, i);
            int i4 = this.V;
            u();
            return i4;
        }
        if ("S_TEXT/WEBVTT".equals(vdeVar.c)) {
            v(d9eVar, i0, i);
            int i5 = this.V;
            u();
            return i5;
        }
        rae raeVar = vdeVar.Z;
        if (!this.X) {
            if (vdeVar.i) {
                this.Q &= -1073741825;
                if (!this.Y) {
                    u4h u4hVar = this.h;
                    d9eVar.h(u4hVar.n(), 0, 1);
                    this.U++;
                    if ((u4hVar.n()[0] & SocketData.CLAZZ_TYPE_END_SOCKET) == 128) {
                        throw zzaz.zza("Extension bit is set in signal byte", null);
                    }
                    this.b0 = u4hVar.n()[0];
                    this.Y = true;
                }
                byte b = this.b0;
                if ((b & 1) == 1) {
                    int i6 = b & 2;
                    this.Q |= 1073741824;
                    if (!this.c0) {
                        u4h u4hVar2 = this.m;
                        d9eVar.h(u4hVar2.n(), 0, 8);
                        this.U += 8;
                        this.c0 = true;
                        u4h u4hVar3 = this.h;
                        u4hVar3.n()[0] = (byte) ((i6 != 2 ? 0 : 128) | 8);
                        u4hVar3.l(0);
                        raeVar.b(u4hVar3, 1, 1);
                        this.V++;
                        u4hVar2.l(0);
                        raeVar.b(u4hVar2, 8, 1);
                        this.V += 8;
                    }
                    if (i6 == 2) {
                        if (!this.Z) {
                            u4h u4hVar4 = this.h;
                            d9eVar.h(u4hVar4.n(), 0, 1);
                            this.U++;
                            u4hVar4.l(0);
                            this.a0 = u4hVar4.G();
                            this.Z = true;
                        }
                        int i7 = this.a0 * 4;
                        u4h u4hVar5 = this.h;
                        u4hVar5.i(i7);
                        d9eVar.h(u4hVar5.n(), 0, i7);
                        this.U += i7;
                        int i8 = (this.a0 >> 1) + 1;
                        int i9 = (i8 * 6) + 2;
                        ByteBuffer byteBuffer = this.p;
                        if (byteBuffer == null || byteBuffer.capacity() < i9) {
                            this.p = ByteBuffer.allocate(i9);
                        }
                        this.p.position(0);
                        this.p.putShort((short) i8);
                        int i10 = 0;
                        int i11 = 0;
                        while (true) {
                            i2 = this.a0;
                            if (i10 >= i2) {
                                break;
                            }
                            int iJ = u4hVar5.J();
                            int i12 = iJ - i11;
                            if (i10 % 2 == 0) {
                                this.p.putShort((short) i12);
                            } else {
                                this.p.putInt(i12);
                            }
                            i10++;
                            i11 = iJ;
                        }
                        int i13 = (i - this.U) - i11;
                        if ((i2 & 1) == 1) {
                            this.p.putInt(i13);
                        } else {
                            this.p.putShort((short) i13);
                            this.p.putInt(0);
                        }
                        u4h u4hVar6 = this.n;
                        u4hVar6.j(this.p.array(), i9);
                        raeVar.b(u4hVar6, i9, 1);
                        this.V += i9;
                    }
                }
            } else {
                byte[] bArr = vdeVar.j;
                if (bArr != null) {
                    this.k.j(bArr, bArr.length);
                }
            }
            if (!"A_OPUS".equals(vdeVar.c) ? vdeVar.g > 0 : z) {
                this.Q |= 268435456;
                this.o.i(0);
                int iX = (this.k.x() + i) - this.U;
                u4h u4hVar7 = this.h;
                u4hVar7.i(4);
                u4hVar7.n()[0] = (byte) ((iX >> 24) & 255);
                u4hVar7.n()[1] = (byte) ((iX >> 16) & 255);
                u4hVar7.n()[2] = (byte) ((iX >> 8) & 255);
                u4hVar7.n()[3] = (byte) (iX & 255);
                raeVar.b(u4hVar7, 4, 2);
                this.V += 4;
            }
            this.X = true;
        }
        u4h u4hVar8 = this.k;
        int iX2 = i + u4hVar8.x();
        if (!"V_MPEG4/ISO/AVC".equals(vdeVar.c) && !"V_MPEGH/ISO/HEVC".equals(vdeVar.c)) {
            if (vdeVar.V != null) {
                n7g.f(u4hVar8.x() == 0);
                vdeVar.V.d(d9eVar);
            }
            while (true) {
                int i14 = this.U;
                if (i14 >= iX2) {
                    break;
                }
                int iO = o(d9eVar, raeVar, iX2 - i14);
                this.U += iO;
                this.V += iO;
            }
        } else {
            u4h u4hVar9 = this.g;
            byte[] bArrN = u4hVar9.n();
            bArrN[0] = 0;
            bArrN[1] = 0;
            bArrN[2] = 0;
            int i15 = vdeVar.a0;
            int i16 = 4 - i15;
            while (this.U < iX2) {
                int i17 = this.W;
                if (i17 == 0) {
                    int iMin = Math.min(i15, u4hVar8.u());
                    d9eVar.h(bArrN, i16 + iMin, i15 - iMin);
                    if (iMin > 0) {
                        u4hVar8.h(bArrN, i16, iMin);
                    }
                    this.U += i15;
                    u4hVar9.l(0);
                    this.W = u4hVar9.J();
                    u4h u4hVar10 = this.f;
                    u4hVar10.l(0);
                    raeVar.d(u4hVar10, 4);
                    this.V += 4;
                } else {
                    int iO2 = o(d9eVar, raeVar, i17);
                    this.U += iO2;
                    this.V += iO2;
                    this.W -= iO2;
                }
            }
        }
        if ("A_VORBIS".equals(vdeVar.c)) {
            u4h u4hVar11 = this.i;
            u4hVar11.l(0);
            raeVar.d(u4hVar11, 4);
            this.V += 4;
        }
        int i18 = this.V;
        u();
        return i18;
    }

    public final int o(d9e d9eVar, rae raeVar, int i) {
        u4h u4hVar = this.k;
        int iU = u4hVar.u();
        if (iU <= 0) {
            return raeVar.a(d9eVar, i, false);
        }
        int iMin = Math.min(i, iU);
        raeVar.d(u4hVar, iMin);
        return iMin;
    }

    public final long p(long j) throws zzaz {
        long j2 = this.s;
        if (j2 != C.TIME_UNSET) {
            return kfh.P(j, j2, 1000L, RoundingMode.DOWN);
        }
        throw zzaz.zza("Can't scale timecode prior to timecodeScale being set.", null);
    }

    public final void q(int i) throws zzaz {
        if (this.E == null || this.F == null) {
            throw zzaz.zza("Element " + i + " must be in a Cues", null);
        }
    }

    public final void r(int i) throws zzaz {
        if (this.w != null) {
            return;
        }
        throw zzaz.zza("Element " + i + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0090  */
    public final void s(vde vdeVar, long j, int i, int i2, int i3) {
        byte b;
        byte[] bArrW;
        int i4;
        int iX;
        sae saeVar = vdeVar.V;
        if (saeVar != null) {
            saeVar.c(vdeVar.Z, j, i, i2, i3, vdeVar.k);
        } else {
            if ("S_TEXT/UTF8".equals(vdeVar.c) || "S_TEXT/ASS".equals(vdeVar.c) || "S_TEXT/WEBVTT".equals(vdeVar.c)) {
                if (this.M > 1) {
                    zrg.f("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j2 = this.K;
                    if (j2 == C.TIME_UNSET) {
                        zrg.f("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        String str = vdeVar.c;
                        u4h u4hVar = this.l;
                        byte[] bArrN = u4hVar.n();
                        int iHashCode = str.hashCode();
                        if (iHashCode != 738597099) {
                            if (iHashCode != 1045209816) {
                                if (iHashCode == 1422270023 && str.equals("S_TEXT/UTF8")) {
                                    b = 0;
                                } else {
                                    b = -1;
                                }
                            } else if (str.equals("S_TEXT/WEBVTT")) {
                                b = 2;
                            } else {
                                b = -1;
                            }
                        } else if (str.equals("S_TEXT/ASS")) {
                            b = 1;
                        } else {
                            b = -1;
                        }
                        if (b == 0) {
                            bArrW = w(j2, "%02d:%02d:%02d,%03d", 1000L);
                            i4 = 19;
                        } else if (b == 1) {
                            bArrW = w(j2, "%01d:%02d:%02d:%02d", 10000L);
                            i4 = 21;
                        } else {
                            if (b != 2) {
                                throw new IllegalArgumentException();
                            }
                            bArrW = w(j2, "%02d:%02d:%02d.%03d", 1000L);
                            i4 = 25;
                        }
                        System.arraycopy(bArrW, 0, bArrN, i4, bArrW.length);
                        for (int iW = u4hVar.w(); iW < u4hVar.x(); iW++) {
                            if (u4hVar.n()[iW] == 0) {
                                u4hVar.k(iW);
                                break;
                            }
                        }
                        vdeVar.Z.d(u4hVar, u4hVar.x());
                        iX = i2 + u4hVar.x();
                    }
                }
                iX = i2;
            } else {
                iX = i2;
            }
            if ((i & 268435456) != 0) {
                if (this.M > 1) {
                    this.o.i(0);
                } else {
                    u4h u4hVar2 = this.o;
                    int iX2 = u4hVar2.x();
                    vdeVar.Z.b(u4hVar2, iX2, 2);
                    iX += iX2;
                }
            }
            vdeVar.Z.g(j, i, iX, i3, vdeVar.k);
        }
        this.H = true;
    }

    public final void t(d9e d9eVar, int i) {
        u4h u4hVar = this.h;
        if (u4hVar.x() >= i) {
            return;
        }
        if (u4hVar.v() < i) {
            int iV = u4hVar.v();
            u4hVar.f(Math.max(iV + iV, i));
        }
        d9eVar.h(u4hVar.n(), u4hVar.x(), i - u4hVar.x());
        u4hVar.k(i);
    }

    public final void u() {
        this.U = 0;
        this.V = 0;
        this.W = 0;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.a0 = 0;
        this.b0 = (byte) 0;
        this.c0 = false;
        this.k.i(0);
    }

    public final void v(d9e d9eVar, byte[] bArr, int i) {
        int length = bArr.length;
        int i2 = length + i;
        u4h u4hVar = this.l;
        if (u4hVar.v() < i2) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i2 + i);
            u4hVar.j(bArrCopyOf, bArrCopyOf.length);
        } else {
            System.arraycopy(bArr, 0, u4hVar.n(), 0, length);
        }
        d9eVar.h(u4hVar.n(), length, i);
        u4hVar.l(0);
        u4hVar.k(i2);
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return zzfww.zzn();
    }

    public xde(sde sdeVar, int i, vge vgeVar) {
        this.r = -1L;
        this.s = C.TIME_UNSET;
        this.t = C.TIME_UNSET;
        this.u = C.TIME_UNSET;
        this.B = -1L;
        this.C = -1L;
        this.D = C.TIME_UNSET;
        this.e0 = sdeVar;
        sdeVar.a(new ude(this, null));
        this.e = vgeVar;
        this.c = 1 == ((i & 1) ^ 1);
        this.d = (i & 2) == 0;
        this.a = new zde();
        this.b = new SparseArray();
        this.h = new u4h(4);
        this.i = new u4h(ByteBuffer.allocate(4).putInt(-1).array());
        this.j = new u4h(4);
        this.f = new u4h(jzh.a);
        this.g = new u4h(4);
        this.k = new u4h();
        this.l = new u4h();
        this.m = new u4h(8);
        this.n = new u4h();
        this.o = new u4h();
        this.N = new int[1];
    }

    public xde(vge vgeVar, int i) {
        this(new sde(), 0, vgeVar);
    }
}
