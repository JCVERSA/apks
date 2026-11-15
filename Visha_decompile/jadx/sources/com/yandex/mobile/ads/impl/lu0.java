package com.yandex.mobile.ads.impl;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.audiotagger.tag.reference.Languages;
import com.transsion.socket.pkgdata.SocketData;
import com.yandex.mobile.ads.impl.lu0;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.mozilla.classfile.ByteCode;

public final class lu0 implements z70 {
    private static final byte[] c0;
    private static final byte[] d0;
    private static final byte[] e0;
    private static final byte[] f0;
    private static final UUID g0;
    private static final Map<String, Integer> h0;
    private long A;
    private long B;

    @Nullable
    private gt0 C;

    @Nullable
    private gt0 D;
    private boolean E;
    private boolean F;
    private int G;
    private long H;
    private long I;
    private int J;
    private int K;
    private int[] L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private boolean X;
    private int Y;
    private byte Z;
    private final a50 a;
    private boolean a0;
    private final q92 b;
    private b80 b0;
    private final SparseArray<b> c;
    private final boolean d;
    private final ag1 e;
    private final ag1 f;
    private final ag1 g;
    private final ag1 h;
    private final ag1 i;
    private final ag1 j;
    private final ag1 k;
    private final ag1 l;
    private final ag1 m;
    private final ag1 n;
    private ByteBuffer o;
    private long p;
    private long q;
    private long r;
    private long s;
    private long t;

    @Nullable
    private b u;
    private boolean v;
    private int w;
    private long x;
    private boolean y;
    private long z;

    public final class a implements z40 {
        public final void a(int i, int i2, wz wzVar) throws IOException {
            int i3;
            long j;
            int i4;
            int i5;
            int i6;
            lu0 lu0Var = lu0.this;
            lu0Var.getClass();
            int i7 = 4;
            int i8 = 1;
            int i9 = 0;
            if (i != 161 && i != 163) {
                if (i == 165) {
                    if (lu0Var.G != 2) {
                        return;
                    }
                    b bVar = (b) lu0Var.c.get(lu0Var.M);
                    if (lu0Var.P != 4 || !"V_VP9".equals(bVar.b)) {
                        wzVar.a(i2);
                        return;
                    } else {
                        lu0Var.n.c(i2);
                        wzVar.a(lu0Var.n.c(), 0, i2, false);
                        return;
                    }
                }
                if (i == 16877) {
                    lu0Var.a(i);
                    b bVar2 = lu0Var.u;
                    int i10 = bVar2.g;
                    if (i10 != 1685485123 && i10 != 1685480259) {
                        wzVar.a(i2);
                        return;
                    }
                    byte[] bArr = new byte[i2];
                    bVar2.N = bArr;
                    wzVar.a(bArr, 0, i2, false);
                    return;
                }
                if (i == 16981) {
                    lu0Var.a(i);
                    b bVar3 = lu0Var.u;
                    byte[] bArr2 = new byte[i2];
                    bVar3.i = bArr2;
                    wzVar.a(bArr2, 0, i2, false);
                    return;
                }
                if (i == 18402) {
                    byte[] bArr3 = new byte[i2];
                    wzVar.a(bArr3, 0, i2, false);
                    lu0Var.a(i);
                    lu0Var.u.j = new a62.a(1, 0, 0, bArr3);
                    return;
                }
                if (i == 21419) {
                    Arrays.fill(lu0Var.i.c(), (byte) 0);
                    wzVar.a(lu0Var.i.c(), 4 - i2, i2, false);
                    lu0Var.i.e(0);
                    lu0Var.w = (int) lu0Var.i.v();
                    return;
                }
                if (i == 25506) {
                    lu0Var.a(i);
                    b bVar4 = lu0Var.u;
                    byte[] bArr4 = new byte[i2];
                    bVar4.k = bArr4;
                    wzVar.a(bArr4, 0, i2, false);
                    return;
                }
                if (i != 30322) {
                    throw eg1.a("Unexpected id: " + i, (Exception) null);
                }
                lu0Var.a(i);
                b bVar5 = lu0Var.u;
                byte[] bArr5 = new byte[i2];
                bVar5.v = bArr5;
                wzVar.a(bArr5, 0, i2, false);
                return;
            }
            if (lu0Var.G == 0) {
                lu0Var.M = (int) lu0Var.b.a(wzVar, false, true, 8);
                lu0Var.N = lu0Var.b.a();
                lu0Var.I = C.TIME_UNSET;
                lu0Var.G = 1;
                lu0Var.g.c(0);
            }
            b bVar6 = (b) lu0Var.c.get(lu0Var.M);
            if (bVar6 == null) {
                wzVar.a(i2 - lu0Var.N);
                lu0Var.G = 0;
                return;
            }
            bVar6.X.getClass();
            if (lu0Var.G == 1) {
                lu0Var.a(wzVar, 3);
                int i11 = (lu0Var.g.c()[2] & 6) >> 1;
                if (i11 == 0) {
                    lu0Var.K = 1;
                    int[] iArr = lu0Var.L;
                    if (iArr == null) {
                        iArr = new int[1];
                    } else if (iArr.length < 1) {
                        iArr = new int[Math.max(iArr.length * 2, 1)];
                    }
                    lu0Var.L = iArr;
                    iArr[0] = (i2 - lu0Var.N) - 3;
                } else {
                    lu0Var.a(wzVar, 4);
                    int i12 = (lu0Var.g.c()[3] & 255) + 1;
                    lu0Var.K = i12;
                    int[] iArr2 = lu0Var.L;
                    if (iArr2 == null) {
                        iArr2 = new int[i12];
                    } else if (iArr2.length < i12) {
                        iArr2 = new int[Math.max(iArr2.length * 2, i12)];
                    }
                    lu0Var.L = iArr2;
                    if (i11 == 2) {
                        int i13 = (i2 - lu0Var.N) - 4;
                        int i14 = lu0Var.K;
                        Arrays.fill(iArr2, 0, i14, i13 / i14);
                    } else if (i11 == 1) {
                        int i15 = 0;
                        int i16 = 0;
                        while (true) {
                            i4 = lu0Var.K - 1;
                            if (i15 >= i4) {
                                break;
                            }
                            lu0Var.L[i15] = 0;
                            while (true) {
                                i5 = i7 + 1;
                                lu0Var.a(wzVar, i5);
                                int i17 = lu0Var.g.c()[i7] & 255;
                                int[] iArr3 = lu0Var.L;
                                i6 = iArr3[i15] + i17;
                                iArr3[i15] = i6;
                                if (i17 != 255) {
                                    break;
                                } else {
                                    i7 = i5;
                                }
                            }
                            i16 += i6;
                            i15++;
                            i7 = i5;
                        }
                        lu0Var.L[i4] = ((i2 - lu0Var.N) - i7) - i16;
                    } else {
                        if (i11 != 3) {
                            throw eg1.a("Unexpected lacing value: " + i11, (Exception) null);
                        }
                        int i18 = 0;
                        int i19 = 0;
                        while (true) {
                            int i20 = lu0Var.K - i8;
                            if (i18 >= i20) {
                                lu0Var.L[i20] = ((i2 - lu0Var.N) - i7) - i19;
                                break;
                            }
                            lu0Var.L[i18] = i9;
                            int i21 = i7 + 1;
                            lu0Var.a(wzVar, i21);
                            if (lu0Var.g.c()[i7] == 0) {
                                throw eg1.a("No valid varint length mask found", (Exception) null);
                            }
                            int i22 = i9;
                            while (true) {
                                if (i22 >= 8) {
                                    j = 0;
                                    i7 = i21;
                                    break;
                                }
                                int i23 = i8 << (7 - i22);
                                if ((lu0Var.g.c()[i7] & i23) != 0) {
                                    int i24 = i21 + i22;
                                    lu0Var.a(wzVar, i24);
                                    j = lu0Var.g.c()[i7] & 255 & (~i23);
                                    while (i21 < i24) {
                                        j = (j << 8) | ((long) (lu0Var.g.c()[i21] & 255));
                                        i21++;
                                    }
                                    if (i18 > 0) {
                                        j -= (1 << ((i22 * 7) + 6)) - 1;
                                    }
                                    i7 = i24;
                                    break;
                                }
                                i22++;
                                i8 = 1;
                            }
                            if (j < -2147483648L || j > 2147483647L) {
                                throw eg1.a("EBML lacing sample size out of range.", (Exception) null);
                            }
                            int i25 = (int) j;
                            int[] iArr4 = lu0Var.L;
                            if (i18 != 0) {
                                i25 += iArr4[i18 - 1];
                            }
                            iArr4[i18] = i25;
                            i19 += i25;
                            i18++;
                            i8 = 1;
                            i9 = 0;
                        }
                    }
                }
                lu0Var.H = lu0Var.B + lu0Var.a((lu0Var.g.c()[0] << 8) | (lu0Var.g.c()[1] & 255));
                lu0Var.O = (bVar6.d == 2 || (i == 163 && (lu0Var.g.c()[2] & SocketData.CLAZZ_TYPE_END_SOCKET) == 128)) ? 1 : 0;
                lu0Var.G = 2;
                lu0Var.J = 0;
                i3 = 163;
            } else {
                i3 = 163;
            }
            if (i == i3) {
                while (true) {
                    int i26 = lu0Var.J;
                    if (i26 >= lu0Var.K) {
                        lu0Var.G = 0;
                        return;
                    } else {
                        lu0Var.a(bVar6, lu0Var.H + ((long) ((lu0Var.J * bVar6.e) / 1000)), lu0Var.O, lu0Var.a(wzVar, bVar6, lu0Var.L[i26], false), 0);
                        lu0Var.J++;
                    }
                }
            } else {
                while (true) {
                    int i27 = lu0Var.J;
                    if (i27 >= lu0Var.K) {
                        return;
                    }
                    int[] iArr5 = lu0Var.L;
                    iArr5[i27] = lu0Var.a(wzVar, bVar6, iArr5[i27], true);
                    lu0Var.J++;
                }
            }
        }

        private a() {
        }

        public final void a(int i, double d) throws eg1 {
            lu0 lu0Var = lu0.this;
            if (i == 181) {
                lu0Var.a(i);
                lu0Var.u.Q = (int) d;
                return;
            }
            if (i != 17545) {
                switch (i) {
                    case 21969:
                        lu0Var.a(i);
                        lu0Var.u.D = (float) d;
                        break;
                    case 21970:
                        lu0Var.a(i);
                        lu0Var.u.E = (float) d;
                        break;
                    case 21971:
                        lu0Var.a(i);
                        lu0Var.u.F = (float) d;
                        break;
                    case 21972:
                        lu0Var.a(i);
                        lu0Var.u.G = (float) d;
                        break;
                    case 21973:
                        lu0Var.a(i);
                        lu0Var.u.H = (float) d;
                        break;
                    case 21974:
                        lu0Var.a(i);
                        lu0Var.u.I = (float) d;
                        break;
                    case 21975:
                        lu0Var.a(i);
                        lu0Var.u.J = (float) d;
                        break;
                    case 21976:
                        lu0Var.a(i);
                        lu0Var.u.K = (float) d;
                        break;
                    case 21977:
                        lu0Var.a(i);
                        lu0Var.u.L = (float) d;
                        break;
                    case 21978:
                        lu0Var.a(i);
                        lu0Var.u.M = (float) d;
                        break;
                    default:
                        switch (i) {
                            case 30323:
                                lu0Var.a(i);
                                lu0Var.u.s = (float) d;
                                break;
                            case 30324:
                                lu0Var.a(i);
                                lu0Var.u.t = (float) d;
                                break;
                            case 30325:
                                lu0Var.a(i);
                                lu0Var.u.u = (float) d;
                                break;
                            default:
                                lu0Var.getClass();
                                break;
                        }
                        break;
                }
                return;
            }
            lu0Var.s = (long) d;
        }

        public final void a(int i, long j) throws eg1 {
            gt0 gt0Var;
            lu0 lu0Var = lu0.this;
            lu0Var.getClass();
            if (i == 20529) {
                if (j == 0) {
                    return;
                }
                throw eg1.a("ContentEncodingOrder " + j + " not supported", (Exception) null);
            }
            if (i == 20530) {
                if (j == 1) {
                    return;
                }
                throw eg1.a("ContentEncodingScope " + j + " not supported", (Exception) null);
            }
            int i2 = 3;
            int i3 = 2;
            switch (i) {
                case 131:
                    lu0Var.a(i);
                    lu0Var.u.d = (int) j;
                    return;
                case 136:
                    lu0Var.a(i);
                    lu0Var.u.V = j == 1;
                    return;
                case 155:
                    lu0Var.I = lu0Var.a(j);
                    return;
                case 159:
                    lu0Var.a(i);
                    lu0Var.u.O = (int) j;
                    return;
                case 176:
                    lu0Var.a(i);
                    lu0Var.u.m = (int) j;
                    return;
                case ByteCode.PUTSTATIC:
                    gt0 gt0Var2 = lu0Var.C;
                    if (gt0Var2 != null && lu0Var.D != null) {
                        gt0Var2.a(lu0Var.a(j));
                        return;
                    }
                    throw eg1.a("Element " + i + " must be in a Cues", (Exception) null);
                case ByteCode.INVOKEDYNAMIC:
                    lu0Var.a(i);
                    lu0Var.u.n = (int) j;
                    return;
                case IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR:
                    lu0Var.a(i);
                    lu0Var.u.c = (int) j;
                    return;
                case 231:
                    lu0Var.B = lu0Var.a(j);
                    return;
                case 238:
                    lu0Var.P = (int) j;
                    return;
                case 241:
                    if (lu0Var.E) {
                        return;
                    }
                    if (lu0Var.C != null && (gt0Var = lu0Var.D) != null) {
                        gt0Var.a(j);
                        lu0Var.E = true;
                        return;
                    } else {
                        throw eg1.a("Element " + i + " must be in a Cues", (Exception) null);
                    }
                case 251:
                    lu0Var.Q = true;
                    return;
                case 16871:
                    lu0Var.a(i);
                    lu0Var.u.g = (int) j;
                    return;
                case 16980:
                    if (j == 3) {
                        return;
                    }
                    throw eg1.a("ContentCompAlgo " + j + " not supported", (Exception) null);
                case 17029:
                    if (j < 1 || j > 2) {
                        throw eg1.a("DocTypeReadVersion " + j + " not supported", (Exception) null);
                    }
                    return;
                case 17143:
                    if (j == 1) {
                        return;
                    }
                    throw eg1.a("EBMLReadVersion " + j + " not supported", (Exception) null);
                case 18401:
                    if (j == 5) {
                        return;
                    }
                    throw eg1.a("ContentEncAlgo " + j + " not supported", (Exception) null);
                case 18408:
                    if (j == 1) {
                        return;
                    }
                    throw eg1.a("AESSettingsCipherMode " + j + " not supported", (Exception) null);
                case 21420:
                    lu0Var.x = j + lu0Var.q;
                    return;
                case 21432:
                    int i4 = (int) j;
                    lu0Var.a(i);
                    if (i4 == 0) {
                        lu0Var.u.w = 0;
                        return;
                    }
                    if (i4 == 1) {
                        lu0Var.u.w = 2;
                        return;
                    } else if (i4 == 3) {
                        lu0Var.u.w = 1;
                        return;
                    } else {
                        if (i4 != 15) {
                            return;
                        }
                        lu0Var.u.w = 3;
                        return;
                    }
                case 21680:
                    lu0Var.a(i);
                    lu0Var.u.o = (int) j;
                    return;
                case 21682:
                    lu0Var.a(i);
                    lu0Var.u.q = (int) j;
                    return;
                case 21690:
                    lu0Var.a(i);
                    lu0Var.u.p = (int) j;
                    return;
                case 21930:
                    lu0Var.a(i);
                    lu0Var.u.U = j == 1;
                    return;
                case 21998:
                    lu0Var.a(i);
                    lu0Var.u.f = (int) j;
                    return;
                case 22186:
                    lu0Var.a(i);
                    lu0Var.u.R = j;
                    return;
                case 22203:
                    lu0Var.a(i);
                    lu0Var.u.S = j;
                    return;
                case 25188:
                    lu0Var.a(i);
                    lu0Var.u.P = (int) j;
                    return;
                case 30114:
                    lu0Var.R = j;
                    return;
                case 30321:
                    lu0Var.a(i);
                    int i5 = (int) j;
                    if (i5 == 0) {
                        lu0Var.u.r = 0;
                        return;
                    }
                    if (i5 == 1) {
                        lu0Var.u.r = 1;
                        return;
                    } else if (i5 == 2) {
                        lu0Var.u.r = 2;
                        return;
                    } else {
                        if (i5 != 3) {
                            return;
                        }
                        lu0Var.u.r = 3;
                        return;
                    }
                case 2352003:
                    lu0Var.a(i);
                    lu0Var.u.e = (int) j;
                    return;
                case 2807729:
                    lu0Var.r = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            lu0Var.a(i);
                            int i6 = (int) j;
                            if (i6 == 1) {
                                lu0Var.u.A = 2;
                                return;
                            } else {
                                if (i6 != 2) {
                                    return;
                                }
                                lu0Var.u.A = 1;
                                return;
                            }
                        case 21946:
                            lu0Var.a(i);
                            int i7 = (int) j;
                            km.a<rq> aVar = rq.g;
                            if (i7 != 1) {
                                if (i7 == 16) {
                                    i2 = 6;
                                } else if (i7 == 18) {
                                    i2 = 7;
                                } else if (i7 != 6 && i7 != 7) {
                                    i2 = -1;
                                }
                            }
                            if (i2 != -1) {
                                lu0Var.u.z = i2;
                                return;
                            }
                            return;
                        case 21947:
                            lu0Var.a(i);
                            b bVar = lu0Var.u;
                            bVar.x = true;
                            int i8 = (int) j;
                            km.a<rq> aVar2 = rq.g;
                            if (i8 == 1) {
                                i3 = 1;
                            } else if (i8 == 9) {
                                i3 = 6;
                            } else if (i8 != 4 && i8 != 5 && i8 != 6 && i8 != 7) {
                                i3 = -1;
                            }
                            if (i3 != -1) {
                                bVar.y = i3;
                                return;
                            }
                            return;
                        case 21948:
                            lu0Var.a(i);
                            lu0Var.u.B = (int) j;
                            return;
                        case 21949:
                            lu0Var.a(i);
                            lu0Var.u.C = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }

        public final void a(int i, long j, long j2) throws eg1 {
            lu0 lu0Var = lu0.this;
            b80 b80Var = lu0Var.b0;
            if (b80Var == null) {
                throw new IllegalStateException();
            }
            if (i == 160) {
                lu0Var.Q = false;
                lu0Var.R = 0L;
                return;
            }
            if (i == 174) {
                lu0Var.u = new b();
                return;
            }
            if (i == 187) {
                lu0Var.E = false;
                return;
            }
            if (i == 19899) {
                lu0Var.w = -1;
                lu0Var.x = -1L;
                return;
            }
            if (i == 20533) {
                lu0Var.a(i);
                lu0Var.u.h = true;
                return;
            }
            if (i == 21968) {
                lu0Var.a(i);
                lu0Var.u.x = true;
                return;
            }
            if (i == 408125543) {
                long j3 = lu0Var.q;
                if (j3 != -1 && j3 != j) {
                    throw eg1.a("Multiple Segment elements not supported", (Exception) null);
                }
                lu0Var.q = j;
                lu0Var.p = j2;
                return;
            }
            if (i != 475249515) {
                if (i == 524531317 && !lu0Var.v) {
                    if (lu0Var.d && lu0Var.z != -1) {
                        lu0Var.y = true;
                        return;
                    } else {
                        b80Var.a(new ex1.b(lu0Var.t, 0L));
                        lu0Var.v = true;
                        return;
                    }
                }
                return;
            }
            lu0Var.C = new gt0(0);
            lu0Var.D = new gt0(0);
        }

        public final void a(int i, String str) throws eg1 {
            lu0 lu0Var = lu0.this;
            lu0Var.getClass();
            if (i == 134) {
                lu0Var.a(i);
                lu0Var.u.b = str;
                return;
            }
            if (i == 17026) {
                if ("webm".equals(str) || "matroska".equals(str)) {
                    return;
                }
                throw eg1.a("DocType " + str + " not supported", (Exception) null);
            }
            if (i == 21358) {
                lu0Var.a(i);
                lu0Var.u.a = str;
            } else {
                if (i != 2274716) {
                    return;
                }
                lu0Var.a(i);
                lu0Var.u.W = str;
            }
        }
    }

    public static final class b {
        public byte[] N;
        public i72 T;
        public boolean U;
        public a62 X;
        public int Y;
        public String a;
        public String b;
        public int c;
        public int d;
        public int e;
        public int f;
        private int g;
        public boolean h;
        public byte[] i;
        public a62.a j;
        public byte[] k;
        public f40 l;
        public int m = -1;
        public int n = -1;
        public int o = -1;
        public int p = -1;
        public int q = 0;
        public int r = -1;
        public float s = 0.0f;
        public float t = 0.0f;
        public float u = 0.0f;
        public byte[] v = null;
        public int w = -1;
        public boolean x = false;
        public int y = -1;
        public int z = -1;
        public int A = -1;
        public int B = 1000;
        public int C = 200;
        public float D = -1.0f;
        public float E = -1.0f;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public float L = -1.0f;
        public float M = -1.0f;
        public int O = 1;
        public int P = -1;
        public int Q = 8000;
        public long R = 0;
        public long S = 0;
        public boolean V = true;
        private String W = Languages.DEFAULT_ID;

        public byte[] a(String str) throws eg1 {
            byte[] bArr = this.k;
            if (bArr != null) {
                return bArr;
            }
            throw eg1.a("Missing CodecPrivate for codec " + str, (Exception) null);
        }
    }

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return lu0.a();
            }
        };
        c0 = new byte[]{49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
        d0 = f92.c("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
        e0 = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        f0 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        g0 = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        ku0.a(0, map, "htc_video_rotA-000", 90, "htc_video_rotA-090");
        ku0.a(180, map, "htc_video_rotA-180", 270, "htc_video_rotA-270");
        h0 = Collections.unmodifiableMap(map);
    }

    public lu0() {
        this(new uz());
    }

    public void a(int i) throws eg1 {
        if (this.u != null) {
            return;
        }
        throw eg1.a("Element " + i + " must be in a TrackEntry", (Exception) null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:223:0x0353  */
    /* JADX WARN: Code duplicated, block: B:495:0x083b  */
    /* JADX WARN: Code duplicated, block: B:500:0x0852  */
    /* JADX WARN: Code duplicated, block: B:501:0x0854  */
    /* JADX WARN: Code duplicated, block: B:504:0x0861  */
    /* JADX WARN: Code duplicated, block: B:505:0x0873  */
    /* JADX WARN: Code duplicated, block: B:507:0x0879  */
    /* JADX WARN: Code duplicated, block: B:509:0x087d  */
    /* JADX WARN: Code duplicated, block: B:511:0x0882  */
    /* JADX WARN: Code duplicated, block: B:514:0x088a  */
    /* JADX WARN: Code duplicated, block: B:516:0x088f  */
    /* JADX WARN: Code duplicated, block: B:519:0x0896  */
    /* JADX WARN: Code duplicated, block: B:522:0x08a4  */
    /* JADX WARN: Code duplicated, block: B:525:0x08a9  */
    /* JADX WARN: Code duplicated, block: B:527:0x08af  */
    /* JADX WARN: Code duplicated, block: B:547:0x0975  */
    /* JADX WARN: Code duplicated, block: B:549:0x0982  */
    /* JADX WARN: Code duplicated, block: B:552:0x0987  */
    /* JADX WARN: Code duplicated, block: B:554:0x098f  */
    /* JADX WARN: Code duplicated, block: B:555:0x099c  */
    /* JADX WARN: Code duplicated, block: B:558:0x09a1  */
    /* JADX WARN: Code duplicated, block: B:577:0x09ee  */
    /* JADX WARN: Code duplicated, block: B:579:0x0a14  */
    /* JADX WARN: Code duplicated, block: B:581:0x0a1c  */
    /* JADX WARN: Code duplicated, block: B:597:0x0a52  */
    /* JADX WARN: Code duplicated, block: B:86:0x0197  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @CallSuper
    public final void b(int i) throws eg1 {
        byte b2;
        byte b3;
        int i2;
        List<byte[]> listSingletonList;
        int i3;
        int i4;
        ArrayList arrayList;
        int i5;
        Pair pair;
        int i6;
        List<byte[]> listA;
        String str;
        byte[] bArr;
        String str2;
        int i7;
        jc0.a aVar;
        int i8;
        int i9;
        int i10;
        float f;
        rq rqVar;
        String str3;
        int iIntValue;
        int i11;
        Map<String, Integer> map;
        byte[] bArr2;
        int i12;
        int i13;
        int i14;
        String str4;
        b bVar;
        t30 t30VarA;
        ex1 bVar2;
        int i15;
        b80 b80Var = this.b0;
        if (b80Var == null) {
            throw new IllegalStateException();
        }
        if (i == 160) {
            if (this.G != 2) {
                return;
            }
            b bVar3 = this.c.get(this.M);
            bVar3.X.getClass();
            if (this.R > 0 && "A_OPUS".equals(bVar3.b)) {
                this.n.a(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.R).array());
            }
            int i16 = 0;
            for (int i17 = 0; i17 < this.K; i17++) {
                i16 += this.L[i17];
            }
            int i18 = 0;
            while (i18 < this.K) {
                long j = this.H + ((long) ((bVar3.e * i18) / 1000));
                int i19 = this.O;
                if (i18 == 0 && !this.Q) {
                    i19 |= 1;
                }
                int i20 = this.L[i18];
                int i21 = i16 - i20;
                a(bVar3, j, i19, i20, i21);
                i18++;
                i16 = i21;
            }
            this.G = 0;
            return;
        }
        String str5 = null;
        if (i != 174) {
            if (i == 19899) {
                int i22 = this.w;
                if (i22 != -1) {
                    long j2 = this.x;
                    if (j2 != -1) {
                        if (i22 == 475249515) {
                            this.z = j2;
                            return;
                        }
                        return;
                    }
                }
                throw eg1.a("Mandatory element SeekID or SeekPosition not found", (Exception) null);
            }
            if (i == 25152) {
                a(i);
                b bVar4 = this.u;
                if (bVar4.h) {
                    a62.a aVar2 = bVar4.j;
                    if (aVar2 == null) {
                        throw eg1.a("Encrypted Track found but ContentEncKeyID was not found", (Exception) null);
                    }
                    bVar4.l = new f40(new f40.b(rm.a, null, MimeTypes.VIDEO_WEBM, aVar2.b));
                    return;
                }
                return;
            }
            if (i == 28032) {
                a(i);
                b bVar5 = this.u;
                if (bVar5.h && bVar5.i != null) {
                    throw eg1.a("Combining encryption and compression is not supported", (Exception) null);
                }
                return;
            }
            if (i == 357149030) {
                if (this.r == C.TIME_UNSET) {
                    this.r = 1000000L;
                }
                long j3 = this.s;
                if (j3 != C.TIME_UNSET) {
                    this.t = a(j3);
                    return;
                }
                return;
            }
            if (i == 374648427) {
                if (this.c.size() == 0) {
                    throw eg1.a("No valid tracks were found", (Exception) null);
                }
                this.b0.a();
                return;
            }
            if (i != 475249515) {
                return;
            }
            if (!this.v) {
                gt0 gt0Var = this.C;
                gt0 gt0Var2 = this.D;
                if (this.q == -1 || this.t == C.TIME_UNSET || gt0Var == null || gt0Var.a() == 0 || gt0Var2 == null || gt0Var2.a() != gt0Var.a()) {
                    bVar2 = new ex1.b(this.t, 0L);
                } else {
                    int iA = gt0Var.a();
                    int[] iArrCopyOf = new int[iA];
                    long[] jArrCopyOf = new long[iA];
                    long[] jArrCopyOf2 = new long[iA];
                    long[] jArrCopyOf3 = new long[iA];
                    for (int i23 = 0; i23 < iA; i23++) {
                        jArrCopyOf3[i23] = gt0Var.a(i23);
                        jArrCopyOf[i23] = gt0Var2.a(i23) + this.q;
                    }
                    int i24 = 0;
                    while (true) {
                        i15 = iA - 1;
                        if (i24 >= i15) {
                            break;
                        }
                        int i25 = i24 + 1;
                        iArrCopyOf[i24] = (int) (jArrCopyOf[i25] - jArrCopyOf[i24]);
                        jArrCopyOf2[i24] = jArrCopyOf3[i25] - jArrCopyOf3[i24];
                        i24 = i25;
                    }
                    iArrCopyOf[i15] = (int) ((this.q + this.p) - jArrCopyOf[i15]);
                    long j4 = this.t - jArrCopyOf3[i15];
                    jArrCopyOf2[i15] = j4;
                    if (j4 <= 0) {
                        et0.d("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j4);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i15);
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i15);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i15);
                        jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i15);
                    }
                    bVar2 = new mo(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
                }
                b80Var.a(bVar2);
                this.v = true;
            }
            this.C = null;
            this.D = null;
            return;
        }
        b bVar6 = this.u;
        if (bVar6 == null) {
            throw new IllegalStateException();
        }
        String str6 = bVar6.b;
        if (str6 == null) {
            throw eg1.a("CodecId is missing in TrackEntry element", (Exception) null);
        }
        switch (str6.hashCode()) {
            case -2095576542:
                if (str6.equals("V_MPEG4/ISO/AP")) {
                    b2 = 0;
                } else {
                    b2 = -1;
                }
                break;
            case -2095575984:
                if (str6.equals("V_MPEG4/ISO/SP")) {
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                break;
            case -1985379776:
                if (str6.equals("A_MS/ACM")) {
                    b2 = 2;
                } else {
                    b2 = -1;
                }
                break;
            case -1784763192:
                if (str6.equals("A_TRUEHD")) {
                    b2 = 3;
                } else {
                    b2 = -1;
                }
                break;
            case -1730367663:
                if (str6.equals("A_VORBIS")) {
                    b2 = 4;
                } else {
                    b2 = -1;
                }
                break;
            case -1482641358:
                if (str6.equals("A_MPEG/L2")) {
                    b2 = 5;
                } else {
                    b2 = -1;
                }
                break;
            case -1482641357:
                if (str6.equals("A_MPEG/L3")) {
                    b2 = 6;
                } else {
                    b2 = -1;
                }
                break;
            case -1373388978:
                if (str6.equals("V_MS/VFW/FOURCC")) {
                    b2 = 7;
                } else {
                    b2 = -1;
                }
                break;
            case -933872740:
                if (str6.equals("S_DVBSUB")) {
                    b2 = 8;
                } else {
                    b2 = -1;
                }
                break;
            case -538363189:
                if (str6.equals("V_MPEG4/ISO/ASP")) {
                    b2 = 9;
                } else {
                    b2 = -1;
                }
                break;
            case -538363109:
                if (str6.equals("V_MPEG4/ISO/AVC")) {
                    b2 = 10;
                } else {
                    b2 = -1;
                }
                break;
            case -425012669:
                if (str6.equals("S_VOBSUB")) {
                    b2 = ByteCode.T_LONG;
                } else {
                    b2 = -1;
                }
                break;
            case -356037306:
                if (str6.equals("A_DTS/LOSSLESS")) {
                    b2 = 12;
                } else {
                    b2 = -1;
                }
                break;
            case 62923557:
                if (str6.equals("A_AAC")) {
                    b2 = 13;
                } else {
                    b2 = -1;
                }
                break;
            case 62923603:
                if (str6.equals("A_AC3")) {
                    b2 = 14;
                } else {
                    b2 = -1;
                }
                break;
            case 62927045:
                if (str6.equals("A_DTS")) {
                    b2 = 15;
                } else {
                    b2 = -1;
                }
                break;
            case 82318131:
                if (str6.equals("V_AV1")) {
                    b2 = 16;
                } else {
                    b2 = -1;
                }
                break;
            case 82338133:
                if (str6.equals("V_VP8")) {
                    b2 = 17;
                } else {
                    b2 = -1;
                }
                break;
            case 82338134:
                if (str6.equals("V_VP9")) {
                    b2 = 18;
                } else {
                    b2 = -1;
                }
                break;
            case 99146302:
                if (str6.equals("S_HDMV/PGS")) {
                    b2 = 19;
                } else {
                    b2 = -1;
                }
                break;
            case 444813526:
                if (str6.equals("V_THEORA")) {
                    b2 = 20;
                } else {
                    b2 = -1;
                }
                break;
            case 542569478:
                if (str6.equals("A_DTS/EXPRESS")) {
                    b2 = 21;
                } else {
                    b2 = -1;
                }
                break;
            case 635596514:
                if (str6.equals("A_PCM/FLOAT/IEEE")) {
                    b2 = 22;
                } else {
                    b2 = -1;
                }
                break;
            case 725948237:
                if (str6.equals("A_PCM/INT/BIG")) {
                    b2 = 23;
                } else {
                    b2 = -1;
                }
                break;
            case 725957860:
                if (str6.equals("A_PCM/INT/LIT")) {
                    b2 = 24;
                } else {
                    b2 = -1;
                }
                break;
            case 738597099:
                if (str6.equals("S_TEXT/ASS")) {
                    b2 = 25;
                } else {
                    b2 = -1;
                }
                break;
            case 855502857:
                if (str6.equals("V_MPEGH/ISO/HEVC")) {
                    b2 = 26;
                } else {
                    b2 = -1;
                }
                break;
            case 1045209816:
                if (str6.equals("S_TEXT/WEBVTT")) {
                    b2 = 27;
                } else {
                    b2 = -1;
                }
                break;
            case 1422270023:
                if (str6.equals("S_TEXT/UTF8")) {
                    b2 = 28;
                } else {
                    b2 = -1;
                }
                break;
            case 1809237540:
                if (str6.equals("V_MPEG2")) {
                    b2 = 29;
                } else {
                    b2 = -1;
                }
                break;
            case 1950749482:
                if (str6.equals("A_EAC3")) {
                    b2 = 30;
                } else {
                    b2 = -1;
                }
                break;
            case 1950789798:
                if (str6.equals("A_FLAC")) {
                    b2 = 31;
                } else {
                    b2 = -1;
                }
                break;
            case 1951062397:
                if (str6.equals("A_OPUS")) {
                    b2 = 32;
                } else {
                    b2 = -1;
                }
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
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
                int i26 = bVar6.c;
                String str7 = "audio/raw";
                switch (str6.hashCode()) {
                    case -2095576542:
                        if (str6.equals("V_MPEG4/ISO/AP")) {
                            b3 = 0;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -2095575984:
                        if (str6.equals("V_MPEG4/ISO/SP")) {
                            b3 = 1;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -1985379776:
                        if (str6.equals("A_MS/ACM")) {
                            b3 = 2;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -1784763192:
                        if (str6.equals("A_TRUEHD")) {
                            b3 = 3;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -1730367663:
                        if (str6.equals("A_VORBIS")) {
                            b3 = 4;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -1482641358:
                        if (str6.equals("A_MPEG/L2")) {
                            b3 = 5;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -1482641357:
                        if (str6.equals("A_MPEG/L3")) {
                            b3 = 6;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -1373388978:
                        if (str6.equals("V_MS/VFW/FOURCC")) {
                            b3 = 7;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -933872740:
                        if (str6.equals("S_DVBSUB")) {
                            b3 = 8;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -538363189:
                        if (str6.equals("V_MPEG4/ISO/ASP")) {
                            b3 = 9;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -538363109:
                        if (str6.equals("V_MPEG4/ISO/AVC")) {
                            b3 = 10;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -425012669:
                        if (str6.equals("S_VOBSUB")) {
                            b3 = ByteCode.T_LONG;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case -356037306:
                        if (str6.equals("A_DTS/LOSSLESS")) {
                            b3 = 12;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 62923557:
                        if (str6.equals("A_AAC")) {
                            b3 = 13;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 62923603:
                        if (str6.equals("A_AC3")) {
                            b3 = 14;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 62927045:
                        if (str6.equals("A_DTS")) {
                            b3 = 15;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 82318131:
                        if (str6.equals("V_AV1")) {
                            b3 = 16;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 82338133:
                        if (str6.equals("V_VP8")) {
                            b3 = 17;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 82338134:
                        if (str6.equals("V_VP9")) {
                            b3 = 18;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 99146302:
                        if (str6.equals("S_HDMV/PGS")) {
                            b3 = 19;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 444813526:
                        if (str6.equals("V_THEORA")) {
                            b3 = 20;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 542569478:
                        if (str6.equals("A_DTS/EXPRESS")) {
                            b3 = 21;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 635596514:
                        if (str6.equals("A_PCM/FLOAT/IEEE")) {
                            b3 = 22;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 725948237:
                        if (str6.equals("A_PCM/INT/BIG")) {
                            b3 = 23;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 725957860:
                        if (str6.equals("A_PCM/INT/LIT")) {
                            b3 = 24;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 738597099:
                        if (str6.equals("S_TEXT/ASS")) {
                            b3 = 25;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 855502857:
                        if (str6.equals("V_MPEGH/ISO/HEVC")) {
                            b3 = 26;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 1045209816:
                        if (str6.equals("S_TEXT/WEBVTT")) {
                            b3 = 27;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 1422270023:
                        if (str6.equals("S_TEXT/UTF8")) {
                            b3 = 28;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 1809237540:
                        if (str6.equals("V_MPEG2")) {
                            b3 = 29;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 1950749482:
                        if (str6.equals("A_EAC3")) {
                            b3 = 30;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 1950789798:
                        if (str6.equals("A_FLAC")) {
                            b3 = 31;
                        } else {
                            b3 = -1;
                        }
                        break;
                    case 1951062397:
                        if (str6.equals("A_OPUS")) {
                            b3 = 32;
                        } else {
                            b3 = -1;
                        }
                        break;
                    default:
                        b3 = -1;
                        break;
                }
                switch (b3) {
                    case 0:
                    case 1:
                    case 9:
                        i2 = 3;
                        byte[] bArr3 = bVar6.k;
                        str7 = "video/mp4v-es";
                        if (bArr3 == null) {
                            listSingletonList = null;
                            str5 = null;
                        } else {
                            listSingletonList = Collections.singletonList(bArr3);
                            str5 = null;
                        }
                        i4 = -1;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null && (t30VarA = t30.a(new ag1(bArr))) != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i27 = (z ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9 || (i12 = bVar6.p) == i9) {
                                f = -1.0f;
                            } else {
                                f = (bVar6.n * i10) / (bVar6.m * i12);
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f || bVar6.E == -1.0f || bVar6.F == -1.0f || bVar6.G == -1.0f || bVar6.H == -1.0f || bVar6.I == -1.0f || bVar6.J == -1.0f || bVar6.K == -1.0f || bVar6.L == -1.0f || bVar6.M == -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = new byte[25];
                                    ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
                                    byteBufferOrder.put((byte) 0);
                                    byteBufferOrder.putShort((short) ((bVar6.D * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((bVar6.E * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((bVar6.F * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((bVar6.G * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((bVar6.H * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((bVar6.I * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((bVar6.J * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((bVar6.K * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) (bVar6.L + 0.5f));
                                    byteBufferOrder.putShort((short) (bVar6.M + 0.5f));
                                    byteBufferOrder.putShort((short) bVar6.B);
                                    byteBufferOrder.putShort((short) bVar6.C);
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0 || Float.compare(bVar6.s, 0.0f) != 0 || Float.compare(bVar6.t, 0.0f) != 0) {
                                i11 = iIntValue;
                            } else if (Float.compare(bVar6.u, 0.0f) == 0) {
                                i11 = 0;
                            } else if (Float.compare(bVar6.t, 90.0f) == 0) {
                                i11 = 90;
                            } else if (Float.compare(bVar6.t, -180.0f) == 0 || Float.compare(bVar6.t, 180.0f) == 0) {
                                i11 = 180;
                            } else if (Float.compare(bVar6.t, -90.0f) == 0) {
                                i11 = 270;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2) && !MimeTypes.TEXT_SSA.equals(str2) && !"text/vtt".equals(str2) && !MimeTypes.APPLICATION_VOBSUB.equals(str2) && !MimeTypes.APPLICATION_PGS.equals(str2) && !MimeTypes.APPLICATION_DVBSUBS.equals(str2)) {
                                throw eg1.a("Unexpected MIME type.", (Exception) null);
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null && !h0.containsKey(str4)) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i27).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA;
                        a62VarA.a(jc0VarA);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 2:
                        i2 = 3;
                        ag1 ag1Var = new ag1(bVar6.a(str6));
                        try {
                            int iO = ag1Var.o();
                            if (iO != 1) {
                                if (iO == 65534) {
                                    ag1Var.e(24);
                                    long jP = ag1Var.p();
                                    UUID uuid = g0;
                                    if (jP != uuid.getMostSignificantBits() || ag1Var.p() != uuid.getLeastSignificantBits()) {
                                    }
                                    listSingletonList = null;
                                    str5 = null;
                                    str7 = MimeTypes.AUDIO_UNKNOWN;
                                    i4 = -1;
                                    i3 = -1;
                                    bArr = bVar6.N;
                                    if (bArr != null) {
                                        str5 = t30VarA.a;
                                        str7 = "video/dolby-vision";
                                    }
                                    str2 = str7;
                                    boolean z2 = bVar6.V;
                                    if (bVar6.U) {
                                        i7 = 2;
                                    } else {
                                        i7 = 0;
                                    }
                                    int i28 = (z2 ? 1 : 0) | i7;
                                    aVar = new jc0.a();
                                    if (w01.d(str2)) {
                                        aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                                        i8 = 1;
                                    } else if (w01.f(str2)) {
                                        if (bVar6.q == 0) {
                                            i13 = bVar6.o;
                                            i9 = -1;
                                            if (i13 == -1) {
                                                i13 = bVar6.m;
                                            }
                                            bVar6.o = i13;
                                            i14 = bVar6.p;
                                            if (i14 == -1) {
                                                i14 = bVar6.n;
                                            }
                                            bVar6.p = i14;
                                        } else {
                                            i9 = -1;
                                        }
                                        i10 = bVar6.o;
                                        if (i10 != i9) {
                                            f = -1.0f;
                                        } else {
                                            f = -1.0f;
                                        }
                                        if (bVar6.x) {
                                            if (bVar6.D != -1.0f) {
                                                bArr2 = null;
                                            } else {
                                                bArr2 = null;
                                            }
                                            rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                                        } else {
                                            rqVar = null;
                                        }
                                        str3 = bVar6.a;
                                        if (str3 != null) {
                                            map = h0;
                                            if (map.containsKey(str3)) {
                                                iIntValue = map.get(bVar6.a).intValue();
                                            } else {
                                                iIntValue = -1;
                                            }
                                        } else {
                                            iIntValue = -1;
                                        }
                                        if (bVar6.r == 0) {
                                            i11 = iIntValue;
                                        } else {
                                            i11 = iIntValue;
                                        }
                                        aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                                        i8 = 2;
                                    } else {
                                        if ("application/x-subrip".equals(str2)) {
                                        }
                                        i8 = i2;
                                    }
                                    str4 = bVar6.a;
                                    if (str4 != null) {
                                        aVar.c(bVar6.a);
                                    }
                                    jc0 jc0VarA2 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i28).a(listSingletonList).a(str5).a(bVar6.l).a();
                                    a62 a62VarA2 = b80Var.a(bVar6.c, i8);
                                    bVar6.X = a62VarA2;
                                    a62VarA2.a(jc0VarA2);
                                    this.c.put(bVar6.c, bVar6);
                                    bVar = null;
                                }
                                et0.d("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                                listSingletonList = null;
                                str5 = null;
                                str7 = MimeTypes.AUDIO_UNKNOWN;
                                i4 = -1;
                                i3 = -1;
                                bArr = bVar6.N;
                                if (bArr != null) {
                                    str5 = t30VarA.a;
                                    str7 = "video/dolby-vision";
                                }
                                str2 = str7;
                                boolean z3 = bVar6.V;
                                if (bVar6.U) {
                                    i7 = 2;
                                } else {
                                    i7 = 0;
                                }
                                int i29 = (z3 ? 1 : 0) | i7;
                                aVar = new jc0.a();
                                if (w01.d(str2)) {
                                    aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                                    i8 = 1;
                                } else if (w01.f(str2)) {
                                    if (bVar6.q == 0) {
                                        i13 = bVar6.o;
                                        i9 = -1;
                                        if (i13 == -1) {
                                            i13 = bVar6.m;
                                        }
                                        bVar6.o = i13;
                                        i14 = bVar6.p;
                                        if (i14 == -1) {
                                            i14 = bVar6.n;
                                        }
                                        bVar6.p = i14;
                                    } else {
                                        i9 = -1;
                                    }
                                    i10 = bVar6.o;
                                    if (i10 != i9) {
                                        f = -1.0f;
                                    } else {
                                        f = -1.0f;
                                    }
                                    if (bVar6.x) {
                                        if (bVar6.D != -1.0f) {
                                            bArr2 = null;
                                        } else {
                                            bArr2 = null;
                                        }
                                        rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                                    } else {
                                        rqVar = null;
                                    }
                                    str3 = bVar6.a;
                                    if (str3 != null) {
                                        map = h0;
                                        if (map.containsKey(str3)) {
                                            iIntValue = map.get(bVar6.a).intValue();
                                        } else {
                                            iIntValue = -1;
                                        }
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (bVar6.r == 0) {
                                        i11 = iIntValue;
                                    } else {
                                        i11 = iIntValue;
                                    }
                                    aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                                    i8 = 2;
                                } else {
                                    if ("application/x-subrip".equals(str2)) {
                                    }
                                    i8 = i2;
                                }
                                str4 = bVar6.a;
                                if (str4 != null) {
                                    aVar.c(bVar6.a);
                                }
                                jc0 jc0VarA3 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i29).a(listSingletonList).a(str5).a(bVar6.l).a();
                                a62 a62VarA3 = b80Var.a(bVar6.c, i8);
                                bVar6.X = a62VarA3;
                                a62VarA3.a(jc0VarA3);
                                this.c.put(bVar6.c, bVar6);
                                bVar = null;
                                break;
                            }
                            int iB = f92.b(bVar6.P);
                            if (iB == 0) {
                                et0.d("MatroskaExtractor", "Unsupported PCM bit depth: " + bVar6.P + ". Setting mimeType to audio/x-unknown");
                                listSingletonList = null;
                                str5 = null;
                                str7 = MimeTypes.AUDIO_UNKNOWN;
                                i4 = -1;
                                i3 = -1;
                                bArr = bVar6.N;
                                if (bArr != null) {
                                    str5 = t30VarA.a;
                                    str7 = "video/dolby-vision";
                                }
                                str2 = str7;
                                boolean z4 = bVar6.V;
                                if (bVar6.U) {
                                    i7 = 2;
                                } else {
                                    i7 = 0;
                                }
                                int i210 = (z4 ? 1 : 0) | i7;
                                aVar = new jc0.a();
                                if (w01.d(str2)) {
                                    aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                                    i8 = 1;
                                } else if (w01.f(str2)) {
                                    if (bVar6.q == 0) {
                                        i13 = bVar6.o;
                                        i9 = -1;
                                        if (i13 == -1) {
                                            i13 = bVar6.m;
                                        }
                                        bVar6.o = i13;
                                        i14 = bVar6.p;
                                        if (i14 == -1) {
                                            i14 = bVar6.n;
                                        }
                                        bVar6.p = i14;
                                    } else {
                                        i9 = -1;
                                    }
                                    i10 = bVar6.o;
                                    if (i10 != i9) {
                                        f = -1.0f;
                                    } else {
                                        f = -1.0f;
                                    }
                                    if (bVar6.x) {
                                        if (bVar6.D != -1.0f) {
                                            bArr2 = null;
                                        } else {
                                            bArr2 = null;
                                        }
                                        rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                                    } else {
                                        rqVar = null;
                                    }
                                    str3 = bVar6.a;
                                    if (str3 != null) {
                                        map = h0;
                                        if (map.containsKey(str3)) {
                                            iIntValue = map.get(bVar6.a).intValue();
                                        } else {
                                            iIntValue = -1;
                                        }
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (bVar6.r == 0) {
                                        i11 = iIntValue;
                                    } else {
                                        i11 = iIntValue;
                                    }
                                    aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                                    i8 = 2;
                                } else {
                                    if ("application/x-subrip".equals(str2)) {
                                    }
                                    i8 = i2;
                                }
                                str4 = bVar6.a;
                                if (str4 != null) {
                                    aVar.c(bVar6.a);
                                }
                                jc0 jc0VarA4 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i210).a(listSingletonList).a(str5).a(bVar6.l).a();
                                a62 a62VarA4 = b80Var.a(bVar6.c, i8);
                                bVar6.X = a62VarA4;
                                a62VarA4.a(jc0VarA4);
                                this.c.put(bVar6.c, bVar6);
                                bVar = null;
                            } else {
                                i3 = iB;
                                listSingletonList = null;
                                str5 = null;
                                i4 = -1;
                                bArr = bVar6.N;
                                if (bArr != null) {
                                    str5 = t30VarA.a;
                                    str7 = "video/dolby-vision";
                                }
                                str2 = str7;
                                boolean z5 = bVar6.V;
                                if (bVar6.U) {
                                    i7 = 2;
                                } else {
                                    i7 = 0;
                                }
                                int i211 = (z5 ? 1 : 0) | i7;
                                aVar = new jc0.a();
                                if (w01.d(str2)) {
                                    aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                                    i8 = 1;
                                } else if (w01.f(str2)) {
                                    if (bVar6.q == 0) {
                                        i13 = bVar6.o;
                                        i9 = -1;
                                        if (i13 == -1) {
                                            i13 = bVar6.m;
                                        }
                                        bVar6.o = i13;
                                        i14 = bVar6.p;
                                        if (i14 == -1) {
                                            i14 = bVar6.n;
                                        }
                                        bVar6.p = i14;
                                    } else {
                                        i9 = -1;
                                    }
                                    i10 = bVar6.o;
                                    if (i10 != i9) {
                                        f = -1.0f;
                                    } else {
                                        f = -1.0f;
                                    }
                                    if (bVar6.x) {
                                        if (bVar6.D != -1.0f) {
                                            bArr2 = null;
                                        } else {
                                            bArr2 = null;
                                        }
                                        rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                                    } else {
                                        rqVar = null;
                                    }
                                    str3 = bVar6.a;
                                    if (str3 != null) {
                                        map = h0;
                                        if (map.containsKey(str3)) {
                                            iIntValue = map.get(bVar6.a).intValue();
                                        } else {
                                            iIntValue = -1;
                                        }
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (bVar6.r == 0) {
                                        i11 = iIntValue;
                                    } else {
                                        i11 = iIntValue;
                                    }
                                    aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                                    i8 = 2;
                                } else {
                                    if ("application/x-subrip".equals(str2)) {
                                    }
                                    i8 = i2;
                                }
                                str4 = bVar6.a;
                                if (str4 != null) {
                                    aVar.c(bVar6.a);
                                }
                                jc0 jc0VarA5 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i211).a(listSingletonList).a(str5).a(bVar6.l).a();
                                a62 a62VarA5 = b80Var.a(bVar6.c, i8);
                                bVar6.X = a62VarA5;
                                a62VarA5.a(jc0VarA5);
                                this.c.put(bVar6.c, bVar6);
                                bVar = null;
                            }
                        } catch (ArrayIndexOutOfBoundsException unused) {
                            throw eg1.a("Error parsing MS/ACM codec private", (Exception) null);
                        }
                        break;
                    case 3:
                        i2 = 3;
                        bVar6.T = new i72();
                        str7 = MimeTypes.AUDIO_TRUEHD;
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z6 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i212 = (z6 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA6 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i212).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA6 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA6;
                        a62VarA6.a(jc0VarA6);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 4:
                        byte[] bArrA = bVar6.a(str6);
                        try {
                            if (bArrA[0] != 2) {
                                throw eg1.a("Error parsing vorbis codec private", (Exception) null);
                            }
                            int i30 = 0;
                            int i31 = 1;
                            while (true) {
                                int i32 = bArrA[i31] & 255;
                                if (i32 != 255) {
                                    int i33 = i31 + 1;
                                    int i34 = i30 + i32;
                                    int i35 = 0;
                                    while (true) {
                                        int i36 = bArrA[i33] & 255;
                                        if (i36 != 255) {
                                            int i37 = i33 + 1;
                                            int i38 = i35 + i36;
                                            if (bArrA[i37] != 1) {
                                                throw eg1.a("Error parsing vorbis codec private", (Exception) null);
                                            }
                                            byte[] bArr4 = new byte[i34];
                                            System.arraycopy(bArrA, i37, bArr4, 0, i34);
                                            int i39 = i37 + i34;
                                            i2 = 3;
                                            if (bArrA[i39] != 3) {
                                                throw eg1.a("Error parsing vorbis codec private", (Exception) null);
                                            }
                                            int i40 = i39 + i38;
                                            if (bArrA[i40] != 5) {
                                                throw eg1.a("Error parsing vorbis codec private", (Exception) null);
                                            }
                                            byte[] bArr5 = new byte[bArrA.length - i40];
                                            System.arraycopy(bArrA, i40, bArr5, 0, bArrA.length - i40);
                                            arrayList = new ArrayList(2);
                                            arrayList.add(bArr4);
                                            arrayList.add(bArr5);
                                            str7 = "audio/vorbis";
                                            i5 = 8192;
                                            i3 = -1;
                                            int i41 = i5;
                                            listSingletonList = arrayList;
                                            i4 = i41;
                                            bArr = bVar6.N;
                                            if (bArr != null) {
                                                str5 = t30VarA.a;
                                                str7 = "video/dolby-vision";
                                            }
                                            str2 = str7;
                                            boolean z7 = bVar6.V;
                                            if (bVar6.U) {
                                                i7 = 2;
                                            } else {
                                                i7 = 0;
                                            }
                                            int i213 = (z7 ? 1 : 0) | i7;
                                            aVar = new jc0.a();
                                            if (w01.d(str2)) {
                                                aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                                                i8 = 1;
                                            } else if (w01.f(str2)) {
                                                if (bVar6.q == 0) {
                                                    i13 = bVar6.o;
                                                    i9 = -1;
                                                    if (i13 == -1) {
                                                        i13 = bVar6.m;
                                                    }
                                                    bVar6.o = i13;
                                                    i14 = bVar6.p;
                                                    if (i14 == -1) {
                                                        i14 = bVar6.n;
                                                    }
                                                    bVar6.p = i14;
                                                } else {
                                                    i9 = -1;
                                                }
                                                i10 = bVar6.o;
                                                if (i10 != i9) {
                                                    f = -1.0f;
                                                } else {
                                                    f = -1.0f;
                                                }
                                                if (bVar6.x) {
                                                    if (bVar6.D != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                                                } else {
                                                    rqVar = null;
                                                }
                                                str3 = bVar6.a;
                                                if (str3 != null) {
                                                    map = h0;
                                                    if (map.containsKey(str3)) {
                                                        iIntValue = map.get(bVar6.a).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (bVar6.r == 0) {
                                                    i11 = iIntValue;
                                                } else {
                                                    i11 = iIntValue;
                                                }
                                                aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                                                i8 = 2;
                                            } else {
                                                if ("application/x-subrip".equals(str2)) {
                                                }
                                                i8 = i2;
                                            }
                                            str4 = bVar6.a;
                                            if (str4 != null) {
                                                aVar.c(bVar6.a);
                                            }
                                            jc0 jc0VarA7 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i213).a(listSingletonList).a(str5).a(bVar6.l).a();
                                            a62 a62VarA7 = b80Var.a(bVar6.c, i8);
                                            bVar6.X = a62VarA7;
                                            a62VarA7.a(jc0VarA7);
                                            this.c.put(bVar6.c, bVar6);
                                            bVar = null;
                                        } else {
                                            i35 += 255;
                                            i33++;
                                        }
                                    }
                                } else {
                                    i30 += 255;
                                    i31++;
                                }
                            }
                        } catch (ArrayIndexOutOfBoundsException unused2) {
                            throw eg1.a("Error parsing vorbis codec private", (Exception) null);
                        }
                        break;
                    case 5:
                        str7 = MimeTypes.AUDIO_MPEG_L2;
                        i4 = 4096;
                        listSingletonList = null;
                        str5 = null;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z8 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i214 = (z8 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA8 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i214).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA8 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA8;
                        a62VarA8.a(jc0VarA8);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 6:
                        str7 = "audio/mpeg";
                        i4 = 4096;
                        listSingletonList = null;
                        str5 = null;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z9 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i215 = (z9 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA9 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i215).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA9 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA9;
                        a62VarA9.a(jc0VarA9);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 7:
                        ag1 ag1Var2 = new ag1(bVar6.a(str6));
                        try {
                            ag1Var2.f(16);
                            long jN = ag1Var2.n();
                            if (jN == 1482049860) {
                                pair = new Pair(MimeTypes.VIDEO_DIVX, null);
                            } else if (jN == 859189832) {
                                pair = new Pair("video/3gpp", null);
                            } else if (jN == 826496599) {
                                int iD = ag1Var2.d() + 20;
                                byte[] bArrC = ag1Var2.c();
                                while (true) {
                                    if (iD >= bArrC.length - 4) {
                                        throw eg1.a("Failed to find FourCC VC1 initialization data", (Exception) null);
                                    }
                                    if (bArrC[iD] == 0) {
                                        i6 = 1;
                                        if (bArrC[iD + 1] == 0 && bArrC[iD + 2] == 1) {
                                            if (bArrC[iD + 3] == 15) {
                                                pair = new Pair(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArrC, iD, bArrC.length)));
                                            }
                                        }
                                        iD += i6;
                                    }
                                    i6 = 1;
                                    iD += i6;
                                }
                            } else {
                                et0.d("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                                pair = new Pair(MimeTypes.VIDEO_UNKNOWN, null);
                            }
                            str7 = (String) pair.first;
                            listA = (List) pair.second;
                            listSingletonList = listA;
                            str5 = null;
                            i4 = -1;
                            i2 = 3;
                            i3 = -1;
                            bArr = bVar6.N;
                            if (bArr != null) {
                                str5 = t30VarA.a;
                                str7 = "video/dolby-vision";
                            }
                            str2 = str7;
                            boolean z10 = bVar6.V;
                            if (bVar6.U) {
                                i7 = 2;
                            } else {
                                i7 = 0;
                            }
                            int i216 = (z10 ? 1 : 0) | i7;
                            aVar = new jc0.a();
                            if (w01.d(str2)) {
                                aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                                i8 = 1;
                            } else if (w01.f(str2)) {
                                if (bVar6.q == 0) {
                                    i13 = bVar6.o;
                                    i9 = -1;
                                    if (i13 == -1) {
                                        i13 = bVar6.m;
                                    }
                                    bVar6.o = i13;
                                    i14 = bVar6.p;
                                    if (i14 == -1) {
                                        i14 = bVar6.n;
                                    }
                                    bVar6.p = i14;
                                } else {
                                    i9 = -1;
                                }
                                i10 = bVar6.o;
                                if (i10 != i9) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (bVar6.x) {
                                    if (bVar6.D != -1.0f) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = null;
                                    }
                                    rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                                } else {
                                    rqVar = null;
                                }
                                str3 = bVar6.a;
                                if (str3 != null) {
                                    map = h0;
                                    if (map.containsKey(str3)) {
                                        iIntValue = map.get(bVar6.a).intValue();
                                    } else {
                                        iIntValue = -1;
                                    }
                                } else {
                                    iIntValue = -1;
                                }
                                if (bVar6.r == 0) {
                                    i11 = iIntValue;
                                } else {
                                    i11 = iIntValue;
                                }
                                aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                                i8 = 2;
                            } else {
                                if ("application/x-subrip".equals(str2)) {
                                }
                                i8 = i2;
                            }
                            str4 = bVar6.a;
                            if (str4 != null) {
                                aVar.c(bVar6.a);
                            }
                            jc0 jc0VarA10 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i216).a(listSingletonList).a(str5).a(bVar6.l).a();
                            a62 a62VarA10 = b80Var.a(bVar6.c, i8);
                            bVar6.X = a62VarA10;
                            a62VarA10.a(jc0VarA10);
                            this.c.put(bVar6.c, bVar6);
                            bVar = null;
                        } catch (ArrayIndexOutOfBoundsException unused3) {
                            throw eg1.a("Error parsing FourCC private data", (Exception) null);
                        }
                        break;
                    case 8:
                        byte[] bArr6 = new byte[4];
                        System.arraycopy(bVar6.a(str6), 0, bArr6, 0, 4);
                        listA = kk0.a(bArr6);
                        str7 = MimeTypes.APPLICATION_DVBSUBS;
                        listSingletonList = listA;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z11 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i217 = (z11 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA11 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i217).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA11 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA11;
                        a62VarA11.a(jc0VarA11);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 10:
                        ni niVarA = ni.a(new ag1(bVar6.a(str6)));
                        listSingletonList = niVarA.a;
                        bVar6.Y = niVarA.b;
                        str = niVarA.f;
                        str7 = "video/avc";
                        str5 = str;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z12 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i218 = (z12 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA12 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i218).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA12 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA12;
                        a62VarA12.a(jc0VarA12);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 11:
                        listA = kk0.a(bVar6.a(str6));
                        str7 = MimeTypes.APPLICATION_VOBSUB;
                        listSingletonList = listA;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z13 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i219 = (z13 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA13 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i219).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA13 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA13;
                        a62VarA13.a(jc0VarA13);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 12:
                        str7 = MimeTypes.AUDIO_DTS_HD;
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z14 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2110 = (z14 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA14 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2110).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA14 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA14;
                        a62VarA14.a(jc0VarA14);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 13:
                        List<byte[]> listSingletonList2 = Collections.singletonList(bVar6.a(str6));
                        byte[] bArr7 = bVar6.k;
                        e.a aVarA = e.a(new zf1(bArr7.length, bArr7), false);
                        bVar6.Q = aVarA.a;
                        bVar6.O = aVarA.b;
                        str7 = "audio/mp4a-latm";
                        str5 = aVarA.c;
                        i2 = 3;
                        i3 = -1;
                        listSingletonList = listSingletonList2;
                        i4 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z15 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2111 = (z15 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA15 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2111).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA15 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA15;
                        a62VarA15.a(jc0VarA15);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 14:
                        str7 = "audio/ac3";
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z16 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2112 = (z16 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA16 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2112).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA16 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA16;
                        a62VarA16.a(jc0VarA16);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 15:
                    case 21:
                        str7 = MimeTypes.AUDIO_DTS;
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z17 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2113 = (z17 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA17 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2113).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA17 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA17;
                        a62VarA17.a(jc0VarA17);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 16:
                        str7 = MimeTypes.VIDEO_AV1;
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z18 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2114 = (z18 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA18 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2114).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA18 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA18;
                        a62VarA18.a(jc0VarA18);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 17:
                        str7 = "video/x-vnd.on2.vp8";
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z19 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2115 = (z19 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA19 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2115).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA19 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA19;
                        a62VarA19.a(jc0VarA19);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 18:
                        str7 = "video/x-vnd.on2.vp9";
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z110 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2116 = (z110 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA110 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2116).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA110 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA110;
                        a62VarA110.a(jc0VarA110);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 19:
                        str7 = MimeTypes.APPLICATION_PGS;
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z111 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2117 = (z111 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA111 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2117).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA111 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA111;
                        a62VarA111.a(jc0VarA111);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 20:
                        str7 = MimeTypes.VIDEO_UNKNOWN;
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z112 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2118 = (z112 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA112 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2118).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA112 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA112;
                        a62VarA112.a(jc0VarA112);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 22:
                        if (bVar6.P == 32) {
                            listSingletonList = null;
                            str5 = null;
                            i4 = -1;
                            i2 = 3;
                            i3 = 4;
                        } else {
                            et0.d("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + bVar6.P + ". Setting mimeType to audio/x-unknown");
                            listSingletonList = null;
                            str5 = null;
                            str7 = MimeTypes.AUDIO_UNKNOWN;
                            i4 = -1;
                            i2 = 3;
                            i3 = -1;
                        }
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z113 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i2119 = (z113 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA113 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i2119).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA113 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA113;
                        a62VarA113.a(jc0VarA113);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 23:
                        int i42 = bVar6.P;
                        if (i42 == 8) {
                            listSingletonList = null;
                            str5 = null;
                            i4 = -1;
                            i2 = 3;
                            i3 = 3;
                        } else if (i42 == 16) {
                            i3 = 268435456;
                            listSingletonList = null;
                            str5 = null;
                            i4 = -1;
                            i2 = 3;
                        } else {
                            et0.d("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + bVar6.P + ". Setting mimeType to audio/x-unknown");
                            listSingletonList = null;
                            str5 = null;
                            str7 = MimeTypes.AUDIO_UNKNOWN;
                            i4 = -1;
                            i2 = 3;
                            i3 = -1;
                        }
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z114 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i21110 = (z114 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA114 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21110).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA114 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA114;
                        a62VarA114.a(jc0VarA114);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 24:
                        int iB2 = f92.b(bVar6.P);
                        if (iB2 == 0) {
                            et0.d("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + bVar6.P + ". Setting mimeType to audio/x-unknown");
                            listSingletonList = null;
                            str5 = null;
                            str7 = MimeTypes.AUDIO_UNKNOWN;
                            i4 = -1;
                            i2 = 3;
                            i3 = -1;
                            bArr = bVar6.N;
                            if (bArr != null) {
                                str5 = t30VarA.a;
                                str7 = "video/dolby-vision";
                            }
                            str2 = str7;
                            boolean z115 = bVar6.V;
                            if (bVar6.U) {
                                i7 = 2;
                            } else {
                                i7 = 0;
                            }
                            int i21111 = (z115 ? 1 : 0) | i7;
                            aVar = new jc0.a();
                            if (w01.d(str2)) {
                                aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                                i8 = 1;
                            } else if (w01.f(str2)) {
                                if (bVar6.q == 0) {
                                    i13 = bVar6.o;
                                    i9 = -1;
                                    if (i13 == -1) {
                                        i13 = bVar6.m;
                                    }
                                    bVar6.o = i13;
                                    i14 = bVar6.p;
                                    if (i14 == -1) {
                                        i14 = bVar6.n;
                                    }
                                    bVar6.p = i14;
                                } else {
                                    i9 = -1;
                                }
                                i10 = bVar6.o;
                                if (i10 != i9) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (bVar6.x) {
                                    if (bVar6.D != -1.0f) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = null;
                                    }
                                    rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                                } else {
                                    rqVar = null;
                                }
                                str3 = bVar6.a;
                                if (str3 != null) {
                                    map = h0;
                                    if (map.containsKey(str3)) {
                                        iIntValue = map.get(bVar6.a).intValue();
                                    } else {
                                        iIntValue = -1;
                                    }
                                } else {
                                    iIntValue = -1;
                                }
                                if (bVar6.r == 0) {
                                    i11 = iIntValue;
                                } else {
                                    i11 = iIntValue;
                                }
                                aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                                i8 = 2;
                            } else {
                                if ("application/x-subrip".equals(str2)) {
                                }
                                i8 = i2;
                            }
                            str4 = bVar6.a;
                            if (str4 != null) {
                                aVar.c(bVar6.a);
                            }
                            jc0 jc0VarA115 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21111).a(listSingletonList).a(str5).a(bVar6.l).a();
                            a62 a62VarA115 = b80Var.a(bVar6.c, i8);
                            bVar6.X = a62VarA115;
                            a62VarA115.a(jc0VarA115);
                            this.c.put(bVar6.c, bVar6);
                            bVar = null;
                        } else {
                            i3 = iB2;
                            listSingletonList = null;
                            str5 = null;
                            i4 = -1;
                            i2 = 3;
                            bArr = bVar6.N;
                            if (bArr != null) {
                                str5 = t30VarA.a;
                                str7 = "video/dolby-vision";
                            }
                            str2 = str7;
                            boolean z116 = bVar6.V;
                            if (bVar6.U) {
                                i7 = 2;
                            } else {
                                i7 = 0;
                            }
                            int i21112 = (z116 ? 1 : 0) | i7;
                            aVar = new jc0.a();
                            if (w01.d(str2)) {
                                aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                                i8 = 1;
                            } else if (w01.f(str2)) {
                                if (bVar6.q == 0) {
                                    i13 = bVar6.o;
                                    i9 = -1;
                                    if (i13 == -1) {
                                        i13 = bVar6.m;
                                    }
                                    bVar6.o = i13;
                                    i14 = bVar6.p;
                                    if (i14 == -1) {
                                        i14 = bVar6.n;
                                    }
                                    bVar6.p = i14;
                                } else {
                                    i9 = -1;
                                }
                                i10 = bVar6.o;
                                if (i10 != i9) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (bVar6.x) {
                                    if (bVar6.D != -1.0f) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = null;
                                    }
                                    rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                                } else {
                                    rqVar = null;
                                }
                                str3 = bVar6.a;
                                if (str3 != null) {
                                    map = h0;
                                    if (map.containsKey(str3)) {
                                        iIntValue = map.get(bVar6.a).intValue();
                                    } else {
                                        iIntValue = -1;
                                    }
                                } else {
                                    iIntValue = -1;
                                }
                                if (bVar6.r == 0) {
                                    i11 = iIntValue;
                                } else {
                                    i11 = iIntValue;
                                }
                                aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                                i8 = 2;
                            } else {
                                if ("application/x-subrip".equals(str2)) {
                                }
                                i8 = i2;
                            }
                            str4 = bVar6.a;
                            if (str4 != null) {
                                aVar.c(bVar6.a);
                            }
                            jc0 jc0VarA116 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21112).a(listSingletonList).a(str5).a(bVar6.l).a();
                            a62 a62VarA116 = b80Var.a(bVar6.c, i8);
                            bVar6.X = a62VarA116;
                            a62VarA116.a(jc0VarA116);
                            this.c.put(bVar6.c, bVar6);
                            bVar = null;
                        }
                        break;
                    case 25:
                        listA = kk0.a(d0, bVar6.a(str6));
                        str7 = MimeTypes.TEXT_SSA;
                        listSingletonList = listA;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z117 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i21113 = (z117 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA117 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21113).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA117 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA117;
                        a62VarA117.a(jc0VarA117);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 26:
                        tf0 tf0VarA = tf0.a(new ag1(bVar6.a(str6)));
                        listSingletonList = tf0VarA.a;
                        bVar6.Y = tf0VarA.b;
                        str = tf0VarA.d;
                        str7 = "video/hevc";
                        str5 = str;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z118 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i21114 = (z118 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA118 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21114).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA118 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA118;
                        a62VarA118.a(jc0VarA118);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 27:
                        str7 = "text/vtt";
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z119 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i21115 = (z119 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA119 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21115).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA119 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA119;
                        a62VarA119.a(jc0VarA119);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 28:
                        str7 = "application/x-subrip";
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z1110 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i21116 = (z1110 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA1110 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21116).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA1110 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA1110;
                        a62VarA1110.a(jc0VarA1110);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 29:
                        str7 = "video/mpeg2";
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z1111 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i21117 = (z1111 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA1111 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21117).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA1111 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA1111;
                        a62VarA1111.a(jc0VarA1111);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 30:
                        str7 = "audio/eac3";
                        listSingletonList = null;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z1112 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i21118 = (z1112 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA1112 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21118).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA1112 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA1112;
                        a62VarA1112.a(jc0VarA1112);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 31:
                        listA = Collections.singletonList(bVar6.a(str6));
                        str7 = "audio/flac";
                        listSingletonList = listA;
                        str5 = null;
                        i4 = -1;
                        i2 = 3;
                        i3 = -1;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z1113 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i21119 = (z1113 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA1113 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i21119).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA1113 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA1113;
                        a62VarA1113.a(jc0VarA1113);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    case 32:
                        arrayList = new ArrayList(3);
                        arrayList.add(bVar6.a(bVar6.b));
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                        arrayList.add(byteBufferAllocate.order(byteOrder).putLong(bVar6.R).array());
                        arrayList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(bVar6.S).array());
                        str7 = "audio/opus";
                        i5 = 5760;
                        i2 = 3;
                        i3 = -1;
                        int i43 = i5;
                        listSingletonList = arrayList;
                        i4 = i43;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str5 = t30VarA.a;
                            str7 = "video/dolby-vision";
                        }
                        str2 = str7;
                        boolean z1114 = bVar6.V;
                        if (bVar6.U) {
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        int i211110 = (z1114 ? 1 : 0) | i7;
                        aVar = new jc0.a();
                        if (w01.d(str2)) {
                            aVar.c(bVar6.O).l(bVar6.Q).i(i3);
                            i8 = 1;
                        } else if (w01.f(str2)) {
                            if (bVar6.q == 0) {
                                i13 = bVar6.o;
                                i9 = -1;
                                if (i13 == -1) {
                                    i13 = bVar6.m;
                                }
                                bVar6.o = i13;
                                i14 = bVar6.p;
                                if (i14 == -1) {
                                    i14 = bVar6.n;
                                }
                                bVar6.p = i14;
                            } else {
                                i9 = -1;
                            }
                            i10 = bVar6.o;
                            if (i10 != i9) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (bVar6.x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                rqVar = new rq(bVar6.y, bVar6.A, bVar6.z, bArr2);
                            } else {
                                rqVar = null;
                            }
                            str3 = bVar6.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = map.get(bVar6.a).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (bVar6.r == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            aVar.o(bVar6.m).f(bVar6.n).b(f).k(i11).a(bVar6.v).n(bVar6.w).a(rqVar);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str2)) {
                            }
                            i8 = i2;
                        }
                        str4 = bVar6.a;
                        if (str4 != null) {
                            aVar.c(bVar6.a);
                        }
                        jc0 jc0VarA1114 = aVar.g(i26).e(str2).h(i4).d(bVar6.W).m(i211110).a(listSingletonList).a(str5).a(bVar6.l).a();
                        a62 a62VarA1114 = b80Var.a(bVar6.c, i8);
                        bVar6.X = a62VarA1114;
                        a62VarA1114.a(jc0VarA1114);
                        this.c.put(bVar6.c, bVar6);
                        bVar = null;
                        break;
                    default:
                        throw eg1.a("Unrecognized codec identifier.", (Exception) null);
                }
                break;
            default:
                bVar = null;
                break;
        }
        this.u = bVar;
    }

    @Override
    public final void release() {
    }

    public lu0(uz uzVar) {
        this.q = -1L;
        this.r = C.TIME_UNSET;
        this.s = C.TIME_UNSET;
        this.t = C.TIME_UNSET;
        this.z = -1L;
        this.A = -1L;
        this.B = C.TIME_UNSET;
        this.a = uzVar;
        uzVar.a(new a());
        this.d = true;
        this.b = new q92();
        this.c = new SparseArray<>();
        this.g = new ag1(4);
        this.h = new ag1(ByteBuffer.allocate(4).putInt(-1).array());
        this.i = new ag1(4);
        this.e = new ag1(e41.a);
        this.f = new ag1(4);
        this.j = new ag1();
        this.k = new ag1();
        this.l = new ag1(8);
        this.m = new ag1();
        this.n = new ag1();
        this.L = new int[1];
    }

    public void a(b bVar, long j, int i, int i2, int i3) {
        byte[] bArrA;
        int i4;
        int iE;
        i72 i72Var = bVar.T;
        if (i72Var != null) {
            i72Var.a(bVar.X, j, i, i2, i3, bVar.j);
        } else {
            if ("S_TEXT/UTF8".equals(bVar.b) || "S_TEXT/ASS".equals(bVar.b) || "S_TEXT/WEBVTT".equals(bVar.b)) {
                if (this.K > 1) {
                    et0.d("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j2 = this.I;
                    if (j2 == C.TIME_UNSET) {
                        et0.d("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        String str = bVar.b;
                        byte[] bArrC = this.k.c();
                        str.getClass();
                        switch (str) {
                            case "S_TEXT/ASS":
                                bArrA = a("%01d:%02d:%02d:%02d", j2, 10000L);
                                i4 = 21;
                                break;
                            case "S_TEXT/WEBVTT":
                                bArrA = a("%02d:%02d:%02d.%03d", j2, 1000L);
                                i4 = 25;
                                break;
                            case "S_TEXT/UTF8":
                                bArrA = a("%02d:%02d:%02d,%03d", j2, 1000L);
                                i4 = 19;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                        System.arraycopy(bArrA, 0, bArrC, i4, bArrA.length);
                        for (int iD = this.k.d(); iD < this.k.e(); iD++) {
                            if (this.k.c()[iD] == 0) {
                                this.k.d(iD);
                                a62 a62Var = bVar.X;
                                ag1 ag1Var = this.k;
                                a62Var.a(ag1Var.e(), ag1Var);
                                iE = this.k.e() + i2;
                            }
                        }
                        a62 a62Var2 = bVar.X;
                        ag1 ag1Var2 = this.k;
                        a62Var2.a(ag1Var2.e(), ag1Var2);
                        iE = this.k.e() + i2;
                    }
                }
                iE = i2;
            } else {
                iE = i2;
            }
            if ((i & 268435456) != 0) {
                if (this.K > 1) {
                    this.n.c(0);
                } else {
                    int iE2 = this.n.e();
                    bVar.X.b(iE2, this.n);
                    iE += iE2;
                }
            }
            bVar.X.a(j, i, iE, i3, bVar.j);
        }
        this.F = true;
    }

    private static byte[] a(String str, long j, long j2) {
        if (j != C.TIME_UNSET) {
            int i = (int) (j / 3600000000L);
            long j3 = j - (((long) i) * 3600000000L);
            int i2 = (int) (j3 / 60000000);
            long j4 = j3 - (((long) i2) * 60000000);
            int i3 = (int) (j4 / 1000000);
            return f92.c(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2))));
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void a(b80 b80Var) {
        this.b0 = b80Var;
    }

    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        this.F = false;
        boolean zA = true;
        while (zA && !this.F) {
            wz wzVar = (wz) a80Var;
            zA = ((uz) this.a).a(wzVar);
            if (zA) {
                long jA = wzVar.a();
                if (this.y) {
                    this.A = jA;
                    pj1Var.a = this.z;
                    this.y = false;
                } else if (this.v) {
                    long j = this.A;
                    if (j != -1) {
                        pj1Var.a = j;
                        this.A = -1L;
                    }
                } else {
                    continue;
                }
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i = 0; i < this.c.size(); i++) {
            b bVarValueAt = this.c.valueAt(i);
            bVarValueAt.X.getClass();
            i72 i72Var = bVarValueAt.T;
            if (i72Var != null) {
                i72Var.a(bVarValueAt.X, bVarValueAt.j);
            }
        }
        return -1;
    }

    public void a(wz wzVar, int i) throws IOException {
        if (this.g.e() >= i) {
            return;
        }
        if (this.g.b() < i) {
            ag1 ag1Var = this.g;
            ag1Var.a(Math.max(ag1Var.b() * 2, i));
        }
        wzVar.a(this.g.c(), this.g.e(), i - this.g.e(), false);
        this.g.d(i);
    }

    public long a(long j) throws eg1 {
        long j2 = this.r;
        if (j2 != C.TIME_UNSET) {
            return f92.a(j, j2, 1000L);
        }
        throw eg1.a("Can't scale timecode prior to timecodeScale being set.", (Exception) null);
    }

    @Override
    @CallSuper
    public final void a(long j, long j2) {
        this.B = C.TIME_UNSET;
        this.G = 0;
        ((uz) this.a).a();
        this.b.b();
        b();
        for (int i = 0; i < this.c.size(); i++) {
            i72 i72Var = this.c.valueAt(i).T;
            if (i72Var != null) {
                i72Var.a();
            }
        }
    }

    public int a(wz wzVar, b bVar, int i, boolean z) throws IOException {
        int iB;
        int iB2;
        int i2;
        if ("S_TEXT/UTF8".equals(bVar.b)) {
            a(wzVar, c0, i);
            int i3 = this.T;
            b();
            return i3;
        }
        if ("S_TEXT/ASS".equals(bVar.b)) {
            a(wzVar, e0, i);
            int i4 = this.T;
            b();
            return i4;
        }
        if ("S_TEXT/WEBVTT".equals(bVar.b)) {
            a(wzVar, f0, i);
            int i5 = this.T;
            b();
            return i5;
        }
        a62 a62Var = bVar.X;
        if (!this.V) {
            if (bVar.h) {
                this.O &= -1073741825;
                if (!this.W) {
                    wzVar.a(this.g.c(), 0, 1, false);
                    this.S++;
                    if ((this.g.c()[0] & SocketData.CLAZZ_TYPE_END_SOCKET) != 128) {
                        this.Z = this.g.c()[0];
                        this.W = true;
                    } else {
                        throw eg1.a("Extension bit is set in signal byte", (Exception) null);
                    }
                }
                byte b2 = this.Z;
                if ((b2 & 1) == 1) {
                    boolean z2 = (b2 & 2) == 2;
                    this.O |= 1073741824;
                    if (!this.a0) {
                        wzVar.a(this.l.c(), 0, 8, false);
                        this.S += 8;
                        this.a0 = true;
                        this.g.c()[0] = (byte) ((z2 ? 128 : 0) | 8);
                        this.g.e(0);
                        a62Var.b(1, this.g);
                        this.T++;
                        this.l.e(0);
                        a62Var.b(8, this.l);
                        this.T += 8;
                    }
                    if (z2) {
                        if (!this.X) {
                            wzVar.a(this.g.c(), 0, 1, false);
                            this.S++;
                            this.g.e(0);
                            this.Y = this.g.t();
                            this.X = true;
                        }
                        int i6 = this.Y * 4;
                        this.g.c(i6);
                        wzVar.a(this.g.c(), 0, i6, false);
                        this.S += i6;
                        short s = (short) ((this.Y / 2) + 1);
                        int i7 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.o;
                        if (byteBuffer == null || byteBuffer.capacity() < i7) {
                            this.o = ByteBuffer.allocate(i7);
                        }
                        this.o.position(0);
                        this.o.putShort(s);
                        int i8 = 0;
                        int i9 = 0;
                        while (true) {
                            i2 = this.Y;
                            if (i8 >= i2) {
                                break;
                            }
                            int iX = this.g.x();
                            if (i8 % 2 == 0) {
                                this.o.putShort((short) (iX - i9));
                            } else {
                                this.o.putInt(iX - i9);
                            }
                            i8++;
                            i9 = iX;
                        }
                        int i10 = (i - this.S) - i9;
                        if (i2 % 2 == 1) {
                            this.o.putInt(i10);
                        } else {
                            this.o.putShort((short) i10);
                            this.o.putInt(0);
                        }
                        this.m.a(i7, this.o.array());
                        a62Var.b(i7, this.m);
                        this.T += i7;
                    }
                }
            } else {
                byte[] bArr = bVar.i;
                if (bArr != null) {
                    this.j.a(bArr.length, bArr);
                }
            }
            if (!"A_OPUS".equals(bVar.b) ? bVar.f > 0 : z) {
                this.O |= 268435456;
                this.n.c(0);
                int iE = (this.j.e() + i) - this.S;
                this.g.c(4);
                this.g.c()[0] = (byte) ((iE >> 24) & 255);
                this.g.c()[1] = (byte) ((iE >> 16) & 255);
                this.g.c()[2] = (byte) ((iE >> 8) & 255);
                this.g.c()[3] = (byte) (iE & 255);
                a62Var.b(4, this.g);
                this.T += 4;
            }
            this.V = true;
        }
        int iE2 = this.j.e() + i;
        if (!"V_MPEG4/ISO/AVC".equals(bVar.b) && !"V_MPEGH/ISO/HEVC".equals(bVar.b)) {
            if (bVar.T != null) {
                if (this.j.e() == 0) {
                    bVar.T.a(wzVar);
                } else {
                    throw new IllegalStateException();
                }
            }
            while (true) {
                int i11 = this.S;
                if (i11 >= iE2) {
                    break;
                }
                int i12 = iE2 - i11;
                int iA = this.j.a();
                if (iA > 0) {
                    iB2 = Math.min(i12, iA);
                    a62Var.a(iB2, this.j);
                } else {
                    iB2 = a62Var.b(wzVar, i12, false);
                }
                this.S += iB2;
                this.T += iB2;
            }
        } else {
            byte[] bArrC = this.f.c();
            bArrC[0] = 0;
            bArrC[1] = 0;
            bArrC[2] = 0;
            int i13 = bVar.Y;
            int i14 = 4 - i13;
            while (this.S < iE2) {
                int i15 = this.U;
                if (i15 == 0) {
                    int iMin = Math.min(i13, this.j.a());
                    wzVar.a(bArrC, i14 + iMin, i13 - iMin, false);
                    if (iMin > 0) {
                        this.j.a(bArrC, i14, iMin);
                    }
                    this.S += i13;
                    this.f.e(0);
                    this.U = this.f.x();
                    this.e.e(0);
                    a62Var.a(4, this.e);
                    this.T += 4;
                } else {
                    int iA2 = this.j.a();
                    if (iA2 > 0) {
                        iB = Math.min(i15, iA2);
                        a62Var.a(iB, this.j);
                    } else {
                        iB = a62Var.b(wzVar, i15, false);
                    }
                    this.S += iB;
                    this.T += iB;
                    this.U -= iB;
                }
            }
        }
        if ("A_VORBIS".equals(bVar.b)) {
            this.h.e(0);
            a62Var.a(4, this.h);
            this.T += 4;
        }
        int i16 = this.T;
        b();
        return i16;
    }

    private void a(wz wzVar, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        if (this.k.b() < length) {
            this.k.a(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, this.k.c(), 0, bArr.length);
        }
        wzVar.a(this.k.c(), bArr.length, i, false);
        this.k.e(0);
        this.k.d(length);
    }

    public static z70[] a() {
        return new z70[]{new lu0(new uz())};
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        return new v02().b((wz) a80Var);
    }

    private void b() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.a0 = false;
        this.j.c(0);
    }
}
