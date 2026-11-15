package c3;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.i;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import androidx.media3.common.util.v;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import h3.s;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import k2.f0;
import k2.h;
import k2.l0;
import k2.m0;
import k2.o;
import k2.q;
import k2.r;
import k2.s0;
import k2.t;
import k2.t0;
import k2.w;
import k2.x;
import org.mvel2.ast.ASTNode;

public class e implements r {

    public static final x f16411f0 = new x() {
        @Override
        public x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override
        public x b(int i10) {
            return w.b(this, i10);
        }

        @Override
        public r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override
        public final r[] createExtractors() {
            return e.B();
        }

        @Override
        public x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    private static final byte[] f16412g0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    private static final byte[] f16413h0 = a1.u0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    private static final byte[] f16414i0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    private static final byte[] f16415j0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    private static final UUID f16416k0 = new UUID(72057594037932032L, -9223371306706625679L);

    private static final Map f16417l0;
    private long A;
    private boolean B;
    private long C;
    private long D;
    private long E;
    private v F;
    private v G;
    private boolean H;
    private boolean I;
    private int J;
    private long K;
    private long L;
    private int M;
    private int N;
    private int[] O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private boolean T;
    private long U;
    private int V;
    private int W;
    private int X;
    private boolean Y;
    private boolean Z;

    private final c3.c f16418a;

    private boolean f16419a0;

    private final g f16420b;

    private int f16421b0;

    private final SparseArray f16422c;

    private byte f16423c0;

    private final boolean f16424d;

    private boolean f16425d0;

    private final boolean f16426e;

    private t f16427e0;

    private final s.a f16428f;

    private final j0 f16429g;

    private final j0 f16430h;

    private final j0 f16431i;

    private final j0 f16432j;

    private final j0 f16433k;

    private final j0 f16434l;

    private final j0 f16435m;

    private final j0 f16436n;

    private final j0 f16437o;

    private final j0 f16438p;

    private ByteBuffer f16439q;

    private long f16440r;

    private long f16441s;

    private long f16442t;

    private long f16443u;

    private long f16444v;

    private boolean f16445w;

    private c f16446x;

    private boolean f16447y;

    private int f16448z;

    private final class b implements c3.b {
        private b() {
        }

        @Override
        public void a(int i10, int i11, k2.s sVar) throws ParserException {
            e.this.m(i10, i11, sVar);
        }

        @Override
        public void endMasterElement(int i10) throws ParserException {
            e.this.p(i10);
        }

        @Override
        public void floatElement(int i10, double d10) {
            e.this.s(i10, d10);
        }

        @Override
        public int getElementType(int i10) {
            return e.this.v(i10);
        }

        @Override
        public void integerElement(int i10, long j10) throws ParserException {
            e.this.y(i10, j10);
        }

        @Override
        public boolean isLevel1Element(int i10) {
            return e.this.A(i10);
        }

        @Override
        public void startMasterElement(int i10, long j10, long j11) throws ParserException {
            e.this.H(i10, j10, j11);
        }

        @Override
        public void stringElement(int i10, String str) throws ParserException {
            e.this.I(i10, str);
        }
    }

    protected static final class c {
        public byte[] P;
        public t0 V;
        public boolean W;
        public s0 Z;

        public boolean f16450a;

        public int f16451a0;

        public String f16452b;

        public String f16453c;

        public int f16454d;

        public int f16455e;

        public int f16456f;

        public int f16457g;

        private int f16458h;

        public boolean f16459i;

        public byte[] f16460j;

        public s0.a f16461k;

        public byte[] f16462l;

        public DrmInitData f16463m;

        public int f16464n = -1;

        public int f16465o = -1;

        public int f16466p = -1;

        public int f16467q = -1;

        public int f16468r = -1;

        public int f16469s = 0;

        public int f16470t = -1;

        public float f16471u = 0.0f;

        public float f16472v = 0.0f;

        public float f16473w = 0.0f;

        public byte[] f16474x = null;

        public int f16475y = -1;

        public boolean f16476z = false;
        public int A = -1;
        public int B = -1;
        public int C = -1;
        public int D = 1000;
        public int E = 200;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public float L = -1.0f;
        public float M = -1.0f;
        public float N = -1.0f;
        public float O = -1.0f;
        public int Q = 1;
        public int R = -1;
        public int S = 8000;
        public long T = 0;
        public long U = 0;
        public boolean X = true;
        private String Y = "eng";

        protected c() {
        }

        public void f() {
            androidx.media3.common.util.a.e(this.Z);
        }

        private byte[] g(String str) throws ParserException {
            byte[] bArr = this.f16462l;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + str, null);
        }

        private byte[] h() {
            if (this.F == -1.0f || this.G == -1.0f || this.H == -1.0f || this.I == -1.0f || this.J == -1.0f || this.K == -1.0f || this.L == -1.0f || this.M == -1.0f || this.N == -1.0f || this.O == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.F * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.G * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.H * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.I * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.J * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.K * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.L * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.M * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.N + 0.5f));
            byteBufferOrder.putShort((short) (this.O + 0.5f));
            byteBufferOrder.putShort((short) this.D);
            byteBufferOrder.putShort((short) this.E);
            return bArr;
        }

        private static Pair k(j0 j0Var) throws ParserException {
            try {
                j0Var.X(16);
                long jX = j0Var.x();
                if (jX == 1482049860) {
                    return new Pair("video/divx", null);
                }
                if (jX == 859189832) {
                    return new Pair(MimeTypes.VIDEO_H263, null);
                }
                if (jX != 826496599) {
                    u.h("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair(MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] bArrE = j0Var.e();
                for (int iF = j0Var.f() + 20; iF < bArrE.length - 4; iF++) {
                    if (bArrE[iF] == 0 && bArrE[iF + 1] == 0 && bArrE[iF + 2] == 1 && bArrE[iF + 3] == 15) {
                        return new Pair(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArrE, iF, bArrE.length)));
                    }
                }
                throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        private static boolean l(j0 j0Var) throws ParserException {
            try {
                int iZ = j0Var.z();
                if (iZ == 1) {
                    return true;
                }
                if (iZ != 65534) {
                    return false;
                }
                j0Var.W(24);
                return j0Var.A() == e.f16416k0.getMostSignificantBits() && j0Var.A() == e.f16416k0.getLeastSignificantBits();
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        private static List m(byte[] bArr) throws ParserException {
            int i10;
            int i11;
            try {
                if (bArr[0] != 2) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i12 = 0;
                int i13 = 1;
                while (true) {
                    i10 = bArr[i13];
                    if ((i10 & 255) != 255) {
                        break;
                    }
                    i12 += 255;
                    i13++;
                }
                int i14 = i13 + 1;
                int i15 = i12 + (i10 & 255);
                int i16 = 0;
                while (true) {
                    i11 = bArr[i14];
                    if ((i11 & 255) != 255) {
                        break;
                    }
                    i16 += 255;
                    i14++;
                }
                int i17 = i14 + 1;
                int i18 = i16 + (i11 & 255);
                if (bArr[i17] != 1) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i15];
                System.arraycopy(bArr, i17, bArr2, 0, i15);
                int i19 = i17 + i15;
                if (bArr[i19] != 3) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i20 = i19 + i18;
                if (bArr[i20] != 5) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i20];
                System.arraycopy(bArr, i20, bArr3, 0, bArr.length - i20);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        public boolean o(boolean z10) {
            if ("A_OPUS".equals(this.f16453c)) {
                return z10;
            }
            return this.f16457g > 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:219:0x0453  */
        /* JADX WARN: Code duplicated, block: B:224:0x046c  */
        /* JADX WARN: Code duplicated, block: B:225:0x046e  */
        /* JADX WARN: Code duplicated, block: B:228:0x047b  */
        /* JADX WARN: Code duplicated, block: B:229:0x048d  */
        /* JADX WARN: Code duplicated, block: B:231:0x0493  */
        /* JADX WARN: Code duplicated, block: B:233:0x0497  */
        /* JADX WARN: Code duplicated, block: B:235:0x049c  */
        /* JADX WARN: Code duplicated, block: B:238:0x04a4  */
        /* JADX WARN: Code duplicated, block: B:240:0x04a9  */
        /* JADX WARN: Code duplicated, block: B:243:0x04ae  */
        /* JADX WARN: Code duplicated, block: B:246:0x04bc  */
        /* JADX WARN: Code duplicated, block: B:249:0x04c2  */
        /* JADX WARN: Code duplicated, block: B:252:0x04f5  */
        /* JADX WARN: Code duplicated, block: B:257:0x0515  */
        /* JADX WARN: Code duplicated, block: B:276:0x0561  */
        /* JADX WARN: Code duplicated, block: B:278:0x0587  */
        /* JADX WARN: Code duplicated, block: B:280:0x058d  */
        /* JADX WARN: Code duplicated, block: B:296:0x05b8  */
        /* JADX WARN: Code duplicated, block: B:301:0x05d3  */
        /* JADX WARN: Code duplicated, block: B:302:0x05d6  */
        /* JADX WARN: Code duplicated, block: B:4:0x0028  */
        public void i(t tVar, int i10) throws ParserException {
            int i11;
            List listSingletonList;
            String str;
            int i12;
            int i13;
            List list;
            String str2;
            String str3;
            int i14;
            androidx.media3.common.r.b bVar;
            int i15;
            int iIntValue;
            int i16;
            float f10;
            int i17;
            int i18;
            int i19;
            String str4;
            o oVarA;
            String str5 = this.f16453c;
            str5.hashCode();
            String str6 = MimeTypes.AUDIO_RAW;
            switch (str5) {
                case "V_MPEG4/ISO/AP":
                case "V_MPEG4/ISO/SP":
                case "V_MPEG4/ISO/ASP":
                    i11 = 0;
                    byte[] bArr = this.f16462l;
                    listSingletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str6 = MimeTypes.VIDEO_MP4V;
                    str = null;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null && (oVarA = o.a(new j0(this.P))) != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z10 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i20 = i14 | (z10 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    } else if (y.t(str3)) {
                        if (this.f16469s == 0) {
                            i18 = this.f16467q;
                            iIntValue = -1;
                            if (i18 == -1) {
                                i18 = this.f16464n;
                            }
                            this.f16467q = i18;
                            i19 = this.f16468r;
                            if (i19 == -1) {
                                i19 = this.f16465o;
                            }
                            this.f16468r = i19;
                        } else {
                            iIntValue = -1;
                        }
                        i16 = this.f16467q;
                        if (i16 != iIntValue || (i17 = this.f16468r) == iIntValue) {
                            f10 = -1.0f;
                        } else {
                            f10 = (this.f16465o * i16) / (this.f16464n * i17);
                        }
                        i iVarA = this.f16476z ? new i.b().d(this.A).c(this.C).e(this.B).f(h()).g(this.f16466p).b(this.f16466p).a() : null;
                        if (this.f16452b != null && e.f16417l0.containsKey(this.f16452b)) {
                            iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                        }
                        if (this.f16470t == 0 || Float.compare(this.f16471u, 0.0f) != 0 || Float.compare(this.f16472v, 0.0f) != 0) {
                            i11 = iIntValue;
                        } else if (Float.compare(this.f16473w, 0.0f) != 0) {
                            if (Float.compare(this.f16473w, 90.0f) == 0) {
                                i11 = 90;
                            } else if (Float.compare(this.f16473w, -180.0f) == 0 || Float.compare(this.f16473w, 180.0f) == 0) {
                                i11 = 180;
                            } else if (Float.compare(this.f16473w, -90.0f) == 0) {
                                i11 = 270;
                            } else {
                                i11 = iIntValue;
                            }
                        }
                        bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                        i15 = 2;
                    } else {
                        if (MimeTypes.APPLICATION_SUBRIP.equals(str3) && !MimeTypes.TEXT_SSA.equals(str3) && !MimeTypes.TEXT_VTT.equals(str3) && !MimeTypes.APPLICATION_VOBSUB.equals(str3) && !MimeTypes.APPLICATION_PGS.equals(str3) && !MimeTypes.APPLICATION_DVBSUBS.equals(str3)) {
                            throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
                        }
                        i15 = 3;
                    }
                    if (this.f16452b != null && !e.f16417l0.containsKey(this.f16452b)) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE0 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN = bVarE0.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i20 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack;
                    s0VarTrack.d(rVarN);
                    return;
                case "A_MS/ACM":
                    i11 = 0;
                    if (l(new j0(g(this.f16453c)))) {
                        int iI0 = a1.i0(this.R);
                        if (iI0 != 0) {
                            i12 = iI0;
                            listSingletonList = null;
                            str = null;
                            i13 = -1;
                            if (this.P != null) {
                                str = oVarA.f63661c;
                                str6 = "video/dolby-vision";
                            }
                            str3 = str6;
                            boolean z11 = this.X;
                            if (this.W) {
                                i14 = 2;
                            } else {
                                i14 = i11;
                            }
                            int i21 = i14 | (z11 ? 1 : 0);
                            bVar = new androidx.media3.common.r.b();
                            if (y.o(str3)) {
                                if (y.t(str3)) {
                                    if (this.f16469s == 0) {
                                        i18 = this.f16467q;
                                        iIntValue = -1;
                                        if (i18 == -1) {
                                            i18 = this.f16464n;
                                        }
                                        this.f16467q = i18;
                                        i19 = this.f16468r;
                                        if (i19 == -1) {
                                            i19 = this.f16465o;
                                        }
                                        this.f16468r = i19;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    i16 = this.f16467q;
                                    if (i16 != iIntValue) {
                                        f10 = -1.0f;
                                    } else {
                                        f10 = -1.0f;
                                    }
                                    if (this.f16476z) {
                                    }
                                    if (this.f16452b != null) {
                                        iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                                    }
                                    if (this.f16470t == 0) {
                                        i11 = iIntValue;
                                    } else {
                                        i11 = iIntValue;
                                    }
                                    bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                                    i15 = 2;
                                } else {
                                    if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                                    }
                                    i15 = 3;
                                }
                                break;
                            } else {
                                bVar.R(this.Q).v0(this.S).o0(i12);
                                i15 = 1;
                            }
                            if (this.f16452b != null) {
                                bVar.h0(this.f16452b);
                            }
                            androidx.media3.common.r.b bVarE1 = bVar.e0(i10);
                            if (this.f16450a) {
                                str4 = MimeTypes.VIDEO_WEBM;
                            } else {
                                str4 = "video/x-matroska";
                            }
                            androidx.media3.common.r rVarN2 = bVarE1.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i21 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                            s0 s0VarTrack2 = tVar.track(this.f16454d, i15);
                            this.Z = s0VarTrack2;
                            s0VarTrack2.d(rVarN2);
                            return;
                        }
                        u.h("MatroskaExtractor", "Unsupported PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    } else {
                        u.h("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    }
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.AUDIO_UNKNOWN;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z12 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i22 = i14 | (z12 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE2 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN3 = bVarE2.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i22 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack3 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack3;
                    s0VarTrack3.d(rVarN3);
                    return;
                case "A_TRUEHD":
                    i11 = 0;
                    this.V = new t0();
                    str6 = MimeTypes.AUDIO_TRUEHD;
                    listSingletonList = null;
                    str = null;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z13 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i23 = i14 | (z13 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE3 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN4 = bVarE3.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i23 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack4 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack4;
                    s0VarTrack4.d(rVarN4);
                    return;
                case "A_VORBIS":
                    i11 = 0;
                    listSingletonList = m(g(this.f16453c));
                    str6 = MimeTypes.AUDIO_VORBIS;
                    i13 = 8192;
                    str = null;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z14 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i24 = i14 | (z14 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE4 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN5 = bVarE4.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i24 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack5 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack5;
                    s0VarTrack5.d(rVarN5);
                    return;
                case "A_MPEG/L2":
                    i11 = 0;
                    str6 = MimeTypes.AUDIO_MPEG_L2;
                    listSingletonList = null;
                    str = null;
                    i13 = 4096;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z15 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i25 = i14 | (z15 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE5 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN6 = bVarE5.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i25 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack6 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack6;
                    s0VarTrack6.d(rVarN6);
                    return;
                case "A_MPEG/L3":
                    i11 = 0;
                    str6 = MimeTypes.AUDIO_MPEG;
                    listSingletonList = null;
                    str = null;
                    i13 = 4096;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z16 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i26 = i14 | (z16 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE6 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN7 = bVarE6.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i26 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack7 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack7;
                    s0VarTrack7.d(rVarN7);
                    return;
                case "V_MS/VFW/FOURCC":
                    i11 = 0;
                    Pair pairK = k(new j0(g(this.f16453c)));
                    str6 = (String) pairK.first;
                    listSingletonList = (List) pairK.second;
                    str = null;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z17 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i27 = i14 | (z17 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE7 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN8 = bVarE7.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i27 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack8 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack8;
                    s0VarTrack8.d(rVarN8);
                    return;
                case "S_DVBSUB":
                    byte[] bArr2 = new byte[4];
                    i11 = 0;
                    System.arraycopy(g(this.f16453c), 0, bArr2, 0, 4);
                    listSingletonList = ImmutableList.of(bArr2);
                    str6 = MimeTypes.APPLICATION_DVBSUBS;
                    str = null;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z18 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i28 = i14 | (z18 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE8 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN9 = bVarE8.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i28 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack9 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack9;
                    s0VarTrack9.d(rVarN9);
                    return;
                case "V_MPEG4/ISO/AVC":
                    k2.d dVarB = k2.d.b(new j0(g(this.f16453c)));
                    list = dVarB.f63535a;
                    this.f16451a0 = dVarB.f63536b;
                    str2 = dVarB.f63546l;
                    str6 = MimeTypes.VIDEO_H264;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    List list2 = list;
                    str = str2;
                    listSingletonList = list2;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z19 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i29 = i14 | (z19 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE9 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN10 = bVarE9.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i29 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack10 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack10;
                    s0VarTrack10.d(rVarN10);
                    return;
                case "S_VOBSUB":
                    listSingletonList = ImmutableList.of(g(this.f16453c));
                    str6 = MimeTypes.APPLICATION_VOBSUB;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z110 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i210 = i14 | (z110 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE10 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN11 = bVarE10.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i210 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack11 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack11;
                    s0VarTrack11.d(rVarN11);
                    return;
                case "A_DTS/LOSSLESS":
                    str6 = MimeTypes.AUDIO_DTS_HD;
                    listSingletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z111 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i211 = i14 | (z111 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE11 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN12 = bVarE11.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i211 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack12 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack12;
                    s0VarTrack12.d(rVarN12);
                    return;
                case "A_AAC":
                    listSingletonList = Collections.singletonList(g(this.f16453c));
                    k2.a.b bVarE = k2.a.e(this.f16462l);
                    this.S = bVarE.f63490a;
                    this.Q = bVarE.f63491b;
                    str = bVarE.f63492c;
                    str6 = MimeTypes.AUDIO_AAC;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z112 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i212 = i14 | (z112 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE12 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN13 = bVarE12.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i212 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack13 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack13;
                    s0VarTrack13.d(rVarN13);
                    return;
                case "A_AC3":
                    str6 = MimeTypes.AUDIO_AC3;
                    listSingletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z113 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i213 = i14 | (z113 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE13 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN14 = bVarE13.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i213 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack14 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack14;
                    s0VarTrack14.d(rVarN14);
                    return;
                case "A_DTS":
                case "A_DTS/EXPRESS":
                    str6 = MimeTypes.AUDIO_DTS;
                    listSingletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z114 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i214 = i14 | (z114 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE14 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN15 = bVarE14.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i214 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack15 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack15;
                    s0VarTrack15.d(rVarN15);
                    return;
                case "V_AV1":
                    byte[] bArr3 = this.f16462l;
                    listSingletonList = bArr3 == null ? null : ImmutableList.of(bArr3);
                    str6 = "video/av01";
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z115 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i215 = i14 | (z115 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE15 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN16 = bVarE15.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i215 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack16 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack16;
                    s0VarTrack16.d(rVarN16);
                    return;
                case "V_VP8":
                    str6 = MimeTypes.VIDEO_VP8;
                    listSingletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z116 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i216 = i14 | (z116 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE16 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN17 = bVarE16.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i216 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack17 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack17;
                    s0VarTrack17.d(rVarN17);
                    return;
                case "V_VP9":
                    byte[] bArr4 = this.f16462l;
                    listSingletonList = bArr4 == null ? null : ImmutableList.of(bArr4);
                    str6 = MimeTypes.VIDEO_VP9;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z117 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i217 = i14 | (z117 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE17 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN18 = bVarE17.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i217 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack18 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack18;
                    s0VarTrack18.d(rVarN18);
                    return;
                case "S_HDMV/PGS":
                    str6 = MimeTypes.APPLICATION_PGS;
                    listSingletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z118 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i218 = i14 | (z118 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE18 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN19 = bVarE18.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i218 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack19 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack19;
                    s0VarTrack19.d(rVarN19);
                    return;
                case "V_THEORA":
                    str6 = MimeTypes.VIDEO_UNKNOWN;
                    listSingletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z119 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i219 = i14 | (z119 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE19 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN110 = bVarE19.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i219 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack110 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack110;
                    s0VarTrack110.d(rVarN110);
                    return;
                case "A_PCM/FLOAT/IEEE":
                    if (this.R == 32) {
                        listSingletonList = null;
                        str = null;
                        i11 = 0;
                        i13 = -1;
                        i12 = 4;
                    } else {
                        u.h("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        listSingletonList = null;
                        str = null;
                        str6 = MimeTypes.AUDIO_UNKNOWN;
                        i11 = 0;
                        i13 = -1;
                        i12 = -1;
                    }
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1110 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i2110 = i14 | (z1110 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE110 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN111 = bVarE110.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2110 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack111 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack111;
                    s0VarTrack111.d(rVarN111);
                    return;
                case "A_PCM/INT/BIG":
                    int i30 = this.R;
                    if (i30 == 8) {
                        i12 = 3;
                    } else if (i30 == 16) {
                        i12 = ASTNode.DEOP;
                    } else if (i30 == 24) {
                        i12 = 1342177280;
                    } else {
                        if (i30 != 32) {
                            u.h("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                            listSingletonList = null;
                            str = null;
                            str6 = MimeTypes.AUDIO_UNKNOWN;
                            i11 = 0;
                            i13 = -1;
                            i12 = -1;
                            if (this.P != null) {
                                str = oVarA.f63661c;
                                str6 = "video/dolby-vision";
                            }
                            str3 = str6;
                            boolean z1111 = this.X;
                            if (this.W) {
                                i14 = 2;
                            } else {
                                i14 = i11;
                            }
                            int i2111 = i14 | (z1111 ? 1 : 0);
                            bVar = new androidx.media3.common.r.b();
                            if (y.o(str3)) {
                                if (y.t(str3)) {
                                    if (this.f16469s == 0) {
                                        i18 = this.f16467q;
                                        iIntValue = -1;
                                        if (i18 == -1) {
                                            i18 = this.f16464n;
                                        }
                                        this.f16467q = i18;
                                        i19 = this.f16468r;
                                        if (i19 == -1) {
                                            i19 = this.f16465o;
                                        }
                                        this.f16468r = i19;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    i16 = this.f16467q;
                                    if (i16 != iIntValue) {
                                        f10 = -1.0f;
                                    } else {
                                        f10 = -1.0f;
                                    }
                                    if (this.f16476z) {
                                    }
                                    if (this.f16452b != null) {
                                        iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                                    }
                                    if (this.f16470t == 0) {
                                        i11 = iIntValue;
                                    } else {
                                        i11 = iIntValue;
                                    }
                                    bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                                    i15 = 2;
                                } else {
                                    if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                                    }
                                    i15 = 3;
                                }
                                break;
                            } else {
                                bVar.R(this.Q).v0(this.S).o0(i12);
                                i15 = 1;
                            }
                            if (this.f16452b != null) {
                                bVar.h0(this.f16452b);
                            }
                            androidx.media3.common.r.b bVarE111 = bVar.e0(i10);
                            if (this.f16450a) {
                                str4 = MimeTypes.VIDEO_WEBM;
                            } else {
                                str4 = "video/x-matroska";
                            }
                            androidx.media3.common.r rVarN112 = bVarE111.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2111 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                            s0 s0VarTrack112 = tVar.track(this.f16454d, i15);
                            this.Z = s0VarTrack112;
                            s0VarTrack112.d(rVarN112);
                            return;
                        }
                        i12 = 1610612736;
                    }
                    listSingletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1112 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i2112 = i14 | (z1112 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE112 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN113 = bVarE112.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2112 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack113 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack113;
                    s0VarTrack113.d(rVarN113);
                    return;
                case "A_PCM/INT/LIT":
                    int iI1 = a1.i0(this.R);
                    if (iI1 != 0) {
                        i12 = iI1;
                        listSingletonList = null;
                        str = null;
                        i11 = 0;
                        i13 = -1;
                        if (this.P != null) {
                            str = oVarA.f63661c;
                            str6 = "video/dolby-vision";
                        }
                        str3 = str6;
                        boolean z1113 = this.X;
                        if (this.W) {
                            i14 = 2;
                        } else {
                            i14 = i11;
                        }
                        int i2113 = i14 | (z1113 ? 1 : 0);
                        bVar = new androidx.media3.common.r.b();
                        if (y.o(str3)) {
                            if (y.t(str3)) {
                                if (this.f16469s == 0) {
                                    i18 = this.f16467q;
                                    iIntValue = -1;
                                    if (i18 == -1) {
                                        i18 = this.f16464n;
                                    }
                                    this.f16467q = i18;
                                    i19 = this.f16468r;
                                    if (i19 == -1) {
                                        i19 = this.f16465o;
                                    }
                                    this.f16468r = i19;
                                } else {
                                    iIntValue = -1;
                                }
                                i16 = this.f16467q;
                                if (i16 != iIntValue) {
                                    f10 = -1.0f;
                                } else {
                                    f10 = -1.0f;
                                }
                                if (this.f16476z) {
                                }
                                if (this.f16452b != null) {
                                    iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                                }
                                if (this.f16470t == 0) {
                                    i11 = iIntValue;
                                } else {
                                    i11 = iIntValue;
                                }
                                bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                                i15 = 2;
                            } else {
                                if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                                }
                                i15 = 3;
                            }
                            break;
                        } else {
                            bVar.R(this.Q).v0(this.S).o0(i12);
                            i15 = 1;
                        }
                        if (this.f16452b != null) {
                            bVar.h0(this.f16452b);
                        }
                        androidx.media3.common.r.b bVarE113 = bVar.e0(i10);
                        if (this.f16450a) {
                            str4 = MimeTypes.VIDEO_WEBM;
                        } else {
                            str4 = "video/x-matroska";
                        }
                        androidx.media3.common.r rVarN114 = bVarE113.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2113 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                        s0 s0VarTrack114 = tVar.track(this.f16454d, i15);
                        this.Z = s0VarTrack114;
                        s0VarTrack114.d(rVarN114);
                        return;
                    }
                    u.h("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.AUDIO_UNKNOWN;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1114 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i2114 = i14 | (z1114 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE114 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN115 = bVarE114.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2114 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack115 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack115;
                    s0VarTrack115.d(rVarN115);
                    return;
                case "S_TEXT/ASS":
                    listSingletonList = ImmutableList.of(e.f16413h0, g(this.f16453c));
                    str = null;
                    str6 = MimeTypes.TEXT_SSA;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1115 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i2115 = i14 | (z1115 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE115 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN116 = bVarE115.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2115 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack116 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack116;
                    s0VarTrack116.d(rVarN116);
                    return;
                case "V_MPEGH/ISO/HEVC":
                    f0 f0VarA = f0.a(new j0(g(this.f16453c)));
                    list = f0VarA.f63574a;
                    this.f16451a0 = f0VarA.f63575b;
                    str2 = f0VarA.f63587n;
                    str6 = MimeTypes.VIDEO_H265;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    List list3 = list;
                    str = str2;
                    listSingletonList = list3;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1116 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i2116 = i14 | (z1116 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE116 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN117 = bVarE116.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2116 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack117 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack117;
                    s0VarTrack117.d(rVarN117);
                    return;
                case "S_TEXT/WEBVTT":
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.TEXT_VTT;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1117 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i2117 = i14 | (z1117 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE117 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN118 = bVarE117.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2117 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack118 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack118;
                    s0VarTrack118.d(rVarN118);
                    return;
                case "S_TEXT/UTF8":
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.APPLICATION_SUBRIP;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1118 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i2118 = i14 | (z1118 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE118 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN119 = bVarE118.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2118 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack119 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack119;
                    s0VarTrack119.d(rVarN119);
                    return;
                case "V_MPEG2":
                    str6 = MimeTypes.VIDEO_MPEG2;
                    listSingletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1119 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i2119 = i14 | (z1119 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE119 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN1110 = bVarE119.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i2119 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack1110 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack1110;
                    s0VarTrack1110.d(rVarN1110);
                    return;
                case "A_EAC3":
                    str6 = MimeTypes.AUDIO_E_AC3;
                    listSingletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z11110 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i21110 = i14 | (z11110 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE1110 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN1111 = bVarE1110.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i21110 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack1111 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack1111;
                    s0VarTrack1111.d(rVarN1111);
                    return;
                case "A_FLAC":
                    listSingletonList = Collections.singletonList(g(this.f16453c));
                    str6 = MimeTypes.AUDIO_FLAC;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z11111 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i21111 = i14 | (z11111 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE1111 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN1112 = bVarE1111.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i21111 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack1112 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack1112;
                    s0VarTrack1112.d(rVarN1112);
                    return;
                case "A_OPUS":
                    listSingletonList = new ArrayList(3);
                    listSingletonList.add(g(this.f16453c));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.T).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.U).array());
                    str6 = MimeTypes.AUDIO_OPUS;
                    i13 = 5760;
                    str = null;
                    i11 = 0;
                    i12 = -1;
                    if (this.P != null) {
                        str = oVarA.f63661c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z11112 = this.X;
                    if (this.W) {
                        i14 = 2;
                    } else {
                        i14 = i11;
                    }
                    int i21112 = i14 | (z11112 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f16469s == 0) {
                                i18 = this.f16467q;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f16464n;
                                }
                                this.f16467q = i18;
                                i19 = this.f16468r;
                                if (i19 == -1) {
                                    i19 = this.f16465o;
                                }
                                this.f16468r = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f16467q;
                            if (i16 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f16476z) {
                            }
                            if (this.f16452b != null) {
                                iIntValue = ((Integer) e.f16417l0.get(this.f16452b)).intValue();
                            }
                            if (this.f16470t == 0) {
                                i11 = iIntValue;
                            } else {
                                i11 = iIntValue;
                            }
                            bVar.B0(this.f16464n).d0(this.f16465o).q0(f10).t0(i11).r0(this.f16474x).x0(this.f16475y).T(iVarA);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i12);
                        i15 = 1;
                    }
                    if (this.f16452b != null) {
                        bVar.h0(this.f16452b);
                    }
                    androidx.media3.common.r.b bVarE1112 = bVar.e0(i10);
                    if (this.f16450a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN1113 = bVarE1112.U(str4).u0(str3).k0(i13).j0(this.Y).w0(i21112 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f16463m).N();
                    s0 s0VarTrack1113 = tVar.track(this.f16454d, i15);
                    this.Z = s0VarTrack1113;
                    s0VarTrack1113.d(rVarN1113);
                    return;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
        }

        public void j() {
            t0 t0Var = this.V;
            if (t0Var != null) {
                t0Var.a(this.Z, this.f16461k);
            }
        }

        public void n() {
            t0 t0Var = this.V;
            if (t0Var != null) {
                t0Var.b();
            }
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        f16417l0 = Collections.unmodifiableMap(map);
    }

    @Deprecated
    public e() {
        this(new c3.a(), 2, s.a.f61264a);
    }

    public static r[] B() {
        return new r[]{new e(s.a.f61264a, 2)};
    }

    private boolean C(l0 l0Var, long j10) {
        if (this.B) {
            this.D = j10;
            l0Var.f63627a = this.C;
            this.B = false;
            return true;
        }
        if (this.f16447y) {
            long j11 = this.D;
            if (j11 != -1) {
                l0Var.f63627a = j11;
                this.D = -1L;
                return true;
            }
        }
        return false;
    }

    private void D(k2.s sVar, int i10) {
        if (this.f16431i.g() >= i10) {
            return;
        }
        if (this.f16431i.b() < i10) {
            j0 j0Var = this.f16431i;
            j0Var.c(Math.max(j0Var.b() * 2, i10));
        }
        sVar.readFully(this.f16431i.e(), this.f16431i.g(), i10 - this.f16431i.g());
        this.f16431i.V(i10);
    }

    private void E() {
        this.V = 0;
        this.W = 0;
        this.X = 0;
        this.Y = false;
        this.Z = false;
        this.f16419a0 = false;
        this.f16421b0 = 0;
        this.f16423c0 = (byte) 0;
        this.f16425d0 = false;
        this.f16434l.S(0);
    }

    private long F(long j10) throws ParserException {
        long j11 = this.f16442t;
        if (j11 != C.TIME_UNSET) {
            return a1.e1(j10, j11, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static void G(String str, long j10, byte[] bArr) {
        byte[] bArrT;
        int i10;
        str.hashCode();
        switch (str) {
            case "S_TEXT/ASS":
                bArrT = t(j10, "%01d:%02d:%02d:%02d", 10000L);
                i10 = 21;
                break;
            case "S_TEXT/WEBVTT":
                bArrT = t(j10, "%02d:%02d:%02d.%03d", 1000L);
                i10 = 25;
                break;
            case "S_TEXT/UTF8":
                bArrT = t(j10, "%02d:%02d:%02d,%03d", 1000L);
                i10 = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(bArrT, 0, bArr, i10, bArrT.length);
    }

    private int J(k2.s sVar, c cVar, int i10, boolean z10) throws ParserException {
        int i11;
        if ("S_TEXT/UTF8".equals(cVar.f16453c)) {
            K(sVar, f16412g0, i10);
            return r();
        }
        if ("S_TEXT/ASS".equals(cVar.f16453c)) {
            K(sVar, f16414i0, i10);
            return r();
        }
        if ("S_TEXT/WEBVTT".equals(cVar.f16453c)) {
            K(sVar, f16415j0, i10);
            return r();
        }
        s0 s0Var = cVar.Z;
        if (!this.Y) {
            if (cVar.f16459i) {
                this.R &= -1073741825;
                if (!this.Z) {
                    sVar.readFully(this.f16431i.e(), 0, 1);
                    this.V++;
                    if ((this.f16431i.e()[0] & 128) == 128) {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                    this.f16423c0 = this.f16431i.e()[0];
                    this.Z = true;
                }
                byte b10 = this.f16423c0;
                if ((b10 & 1) == 1) {
                    boolean z11 = (b10 & 2) == 2;
                    this.R |= 1073741824;
                    if (!this.f16425d0) {
                        sVar.readFully(this.f16436n.e(), 0, 8);
                        this.V += 8;
                        this.f16425d0 = true;
                        this.f16431i.e()[0] = (byte) ((z11 ? 128 : 0) | 8);
                        this.f16431i.W(0);
                        s0Var.a(this.f16431i, 1, 1);
                        this.W++;
                        this.f16436n.W(0);
                        s0Var.a(this.f16436n, 8, 1);
                        this.W += 8;
                    }
                    if (z11) {
                        if (!this.f16419a0) {
                            sVar.readFully(this.f16431i.e(), 0, 1);
                            this.V++;
                            this.f16431i.W(0);
                            this.f16421b0 = this.f16431i.H();
                            this.f16419a0 = true;
                        }
                        int i12 = this.f16421b0 * 4;
                        this.f16431i.S(i12);
                        sVar.readFully(this.f16431i.e(), 0, i12);
                        this.V += i12;
                        short s10 = (short) ((this.f16421b0 / 2) + 1);
                        int i13 = (s10 * 6) + 2;
                        ByteBuffer byteBuffer = this.f16439q;
                        if (byteBuffer == null || byteBuffer.capacity() < i13) {
                            this.f16439q = ByteBuffer.allocate(i13);
                        }
                        this.f16439q.position(0);
                        this.f16439q.putShort(s10);
                        int i14 = 0;
                        int i15 = 0;
                        while (true) {
                            i11 = this.f16421b0;
                            if (i14 >= i11) {
                                break;
                            }
                            int iL = this.f16431i.L();
                            if (i14 % 2 == 0) {
                                this.f16439q.putShort((short) (iL - i15));
                            } else {
                                this.f16439q.putInt(iL - i15);
                            }
                            i14++;
                            i15 = iL;
                        }
                        int i16 = (i10 - this.V) - i15;
                        if (i11 % 2 == 1) {
                            this.f16439q.putInt(i16);
                        } else {
                            this.f16439q.putShort((short) i16);
                            this.f16439q.putInt(0);
                        }
                        this.f16437o.U(this.f16439q.array(), i13);
                        s0Var.a(this.f16437o, i13, 1);
                        this.W += i13;
                    }
                }
            } else {
                byte[] bArr = cVar.f16460j;
                if (bArr != null) {
                    this.f16434l.U(bArr, bArr.length);
                }
            }
            if (cVar.o(z10)) {
                this.R |= ASTNode.DEOP;
                this.f16438p.S(0);
                int iG = (this.f16434l.g() + i10) - this.V;
                this.f16431i.S(4);
                this.f16431i.e()[0] = (byte) ((iG >> 24) & 255);
                this.f16431i.e()[1] = (byte) ((iG >> 16) & 255);
                this.f16431i.e()[2] = (byte) ((iG >> 8) & 255);
                this.f16431i.e()[3] = (byte) (iG & 255);
                s0Var.a(this.f16431i, 4, 2);
                this.W += 4;
            }
            this.Y = true;
        }
        int iG2 = i10 + this.f16434l.g();
        if (!"V_MPEG4/ISO/AVC".equals(cVar.f16453c) && !"V_MPEGH/ISO/HEVC".equals(cVar.f16453c)) {
            if (cVar.V != null) {
                androidx.media3.common.util.a.g(this.f16434l.g() == 0);
                cVar.V.d(sVar);
            }
            while (true) {
                int i17 = this.V;
                if (i17 >= iG2) {
                    break;
                }
                int iL2 = L(sVar, s0Var, iG2 - i17);
                this.V += iL2;
                this.W += iL2;
            }
        } else {
            byte[] bArrE = this.f16430h.e();
            bArrE[0] = 0;
            bArrE[1] = 0;
            bArrE[2] = 0;
            int i18 = cVar.f16451a0;
            int i19 = 4 - i18;
            while (this.V < iG2) {
                int i20 = this.X;
                if (i20 == 0) {
                    M(sVar, bArrE, i19, i18);
                    this.V += i18;
                    this.f16430h.W(0);
                    this.X = this.f16430h.L();
                    this.f16429g.W(0);
                    s0Var.c(this.f16429g, 4);
                    this.W += 4;
                } else {
                    int iL3 = L(sVar, s0Var, i20);
                    this.V += iL3;
                    this.W += iL3;
                    this.X -= iL3;
                }
            }
        }
        if ("A_VORBIS".equals(cVar.f16453c)) {
            this.f16432j.W(0);
            s0Var.c(this.f16432j, 4);
            this.W += 4;
        }
        return r();
    }

    private void K(k2.s sVar, byte[] bArr, int i10) {
        int length = bArr.length + i10;
        if (this.f16435m.b() < length) {
            this.f16435m.T(Arrays.copyOf(bArr, length + i10));
        } else {
            System.arraycopy(bArr, 0, this.f16435m.e(), 0, bArr.length);
        }
        sVar.readFully(this.f16435m.e(), bArr.length, i10);
        this.f16435m.W(0);
        this.f16435m.V(length);
    }

    private int L(k2.s sVar, s0 s0Var, int i10) {
        int iA = this.f16434l.a();
        if (iA <= 0) {
            return s0Var.e(sVar, i10, false);
        }
        int iMin = Math.min(i10, iA);
        s0Var.c(this.f16434l, iMin);
        return iMin;
    }

    private void M(k2.s sVar, byte[] bArr, int i10, int i11) {
        int iMin = Math.min(i11, this.f16434l.a());
        sVar.readFully(bArr, i10 + iMin, i11 - iMin);
        if (iMin > 0) {
            this.f16434l.l(bArr, i10, iMin);
        }
    }

    private void j(int i10) throws ParserException {
        if (this.F == null || this.G == null) {
            throw ParserException.createForMalformedContainer("Element " + i10 + " must be in a Cues", null);
        }
    }

    private void k(int i10) throws ParserException {
        if (this.f16446x != null) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i10 + " must be in a TrackEntry", null);
    }

    private void l() {
        androidx.media3.common.util.a.i(this.f16427e0);
    }

    private m0 n(v vVar, v vVar2) {
        int i10;
        if (this.f16441s == -1 || this.f16444v == C.TIME_UNSET || vVar == null || vVar.d() == 0 || vVar2 == null || vVar2.d() != vVar.d()) {
            return new m0.b(this.f16444v);
        }
        int iD = vVar.d();
        int[] iArrCopyOf = new int[iD];
        long[] jArrCopyOf = new long[iD];
        long[] jArrCopyOf2 = new long[iD];
        long[] jArrCopyOf3 = new long[iD];
        int i11 = 0;
        for (int i12 = 0; i12 < iD; i12++) {
            jArrCopyOf3[i12] = vVar.c(i12);
            jArrCopyOf[i12] = this.f16441s + vVar2.c(i12);
        }
        while (true) {
            i10 = iD - 1;
            if (i11 >= i10) {
                break;
            }
            int i13 = i11 + 1;
            iArrCopyOf[i11] = (int) (jArrCopyOf[i13] - jArrCopyOf[i11]);
            jArrCopyOf2[i11] = jArrCopyOf3[i13] - jArrCopyOf3[i11];
            i11 = i13;
        }
        int i14 = i10;
        while (i14 > 0 && jArrCopyOf3[i14] > this.f16444v) {
            i14--;
        }
        iArrCopyOf[i14] = (int) ((this.f16441s + this.f16440r) - jArrCopyOf[i14]);
        jArrCopyOf2[i14] = this.f16444v - jArrCopyOf3[i14];
        if (i14 < i10) {
            u.h("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration");
            int i15 = i14 + 1;
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i15);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i15);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i15);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i15);
        }
        return new h(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    private void o(c cVar, long j10, int i10, int i11, int i12) {
        t0 t0Var = cVar.V;
        if (t0Var != null) {
            t0Var.c(cVar.Z, j10, i10, i11, i12, cVar.f16461k);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f16453c) || "S_TEXT/ASS".equals(cVar.f16453c) || "S_TEXT/WEBVTT".equals(cVar.f16453c)) {
                if (this.N > 1) {
                    u.h("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j11 = this.L;
                    if (j11 == C.TIME_UNSET) {
                        u.h("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        G(cVar.f16453c, j11, this.f16435m.e());
                        for (int iF = this.f16435m.f(); iF < this.f16435m.g(); iF++) {
                            if (this.f16435m.e()[iF] == 0) {
                                this.f16435m.V(iF);
                                break;
                            }
                        }
                        s0 s0Var = cVar.Z;
                        j0 j0Var = this.f16435m;
                        s0Var.c(j0Var, j0Var.g());
                        i11 += this.f16435m.g();
                    }
                }
            }
            if ((268435456 & i10) != 0) {
                if (this.N > 1) {
                    this.f16438p.S(0);
                } else {
                    int iG = this.f16438p.g();
                    cVar.Z.a(this.f16438p, iG, 2);
                    i11 += iG;
                }
            }
            cVar.Z.b(j10, i10, i11, i12, cVar.f16461k);
        }
        this.I = true;
    }

    private static int[] q(int[] iArr, int i10) {
        if (iArr == null) {
            return new int[i10];
        }
        return iArr.length >= i10 ? iArr : new int[Math.max(iArr.length * 2, i10)];
    }

    private int r() {
        int i10 = this.W;
        E();
        return i10;
    }

    private static byte[] t(long j10, String str, long j11) {
        androidx.media3.common.util.a.a(j10 != C.TIME_UNSET);
        int i10 = (int) (j10 / 3600000000L);
        long j12 = j10 - (((long) i10) * 3600000000L);
        int i11 = (int) (j12 / 60000000);
        long j13 = j12 - (((long) i11) * 60000000);
        int i12 = (int) (j13 / 1000000);
        return a1.u0(String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j13 - (((long) i12) * 1000000)) / j11))));
    }

    private static boolean z(String str) {
        str.hashCode();
        switch (str) {
            case "V_MPEG4/ISO/AP":
            case "V_MPEG4/ISO/SP":
            case "A_MS/ACM":
            case "A_TRUEHD":
            case "A_VORBIS":
            case "A_MPEG/L2":
            case "A_MPEG/L3":
            case "V_MS/VFW/FOURCC":
            case "S_DVBSUB":
            case "V_MPEG4/ISO/ASP":
            case "V_MPEG4/ISO/AVC":
            case "S_VOBSUB":
            case "A_DTS/LOSSLESS":
            case "A_AAC":
            case "A_AC3":
            case "A_DTS":
            case "V_AV1":
            case "V_VP8":
            case "V_VP9":
            case "S_HDMV/PGS":
            case "V_THEORA":
            case "A_DTS/EXPRESS":
            case "A_PCM/FLOAT/IEEE":
            case "A_PCM/INT/BIG":
            case "A_PCM/INT/LIT":
            case "S_TEXT/ASS":
            case "V_MPEGH/ISO/HEVC":
            case "S_TEXT/WEBVTT":
            case "S_TEXT/UTF8":
            case "V_MPEG2":
            case "A_EAC3":
            case "A_FLAC":
            case "A_OPUS":
                return true;
            default:
                return false;
        }
    }

    protected boolean A(int i10) {
        return i10 == 357149030 || i10 == 524531317 || i10 == 475249515 || i10 == 374648427;
    }

    protected void H(int i10, long j10, long j11) throws ParserException {
        l();
        if (i10 == 160) {
            this.T = false;
            this.U = 0L;
            return;
        }
        if (i10 == 174) {
            c cVar = new c();
            this.f16446x = cVar;
            cVar.f16450a = this.f16445w;
            return;
        }
        if (i10 == 187) {
            this.H = false;
            return;
        }
        if (i10 == 19899) {
            this.f16448z = -1;
            this.A = -1L;
            return;
        }
        if (i10 == 20533) {
            u(i10).f16459i = true;
            return;
        }
        if (i10 == 21968) {
            u(i10).f16476z = true;
            return;
        }
        if (i10 == 408125543) {
            long j12 = this.f16441s;
            if (j12 != -1 && j12 != j10) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.f16441s = j10;
            this.f16440r = j11;
            return;
        }
        if (i10 == 475249515) {
            this.F = new v();
            this.G = new v();
        } else if (i10 == 524531317 && !this.f16447y) {
            if (this.f16424d && this.C != -1) {
                this.B = true;
            } else {
                this.f16427e0.d(new m0.b(this.f16444v));
                this.f16447y = true;
            }
        }
    }

    protected void I(int i10, String str) throws ParserException {
        if (i10 == 134) {
            u(i10).f16453c = str;
            return;
        }
        if (i10 != 17026) {
            if (i10 == 21358) {
                u(i10).f16452b = str;
                return;
            } else {
                if (i10 != 2274716) {
                    return;
                }
                u(i10).Y = str;
                return;
            }
        }
        if ("webm".equals(str) || "matroska".equals(str)) {
            this.f16445w = Objects.equals(str, "webm");
            return;
        }
        throw ParserException.createForMalformedContainer("DocType " + str + " not supported", null);
    }

    @Override
    public final boolean b(k2.s sVar) {
        return new f().b(sVar);
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public final int d(k2.s sVar, l0 l0Var) {
        this.I = false;
        boolean zA = true;
        while (zA && !this.I) {
            zA = this.f16418a.a(sVar);
            if (zA && C(l0Var, sVar.getPosition())) {
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i10 = 0; i10 < this.f16422c.size(); i10++) {
            c cVar = (c) this.f16422c.valueAt(i10);
            cVar.f();
            cVar.j();
        }
        return -1;
    }

    @Override
    public final void e(t tVar) {
        if (this.f16426e) {
            tVar = new h3.t(tVar, this.f16428f);
        }
        this.f16427e0 = tVar;
    }

    @Override
    public List f() {
        return q.a(this);
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0282  */
    protected void m(int i10, int i11, k2.s sVar) throws ParserException {
        c cVar;
        int i12;
        c cVar2;
        c cVar3;
        long j10;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17 = 0;
        int i18 = 1;
        if (i10 != 161 && i10 != 163) {
            if (i10 == 165) {
                if (this.J != 2) {
                    return;
                }
                x((c) this.f16422c.get(this.P), this.S, sVar, i11);
                return;
            }
            if (i10 == 16877) {
                w(u(i10), sVar, i11);
                return;
            }
            if (i10 == 16981) {
                k(i10);
                byte[] bArr = new byte[i11];
                this.f16446x.f16460j = bArr;
                sVar.readFully(bArr, 0, i11);
                return;
            }
            if (i10 == 18402) {
                byte[] bArr2 = new byte[i11];
                sVar.readFully(bArr2, 0, i11);
                u(i10).f16461k = new s0.a(1, bArr2, 0, 0);
                return;
            }
            if (i10 == 21419) {
                Arrays.fill(this.f16433k.e(), (byte) 0);
                sVar.readFully(this.f16433k.e(), 4 - i11, i11);
                this.f16433k.W(0);
                this.f16448z = (int) this.f16433k.J();
                return;
            }
            if (i10 == 25506) {
                k(i10);
                byte[] bArr3 = new byte[i11];
                this.f16446x.f16462l = bArr3;
                sVar.readFully(bArr3, 0, i11);
                return;
            }
            if (i10 != 30322) {
                throw ParserException.createForMalformedContainer("Unexpected id: " + i10, null);
            }
            k(i10);
            byte[] bArr4 = new byte[i11];
            this.f16446x.f16474x = bArr4;
            sVar.readFully(bArr4, 0, i11);
            return;
        }
        if (this.J == 0) {
            this.P = (int) this.f16420b.d(sVar, false, true, 8);
            this.Q = this.f16420b.b();
            this.L = C.TIME_UNSET;
            this.J = 1;
            this.f16431i.S(0);
        }
        c cVar4 = (c) this.f16422c.get(this.P);
        if (cVar4 == null) {
            sVar.skipFully(i11 - this.Q);
            this.J = 0;
            return;
        }
        cVar4.f();
        if (this.J == 1) {
            D(sVar, 3);
            int i19 = (this.f16431i.e()[2] & 6) >> 1;
            byte b10 = 255;
            if (i19 == 0) {
                this.N = 1;
                int[] iArrQ = q(this.O, 1);
                this.O = iArrQ;
                iArrQ[0] = (i11 - this.Q) - 3;
            } else {
                int i20 = 4;
                D(sVar, 4);
                int i21 = (this.f16431i.e()[3] & 255) + 1;
                this.N = i21;
                int[] iArrQ2 = q(this.O, i21);
                this.O = iArrQ2;
                if (i19 == 2) {
                    int i22 = (i11 - this.Q) - 4;
                    int i23 = this.N;
                    Arrays.fill(iArrQ2, 0, i23, i22 / i23);
                } else {
                    if (i19 == 1) {
                        int i24 = 0;
                        int i25 = 0;
                        while (true) {
                            i13 = this.N;
                            if (i24 >= i13 - 1) {
                                break;
                            }
                            this.O[i24] = 0;
                            while (true) {
                                i14 = i20 + 1;
                                D(sVar, i14);
                                int i26 = this.f16431i.e()[i20] & 255;
                                int[] iArr = this.O;
                                i15 = iArr[i24] + i26;
                                iArr[i24] = i15;
                                if (i26 != 255) {
                                    break;
                                } else {
                                    i20 = i14;
                                }
                            }
                            i25 += i15;
                            i24++;
                            i20 = i14;
                        }
                        this.O[i13 - 1] = ((i11 - this.Q) - i20) - i25;
                    } else {
                        if (i19 != 3) {
                            throw ParserException.createForMalformedContainer("Unexpected lacing value: " + i19, null);
                        }
                        int i27 = 0;
                        int i28 = 0;
                        while (true) {
                            int i29 = this.N;
                            if (i27 >= i29 - 1) {
                                cVar2 = cVar4;
                                this.O[i29 - 1] = ((i11 - this.Q) - i20) - i28;
                                break;
                            }
                            this.O[i27] = i17;
                            int i30 = i20 + 1;
                            D(sVar, i30);
                            if (this.f16431i.e()[i20] == 0) {
                                throw ParserException.createForMalformedContainer("No valid varint length mask found", null);
                            }
                            int i31 = i17;
                            while (true) {
                                if (i31 >= 8) {
                                    cVar3 = cVar4;
                                    j10 = 0;
                                    break;
                                }
                                int i32 = i18 << (7 - i31);
                                if ((this.f16431i.e()[i20] & i32) != 0) {
                                    i30 += i31;
                                    D(sVar, i30);
                                    cVar3 = cVar4;
                                    j10 = (~i32) & this.f16431i.e()[i20] & b10;
                                    int i33 = i20 + 1;
                                    while (i33 < i30) {
                                        j10 = (j10 << 8) | ((long) (this.f16431i.e()[i33] & b10));
                                        i33++;
                                        b10 = 255;
                                    }
                                    if (i27 <= 0) {
                                        break;
                                    }
                                    j10 -= (1 << ((i31 * 7) + 6)) - 1;
                                    break;
                                }
                                i31++;
                                i18 = 1;
                                b10 = 255;
                            }
                            i20 = i30;
                            if (j10 < -2147483648L || j10 > 2147483647L) {
                                throw ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
                            }
                            int i34 = (int) j10;
                            int[] iArr2 = this.O;
                            if (i27 != 0) {
                                i34 += iArr2[i27 - 1];
                            }
                            iArr2[i27] = i34;
                            i28 += i34;
                            i27++;
                            cVar4 = cVar3;
                            i17 = 0;
                            i18 = 1;
                            b10 = 255;
                        }
                    }
                    this.K = this.E + F((this.f16431i.e()[0] << 8) | (this.f16431i.e()[1] & 255));
                    cVar = cVar2;
                    if (cVar.f16455e != 2 || (i10 == 163 && (this.f16431i.e()[2] & 128) == 128)) {
                        i16 = 1;
                    } else {
                        i16 = 0;
                    }
                    this.R = i16;
                    this.J = 2;
                    this.M = 0;
                    i12 = 163;
                }
            }
            cVar2 = cVar4;
            this.K = this.E + F((this.f16431i.e()[0] << 8) | (this.f16431i.e()[1] & 255));
            cVar = cVar2;
            if (cVar.f16455e != 2) {
                i16 = 1;
            } else {
                i16 = 1;
            }
            this.R = i16;
            this.J = 2;
            this.M = 0;
            i12 = 163;
        } else {
            cVar = cVar4;
            i12 = 163;
        }
        if (i10 == i12) {
            while (true) {
                int i35 = this.M;
                if (i35 >= this.N) {
                    this.J = 0;
                    return;
                }
                o(cVar, ((long) ((this.M * cVar.f16456f) / 1000)) + this.K, this.R, J(sVar, cVar, this.O[i35], false), 0);
                this.M++;
            }
        } else {
            while (true) {
                int i36 = this.M;
                if (i36 >= this.N) {
                    return;
                }
                int[] iArr3 = this.O;
                iArr3[i36] = J(sVar, cVar, iArr3[i36], true);
                this.M++;
            }
        }
    }

    protected void p(int i10) throws ParserException {
        l();
        if (i10 == 160) {
            if (this.J != 2) {
                return;
            }
            c cVar = (c) this.f16422c.get(this.P);
            cVar.f();
            if (this.U > 0 && "A_OPUS".equals(cVar.f16453c)) {
                this.f16438p.T(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.U).array());
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.N; i12++) {
                i11 += this.O[i12];
            }
            int i13 = 0;
            while (i13 < this.N) {
                long j10 = this.K + ((long) ((cVar.f16456f * i13) / 1000));
                int i14 = this.R;
                if (i13 == 0 && !this.T) {
                    i14 |= 1;
                }
                int i15 = this.O[i13];
                int i16 = i11 - i15;
                o(cVar, j10, i14, i15, i16);
                i13++;
                i11 = i16;
            }
            this.J = 0;
            return;
        }
        if (i10 == 174) {
            c cVar2 = (c) androidx.media3.common.util.a.i(this.f16446x);
            String str = cVar2.f16453c;
            if (str == null) {
                throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            }
            if (z(str)) {
                cVar2.i(this.f16427e0, cVar2.f16454d);
                this.f16422c.put(cVar2.f16454d, cVar2);
            }
            this.f16446x = null;
            return;
        }
        if (i10 == 19899) {
            int i17 = this.f16448z;
            if (i17 != -1) {
                long j11 = this.A;
                if (j11 != -1) {
                    if (i17 == 475249515) {
                        this.C = j11;
                        return;
                    }
                    return;
                }
            }
            throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i10 == 25152) {
            k(i10);
            c cVar3 = this.f16446x;
            if (cVar3.f16459i) {
                if (cVar3.f16461k == null) {
                    throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                cVar3.f16463m = new DrmInitData(new DrmInitData.SchemeData(androidx.media3.common.h.f9669a, MimeTypes.VIDEO_WEBM, this.f16446x.f16461k.f63687b));
                return;
            }
            return;
        }
        if (i10 == 28032) {
            k(i10);
            c cVar4 = this.f16446x;
            if (cVar4.f16459i && cVar4.f16460j != null) {
                throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i10 == 357149030) {
            if (this.f16442t == C.TIME_UNSET) {
                this.f16442t = 1000000L;
            }
            long j12 = this.f16443u;
            if (j12 != C.TIME_UNSET) {
                this.f16444v = F(j12);
                return;
            }
            return;
        }
        if (i10 == 374648427) {
            if (this.f16422c.size() == 0) {
                throw ParserException.createForMalformedContainer("No valid tracks were found", null);
            }
            this.f16427e0.endTracks();
        } else {
            if (i10 != 475249515) {
                return;
            }
            if (!this.f16447y) {
                this.f16427e0.d(n(this.F, this.G));
                this.f16447y = true;
            }
            this.F = null;
            this.G = null;
        }
    }

    protected void s(int i10, double d10) {
        if (i10 == 181) {
            u(i10).S = (int) d10;
        }
        if (i10 == 17545) {
            this.f16443u = (long) d10;
            return;
        }
        switch (i10) {
            case 21969:
                u(i10).F = (float) d10;
                break;
            case 21970:
                u(i10).G = (float) d10;
                break;
            case 21971:
                u(i10).H = (float) d10;
                break;
            case 21972:
                u(i10).I = (float) d10;
                break;
            case 21973:
                u(i10).J = (float) d10;
                break;
            case 21974:
                u(i10).K = (float) d10;
                break;
            case 21975:
                u(i10).L = (float) d10;
                break;
            case 21976:
                u(i10).M = (float) d10;
                break;
            case 21977:
                u(i10).N = (float) d10;
                break;
            case 21978:
                u(i10).O = (float) d10;
                break;
            default:
                switch (i10) {
                    case 30323:
                        u(i10).f16471u = (float) d10;
                        break;
                    case 30324:
                        u(i10).f16472v = (float) d10;
                        break;
                    case 30325:
                        u(i10).f16473w = (float) d10;
                        break;
                }
                break;
        }
    }

    @Override
    public void seek(long j10, long j11) {
        this.E = C.TIME_UNSET;
        this.J = 0;
        this.f16418a.reset();
        this.f16420b.e();
        E();
        for (int i10 = 0; i10 < this.f16422c.size(); i10++) {
            ((c) this.f16422c.valueAt(i10)).n();
        }
    }

    protected c u(int i10) throws ParserException {
        k(i10);
        return this.f16446x;
    }

    protected int v(int i10) {
        switch (i10) {
            case MRAID_JS_WRITE_FAILED_VALUE:
            case PRIVACY_URL_ERROR_VALUE:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case AD_RESPONSE_EMPTY_VALUE:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21938:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    protected void w(c cVar, k2.s sVar, int i10) {
        if (cVar.f16458h != 1685485123 && cVar.f16458h != 1685480259) {
            sVar.skipFully(i10);
            return;
        }
        byte[] bArr = new byte[i10];
        cVar.P = bArr;
        sVar.readFully(bArr, 0, i10);
    }

    protected void x(c cVar, int i10, k2.s sVar, int i11) {
        if (i10 != 4 || !"V_VP9".equals(cVar.f16453c)) {
            sVar.skipFully(i11);
        } else {
            this.f16438p.S(i11);
            sVar.readFully(this.f16438p.e(), 0, i11);
        }
    }

    protected void y(int i10, long j10) throws ParserException {
        if (i10 == 20529) {
            if (j10 == 0) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingOrder " + j10 + " not supported", null);
        }
        if (i10 == 20530) {
            if (j10 == 1) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingScope " + j10 + " not supported", null);
        }
        switch (i10) {
            case MRAID_JS_WRITE_FAILED_VALUE:
                u(i10).f16455e = (int) j10;
                return;
            case PRIVACY_URL_ERROR_VALUE:
                u(i10).X = j10 == 1;
                return;
            case 155:
                this.L = F(j10);
                return;
            case 159:
                u(i10).Q = (int) j10;
                return;
            case 176:
                u(i10).f16464n = (int) j10;
                return;
            case 179:
                j(i10);
                this.F.a(F(j10));
                return;
            case 186:
                u(i10).f16465o = (int) j10;
                return;
            case AD_RESPONSE_EMPTY_VALUE:
                u(i10).f16454d = (int) j10;
                return;
            case 231:
                this.E = F(j10);
                return;
            case 238:
                this.S = (int) j10;
                return;
            case 241:
                if (this.H) {
                    return;
                }
                j(i10);
                this.G.a(j10);
                this.H = true;
                return;
            case 251:
                this.T = true;
                return;
            case 16871:
                u(i10).f16458h = (int) j10;
                return;
            case 16980:
                if (j10 == 3) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentCompAlgo " + j10 + " not supported", null);
            case 17029:
                if (j10 < 1 || j10 > 2) {
                    throw ParserException.createForMalformedContainer("DocTypeReadVersion " + j10 + " not supported", null);
                }
                return;
            case 17143:
                if (j10 == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("EBMLReadVersion " + j10 + " not supported", null);
            case 18401:
                if (j10 == 5) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentEncAlgo " + j10 + " not supported", null);
            case 18408:
                if (j10 == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("AESSettingsCipherMode " + j10 + " not supported", null);
            case 21420:
                this.A = j10 + this.f16441s;
                return;
            case 21432:
                int i11 = (int) j10;
                k(i10);
                if (i11 == 0) {
                    this.f16446x.f16475y = 0;
                    return;
                }
                if (i11 == 1) {
                    this.f16446x.f16475y = 2;
                    return;
                } else if (i11 == 3) {
                    this.f16446x.f16475y = 1;
                    return;
                } else {
                    if (i11 != 15) {
                        return;
                    }
                    this.f16446x.f16475y = 3;
                    return;
                }
            case 21680:
                u(i10).f16467q = (int) j10;
                return;
            case 21682:
                u(i10).f16469s = (int) j10;
                return;
            case 21690:
                u(i10).f16468r = (int) j10;
                return;
            case 21930:
                u(i10).W = j10 == 1;
                return;
            case 21938:
                k(i10);
                c cVar = this.f16446x;
                cVar.f16476z = true;
                cVar.f16466p = (int) j10;
                return;
            case 21998:
                u(i10).f16457g = (int) j10;
                return;
            case 22186:
                u(i10).T = j10;
                return;
            case 22203:
                u(i10).U = j10;
                return;
            case 25188:
                u(i10).R = (int) j10;
                return;
            case 30114:
                this.U = j10;
                return;
            case 30321:
                k(i10);
                int i12 = (int) j10;
                if (i12 == 0) {
                    this.f16446x.f16470t = 0;
                    return;
                }
                if (i12 == 1) {
                    this.f16446x.f16470t = 1;
                    return;
                } else if (i12 == 2) {
                    this.f16446x.f16470t = 2;
                    return;
                } else {
                    if (i12 != 3) {
                        return;
                    }
                    this.f16446x.f16470t = 3;
                    return;
                }
            case 2352003:
                u(i10).f16456f = (int) j10;
                return;
            case 2807729:
                this.f16442t = j10;
                return;
            default:
                switch (i10) {
                    case 21945:
                        k(i10);
                        int i13 = (int) j10;
                        if (i13 == 1) {
                            this.f16446x.C = 2;
                            return;
                        } else {
                            if (i13 != 2) {
                                return;
                            }
                            this.f16446x.C = 1;
                            return;
                        }
                    case 21946:
                        k(i10);
                        int iK = i.k((int) j10);
                        if (iK != -1) {
                            this.f16446x.B = iK;
                            return;
                        }
                        return;
                    case 21947:
                        k(i10);
                        this.f16446x.f16476z = true;
                        int iJ = i.j((int) j10);
                        if (iJ != -1) {
                            this.f16446x.A = iJ;
                            return;
                        }
                        return;
                    case 21948:
                        u(i10).D = (int) j10;
                        return;
                    case 21949:
                        u(i10).E = (int) j10;
                        return;
                    default:
                        return;
                }
        }
    }

    public e(s.a aVar, int i10) {
        this(new c3.a(), i10, aVar);
    }

    e(c3.c cVar, int i10, s.a aVar) {
        this.f16441s = -1L;
        this.f16442t = C.TIME_UNSET;
        this.f16443u = C.TIME_UNSET;
        this.f16444v = C.TIME_UNSET;
        this.C = -1L;
        this.D = -1L;
        this.E = C.TIME_UNSET;
        this.f16418a = cVar;
        cVar.b(new b());
        this.f16428f = aVar;
        this.f16424d = (i10 & 1) == 0;
        this.f16426e = (i10 & 2) == 0;
        this.f16420b = new g();
        this.f16422c = new SparseArray();
        this.f16431i = new j0(4);
        this.f16432j = new j0(ByteBuffer.allocate(4).putInt(-1).array());
        this.f16433k = new j0(4);
        this.f16429g = new j0(androidx.media3.container.g.f10281a);
        this.f16430h = new j0(4);
        this.f16434l = new j0();
        this.f16435m = new j0();
        this.f16436n = new j0(8);
        this.f16437o = new j0();
        this.f16438p = new j0();
        this.O = new int[1];
    }

    @Override
    public final void release() {
    }
}
