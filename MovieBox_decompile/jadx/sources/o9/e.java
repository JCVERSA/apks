package o9;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.x;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.a0;
import i9.b0;
import i9.e0;
import i9.f0;
import i9.l;
import i9.m;
import i9.n;
import i9.q;
import i9.r;
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
import org.mvel2.ast.ASTNode;

public class e implements l {

    public static final r f67649c0 = new r() {
        @Override
        public l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override
        public final l[] createExtractors() {
            return e.z();
        }
    };

    private static final byte[] f67650d0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    private static final byte[] f67651e0 = p0.n0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    private static final byte[] f67652f0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    private static final byte[] f67653g0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    private static final UUID f67654h0 = new UUID(72057594037932032L, -9223371306706625679L);

    private static final Map f67655i0;
    private long A;
    private long B;
    private t C;
    private t D;
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

    private final o9.c f67656a;

    private boolean f67657a0;

    private final g f67658b;

    private n f67659b0;

    private final SparseArray f67660c;

    private final boolean f67661d;

    private final d0 f67662e;

    private final d0 f67663f;

    private final d0 f67664g;

    private final d0 f67665h;

    private final d0 f67666i;

    private final d0 f67667j;

    private final d0 f67668k;

    private final d0 f67669l;

    private final d0 f67670m;

    private final d0 f67671n;

    private ByteBuffer f67672o;

    private long f67673p;

    private long f67674q;

    private long f67675r;

    private long f67676s;

    private long f67677t;

    private c f67678u;

    private boolean f67679v;

    private int f67680w;

    private long f67681x;

    private boolean f67682y;

    private long f67683z;

    private final class b implements o9.b {
        private b() {
        }

        @Override
        public void a(int i10, int i11, m mVar) throws ParserException {
            e.this.k(i10, i11, mVar);
        }

        @Override
        public void endMasterElement(int i10) throws ParserException {
            e.this.n(i10);
        }

        @Override
        public void floatElement(int i10, double d10) {
            e.this.q(i10, d10);
        }

        @Override
        public int getElementType(int i10) {
            return e.this.t(i10);
        }

        @Override
        public void integerElement(int i10, long j10) throws ParserException {
            e.this.w(i10, j10);
        }

        @Override
        public boolean isLevel1Element(int i10) {
            return e.this.y(i10);
        }

        @Override
        public void startMasterElement(int i10, long j10, long j11) throws ParserException {
            e.this.F(i10, j10, j11);
        }

        @Override
        public void stringElement(int i10, String str) throws ParserException {
            e.this.G(i10, str);
        }
    }

    protected static final class c {
        public byte[] N;
        public f0 T;
        public boolean U;
        public e0 X;
        public int Y;

        public String f67685a;

        public String f67686b;

        public int f67687c;

        public int f67688d;

        public int f67689e;

        public int f67690f;

        private int f67691g;

        public boolean f67692h;

        public byte[] f67693i;

        public e0.a f67694j;

        public byte[] f67695k;

        public DrmInitData f67696l;

        public int f67697m = -1;

        public int f67698n = -1;

        public int f67699o = -1;

        public int f67700p = -1;

        public int f67701q = 0;

        public int f67702r = -1;

        public float f67703s = 0.0f;

        public float f67704t = 0.0f;

        public float f67705u = 0.0f;

        public byte[] f67706v = null;

        public int f67707w = -1;

        public boolean f67708x = false;

        public int f67709y = -1;

        public int f67710z = -1;
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
        private String W = "eng";

        protected c() {
        }

        public void f() {
            com.google.android.exoplayer2.util.a.e(this.X);
        }

        private byte[] g(String str) throws ParserException {
            byte[] bArr = this.f67695k;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + str, null);
        }

        private byte[] h() {
            if (this.D == -1.0f || this.E == -1.0f || this.F == -1.0f || this.G == -1.0f || this.H == -1.0f || this.I == -1.0f || this.J == -1.0f || this.K == -1.0f || this.L == -1.0f || this.M == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.D * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.E * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.F * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.G * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.H * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.I * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.J * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.K * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.L + 0.5f));
            byteBufferOrder.putShort((short) (this.M + 0.5f));
            byteBufferOrder.putShort((short) this.B);
            byteBufferOrder.putShort((short) this.C);
            return bArr;
        }

        private static Pair k(d0 d0Var) throws ParserException {
            try {
                d0Var.Q(16);
                long jT = d0Var.t();
                if (jT == 1482049860) {
                    return new Pair("video/divx", null);
                }
                if (jT == 859189832) {
                    return new Pair(MimeTypes.VIDEO_H263, null);
                }
                if (jT != 826496599) {
                    s.i("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair(MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] bArrD = d0Var.d();
                for (int iE = d0Var.e() + 20; iE < bArrD.length - 4; iE++) {
                    if (bArrD[iE] == 0 && bArrD[iE + 1] == 0 && bArrD[iE + 2] == 1 && bArrD[iE + 3] == 15) {
                        return new Pair(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArrD, iE, bArrD.length)));
                    }
                }
                throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        private static boolean l(d0 d0Var) throws ParserException {
            try {
                int iV = d0Var.v();
                if (iV == 1) {
                    return true;
                }
                if (iV != 65534) {
                    return false;
                }
                d0Var.P(24);
                return d0Var.w() == e.f67654h0.getMostSignificantBits() && d0Var.w() == e.f67654h0.getLeastSignificantBits();
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
            if ("A_OPUS".equals(this.f67686b)) {
                return z10;
            }
            return this.f67690f > 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:205:0x0428  */
        /* JADX WARN: Code duplicated, block: B:210:0x043f  */
        /* JADX WARN: Code duplicated, block: B:211:0x0441  */
        /* JADX WARN: Code duplicated, block: B:214:0x044e  */
        /* JADX WARN: Code duplicated, block: B:215:0x0460  */
        /* JADX WARN: Code duplicated, block: B:217:0x0466  */
        /* JADX WARN: Code duplicated, block: B:219:0x046a  */
        /* JADX WARN: Code duplicated, block: B:221:0x046f  */
        /* JADX WARN: Code duplicated, block: B:224:0x0477  */
        /* JADX WARN: Code duplicated, block: B:226:0x047c  */
        /* JADX WARN: Code duplicated, block: B:229:0x0481  */
        /* JADX WARN: Code duplicated, block: B:232:0x048f  */
        /* JADX WARN: Code duplicated, block: B:235:0x0495  */
        /* JADX WARN: Code duplicated, block: B:238:0x04a8  */
        /* JADX WARN: Code duplicated, block: B:243:0x04c8  */
        /* JADX WARN: Code duplicated, block: B:249:0x04e1  */
        /* JADX WARN: Code duplicated, block: B:250:0x04e3  */
        /* JADX WARN: Code duplicated, block: B:252:0x04ed  */
        /* JADX WARN: Code duplicated, block: B:253:0x04f0  */
        /* JADX WARN: Code duplicated, block: B:255:0x04fa  */
        /* JADX WARN: Code duplicated, block: B:261:0x0512  */
        /* JADX WARN: Code duplicated, block: B:263:0x0539  */
        /* JADX WARN: Code duplicated, block: B:265:0x053f  */
        /* JADX WARN: Code duplicated, block: B:281:0x056a  */
        /* JADX WARN: Code duplicated, block: B:4:0x0028  */
        public void i(n nVar, int i10) throws ParserException {
            List listSingletonList;
            int i11;
            String str;
            int i12;
            List list;
            String str2;
            int iC0;
            byte[] bArr;
            String str3;
            int i13;
            p1.b bVar;
            int i14;
            int iIntValue;
            int i15;
            float f10;
            int i16;
            int i17;
            int i18;
            com.google.android.exoplayer2.video.d dVarA;
            String str4 = this.f67686b;
            str4.hashCode();
            String str5 = MimeTypes.AUDIO_RAW;
            switch (str4) {
                case "V_MPEG4/ISO/AP":
                case "V_MPEG4/ISO/SP":
                case "V_MPEG4/ISO/ASP":
                    byte[] bArr2 = this.f67695k;
                    listSingletonList = bArr2 == null ? null : Collections.singletonList(bArr2);
                    str5 = MimeTypes.VIDEO_MP4V;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null && (dVarA = com.google.android.exoplayer2.video.d.a(new d0(bArr))) != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z10 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i19 = i13 | (z10 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    } else if (w.s(str3)) {
                        if (this.f67701q == 0) {
                            i17 = this.f67699o;
                            iIntValue = -1;
                            if (i17 == -1) {
                                i17 = this.f67697m;
                            }
                            this.f67699o = i17;
                            i18 = this.f67700p;
                            if (i18 == -1) {
                                i18 = this.f67698n;
                            }
                            this.f67700p = i18;
                        } else {
                            iIntValue = -1;
                        }
                        i15 = this.f67699o;
                        if (i15 != iIntValue || (i16 = this.f67700p) == iIntValue) {
                            f10 = -1.0f;
                        } else {
                            f10 = (this.f67698n * i15) / (this.f67697m * i16);
                        }
                        com.google.android.exoplayer2.video.c cVar = this.f67708x ? new com.google.android.exoplayer2.video.c(this.f67709y, this.A, this.f67710z, h()) : null;
                        if (this.f67685a != null && e.f67655i0.containsKey(this.f67685a)) {
                            iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                        }
                        if (this.f67702r == 0 && Float.compare(this.f67703s, 0.0f) == 0 && Float.compare(this.f67704t, 0.0f) == 0) {
                            if (Float.compare(this.f67705u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(this.f67704t, -180.0f) != 0 || Float.compare(this.f67704t, 180.0f) == 0) {
                                iIntValue = 180;
                            } else if (Float.compare(this.f67704t, -90.0f) == 0) {
                                iIntValue = 270;
                            }
                        }
                        bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                        i14 = 2;
                    } else {
                        if (MimeTypes.APPLICATION_SUBRIP.equals(str3) && !MimeTypes.TEXT_SSA.equals(str3) && !MimeTypes.TEXT_VTT.equals(str3) && !MimeTypes.APPLICATION_VOBSUB.equals(str3) && !MimeTypes.APPLICATION_PGS.equals(str3) && !MimeTypes.APPLICATION_DVBSUBS.equals(str3)) {
                            throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
                        }
                        i14 = 3;
                    }
                    if (this.f67685a != null && !e.f67655i0.containsKey(this.f67685a)) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i19).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack;
                    e0VarTrack.d(p1VarE);
                    return;
                case "A_MS/ACM":
                    if (l(new d0(g(this.f67686b)))) {
                        int iC1 = p0.c0(this.P);
                        if (iC1 == 0) {
                            s.i("MatroskaExtractor", "Unsupported PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        } else {
                            i11 = iC1;
                            listSingletonList = null;
                            str = null;
                        }
                        i12 = -1;
                        bArr = this.N;
                        if (bArr != null) {
                            str = dVarA.f26964c;
                            str5 = "video/dolby-vision";
                        }
                        str3 = str5;
                        boolean z11 = this.V;
                        if (this.U) {
                            i13 = 2;
                        } else {
                            i13 = 0;
                        }
                        int i110 = i13 | (z11 ? 1 : 0);
                        bVar = new p1.b();
                        if (w.o(str3)) {
                            if (w.s(str3)) {
                                if (this.f67701q == 0) {
                                    i17 = this.f67699o;
                                    iIntValue = -1;
                                    if (i17 == -1) {
                                        i17 = this.f67697m;
                                    }
                                    this.f67699o = i17;
                                    i18 = this.f67700p;
                                    if (i18 == -1) {
                                        i18 = this.f67698n;
                                    }
                                    this.f67700p = i18;
                                } else {
                                    iIntValue = -1;
                                }
                                i15 = this.f67699o;
                                if (i15 != iIntValue) {
                                    f10 = -1.0f;
                                } else {
                                    f10 = -1.0f;
                                }
                                if (this.f67708x) {
                                }
                                if (this.f67685a != null) {
                                    iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                                }
                                if (this.f67702r == 0) {
                                    if (Float.compare(this.f67705u, 0.0f) == 0) {
                                        iIntValue = 0;
                                    } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                        iIntValue = 90;
                                    } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                        iIntValue = 180;
                                    } else {
                                        iIntValue = 180;
                                    }
                                }
                                bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                                i14 = 2;
                            } else {
                                if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                                }
                                i14 = 3;
                            }
                            break;
                        } else {
                            bVar.H(this.O).f0(this.Q).Y(i11);
                            i14 = 1;
                        }
                        if (this.f67685a != null) {
                            bVar.U(this.f67685a);
                        }
                        p1 p1VarE2 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i110).T(listSingletonList).I(str).M(this.f67696l).E();
                        e0 e0VarTrack2 = nVar.track(this.f67687c, i14);
                        this.X = e0VarTrack2;
                        e0VarTrack2.d(p1VarE2);
                        return;
                    }
                    s.i("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    str5 = MimeTypes.AUDIO_UNKNOWN;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z12 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i111 = i13 | (z12 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE3 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i111).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack3 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack3;
                    e0VarTrack3.d(p1VarE3);
                    return;
                case "A_TRUEHD":
                    this.T = new f0();
                    str5 = MimeTypes.AUDIO_TRUEHD;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z13 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i112 = i13 | (z13 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE4 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i112).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack4 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack4;
                    e0VarTrack4.d(p1VarE4);
                    return;
                case "A_VORBIS":
                    listSingletonList = m(g(this.f67686b));
                    str5 = MimeTypes.AUDIO_VORBIS;
                    i12 = 8192;
                    str = null;
                    i11 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z14 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i113 = i13 | (z14 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE5 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i113).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack5 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack5;
                    e0VarTrack5.d(p1VarE5);
                    return;
                case "A_MPEG/L2":
                    str5 = MimeTypes.AUDIO_MPEG_L2;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = 4096;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z15 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i114 = i13 | (z15 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE6 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i114).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack6 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack6;
                    e0VarTrack6.d(p1VarE6);
                    return;
                case "A_MPEG/L3":
                    str5 = MimeTypes.AUDIO_MPEG;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = 4096;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z16 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i115 = i13 | (z16 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE7 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i115).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack7 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack7;
                    e0VarTrack7.d(p1VarE7);
                    return;
                case "V_MS/VFW/FOURCC":
                    Pair pairK = k(new d0(g(this.f67686b)));
                    str5 = (String) pairK.first;
                    listSingletonList = (List) pairK.second;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z17 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i116 = i13 | (z17 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE8 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i116).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack8 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack8;
                    e0VarTrack8.d(p1VarE8);
                    return;
                case "S_DVBSUB":
                    byte[] bArr3 = new byte[4];
                    System.arraycopy(g(this.f67686b), 0, bArr3, 0, 4);
                    listSingletonList = ImmutableList.of(bArr3);
                    str5 = MimeTypes.APPLICATION_DVBSUBS;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z18 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i117 = i13 | (z18 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE9 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i117).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack9 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack9;
                    e0VarTrack9.d(p1VarE9);
                    return;
                case "V_MPEG4/ISO/AVC":
                    com.google.android.exoplayer2.video.a aVarB = com.google.android.exoplayer2.video.a.b(new d0(g(this.f67686b)));
                    list = aVarB.f26950a;
                    this.Y = aVarB.f26951b;
                    str2 = aVarB.f26955f;
                    str5 = MimeTypes.VIDEO_H264;
                    i11 = -1;
                    i12 = -1;
                    List list2 = list;
                    str = str2;
                    listSingletonList = list2;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z19 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i118 = i13 | (z19 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE10 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i118).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack10 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack10;
                    e0VarTrack10.d(p1VarE10);
                    return;
                case "S_VOBSUB":
                    listSingletonList = ImmutableList.of(g(this.f67686b));
                    str5 = MimeTypes.APPLICATION_VOBSUB;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z110 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i119 = i13 | (z110 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE11 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i119).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack11 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack11;
                    e0VarTrack11.d(p1VarE11);
                    return;
                case "A_DTS/LOSSLESS":
                    str5 = MimeTypes.AUDIO_DTS_HD;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z111 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1110 = i13 | (z111 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE12 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1110).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack12 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack12;
                    e0VarTrack12.d(p1VarE12);
                    return;
                case "A_AAC":
                    listSingletonList = Collections.singletonList(g(this.f67686b));
                    com.google.android.exoplayer2.audio.a.b bVarF = com.google.android.exoplayer2.audio.a.f(this.f67695k);
                    this.Q = bVarF.f23906a;
                    this.O = bVarF.f23907b;
                    str = bVarF.f23908c;
                    str5 = MimeTypes.AUDIO_AAC;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z112 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1111 = i13 | (z112 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE13 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1111).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack13 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack13;
                    e0VarTrack13.d(p1VarE13);
                    return;
                case "A_AC3":
                    str5 = MimeTypes.AUDIO_AC3;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z113 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1112 = i13 | (z113 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE14 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1112).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack14 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack14;
                    e0VarTrack14.d(p1VarE14);
                    return;
                case "A_DTS":
                case "A_DTS/EXPRESS":
                    str5 = MimeTypes.AUDIO_DTS;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z114 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1113 = i13 | (z114 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE15 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1113).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack15 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack15;
                    e0VarTrack15.d(p1VarE15);
                    return;
                case "V_AV1":
                    str5 = "video/av01";
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z115 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1114 = i13 | (z115 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE16 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1114).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack16 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack16;
                    e0VarTrack16.d(p1VarE16);
                    return;
                case "V_VP8":
                    str5 = MimeTypes.VIDEO_VP8;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z116 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1115 = i13 | (z116 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE17 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1115).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack17 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack17;
                    e0VarTrack17.d(p1VarE17);
                    return;
                case "V_VP9":
                    str5 = MimeTypes.VIDEO_VP9;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z117 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1116 = i13 | (z117 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE18 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1116).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack18 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack18;
                    e0VarTrack18.d(p1VarE18);
                    return;
                case "S_HDMV/PGS":
                    str5 = MimeTypes.APPLICATION_PGS;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z118 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1117 = i13 | (z118 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE19 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1117).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack19 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack19;
                    e0VarTrack19.d(p1VarE19);
                    return;
                case "V_THEORA":
                    str5 = MimeTypes.VIDEO_UNKNOWN;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z119 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1118 = i13 | (z119 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE110 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1118).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack110 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack110;
                    e0VarTrack110.d(p1VarE110);
                    return;
                case "A_PCM/FLOAT/IEEE":
                    if (this.P == 32) {
                        listSingletonList = null;
                        str = null;
                        i11 = 4;
                    } else {
                        s.i("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        listSingletonList = null;
                        str = null;
                        i11 = -1;
                    }
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1110 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1119 = i13 | (z1110 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE111 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i1119).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack111 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack111;
                    e0VarTrack111.d(p1VarE111);
                    return;
                case "A_PCM/INT/BIG":
                    int i20 = this.P;
                    if (i20 == 8) {
                        listSingletonList = null;
                        str = null;
                        i11 = 3;
                    } else if (i20 == 16) {
                        iC0 = ASTNode.DEOP;
                        i11 = iC0;
                        listSingletonList = null;
                        str = null;
                    } else {
                        s.i("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        listSingletonList = null;
                        str = null;
                        i11 = -1;
                    }
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1111 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11110 = i13 | (z1111 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE112 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11110).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack112 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack112;
                    e0VarTrack112.d(p1VarE112);
                    return;
                case "A_PCM/INT/LIT":
                    iC0 = p0.c0(this.P);
                    if (iC0 == 0) {
                        s.i("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        listSingletonList = null;
                        str = null;
                        i11 = -1;
                    } else {
                        i11 = iC0;
                        listSingletonList = null;
                        str = null;
                    }
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1112 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11111 = i13 | (z1112 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE113 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11111).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack113 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack113;
                    e0VarTrack113.d(p1VarE113);
                    return;
                case "S_TEXT/ASS":
                    listSingletonList = ImmutableList.of(e.f67651e0, g(this.f67686b));
                    str5 = MimeTypes.TEXT_SSA;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1113 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11112 = i13 | (z1113 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE114 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11112).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack114 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack114;
                    e0VarTrack114.d(p1VarE114);
                    return;
                case "V_MPEGH/ISO/HEVC":
                    com.google.android.exoplayer2.video.f fVarA = com.google.android.exoplayer2.video.f.a(new d0(g(this.f67686b)));
                    list = fVarA.f26979a;
                    this.Y = fVarA.f26980b;
                    str2 = fVarA.f26984f;
                    str5 = MimeTypes.VIDEO_H265;
                    i11 = -1;
                    i12 = -1;
                    List list3 = list;
                    str = str2;
                    listSingletonList = list3;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1114 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11113 = i13 | (z1114 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE115 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11113).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack115 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack115;
                    e0VarTrack115.d(p1VarE115);
                    return;
                case "S_TEXT/WEBVTT":
                    str5 = MimeTypes.TEXT_VTT;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1115 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11114 = i13 | (z1115 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE116 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11114).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack116 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack116;
                    e0VarTrack116.d(p1VarE116);
                    return;
                case "S_TEXT/UTF8":
                    str5 = MimeTypes.APPLICATION_SUBRIP;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1116 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11115 = i13 | (z1116 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE117 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11115).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack117 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack117;
                    e0VarTrack117.d(p1VarE117);
                    return;
                case "V_MPEG2":
                    str5 = MimeTypes.VIDEO_MPEG2;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1117 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11116 = i13 | (z1117 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE118 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11116).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack118 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack118;
                    e0VarTrack118.d(p1VarE118);
                    return;
                case "A_EAC3":
                    str5 = MimeTypes.AUDIO_E_AC3;
                    listSingletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1118 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11117 = i13 | (z1118 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE119 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11117).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack119 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack119;
                    e0VarTrack119.d(p1VarE119);
                    return;
                case "A_FLAC":
                    listSingletonList = Collections.singletonList(g(this.f67686b));
                    str5 = MimeTypes.AUDIO_FLAC;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1119 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11118 = i13 | (z1119 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE1110 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11118).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack1110 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack1110;
                    e0VarTrack1110.d(p1VarE1110);
                    return;
                case "A_OPUS":
                    listSingletonList = new ArrayList(3);
                    listSingletonList.add(g(this.f67686b));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.R).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.S).array());
                    str5 = MimeTypes.AUDIO_OPUS;
                    i12 = 5760;
                    str = null;
                    i11 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f26964c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z11110 = this.V;
                    if (this.U) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11119 = i13 | (z11110 ? 1 : 0);
                    bVar = new p1.b();
                    if (w.o(str3)) {
                        if (w.s(str3)) {
                            if (this.f67701q == 0) {
                                i17 = this.f67699o;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.f67697m;
                                }
                                this.f67699o = i17;
                                i18 = this.f67700p;
                                if (i18 == -1) {
                                    i18 = this.f67698n;
                                }
                                this.f67700p = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.f67699o;
                            if (i15 != iIntValue) {
                                f10 = -1.0f;
                            } else {
                                f10 = -1.0f;
                            }
                            if (this.f67708x) {
                            }
                            if (this.f67685a != null) {
                                iIntValue = ((Integer) e.f67655i0.get(this.f67685a)).intValue();
                            }
                            if (this.f67702r == 0) {
                                if (Float.compare(this.f67705u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f67704t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f67704t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f67697m).Q(this.f67698n).a0(f10).d0(iIntValue).b0(this.f67706v).h0(this.f67707w).J(cVar);
                            i14 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i11);
                        i14 = 1;
                    }
                    if (this.f67685a != null) {
                        bVar.U(this.f67685a);
                    }
                    p1 p1VarE1111 = bVar.R(i10).e0(str3).W(i12).V(this.W).g0(i11119).T(listSingletonList).I(str).M(this.f67696l).E();
                    e0 e0VarTrack1111 = nVar.track(this.f67687c, i14);
                    this.X = e0VarTrack1111;
                    e0VarTrack1111.d(p1VarE1111);
                    return;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
        }

        public void j() {
            f0 f0Var = this.T;
            if (f0Var != null) {
                f0Var.a(this.X, this.f67694j);
            }
        }

        public void n() {
            f0 f0Var = this.T;
            if (f0Var != null) {
                f0Var.b();
            }
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        f67655i0 = Collections.unmodifiableMap(map);
    }

    public e() {
        this(0);
    }

    private boolean A(a0 a0Var, long j10) {
        if (this.f67682y) {
            this.A = j10;
            a0Var.f61884a = this.f67683z;
            this.f67682y = false;
            return true;
        }
        if (this.f67679v) {
            long j11 = this.A;
            if (j11 != -1) {
                a0Var.f61884a = j11;
                this.A = -1L;
                return true;
            }
        }
        return false;
    }

    private void B(m mVar, int i10) {
        if (this.f67664g.f() >= i10) {
            return;
        }
        if (this.f67664g.b() < i10) {
            d0 d0Var = this.f67664g;
            d0Var.c(Math.max(d0Var.b() * 2, i10));
        }
        mVar.readFully(this.f67664g.d(), this.f67664g.f(), i10 - this.f67664g.f());
        this.f67664g.O(i10);
    }

    private void C() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.f67657a0 = false;
        this.f67667j.L(0);
    }

    private long D(long j10) throws ParserException {
        long j11 = this.f67675r;
        if (j11 != C.TIME_UNSET) {
            return p0.N0(j10, j11, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static void E(String str, long j10, byte[] bArr) {
        byte[] bArrR;
        int i10;
        str.hashCode();
        switch (str) {
            case "S_TEXT/ASS":
                bArrR = r(j10, "%01d:%02d:%02d:%02d", 10000L);
                i10 = 21;
                break;
            case "S_TEXT/WEBVTT":
                bArrR = r(j10, "%02d:%02d:%02d.%03d", 1000L);
                i10 = 25;
                break;
            case "S_TEXT/UTF8":
                bArrR = r(j10, "%02d:%02d:%02d,%03d", 1000L);
                i10 = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(bArrR, 0, bArr, i10, bArrR.length);
    }

    private int H(m mVar, c cVar, int i10, boolean z10) throws ParserException {
        int i11;
        if ("S_TEXT/UTF8".equals(cVar.f67686b)) {
            I(mVar, f67650d0, i10);
            return p();
        }
        if ("S_TEXT/ASS".equals(cVar.f67686b)) {
            I(mVar, f67652f0, i10);
            return p();
        }
        if ("S_TEXT/WEBVTT".equals(cVar.f67686b)) {
            I(mVar, f67653g0, i10);
            return p();
        }
        e0 e0Var = cVar.X;
        if (!this.V) {
            if (cVar.f67692h) {
                this.O &= -1073741825;
                if (!this.W) {
                    mVar.readFully(this.f67664g.d(), 0, 1);
                    this.S++;
                    if ((this.f67664g.d()[0] & 128) == 128) {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                    this.Z = this.f67664g.d()[0];
                    this.W = true;
                }
                byte b10 = this.Z;
                if ((b10 & 1) == 1) {
                    boolean z11 = (b10 & 2) == 2;
                    this.O |= 1073741824;
                    if (!this.f67657a0) {
                        mVar.readFully(this.f67669l.d(), 0, 8);
                        this.S += 8;
                        this.f67657a0 = true;
                        this.f67664g.d()[0] = (byte) ((z11 ? 128 : 0) | 8);
                        this.f67664g.P(0);
                        e0Var.f(this.f67664g, 1, 1);
                        this.T++;
                        this.f67669l.P(0);
                        e0Var.f(this.f67669l, 8, 1);
                        this.T += 8;
                    }
                    if (z11) {
                        if (!this.X) {
                            mVar.readFully(this.f67664g.d(), 0, 1);
                            this.S++;
                            this.f67664g.P(0);
                            this.Y = this.f67664g.D();
                            this.X = true;
                        }
                        int i12 = this.Y * 4;
                        this.f67664g.L(i12);
                        mVar.readFully(this.f67664g.d(), 0, i12);
                        this.S += i12;
                        short s10 = (short) ((this.Y / 2) + 1);
                        int i13 = (s10 * 6) + 2;
                        ByteBuffer byteBuffer = this.f67672o;
                        if (byteBuffer == null || byteBuffer.capacity() < i13) {
                            this.f67672o = ByteBuffer.allocate(i13);
                        }
                        this.f67672o.position(0);
                        this.f67672o.putShort(s10);
                        int i14 = 0;
                        int i15 = 0;
                        while (true) {
                            i11 = this.Y;
                            if (i14 >= i11) {
                                break;
                            }
                            int iH = this.f67664g.H();
                            if (i14 % 2 == 0) {
                                this.f67672o.putShort((short) (iH - i15));
                            } else {
                                this.f67672o.putInt(iH - i15);
                            }
                            i14++;
                            i15 = iH;
                        }
                        int i16 = (i10 - this.S) - i15;
                        if (i11 % 2 == 1) {
                            this.f67672o.putInt(i16);
                        } else {
                            this.f67672o.putShort((short) i16);
                            this.f67672o.putInt(0);
                        }
                        this.f67670m.N(this.f67672o.array(), i13);
                        e0Var.f(this.f67670m, i13, 1);
                        this.T += i13;
                    }
                }
            } else {
                byte[] bArr = cVar.f67693i;
                if (bArr != null) {
                    this.f67667j.N(bArr, bArr.length);
                }
            }
            if (cVar.o(z10)) {
                this.O |= ASTNode.DEOP;
                this.f67671n.L(0);
                int iF = (this.f67667j.f() + i10) - this.S;
                this.f67664g.L(4);
                this.f67664g.d()[0] = (byte) ((iF >> 24) & 255);
                this.f67664g.d()[1] = (byte) ((iF >> 16) & 255);
                this.f67664g.d()[2] = (byte) ((iF >> 8) & 255);
                this.f67664g.d()[3] = (byte) (iF & 255);
                e0Var.f(this.f67664g, 4, 2);
                this.T += 4;
            }
            this.V = true;
        }
        int iF2 = i10 + this.f67667j.f();
        if (!"V_MPEG4/ISO/AVC".equals(cVar.f67686b) && !"V_MPEGH/ISO/HEVC".equals(cVar.f67686b)) {
            if (cVar.T != null) {
                com.google.android.exoplayer2.util.a.g(this.f67667j.f() == 0);
                cVar.T.d(mVar);
            }
            while (true) {
                int i17 = this.S;
                if (i17 >= iF2) {
                    break;
                }
                int iJ = J(mVar, e0Var, iF2 - i17);
                this.S += iJ;
                this.T += iJ;
            }
        } else {
            byte[] bArrD = this.f67663f.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i18 = cVar.Y;
            int i19 = 4 - i18;
            while (this.S < iF2) {
                int i20 = this.U;
                if (i20 == 0) {
                    K(mVar, bArrD, i19, i18);
                    this.S += i18;
                    this.f67663f.P(0);
                    this.U = this.f67663f.H();
                    this.f67662e.P(0);
                    e0Var.c(this.f67662e, 4);
                    this.T += 4;
                } else {
                    int iJ2 = J(mVar, e0Var, i20);
                    this.S += iJ2;
                    this.T += iJ2;
                    this.U -= iJ2;
                }
            }
        }
        if ("A_VORBIS".equals(cVar.f67686b)) {
            this.f67665h.P(0);
            e0Var.c(this.f67665h, 4);
            this.T += 4;
        }
        return p();
    }

    private void I(m mVar, byte[] bArr, int i10) {
        int length = bArr.length + i10;
        if (this.f67668k.b() < length) {
            this.f67668k.M(Arrays.copyOf(bArr, length + i10));
        } else {
            System.arraycopy(bArr, 0, this.f67668k.d(), 0, bArr.length);
        }
        mVar.readFully(this.f67668k.d(), bArr.length, i10);
        this.f67668k.P(0);
        this.f67668k.O(length);
    }

    private int J(m mVar, e0 e0Var, int i10) {
        int iA = this.f67667j.a();
        if (iA <= 0) {
            return e0Var.b(mVar, i10, false);
        }
        int iMin = Math.min(i10, iA);
        e0Var.c(this.f67667j, iMin);
        return iMin;
    }

    private void K(m mVar, byte[] bArr, int i10, int i11) {
        int iMin = Math.min(i11, this.f67667j.a());
        mVar.readFully(bArr, i10 + iMin, i11 - iMin);
        if (iMin > 0) {
            this.f67667j.j(bArr, i10, iMin);
        }
    }

    private void h(int i10) throws ParserException {
        if (this.C == null || this.D == null) {
            throw ParserException.createForMalformedContainer("Element " + i10 + " must be in a Cues", null);
        }
    }

    private void i(int i10) throws ParserException {
        if (this.f67678u != null) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i10 + " must be in a TrackEntry", null);
    }

    private void j() {
        com.google.android.exoplayer2.util.a.i(this.f67659b0);
    }

    private b0 l(t tVar, t tVar2) {
        int i10;
        if (this.f67674q == -1 || this.f67677t == C.TIME_UNSET || tVar == null || tVar.c() == 0 || tVar2 == null || tVar2.c() != tVar.c()) {
            return new b0.b(this.f67677t);
        }
        int iC = tVar.c();
        int[] iArrCopyOf = new int[iC];
        long[] jArrCopyOf = new long[iC];
        long[] jArrCopyOf2 = new long[iC];
        long[] jArrCopyOf3 = new long[iC];
        int i11 = 0;
        for (int i12 = 0; i12 < iC; i12++) {
            jArrCopyOf3[i12] = tVar.b(i12);
            jArrCopyOf[i12] = this.f67674q + tVar2.b(i12);
        }
        while (true) {
            i10 = iC - 1;
            if (i11 >= i10) {
                break;
            }
            int i13 = i11 + 1;
            iArrCopyOf[i11] = (int) (jArrCopyOf[i13] - jArrCopyOf[i11]);
            jArrCopyOf2[i11] = jArrCopyOf3[i13] - jArrCopyOf3[i11];
            i11 = i13;
        }
        iArrCopyOf[i10] = (int) ((this.f67674q + this.f67673p) - jArrCopyOf[i10]);
        long j10 = this.f67677t - jArrCopyOf3[i10];
        jArrCopyOf2[i10] = j10;
        if (j10 <= 0) {
            s.i("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j10);
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i10);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i10);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i10);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i10);
        }
        return new i9.d(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    private void m(c cVar, long j10, int i10, int i11, int i12) {
        f0 f0Var = cVar.T;
        if (f0Var != null) {
            f0Var.c(cVar.X, j10, i10, i11, i12, cVar.f67694j);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f67686b) || "S_TEXT/ASS".equals(cVar.f67686b) || "S_TEXT/WEBVTT".equals(cVar.f67686b)) {
                if (this.K > 1) {
                    s.i("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j11 = this.I;
                    if (j11 == C.TIME_UNSET) {
                        s.i("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        E(cVar.f67686b, j11, this.f67668k.d());
                        for (int iE = this.f67668k.e(); iE < this.f67668k.f(); iE++) {
                            if (this.f67668k.d()[iE] == 0) {
                                this.f67668k.O(iE);
                                break;
                            }
                        }
                        e0 e0Var = cVar.X;
                        d0 d0Var = this.f67668k;
                        e0Var.c(d0Var, d0Var.f());
                        i11 += this.f67668k.f();
                    }
                }
            }
            if ((268435456 & i10) != 0) {
                if (this.K > 1) {
                    this.f67671n.L(0);
                } else {
                    int iF = this.f67671n.f();
                    cVar.X.f(this.f67671n, iF, 2);
                    i11 += iF;
                }
            }
            cVar.X.e(j10, i10, i11, i12, cVar.f67694j);
        }
        this.F = true;
    }

    private static int[] o(int[] iArr, int i10) {
        if (iArr == null) {
            return new int[i10];
        }
        return iArr.length >= i10 ? iArr : new int[Math.max(iArr.length * 2, i10)];
    }

    private int p() {
        int i10 = this.T;
        C();
        return i10;
    }

    private static byte[] r(long j10, String str, long j11) {
        com.google.android.exoplayer2.util.a.a(j10 != C.TIME_UNSET);
        int i10 = (int) (j10 / 3600000000L);
        long j12 = j10 - (((long) i10) * 3600000000L);
        int i11 = (int) (j12 / 60000000);
        long j13 = j12 - (((long) i11) * 60000000);
        int i12 = (int) (j13 / 1000000);
        return p0.n0(String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j13 - (((long) i12) * 1000000)) / j11))));
    }

    private static boolean x(String str) {
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

    public static l[] z() {
        return new l[]{new e()};
    }

    protected void F(int i10, long j10, long j11) throws ParserException {
        j();
        if (i10 == 160) {
            this.Q = false;
            this.R = 0L;
            return;
        }
        if (i10 == 174) {
            this.f67678u = new c();
            return;
        }
        if (i10 == 187) {
            this.E = false;
            return;
        }
        if (i10 == 19899) {
            this.f67680w = -1;
            this.f67681x = -1L;
            return;
        }
        if (i10 == 20533) {
            s(i10).f67692h = true;
            return;
        }
        if (i10 == 21968) {
            s(i10).f67708x = true;
            return;
        }
        if (i10 == 408125543) {
            long j12 = this.f67674q;
            if (j12 != -1 && j12 != j10) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.f67674q = j10;
            this.f67673p = j11;
            return;
        }
        if (i10 == 475249515) {
            this.C = new t();
            this.D = new t();
        } else if (i10 == 524531317 && !this.f67679v) {
            if (this.f67661d && this.f67683z != -1) {
                this.f67682y = true;
            } else {
                this.f67659b0.g(new b0.b(this.f67677t));
                this.f67679v = true;
            }
        }
    }

    protected void G(int i10, String str) throws ParserException {
        if (i10 == 134) {
            s(i10).f67686b = str;
            return;
        }
        if (i10 != 17026) {
            if (i10 == 21358) {
                s(i10).f67685a = str;
                return;
            } else {
                if (i10 != 2274716) {
                    return;
                }
                s(i10).W = str;
                return;
            }
        }
        if ("webm".equals(str) || "matroska".equals(str)) {
            return;
        }
        throw ParserException.createForMalformedContainer("DocType " + str + " not supported", null);
    }

    @Override
    public final void b(n nVar) {
        this.f67659b0 = nVar;
    }

    @Override
    public final boolean c(m mVar) {
        return new f().b(mVar);
    }

    @Override
    public final int d(m mVar, a0 a0Var) {
        this.F = false;
        boolean zA = true;
        while (zA && !this.F) {
            zA = this.f67656a.a(mVar);
            if (zA && A(a0Var, mVar.getPosition())) {
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i10 = 0; i10 < this.f67660c.size(); i10++) {
            c cVar = (c) this.f67660c.valueAt(i10);
            cVar.f();
            cVar.j();
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0282  */
    protected void k(int i10, int i11, m mVar) throws ParserException {
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
                if (this.G != 2) {
                    return;
                }
                v((c) this.f67660c.get(this.M), this.P, mVar, i11);
                return;
            }
            if (i10 == 16877) {
                u(s(i10), mVar, i11);
                return;
            }
            if (i10 == 16981) {
                i(i10);
                byte[] bArr = new byte[i11];
                this.f67678u.f67693i = bArr;
                mVar.readFully(bArr, 0, i11);
                return;
            }
            if (i10 == 18402) {
                byte[] bArr2 = new byte[i11];
                mVar.readFully(bArr2, 0, i11);
                s(i10).f67694j = new e0.a(1, bArr2, 0, 0);
                return;
            }
            if (i10 == 21419) {
                Arrays.fill(this.f67666i.d(), (byte) 0);
                mVar.readFully(this.f67666i.d(), 4 - i11, i11);
                this.f67666i.P(0);
                this.f67680w = (int) this.f67666i.F();
                return;
            }
            if (i10 == 25506) {
                i(i10);
                byte[] bArr3 = new byte[i11];
                this.f67678u.f67695k = bArr3;
                mVar.readFully(bArr3, 0, i11);
                return;
            }
            if (i10 != 30322) {
                throw ParserException.createForMalformedContainer("Unexpected id: " + i10, null);
            }
            i(i10);
            byte[] bArr4 = new byte[i11];
            this.f67678u.f67706v = bArr4;
            mVar.readFully(bArr4, 0, i11);
            return;
        }
        if (this.G == 0) {
            this.M = (int) this.f67658b.d(mVar, false, true, 8);
            this.N = this.f67658b.b();
            this.I = C.TIME_UNSET;
            this.G = 1;
            this.f67664g.L(0);
        }
        c cVar4 = (c) this.f67660c.get(this.M);
        if (cVar4 == null) {
            mVar.skipFully(i11 - this.N);
            this.G = 0;
            return;
        }
        cVar4.f();
        if (this.G == 1) {
            B(mVar, 3);
            int i19 = (this.f67664g.d()[2] & 6) >> 1;
            byte b10 = 255;
            if (i19 == 0) {
                this.K = 1;
                int[] iArrO = o(this.L, 1);
                this.L = iArrO;
                iArrO[0] = (i11 - this.N) - 3;
            } else {
                int i20 = 4;
                B(mVar, 4);
                int i21 = (this.f67664g.d()[3] & 255) + 1;
                this.K = i21;
                int[] iArrO2 = o(this.L, i21);
                this.L = iArrO2;
                if (i19 == 2) {
                    int i22 = (i11 - this.N) - 4;
                    int i23 = this.K;
                    Arrays.fill(iArrO2, 0, i23, i22 / i23);
                } else {
                    if (i19 == 1) {
                        int i24 = 0;
                        int i25 = 0;
                        while (true) {
                            i13 = this.K;
                            if (i24 >= i13 - 1) {
                                break;
                            }
                            this.L[i24] = 0;
                            while (true) {
                                i14 = i20 + 1;
                                B(mVar, i14);
                                int i26 = this.f67664g.d()[i20] & 255;
                                int[] iArr = this.L;
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
                        this.L[i13 - 1] = ((i11 - this.N) - i20) - i25;
                    } else {
                        if (i19 != 3) {
                            throw ParserException.createForMalformedContainer("Unexpected lacing value: " + i19, null);
                        }
                        int i27 = 0;
                        int i28 = 0;
                        while (true) {
                            int i29 = this.K;
                            if (i27 >= i29 - 1) {
                                cVar2 = cVar4;
                                this.L[i29 - 1] = ((i11 - this.N) - i20) - i28;
                                break;
                            }
                            this.L[i27] = i17;
                            int i30 = i20 + 1;
                            B(mVar, i30);
                            if (this.f67664g.d()[i20] == 0) {
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
                                if ((this.f67664g.d()[i20] & i32) != 0) {
                                    i30 += i31;
                                    B(mVar, i30);
                                    cVar3 = cVar4;
                                    j10 = (~i32) & this.f67664g.d()[i20] & b10;
                                    int i33 = i20 + 1;
                                    while (i33 < i30) {
                                        j10 = (j10 << 8) | ((long) (this.f67664g.d()[i33] & b10));
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
                            int[] iArr2 = this.L;
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
                    this.H = this.B + D((this.f67664g.d()[0] << 8) | (this.f67664g.d()[1] & 255));
                    cVar = cVar2;
                    if (cVar.f67688d != 2 || (i10 == 163 && (this.f67664g.d()[2] & 128) == 128)) {
                        i16 = 1;
                    } else {
                        i16 = 0;
                    }
                    this.O = i16;
                    this.G = 2;
                    this.J = 0;
                    i12 = 163;
                }
            }
            cVar2 = cVar4;
            this.H = this.B + D((this.f67664g.d()[0] << 8) | (this.f67664g.d()[1] & 255));
            cVar = cVar2;
            if (cVar.f67688d != 2) {
                i16 = 1;
            } else {
                i16 = 1;
            }
            this.O = i16;
            this.G = 2;
            this.J = 0;
            i12 = 163;
        } else {
            cVar = cVar4;
            i12 = 163;
        }
        if (i10 == i12) {
            while (true) {
                int i35 = this.J;
                if (i35 >= this.K) {
                    this.G = 0;
                    return;
                }
                m(cVar, ((long) ((this.J * cVar.f67689e) / 1000)) + this.H, this.O, H(mVar, cVar, this.L[i35], false), 0);
                this.J++;
            }
        } else {
            while (true) {
                int i36 = this.J;
                if (i36 >= this.K) {
                    return;
                }
                int[] iArr3 = this.L;
                iArr3[i36] = H(mVar, cVar, iArr3[i36], true);
                this.J++;
            }
        }
    }

    protected void n(int i10) throws ParserException {
        j();
        if (i10 == 160) {
            if (this.G != 2) {
                return;
            }
            c cVar = (c) this.f67660c.get(this.M);
            cVar.f();
            if (this.R > 0 && "A_OPUS".equals(cVar.f67686b)) {
                this.f67671n.M(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.R).array());
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.K; i12++) {
                i11 += this.L[i12];
            }
            int i13 = 0;
            while (i13 < this.K) {
                long j10 = this.H + ((long) ((cVar.f67689e * i13) / 1000));
                int i14 = this.O;
                if (i13 == 0 && !this.Q) {
                    i14 |= 1;
                }
                int i15 = this.L[i13];
                int i16 = i11 - i15;
                m(cVar, j10, i14, i15, i16);
                i13++;
                i11 = i16;
            }
            this.G = 0;
            return;
        }
        if (i10 == 174) {
            c cVar2 = (c) com.google.android.exoplayer2.util.a.i(this.f67678u);
            String str = cVar2.f67686b;
            if (str == null) {
                throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            }
            if (x(str)) {
                cVar2.i(this.f67659b0, cVar2.f67687c);
                this.f67660c.put(cVar2.f67687c, cVar2);
            }
            this.f67678u = null;
            return;
        }
        if (i10 == 19899) {
            int i17 = this.f67680w;
            if (i17 != -1) {
                long j11 = this.f67681x;
                if (j11 != -1) {
                    if (i17 == 475249515) {
                        this.f67683z = j11;
                        return;
                    }
                    return;
                }
            }
            throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i10 == 25152) {
            i(i10);
            c cVar3 = this.f67678u;
            if (cVar3.f67692h) {
                if (cVar3.f67694j == null) {
                    throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                cVar3.f67696l = new DrmInitData(new DrmInitData.SchemeData(com.google.android.exoplayer2.l.f24512a, MimeTypes.VIDEO_WEBM, this.f67678u.f67694j.f61906b));
                return;
            }
            return;
        }
        if (i10 == 28032) {
            i(i10);
            c cVar4 = this.f67678u;
            if (cVar4.f67692h && cVar4.f67693i != null) {
                throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i10 == 357149030) {
            if (this.f67675r == C.TIME_UNSET) {
                this.f67675r = 1000000L;
            }
            long j12 = this.f67676s;
            if (j12 != C.TIME_UNSET) {
                this.f67677t = D(j12);
                return;
            }
            return;
        }
        if (i10 == 374648427) {
            if (this.f67660c.size() == 0) {
                throw ParserException.createForMalformedContainer("No valid tracks were found", null);
            }
            this.f67659b0.endTracks();
        } else {
            if (i10 != 475249515) {
                return;
            }
            if (!this.f67679v) {
                this.f67659b0.g(l(this.C, this.D));
                this.f67679v = true;
            }
            this.C = null;
            this.D = null;
        }
    }

    protected void q(int i10, double d10) {
        if (i10 == 181) {
            s(i10).Q = (int) d10;
        }
        if (i10 == 17545) {
            this.f67676s = (long) d10;
            return;
        }
        switch (i10) {
            case 21969:
                s(i10).D = (float) d10;
                break;
            case 21970:
                s(i10).E = (float) d10;
                break;
            case 21971:
                s(i10).F = (float) d10;
                break;
            case 21972:
                s(i10).G = (float) d10;
                break;
            case 21973:
                s(i10).H = (float) d10;
                break;
            case 21974:
                s(i10).I = (float) d10;
                break;
            case 21975:
                s(i10).J = (float) d10;
                break;
            case 21976:
                s(i10).K = (float) d10;
                break;
            case 21977:
                s(i10).L = (float) d10;
                break;
            case 21978:
                s(i10).M = (float) d10;
                break;
            default:
                switch (i10) {
                    case 30323:
                        s(i10).f67703s = (float) d10;
                        break;
                    case 30324:
                        s(i10).f67704t = (float) d10;
                        break;
                    case 30325:
                        s(i10).f67705u = (float) d10;
                        break;
                }
                break;
        }
    }

    protected c s(int i10) throws ParserException {
        i(i10);
        return this.f67678u;
    }

    @Override
    public void seek(long j10, long j11) {
        this.B = C.TIME_UNSET;
        this.G = 0;
        this.f67656a.reset();
        this.f67658b.e();
        C();
        for (int i10 = 0; i10 < this.f67660c.size(); i10++) {
            ((c) this.f67660c.valueAt(i10)).n();
        }
    }

    protected int t(int i10) {
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

    protected void u(c cVar, m mVar, int i10) {
        if (cVar.f67691g != 1685485123 && cVar.f67691g != 1685480259) {
            mVar.skipFully(i10);
            return;
        }
        byte[] bArr = new byte[i10];
        cVar.N = bArr;
        mVar.readFully(bArr, 0, i10);
    }

    protected void v(c cVar, int i10, m mVar, int i11) {
        if (i10 != 4 || !"V_VP9".equals(cVar.f67686b)) {
            mVar.skipFully(i11);
        } else {
            this.f67671n.L(i11);
            mVar.readFully(this.f67671n.d(), 0, i11);
        }
    }

    protected void w(int i10, long j10) throws ParserException {
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
                s(i10).f67688d = (int) j10;
                return;
            case PRIVACY_URL_ERROR_VALUE:
                s(i10).V = j10 == 1;
                return;
            case 155:
                this.I = D(j10);
                return;
            case 159:
                s(i10).O = (int) j10;
                return;
            case 176:
                s(i10).f67697m = (int) j10;
                return;
            case 179:
                h(i10);
                this.C.a(D(j10));
                return;
            case 186:
                s(i10).f67698n = (int) j10;
                return;
            case AD_RESPONSE_EMPTY_VALUE:
                s(i10).f67687c = (int) j10;
                return;
            case 231:
                this.B = D(j10);
                return;
            case 238:
                this.P = (int) j10;
                return;
            case 241:
                if (this.E) {
                    return;
                }
                h(i10);
                this.D.a(j10);
                this.E = true;
                return;
            case 251:
                this.Q = true;
                return;
            case 16871:
                s(i10).f67691g = (int) j10;
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
                this.f67681x = j10 + this.f67674q;
                return;
            case 21432:
                int i11 = (int) j10;
                i(i10);
                if (i11 == 0) {
                    this.f67678u.f67707w = 0;
                    return;
                }
                if (i11 == 1) {
                    this.f67678u.f67707w = 2;
                    return;
                } else if (i11 == 3) {
                    this.f67678u.f67707w = 1;
                    return;
                } else {
                    if (i11 != 15) {
                        return;
                    }
                    this.f67678u.f67707w = 3;
                    return;
                }
            case 21680:
                s(i10).f67699o = (int) j10;
                return;
            case 21682:
                s(i10).f67701q = (int) j10;
                return;
            case 21690:
                s(i10).f67700p = (int) j10;
                return;
            case 21930:
                s(i10).U = j10 == 1;
                return;
            case 21998:
                s(i10).f67690f = (int) j10;
                return;
            case 22186:
                s(i10).R = j10;
                return;
            case 22203:
                s(i10).S = j10;
                return;
            case 25188:
                s(i10).P = (int) j10;
                return;
            case 30114:
                this.R = j10;
                return;
            case 30321:
                i(i10);
                int i12 = (int) j10;
                if (i12 == 0) {
                    this.f67678u.f67702r = 0;
                    return;
                }
                if (i12 == 1) {
                    this.f67678u.f67702r = 1;
                    return;
                } else if (i12 == 2) {
                    this.f67678u.f67702r = 2;
                    return;
                } else {
                    if (i12 != 3) {
                        return;
                    }
                    this.f67678u.f67702r = 3;
                    return;
                }
            case 2352003:
                s(i10).f67689e = (int) j10;
                return;
            case 2807729:
                this.f67675r = j10;
                return;
            default:
                switch (i10) {
                    case 21945:
                        i(i10);
                        int i13 = (int) j10;
                        if (i13 == 1) {
                            this.f67678u.A = 2;
                            return;
                        } else {
                            if (i13 != 2) {
                                return;
                            }
                            this.f67678u.A = 1;
                            return;
                        }
                    case 21946:
                        i(i10);
                        int iC = com.google.android.exoplayer2.video.c.c((int) j10);
                        if (iC != -1) {
                            this.f67678u.f67710z = iC;
                            return;
                        }
                        return;
                    case 21947:
                        i(i10);
                        this.f67678u.f67708x = true;
                        int iB = com.google.android.exoplayer2.video.c.b((int) j10);
                        if (iB != -1) {
                            this.f67678u.f67709y = iB;
                            return;
                        }
                        return;
                    case 21948:
                        s(i10).B = (int) j10;
                        return;
                    case 21949:
                        s(i10).C = (int) j10;
                        return;
                    default:
                        return;
                }
        }
    }

    protected boolean y(int i10) {
        return i10 == 357149030 || i10 == 524531317 || i10 == 475249515 || i10 == 374648427;
    }

    public e(int i10) {
        this(new o9.a(), i10);
    }

    e(o9.c cVar, int i10) {
        this.f67674q = -1L;
        this.f67675r = C.TIME_UNSET;
        this.f67676s = C.TIME_UNSET;
        this.f67677t = C.TIME_UNSET;
        this.f67683z = -1L;
        this.A = -1L;
        this.B = C.TIME_UNSET;
        this.f67656a = cVar;
        cVar.b(new b());
        this.f67661d = (i10 & 1) == 0;
        this.f67658b = new g();
        this.f67660c = new SparseArray();
        this.f67664g = new d0(4);
        this.f67665h = new d0(ByteBuffer.allocate(4).putInt(-1).array());
        this.f67666i = new d0(4);
        this.f67662e = new d0(x.f26892a);
        this.f67663f = new d0(4);
        this.f67667j = new d0();
        this.f67668k = new d0();
        this.f67669l = new d0(8);
        this.f67670m = new d0();
        this.f67671n = new d0();
        this.L = new int[1];
    }

    @Override
    public final void release() {
    }
}
