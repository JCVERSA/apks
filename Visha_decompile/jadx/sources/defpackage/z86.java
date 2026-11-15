package defpackage;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.k;
import com.google.common.collect.ImmutableList;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.audiotagger.tag.reference.Languages;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.socket.pkgdata.SocketData;
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

public class z86 implements nk3 {
    public static final uk3 c0 = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return z86.z();
        }
    };
    public static final byte[] d0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    public static final byte[] e0 = blb.f0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    public static final byte[] f0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    public static final byte[] g0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
    public static final UUID h0 = new UUID(72057594037932032L, -9223371306706625679L);
    public static final Map i0;
    public long A;
    public long B;
    public zq5 C;
    public zq5 D;
    public boolean E;
    public boolean F;
    public int G;
    public long H;
    public long I;
    public int J;
    public int K;
    public int[] L;
    public int M;
    public int N;
    public int O;
    public int P;
    public boolean Q;
    public long R;
    public int S;
    public int T;
    public int U;
    public boolean V;
    public boolean W;
    public boolean X;
    public int Y;
    public byte Z;
    public final z53 a;
    public boolean a0;
    public final fob b;
    public qk3 b0;
    public final SparseArray c;
    public final boolean d;
    public final qw7 e;
    public final qw7 f;
    public final qw7 g;
    public final qw7 h;
    public final qw7 i;
    public final qw7 j;
    public final qw7 k;
    public final qw7 l;
    public final qw7 m;
    public final qw7 n;
    public ByteBuffer o;
    public long p;
    public long q;
    public long r;
    public long s;
    public long t;
    public c u;
    public boolean v;
    public int w;
    public long x;
    public boolean y;
    public long z;

    public final class b implements y53 {
        public b() {
        }

        @Override
        public void a(int i, int i2, pk3 pk3Var) throws ParserException {
            z86.this.k(i, i2, pk3Var);
        }

        @Override
        public void endMasterElement(int i) throws ParserException {
            z86.this.n(i);
        }

        @Override
        public void floatElement(int i, double d) throws ParserException {
            z86.this.q(i, d);
        }

        @Override
        public int getElementType(int i) {
            return z86.this.t(i);
        }

        @Override
        public void integerElement(int i, long j) throws ParserException {
            z86.this.w(i, j);
        }

        @Override
        public boolean isLevel1Element(int i) {
            return z86.this.y(i);
        }

        @Override
        public void startMasterElement(int i, long j, long j2) throws ParserException {
            z86.this.F(i, j, j2);
        }

        @Override
        public void stringElement(int i, String str) throws ParserException {
            z86.this.G(i, str);
        }
    }

    public static final class c {
        public byte[] N;
        public fab T;
        public boolean U;
        public fva X;
        public int Y;
        public String a;
        public String b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public boolean h;
        public byte[] i;
        public fva.a j;
        public byte[] k;
        public DrmInitData l;
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
        public String W = Languages.DEFAULT_ID;

        public static Pair k(qw7 qw7Var) throws ParserException {
            try {
                qw7Var.P(16);
                long jS = qw7Var.s();
                if (jS == 1482049860) {
                    return new Pair(MimeTypes.VIDEO_DIVX, null);
                }
                if (jS == 859189832) {
                    return new Pair("video/3gpp", null);
                }
                if (jS != 826496599) {
                    op5.i("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair(MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] bArrD = qw7Var.d();
                for (int iE = qw7Var.e() + 20; iE < bArrD.length - 4; iE++) {
                    if (bArrD[iE] == 0 && bArrD[iE + 1] == 0 && bArrD[iE + 2] == 1 && bArrD[iE + 3] == 15) {
                        return new Pair(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArrD, iE, bArrD.length)));
                    }
                }
                throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        public static boolean l(qw7 qw7Var) throws ParserException {
            try {
                int iU = qw7Var.u();
                if (iU == 1) {
                    return true;
                }
                if (iU != 65534) {
                    return false;
                }
                qw7Var.O(24);
                return qw7Var.v() == z86.h0.getMostSignificantBits() && qw7Var.v() == z86.h0.getLeastSignificantBits();
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        public static List m(byte[] bArr) throws ParserException {
            int i;
            int i2;
            try {
                if (bArr[0] != 2) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    i = bArr[i4];
                    if ((i & 255) != 255) {
                        break;
                    }
                    i3 += 255;
                    i4++;
                }
                int i5 = i4 + 1;
                int i6 = i3 + (i & 255);
                int i7 = 0;
                while (true) {
                    i2 = bArr[i5];
                    if ((i2 & 255) != 255) {
                        break;
                    }
                    i7 += 255;
                    i5++;
                }
                int i8 = i5 + 1;
                int i9 = i7 + (i2 & 255);
                if (bArr[i8] != 1) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i6];
                System.arraycopy(bArr, i8, bArr2, 0, i6);
                int i10 = i8 + i6;
                if (bArr[i10] != 3) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i11 = i10 + i9;
                if (bArr[i11] != 5) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i11];
                System.arraycopy(bArr, i11, bArr3, 0, bArr.length - i11);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        public final void f() {
            zi.e(this.X);
        }

        public final byte[] g(String str) throws ParserException {
            byte[] bArr = this.k;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + str, null);
        }

        public final byte[] h() {
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

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:205:0x0432  */
        /* JADX WARN: Code duplicated, block: B:210:0x044a  */
        /* JADX WARN: Code duplicated, block: B:211:0x044c  */
        /* JADX WARN: Code duplicated, block: B:214:0x0459  */
        /* JADX WARN: Code duplicated, block: B:215:0x046b  */
        /* JADX WARN: Code duplicated, block: B:217:0x0471  */
        /* JADX WARN: Code duplicated, block: B:219:0x0475  */
        /* JADX WARN: Code duplicated, block: B:221:0x047a  */
        /* JADX WARN: Code duplicated, block: B:224:0x0482  */
        /* JADX WARN: Code duplicated, block: B:226:0x0487  */
        /* JADX WARN: Code duplicated, block: B:229:0x048c  */
        /* JADX WARN: Code duplicated, block: B:232:0x049a  */
        /* JADX WARN: Code duplicated, block: B:235:0x04a0  */
        /* JADX WARN: Code duplicated, block: B:238:0x04b3  */
        /* JADX WARN: Code duplicated, block: B:243:0x04d3  */
        /* JADX WARN: Code duplicated, block: B:249:0x04ec  */
        /* JADX WARN: Code duplicated, block: B:250:0x04ee  */
        /* JADX WARN: Code duplicated, block: B:252:0x04f8  */
        /* JADX WARN: Code duplicated, block: B:253:0x04fb  */
        /* JADX WARN: Code duplicated, block: B:255:0x0505  */
        /* JADX WARN: Code duplicated, block: B:261:0x051d  */
        /* JADX WARN: Code duplicated, block: B:263:0x0544  */
        /* JADX WARN: Code duplicated, block: B:265:0x054a  */
        /* JADX WARN: Code duplicated, block: B:281:0x0575  */
        /* JADX WARN: Code duplicated, block: B:4:0x002a  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public void i(qk3 qk3Var, int i) throws ParserException {
            byte b;
            List listSingletonList;
            int i2;
            String str;
            int i3;
            List list;
            String str2;
            int iV;
            byte[] bArr;
            String str3;
            int i4;
            k.b bVar;
            int i5;
            int iIntValue;
            int i6;
            float f;
            int i7;
            int i8;
            int i9;
            qw2 qw2VarA;
            String str4 = this.b;
            str4.hashCode();
            String str5 = "audio/raw";
            switch (str4.hashCode()) {
                case -2095576542:
                    if (!str4.equals("V_MPEG4/ISO/AP")) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case -2095575984:
                    if (!str4.equals("V_MPEG4/ISO/SP")) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case -1985379776:
                    if (!str4.equals("A_MS/ACM")) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case -1784763192:
                    if (!str4.equals("A_TRUEHD")) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case -1730367663:
                    if (!str4.equals("A_VORBIS")) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case -1482641358:
                    if (!str4.equals("A_MPEG/L2")) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case -1482641357:
                    if (!str4.equals("A_MPEG/L3")) {
                        b = -1;
                    } else {
                        b = 6;
                    }
                    break;
                case -1373388978:
                    if (!str4.equals("V_MS/VFW/FOURCC")) {
                        b = -1;
                    } else {
                        b = 7;
                    }
                    break;
                case -933872740:
                    if (!str4.equals("S_DVBSUB")) {
                        b = -1;
                    } else {
                        b = 8;
                    }
                    break;
                case -538363189:
                    if (!str4.equals("V_MPEG4/ISO/ASP")) {
                        b = -1;
                    } else {
                        b = 9;
                    }
                    break;
                case -538363109:
                    if (!str4.equals("V_MPEG4/ISO/AVC")) {
                        b = -1;
                    } else {
                        b = 10;
                    }
                    break;
                case -425012669:
                    if (!str4.equals("S_VOBSUB")) {
                        b = -1;
                    } else {
                        b = ByteCode.T_LONG;
                    }
                    break;
                case -356037306:
                    if (!str4.equals("A_DTS/LOSSLESS")) {
                        b = -1;
                    } else {
                        b = 12;
                    }
                    break;
                case 62923557:
                    if (!str4.equals("A_AAC")) {
                        b = -1;
                    } else {
                        b = 13;
                    }
                    break;
                case 62923603:
                    if (!str4.equals("A_AC3")) {
                        b = -1;
                    } else {
                        b = 14;
                    }
                    break;
                case 62927045:
                    if (!str4.equals("A_DTS")) {
                        b = -1;
                    } else {
                        b = 15;
                    }
                    break;
                case 82318131:
                    if (!str4.equals("V_AV1")) {
                        b = -1;
                    } else {
                        b = 16;
                    }
                    break;
                case 82338133:
                    if (!str4.equals("V_VP8")) {
                        b = -1;
                    } else {
                        b = 17;
                    }
                    break;
                case 82338134:
                    if (!str4.equals("V_VP9")) {
                        b = -1;
                    } else {
                        b = 18;
                    }
                    break;
                case 99146302:
                    if (!str4.equals("S_HDMV/PGS")) {
                        b = -1;
                    } else {
                        b = 19;
                    }
                    break;
                case 444813526:
                    if (!str4.equals("V_THEORA")) {
                        b = -1;
                    } else {
                        b = 20;
                    }
                    break;
                case 542569478:
                    if (!str4.equals("A_DTS/EXPRESS")) {
                        b = -1;
                    } else {
                        b = 21;
                    }
                    break;
                case 635596514:
                    if (!str4.equals("A_PCM/FLOAT/IEEE")) {
                        b = -1;
                    } else {
                        b = 22;
                    }
                    break;
                case 725948237:
                    if (!str4.equals("A_PCM/INT/BIG")) {
                        b = -1;
                    } else {
                        b = 23;
                    }
                    break;
                case 725957860:
                    if (!str4.equals("A_PCM/INT/LIT")) {
                        b = -1;
                    } else {
                        b = 24;
                    }
                    break;
                case 738597099:
                    if (!str4.equals("S_TEXT/ASS")) {
                        b = -1;
                    } else {
                        b = 25;
                    }
                    break;
                case 855502857:
                    if (!str4.equals("V_MPEGH/ISO/HEVC")) {
                        b = -1;
                    } else {
                        b = 26;
                    }
                    break;
                case 1045209816:
                    if (!str4.equals("S_TEXT/WEBVTT")) {
                        b = -1;
                    } else {
                        b = 27;
                    }
                    break;
                case 1422270023:
                    if (!str4.equals("S_TEXT/UTF8")) {
                        b = -1;
                    } else {
                        b = 28;
                    }
                    break;
                case 1809237540:
                    if (!str4.equals("V_MPEG2")) {
                        b = -1;
                    } else {
                        b = 29;
                    }
                    break;
                case 1950749482:
                    if (!str4.equals("A_EAC3")) {
                        b = -1;
                    } else {
                        b = 30;
                    }
                    break;
                case 1950789798:
                    if (!str4.equals("A_FLAC")) {
                        b = -1;
                    } else {
                        b = 31;
                    }
                    break;
                case 1951062397:
                    if (!str4.equals("A_OPUS")) {
                        b = -1;
                    } else {
                        b = 32;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                case 1:
                case 9:
                    byte[] bArr2 = this.k;
                    listSingletonList = bArr2 == null ? null : Collections.singletonList(bArr2);
                    str5 = "video/mp4v-es";
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null && (qw2VarA = qw2.a(new qw7(bArr))) != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i10 = i4 | (z ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    } else if (qp6.k(str3)) {
                        if (this.q == 0) {
                            i8 = this.o;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.m;
                            }
                            this.o = i8;
                            i9 = this.p;
                            if (i9 == -1) {
                                i9 = this.n;
                            }
                            this.p = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.o;
                        if (i6 != iIntValue || (i7 = this.p) == iIntValue) {
                            f = -1.0f;
                        } else {
                            f = (this.n * i6) / (this.m * i7);
                        }
                        v81 v81Var = this.x ? new v81(this.y, this.A, this.z, h()) : null;
                        if (this.a != null && z86.i0.containsKey(this.a)) {
                            iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                        }
                        if (this.r == 0 && Float.compare(this.s, 0.0f) == 0 && Float.compare(this.t, 0.0f) == 0) {
                            if (Float.compare(this.u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(this.t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(this.t, -180.0f) != 0 || Float.compare(this.t, 180.0f) == 0) {
                                iIntValue = 180;
                            } else if (Float.compare(this.t, -90.0f) == 0) {
                                iIntValue = 270;
                            }
                        }
                        bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3) && !MimeTypes.TEXT_SSA.equals(str3) && !"text/vtt".equals(str3) && !MimeTypes.APPLICATION_VOBSUB.equals(str3) && !MimeTypes.APPLICATION_PGS.equals(str3) && !MimeTypes.APPLICATION_DVBSUBS.equals(str3)) {
                            throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
                        }
                        i5 = 3;
                    }
                    if (this.a != null && !z86.i0.containsKey(this.a)) {
                        bVar.U(this.a);
                    }
                    k kVarE = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i10).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack;
                    fvaVarTrack.b(kVarE);
                    return;
                case 2:
                    if (l(new qw7(g(this.b)))) {
                        int iV2 = blb.V(this.P);
                        if (iV2 == 0) {
                            op5.i("MatroskaExtractor", "Unsupported PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        } else {
                            i2 = iV2;
                            listSingletonList = null;
                            str = null;
                        }
                        i3 = -1;
                        bArr = this.N;
                        if (bArr != null) {
                            str = qw2VarA.c;
                            str5 = "video/dolby-vision";
                        }
                        str3 = str5;
                        boolean z2 = this.V;
                        if (this.U) {
                            i4 = 2;
                        } else {
                            i4 = 0;
                        }
                        int i11 = i4 | (z2 ? 1 : 0);
                        bVar = new k.b();
                        if (qp6.h(str3)) {
                            if (qp6.k(str3)) {
                                if (this.q == 0) {
                                    i8 = this.o;
                                    iIntValue = -1;
                                    if (i8 == -1) {
                                        i8 = this.m;
                                    }
                                    this.o = i8;
                                    i9 = this.p;
                                    if (i9 == -1) {
                                        i9 = this.n;
                                    }
                                    this.p = i9;
                                } else {
                                    iIntValue = -1;
                                }
                                i6 = this.o;
                                if (i6 != iIntValue) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (this.x) {
                                }
                                if (this.a != null) {
                                    iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                                }
                                if (this.r == 0) {
                                    if (Float.compare(this.u, 0.0f) == 0) {
                                        iIntValue = 0;
                                    } else if (Float.compare(this.t, 90.0f) == 0) {
                                        iIntValue = 90;
                                    } else if (Float.compare(this.t, -180.0f) != 0) {
                                        iIntValue = 180;
                                    } else {
                                        iIntValue = 180;
                                    }
                                }
                                bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                                i5 = 2;
                            } else {
                                if ("application/x-subrip".equals(str3)) {
                                }
                                i5 = 3;
                            }
                            break;
                        } else {
                            bVar.H(this.O).f0(this.Q).Y(i2);
                            i5 = 1;
                        }
                        if (this.a != null) {
                            bVar.U(this.a);
                        }
                        k kVarE2 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i11).T(listSingletonList).I(str).M(this.l).E();
                        fva fvaVarTrack2 = qk3Var.track(this.c, i5);
                        this.X = fvaVarTrack2;
                        fvaVarTrack2.b(kVarE2);
                        return;
                    }
                    op5.i("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    str5 = MimeTypes.AUDIO_UNKNOWN;
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z3 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i12 = i4 | (z3 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE3 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i12).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack3 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack3;
                    fvaVarTrack3.b(kVarE3);
                    return;
                case 3:
                    this.T = new fab();
                    str5 = MimeTypes.AUDIO_TRUEHD;
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z4 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i13 = i4 | (z4 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE4 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i13).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack4 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack4;
                    fvaVarTrack4.b(kVarE4);
                    return;
                case 4:
                    listSingletonList = m(g(this.b));
                    str5 = "audio/vorbis";
                    i3 = 8192;
                    str = null;
                    i2 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z5 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i14 = i4 | (z5 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE5 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i14).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack5 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack5;
                    fvaVarTrack5.b(kVarE5);
                    return;
                case 5:
                    str5 = MimeTypes.AUDIO_MPEG_L2;
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = 4096;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z6 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i15 = i4 | (z6 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE6 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i15).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack6 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack6;
                    fvaVarTrack6.b(kVarE6);
                    return;
                case 6:
                    str5 = "audio/mpeg";
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = 4096;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z7 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i16 = i4 | (z7 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE7 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i16).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack7 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack7;
                    fvaVarTrack7.b(kVarE7);
                    return;
                case 7:
                    Pair pairK = k(new qw7(g(this.b)));
                    str5 = (String) pairK.first;
                    listSingletonList = (List) pairK.second;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z8 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i17 = i4 | (z8 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE8 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i17).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack8 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack8;
                    fvaVarTrack8.b(kVarE8);
                    return;
                case 8:
                    byte[] bArr3 = new byte[4];
                    System.arraycopy(g(this.b), 0, bArr3, 0, 4);
                    listSingletonList = ImmutableList.of(bArr3);
                    str5 = MimeTypes.APPLICATION_DVBSUBS;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z9 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i18 = i4 | (z9 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE9 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i18).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack9 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack9;
                    fvaVarTrack9.b(kVarE9);
                    return;
                case 10:
                    r30 r30VarB = r30.b(new qw7(g(this.b)));
                    list = r30VarB.a;
                    this.Y = r30VarB.b;
                    str2 = r30VarB.f;
                    str5 = "video/avc";
                    i2 = -1;
                    i3 = -1;
                    List list2 = list;
                    str = str2;
                    listSingletonList = list2;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z10 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i19 = i4 | (z10 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE10 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i19).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack10 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack10;
                    fvaVarTrack10.b(kVarE10);
                    return;
                case 11:
                    listSingletonList = ImmutableList.of(g(this.b));
                    str5 = MimeTypes.APPLICATION_VOBSUB;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z11 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i110 = i4 | (z11 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE11 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i110).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack11 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack11;
                    fvaVarTrack11.b(kVarE11);
                    return;
                case 12:
                    str5 = MimeTypes.AUDIO_DTS_HD;
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z12 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i111 = i4 | (z12 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE12 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i111).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack12 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack12;
                    fvaVarTrack12.b(kVarE12);
                    return;
                case 13:
                    listSingletonList = Collections.singletonList(g(this.b));
                    i2.b bVarE = i2.e(this.k);
                    this.Q = bVarE.a;
                    this.O = bVarE.b;
                    str = bVarE.c;
                    str5 = "audio/mp4a-latm";
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z13 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i112 = i4 | (z13 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE13 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i112).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack13 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack13;
                    fvaVarTrack13.b(kVarE13);
                    return;
                case 14:
                    str5 = "audio/ac3";
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z14 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i113 = i4 | (z14 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE14 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i113).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack14 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack14;
                    fvaVarTrack14.b(kVarE14);
                    return;
                case 15:
                case 21:
                    str5 = MimeTypes.AUDIO_DTS;
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z15 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i114 = i4 | (z15 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE15 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i114).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack15 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack15;
                    fvaVarTrack15.b(kVarE15);
                    return;
                case 16:
                    str5 = MimeTypes.VIDEO_AV1;
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z16 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i115 = i4 | (z16 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE16 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i115).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack16 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack16;
                    fvaVarTrack16.b(kVarE16);
                    return;
                case 17:
                    str5 = "video/x-vnd.on2.vp8";
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z17 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i116 = i4 | (z17 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE17 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i116).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack17 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack17;
                    fvaVarTrack17.b(kVarE17);
                    return;
                case 18:
                    str5 = "video/x-vnd.on2.vp9";
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z18 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i117 = i4 | (z18 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE18 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i117).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack18 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack18;
                    fvaVarTrack18.b(kVarE18);
                    return;
                case 19:
                    str5 = MimeTypes.APPLICATION_PGS;
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z19 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i118 = i4 | (z19 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE19 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i118).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack19 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack19;
                    fvaVarTrack19.b(kVarE19);
                    return;
                case 20:
                    str5 = MimeTypes.VIDEO_UNKNOWN;
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z110 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i119 = i4 | (z110 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE110 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i119).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack110 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack110;
                    fvaVarTrack110.b(kVarE110);
                    return;
                case 22:
                    if (this.P == 32) {
                        listSingletonList = null;
                        str = null;
                        i2 = 4;
                    } else {
                        op5.i("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        listSingletonList = null;
                        str = null;
                        i2 = -1;
                    }
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z111 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1110 = i4 | (z111 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE111 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1110).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack111 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack111;
                    fvaVarTrack111.b(kVarE111);
                    return;
                case 23:
                    int i20 = this.P;
                    if (i20 == 8) {
                        listSingletonList = null;
                        str = null;
                        i2 = 3;
                    } else if (i20 == 16) {
                        iV = 268435456;
                        i2 = iV;
                        listSingletonList = null;
                        str = null;
                    } else {
                        op5.i("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        listSingletonList = null;
                        str = null;
                        i2 = -1;
                    }
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z112 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1111 = i4 | (z112 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE112 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1111).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack112 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack112;
                    fvaVarTrack112.b(kVarE112);
                    return;
                case 24:
                    iV = blb.V(this.P);
                    if (iV == 0) {
                        op5.i("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        listSingletonList = null;
                        str = null;
                        i2 = -1;
                    } else {
                        i2 = iV;
                        listSingletonList = null;
                        str = null;
                    }
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z113 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1112 = i4 | (z113 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE113 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1112).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack113 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack113;
                    fvaVarTrack113.b(kVarE113);
                    return;
                case 25:
                    listSingletonList = ImmutableList.of(z86.e0, g(this.b));
                    str5 = MimeTypes.TEXT_SSA;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z114 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1113 = i4 | (z114 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE114 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1113).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack114 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack114;
                    fvaVarTrack114.b(kVarE114);
                    return;
                case 26:
                    ip4 ip4VarA = ip4.a(new qw7(g(this.b)));
                    list = ip4VarA.a;
                    this.Y = ip4VarA.b;
                    str2 = ip4VarA.f;
                    str5 = "video/hevc";
                    i2 = -1;
                    i3 = -1;
                    List list3 = list;
                    str = str2;
                    listSingletonList = list3;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z115 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1114 = i4 | (z115 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE115 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1114).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack115 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack115;
                    fvaVarTrack115.b(kVarE115);
                    return;
                case 27:
                    str5 = "text/vtt";
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z116 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1115 = i4 | (z116 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE116 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1115).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack116 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack116;
                    fvaVarTrack116.b(kVarE116);
                    return;
                case 28:
                    str5 = "application/x-subrip";
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z117 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1116 = i4 | (z117 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE117 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1116).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack117 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack117;
                    fvaVarTrack117.b(kVarE117);
                    return;
                case 29:
                    str5 = "video/mpeg2";
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z118 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1117 = i4 | (z118 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE118 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1117).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack118 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack118;
                    fvaVarTrack118.b(kVarE118);
                    return;
                case 30:
                    str5 = "audio/eac3";
                    listSingletonList = null;
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z119 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1118 = i4 | (z119 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE119 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1118).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack119 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack119;
                    fvaVarTrack119.b(kVarE119);
                    return;
                case 31:
                    listSingletonList = Collections.singletonList(g(this.b));
                    str5 = "audio/flac";
                    str = null;
                    i2 = -1;
                    i3 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1110 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i1119 = i4 | (z1110 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE1110 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i1119).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack1110 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack1110;
                    fvaVarTrack1110.b(kVarE1110);
                    return;
                case 32:
                    listSingletonList = new ArrayList(3);
                    listSingletonList.add(g(this.b));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.R).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.S).array());
                    str5 = "audio/opus";
                    i3 = 5760;
                    str = null;
                    i2 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = qw2VarA.c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1111 = this.V;
                    if (this.U) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    int i11110 = i4 | (z1111 ? 1 : 0);
                    bVar = new k.b();
                    if (qp6.h(str3)) {
                        if (qp6.k(str3)) {
                            if (this.q == 0) {
                                i8 = this.o;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.m;
                                }
                                this.o = i8;
                                i9 = this.p;
                                if (i9 == -1) {
                                    i9 = this.n;
                                }
                                this.p = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.o;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) z86.i0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                if (Float.compare(this.u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.m).Q(this.n).a0(f).d0(iIntValue).b0(this.v).h0(this.w).J(v81Var);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i2);
                        i5 = 1;
                    }
                    if (this.a != null) {
                        bVar.U(this.a);
                    }
                    k kVarE1111 = bVar.R(i).e0(str3).W(i3).V(this.W).g0(i11110).T(listSingletonList).I(str).M(this.l).E();
                    fva fvaVarTrack1111 = qk3Var.track(this.c, i5);
                    this.X = fvaVarTrack1111;
                    fvaVarTrack1111.b(kVarE1111);
                    return;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
        }

        public void j() {
            fab fabVar = this.T;
            if (fabVar != null) {
                fabVar.a(this.X, this.j);
            }
        }

        public void n() {
            fab fabVar = this.T;
            if (fabVar != null) {
                fabVar.b();
            }
        }

        public final boolean o(boolean z) {
            if ("A_OPUS".equals(this.b)) {
                return z;
            }
            return this.f > 0;
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        i0 = Collections.unmodifiableMap(map);
    }

    public z86() {
        this(0);
    }

    public static void E(String str, long j, byte[] bArr) {
        byte[] bArrR;
        int i;
        str.hashCode();
        switch (str) {
            case "S_TEXT/ASS":
                bArrR = r(j, "%01d:%02d:%02d:%02d", 10000L);
                i = 21;
                break;
            case "S_TEXT/WEBVTT":
                bArrR = r(j, "%02d:%02d:%02d.%03d", 1000L);
                i = 25;
                break;
            case "S_TEXT/UTF8":
                bArrR = r(j, "%02d:%02d:%02d,%03d", 1000L);
                i = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(bArrR, 0, bArr, i, bArrR.length);
    }

    private void j() {
        zi.i(this.b0);
    }

    public static int[] o(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        return iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    public static byte[] r(long j, String str, long j2) {
        zi.a(j != C.TIME_UNSET);
        int i = (int) (j / 3600000000L);
        long j3 = j - (((long) i) * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - (((long) i2) * 60000000);
        int i3 = (int) (j4 / 1000000);
        return blb.f0(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2))));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean x(String str) {
        str.hashCode();
        byte b2 = -1;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals("V_MPEG4/ISO/AP")) {
                    b2 = 0;
                }
                break;
            case -2095575984:
                if (str.equals("V_MPEG4/ISO/SP")) {
                    b2 = 1;
                }
                break;
            case -1985379776:
                if (str.equals("A_MS/ACM")) {
                    b2 = 2;
                }
                break;
            case -1784763192:
                if (str.equals("A_TRUEHD")) {
                    b2 = 3;
                }
                break;
            case -1730367663:
                if (str.equals("A_VORBIS")) {
                    b2 = 4;
                }
                break;
            case -1482641358:
                if (str.equals("A_MPEG/L2")) {
                    b2 = 5;
                }
                break;
            case -1482641357:
                if (str.equals("A_MPEG/L3")) {
                    b2 = 6;
                }
                break;
            case -1373388978:
                if (str.equals("V_MS/VFW/FOURCC")) {
                    b2 = 7;
                }
                break;
            case -933872740:
                if (str.equals("S_DVBSUB")) {
                    b2 = 8;
                }
                break;
            case -538363189:
                if (str.equals("V_MPEG4/ISO/ASP")) {
                    b2 = 9;
                }
                break;
            case -538363109:
                if (str.equals("V_MPEG4/ISO/AVC")) {
                    b2 = 10;
                }
                break;
            case -425012669:
                if (str.equals("S_VOBSUB")) {
                    b2 = ByteCode.T_LONG;
                }
                break;
            case -356037306:
                if (str.equals("A_DTS/LOSSLESS")) {
                    b2 = 12;
                }
                break;
            case 62923557:
                if (str.equals("A_AAC")) {
                    b2 = 13;
                }
                break;
            case 62923603:
                if (str.equals("A_AC3")) {
                    b2 = 14;
                }
                break;
            case 62927045:
                if (str.equals("A_DTS")) {
                    b2 = 15;
                }
                break;
            case 82318131:
                if (str.equals("V_AV1")) {
                    b2 = 16;
                }
                break;
            case 82338133:
                if (str.equals("V_VP8")) {
                    b2 = 17;
                }
                break;
            case 82338134:
                if (str.equals("V_VP9")) {
                    b2 = 18;
                }
                break;
            case 99146302:
                if (str.equals("S_HDMV/PGS")) {
                    b2 = 19;
                }
                break;
            case 444813526:
                if (str.equals("V_THEORA")) {
                    b2 = 20;
                }
                break;
            case 542569478:
                if (str.equals("A_DTS/EXPRESS")) {
                    b2 = 21;
                }
                break;
            case 635596514:
                if (str.equals("A_PCM/FLOAT/IEEE")) {
                    b2 = 22;
                }
                break;
            case 725948237:
                if (str.equals("A_PCM/INT/BIG")) {
                    b2 = 23;
                }
                break;
            case 725957860:
                if (str.equals("A_PCM/INT/LIT")) {
                    b2 = 24;
                }
                break;
            case 738597099:
                if (str.equals("S_TEXT/ASS")) {
                    b2 = 25;
                }
                break;
            case 855502857:
                if (str.equals("V_MPEGH/ISO/HEVC")) {
                    b2 = 26;
                }
                break;
            case 1045209816:
                if (str.equals("S_TEXT/WEBVTT")) {
                    b2 = 27;
                }
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    b2 = 28;
                }
                break;
            case 1809237540:
                if (str.equals("V_MPEG2")) {
                    b2 = 29;
                }
                break;
            case 1950749482:
                if (str.equals("A_EAC3")) {
                    b2 = 30;
                }
                break;
            case 1950789798:
                if (str.equals("A_FLAC")) {
                    b2 = 31;
                }
                break;
            case 1951062397:
                if (str.equals("A_OPUS")) {
                    b2 = 32;
                }
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
                return true;
            default:
                return false;
        }
    }

    public static nk3[] z() {
        return new nk3[]{new z86()};
    }

    public final boolean A(id8 id8Var, long j) {
        if (this.y) {
            this.A = j;
            id8Var.a = this.z;
            this.y = false;
            return true;
        }
        if (this.v) {
            long j2 = this.A;
            if (j2 != -1) {
                id8Var.a = j2;
                this.A = -1L;
                return true;
            }
        }
        return false;
    }

    public final void B(pk3 pk3Var, int i) {
        if (this.g.f() >= i) {
            return;
        }
        if (this.g.b() < i) {
            qw7 qw7Var = this.g;
            qw7Var.c(Math.max(qw7Var.b() * 2, i));
        }
        pk3Var.readFully(this.g.d(), this.g.f(), i - this.g.f());
        this.g.N(i);
    }

    public final void C() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.a0 = false;
        this.j.K(0);
    }

    public final long D(long j) throws ParserException {
        long j2 = this.r;
        if (j2 != C.TIME_UNSET) {
            return blb.B0(j, j2, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    public void F(int i, long j, long j2) throws ParserException {
        j();
        if (i == 160) {
            this.Q = false;
            this.R = 0L;
            return;
        }
        if (i == 174) {
            this.u = new c();
            return;
        }
        if (i == 187) {
            this.E = false;
            return;
        }
        if (i == 19899) {
            this.w = -1;
            this.x = -1L;
            return;
        }
        if (i == 20533) {
            s(i).h = true;
            return;
        }
        if (i == 21968) {
            s(i).x = true;
            return;
        }
        if (i == 408125543) {
            long j3 = this.q;
            if (j3 != -1 && j3 != j) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.q = j;
            this.p = j2;
            return;
        }
        if (i == 475249515) {
            this.C = new zq5();
            this.D = new zq5();
        } else if (i == 524531317 && !this.v) {
            if (this.d && this.z != -1) {
                this.y = true;
            } else {
                this.b0.d(new ja9.b(this.t));
                this.v = true;
            }
        }
    }

    public void G(int i, String str) throws ParserException {
        if (i == 134) {
            s(i).b = str;
            return;
        }
        if (i != 17026) {
            if (i == 21358) {
                s(i).a = str;
                return;
            } else {
                if (i != 2274716) {
                    return;
                }
                s(i).W = str;
                return;
            }
        }
        if ("webm".equals(str) || "matroska".equals(str)) {
            return;
        }
        throw ParserException.createForMalformedContainer("DocType " + str + " not supported", null);
    }

    public final int H(pk3 pk3Var, c cVar, int i, boolean z) throws ParserException {
        int i2;
        if ("S_TEXT/UTF8".equals(cVar.b)) {
            I(pk3Var, d0, i);
            return p();
        }
        if ("S_TEXT/ASS".equals(cVar.b)) {
            I(pk3Var, f0, i);
            return p();
        }
        if ("S_TEXT/WEBVTT".equals(cVar.b)) {
            I(pk3Var, g0, i);
            return p();
        }
        fva fvaVar = cVar.X;
        if (!this.V) {
            if (cVar.h) {
                this.O &= -1073741825;
                if (!this.W) {
                    pk3Var.readFully(this.g.d(), 0, 1);
                    this.S++;
                    if ((this.g.d()[0] & SocketData.CLAZZ_TYPE_END_SOCKET) == 128) {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                    this.Z = this.g.d()[0];
                    this.W = true;
                }
                byte b2 = this.Z;
                if ((b2 & 1) == 1) {
                    boolean z2 = (b2 & 2) == 2;
                    this.O |= 1073741824;
                    if (!this.a0) {
                        pk3Var.readFully(this.l.d(), 0, 8);
                        this.S += 8;
                        this.a0 = true;
                        this.g.d()[0] = (byte) ((z2 ? 128 : 0) | 8);
                        this.g.O(0);
                        fvaVar.a(this.g, 1, 1);
                        this.T++;
                        this.l.O(0);
                        fvaVar.a(this.l, 8, 1);
                        this.T += 8;
                    }
                    if (z2) {
                        if (!this.X) {
                            pk3Var.readFully(this.g.d(), 0, 1);
                            this.S++;
                            this.g.O(0);
                            this.Y = this.g.C();
                            this.X = true;
                        }
                        int i3 = this.Y * 4;
                        this.g.K(i3);
                        pk3Var.readFully(this.g.d(), 0, i3);
                        this.S += i3;
                        short s = (short) ((this.Y / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.o;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.o = ByteBuffer.allocate(i4);
                        }
                        this.o.position(0);
                        this.o.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.Y;
                            if (i5 >= i2) {
                                break;
                            }
                            int iG = this.g.G();
                            if (i5 % 2 == 0) {
                                this.o.putShort((short) (iG - i6));
                            } else {
                                this.o.putInt(iG - i6);
                            }
                            i5++;
                            i6 = iG;
                        }
                        int i7 = (i - this.S) - i6;
                        if (i2 % 2 == 1) {
                            this.o.putInt(i7);
                        } else {
                            this.o.putShort((short) i7);
                            this.o.putInt(0);
                        }
                        this.m.M(this.o.array(), i4);
                        fvaVar.a(this.m, i4, 1);
                        this.T += i4;
                    }
                }
            } else {
                byte[] bArr = cVar.i;
                if (bArr != null) {
                    this.j.M(bArr, bArr.length);
                }
            }
            if (cVar.o(z)) {
                this.O |= 268435456;
                this.n.K(0);
                int iF = (this.j.f() + i) - this.S;
                this.g.K(4);
                this.g.d()[0] = (byte) ((iF >> 24) & 255);
                this.g.d()[1] = (byte) ((iF >> 16) & 255);
                this.g.d()[2] = (byte) ((iF >> 8) & 255);
                this.g.d()[3] = (byte) (iF & 255);
                fvaVar.a(this.g, 4, 2);
                this.T += 4;
            }
            this.V = true;
        }
        int iF2 = i + this.j.f();
        if (!"V_MPEG4/ISO/AVC".equals(cVar.b) && !"V_MPEGH/ISO/HEVC".equals(cVar.b)) {
            if (cVar.T != null) {
                zi.g(this.j.f() == 0);
                cVar.T.d(pk3Var);
            }
            while (true) {
                int i8 = this.S;
                if (i8 >= iF2) {
                    break;
                }
                int iJ = J(pk3Var, fvaVar, iF2 - i8);
                this.S += iJ;
                this.T += iJ;
            }
        } else {
            byte[] bArrD = this.f.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i9 = cVar.Y;
            int i10 = 4 - i9;
            while (this.S < iF2) {
                int i11 = this.U;
                if (i11 == 0) {
                    K(pk3Var, bArrD, i10, i9);
                    this.S += i9;
                    this.f.O(0);
                    this.U = this.f.G();
                    this.e.O(0);
                    fvaVar.d(this.e, 4);
                    this.T += 4;
                } else {
                    int iJ2 = J(pk3Var, fvaVar, i11);
                    this.S += iJ2;
                    this.T += iJ2;
                    this.U -= iJ2;
                }
            }
        }
        if ("A_VORBIS".equals(cVar.b)) {
            this.h.O(0);
            fvaVar.d(this.h, 4);
            this.T += 4;
        }
        return p();
    }

    public final void I(pk3 pk3Var, byte[] bArr, int i) {
        int length = bArr.length + i;
        if (this.k.b() < length) {
            this.k.L(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, this.k.d(), 0, bArr.length);
        }
        pk3Var.readFully(this.k.d(), bArr.length, i);
        this.k.O(0);
        this.k.N(length);
    }

    public final int J(pk3 pk3Var, fva fvaVar, int i) {
        int iA = this.j.a();
        if (iA <= 0) {
            return fvaVar.c(pk3Var, i, false);
        }
        int iMin = Math.min(i, iA);
        fvaVar.d(this.j, iMin);
        return iMin;
    }

    public final void K(pk3 pk3Var, byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, this.j.a());
        pk3Var.readFully(bArr, i + iMin, i2 - iMin);
        if (iMin > 0) {
            this.j.j(bArr, i, iMin);
        }
    }

    @Override
    public final void a(qk3 qk3Var) {
        this.b0 = qk3Var;
    }

    @Override
    public final int b(pk3 pk3Var, id8 id8Var) {
        this.F = false;
        boolean zA = true;
        while (zA && !this.F) {
            zA = this.a.a(pk3Var);
            if (zA && A(id8Var, pk3Var.getPosition())) {
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i = 0; i < this.c.size(); i++) {
            c cVar = (c) this.c.valueAt(i);
            cVar.f();
            cVar.j();
        }
        return -1;
    }

    @Override
    public final boolean c(pk3 pk3Var) {
        return new mr9().b(pk3Var);
    }

    public final void h(int i) throws ParserException {
        if (this.C == null || this.D == null) {
            throw ParserException.createForMalformedContainer("Element " + i + " must be in a Cues", null);
        }
    }

    public final void i(int i) throws ParserException {
        if (this.u != null) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0282  */
    public void k(int i, int i2, pk3 pk3Var) throws ParserException {
        c cVar;
        int i3;
        c cVar2;
        c cVar3;
        long j;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        int i9 = 1;
        if (i != 161 && i != 163) {
            if (i == 165) {
                if (this.G != 2) {
                    return;
                }
                v((c) this.c.get(this.M), this.P, pk3Var, i2);
                return;
            }
            if (i == 16877) {
                u(s(i), pk3Var, i2);
                return;
            }
            if (i == 16981) {
                i(i);
                byte[] bArr = new byte[i2];
                this.u.i = bArr;
                pk3Var.readFully(bArr, 0, i2);
                return;
            }
            if (i == 18402) {
                byte[] bArr2 = new byte[i2];
                pk3Var.readFully(bArr2, 0, i2);
                s(i).j = new fva.a(1, bArr2, 0, 0);
                return;
            }
            if (i == 21419) {
                Arrays.fill(this.i.d(), (byte) 0);
                pk3Var.readFully(this.i.d(), 4 - i2, i2);
                this.i.O(0);
                this.w = (int) this.i.E();
                return;
            }
            if (i == 25506) {
                i(i);
                byte[] bArr3 = new byte[i2];
                this.u.k = bArr3;
                pk3Var.readFully(bArr3, 0, i2);
                return;
            }
            if (i != 30322) {
                throw ParserException.createForMalformedContainer("Unexpected id: " + i, null);
            }
            i(i);
            byte[] bArr4 = new byte[i2];
            this.u.v = bArr4;
            pk3Var.readFully(bArr4, 0, i2);
            return;
        }
        if (this.G == 0) {
            this.M = (int) this.b.d(pk3Var, false, true, 8);
            this.N = this.b.b();
            this.I = C.TIME_UNSET;
            this.G = 1;
            this.g.K(0);
        }
        c cVar4 = (c) this.c.get(this.M);
        if (cVar4 == null) {
            pk3Var.skipFully(i2 - this.N);
            this.G = 0;
            return;
        }
        cVar4.f();
        if (this.G == 1) {
            B(pk3Var, 3);
            int i10 = (this.g.d()[2] & 6) >> 1;
            byte b2 = 255;
            if (i10 == 0) {
                this.K = 1;
                int[] iArrO = o(this.L, 1);
                this.L = iArrO;
                iArrO[0] = (i2 - this.N) - 3;
            } else {
                int i11 = 4;
                B(pk3Var, 4);
                int i12 = (this.g.d()[3] & 255) + 1;
                this.K = i12;
                int[] iArrO2 = o(this.L, i12);
                this.L = iArrO2;
                if (i10 == 2) {
                    int i13 = (i2 - this.N) - 4;
                    int i14 = this.K;
                    Arrays.fill(iArrO2, 0, i14, i13 / i14);
                } else {
                    if (i10 == 1) {
                        int i15 = 0;
                        int i16 = 0;
                        while (true) {
                            i4 = this.K;
                            if (i15 >= i4 - 1) {
                                break;
                            }
                            this.L[i15] = 0;
                            while (true) {
                                i5 = i11 + 1;
                                B(pk3Var, i5);
                                int i17 = this.g.d()[i11] & 255;
                                int[] iArr = this.L;
                                i6 = iArr[i15] + i17;
                                iArr[i15] = i6;
                                if (i17 != 255) {
                                    break;
                                } else {
                                    i11 = i5;
                                }
                            }
                            i16 += i6;
                            i15++;
                            i11 = i5;
                        }
                        this.L[i4 - 1] = ((i2 - this.N) - i11) - i16;
                    } else {
                        if (i10 != 3) {
                            throw ParserException.createForMalformedContainer("Unexpected lacing value: " + i10, null);
                        }
                        int i18 = 0;
                        int i19 = 0;
                        while (true) {
                            int i20 = this.K;
                            if (i18 >= i20 - 1) {
                                cVar2 = cVar4;
                                this.L[i20 - 1] = ((i2 - this.N) - i11) - i19;
                                break;
                            }
                            this.L[i18] = i8;
                            int i21 = i11 + 1;
                            B(pk3Var, i21);
                            if (this.g.d()[i11] == 0) {
                                throw ParserException.createForMalformedContainer("No valid varint length mask found", null);
                            }
                            int i22 = i8;
                            while (true) {
                                if (i22 >= 8) {
                                    cVar3 = cVar4;
                                    j = 0;
                                    break;
                                }
                                int i23 = i9 << (7 - i22);
                                if ((this.g.d()[i11] & i23) != 0) {
                                    i21 += i22;
                                    B(pk3Var, i21);
                                    cVar3 = cVar4;
                                    j = (~i23) & this.g.d()[i11] & b2;
                                    int i24 = i11 + 1;
                                    while (i24 < i21) {
                                        j = (j << 8) | ((long) (this.g.d()[i24] & b2));
                                        i24++;
                                        b2 = 255;
                                    }
                                    if (i18 <= 0) {
                                        break;
                                    }
                                    j -= (1 << ((i22 * 7) + 6)) - 1;
                                    break;
                                }
                                i22++;
                                i9 = 1;
                                b2 = 255;
                            }
                            i11 = i21;
                            if (j < -2147483648L || j > 2147483647L) {
                                throw ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
                            }
                            int i25 = (int) j;
                            int[] iArr2 = this.L;
                            if (i18 != 0) {
                                i25 += iArr2[i18 - 1];
                            }
                            iArr2[i18] = i25;
                            i19 += i25;
                            i18++;
                            cVar4 = cVar3;
                            i8 = 0;
                            i9 = 1;
                            b2 = 255;
                        }
                    }
                    this.H = this.B + D((this.g.d()[0] << 8) | (this.g.d()[1] & 255));
                    cVar = cVar2;
                    if (cVar.d != 2 || (i == 163 && (this.g.d()[2] & SocketData.CLAZZ_TYPE_END_SOCKET) == 128)) {
                        i7 = 1;
                    } else {
                        i7 = 0;
                    }
                    this.O = i7;
                    this.G = 2;
                    this.J = 0;
                    i3 = 163;
                }
            }
            cVar2 = cVar4;
            this.H = this.B + D((this.g.d()[0] << 8) | (this.g.d()[1] & 255));
            cVar = cVar2;
            if (cVar.d != 2) {
                i7 = 1;
            } else {
                i7 = 1;
            }
            this.O = i7;
            this.G = 2;
            this.J = 0;
            i3 = 163;
        } else {
            cVar = cVar4;
            i3 = 163;
        }
        if (i == i3) {
            while (true) {
                int i26 = this.J;
                if (i26 >= this.K) {
                    this.G = 0;
                    return;
                }
                m(cVar, ((long) ((this.J * cVar.e) / 1000)) + this.H, this.O, H(pk3Var, cVar, this.L[i26], false), 0);
                this.J++;
            }
        } else {
            while (true) {
                int i27 = this.J;
                if (i27 >= this.K) {
                    return;
                }
                int[] iArr3 = this.L;
                iArr3[i27] = H(pk3Var, cVar, iArr3[i27], true);
                this.J++;
            }
        }
    }

    public final ja9 l(zq5 zq5Var, zq5 zq5Var2) {
        int i;
        if (this.q == -1 || this.t == C.TIME_UNSET || zq5Var == null || zq5Var.c() == 0 || zq5Var2 == null || zq5Var2.c() != zq5Var.c()) {
            return new ja9.b(this.t);
        }
        int iC = zq5Var.c();
        int[] iArrCopyOf = new int[iC];
        long[] jArrCopyOf = new long[iC];
        long[] jArrCopyOf2 = new long[iC];
        long[] jArrCopyOf3 = new long[iC];
        int i2 = 0;
        for (int i3 = 0; i3 < iC; i3++) {
            jArrCopyOf3[i3] = zq5Var.b(i3);
            jArrCopyOf[i3] = this.q + zq5Var2.b(i3);
        }
        while (true) {
            i = iC - 1;
            if (i2 >= i) {
                break;
            }
            int i4 = i2 + 1;
            iArrCopyOf[i2] = (int) (jArrCopyOf[i4] - jArrCopyOf[i2]);
            jArrCopyOf2[i2] = jArrCopyOf3[i4] - jArrCopyOf3[i2];
            i2 = i4;
        }
        iArrCopyOf[i] = (int) ((this.q + this.p) - jArrCopyOf[i]);
        long j = this.t - jArrCopyOf3[i];
        jArrCopyOf2[i] = j;
        if (j <= 0) {
            op5.i("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j);
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i);
        }
        return new aw0(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    public final void m(c cVar, long j, int i, int i2, int i3) {
        fab fabVar = cVar.T;
        if (fabVar != null) {
            fabVar.c(cVar.X, j, i, i2, i3, cVar.j);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.b) || "S_TEXT/ASS".equals(cVar.b) || "S_TEXT/WEBVTT".equals(cVar.b)) {
                if (this.K > 1) {
                    op5.i("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j2 = this.I;
                    if (j2 == C.TIME_UNSET) {
                        op5.i("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        E(cVar.b, j2, this.k.d());
                        for (int iE = this.k.e(); iE < this.k.f(); iE++) {
                            if (this.k.d()[iE] == 0) {
                                this.k.N(iE);
                                break;
                            }
                        }
                        fva fvaVar = cVar.X;
                        qw7 qw7Var = this.k;
                        fvaVar.d(qw7Var, qw7Var.f());
                        i2 += this.k.f();
                    }
                }
            }
            if ((268435456 & i) != 0) {
                if (this.K > 1) {
                    this.n.K(0);
                } else {
                    int iF = this.n.f();
                    cVar.X.a(this.n, iF, 2);
                    i2 += iF;
                }
            }
            cVar.X.e(j, i, i2, i3, cVar.j);
        }
        this.F = true;
    }

    public void n(int i) throws ParserException {
        j();
        if (i == 160) {
            if (this.G != 2) {
                return;
            }
            c cVar = (c) this.c.get(this.M);
            cVar.f();
            if (this.R > 0 && "A_OPUS".equals(cVar.b)) {
                this.n.L(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.R).array());
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.K; i3++) {
                i2 += this.L[i3];
            }
            int i4 = 0;
            while (i4 < this.K) {
                long j = this.H + ((long) ((cVar.e * i4) / 1000));
                int i5 = this.O;
                if (i4 == 0 && !this.Q) {
                    i5 |= 1;
                }
                int i6 = this.L[i4];
                int i7 = i2 - i6;
                m(cVar, j, i5, i6, i7);
                i4++;
                i2 = i7;
            }
            this.G = 0;
            return;
        }
        if (i == 174) {
            c cVar2 = (c) zi.i(this.u);
            String str = cVar2.b;
            if (str == null) {
                throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            }
            if (x(str)) {
                cVar2.i(this.b0, cVar2.c);
                this.c.put(cVar2.c, cVar2);
            }
            this.u = null;
            return;
        }
        if (i == 19899) {
            int i8 = this.w;
            if (i8 != -1) {
                long j2 = this.x;
                if (j2 != -1) {
                    if (i8 == 475249515) {
                        this.z = j2;
                        return;
                    }
                    return;
                }
            }
            throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i == 25152) {
            i(i);
            c cVar3 = this.u;
            if (cVar3.h) {
                if (cVar3.j == null) {
                    throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                cVar3.l = new DrmInitData(new DrmInitData.SchemeData(to0.a, MimeTypes.VIDEO_WEBM, this.u.j.b));
                return;
            }
            return;
        }
        if (i == 28032) {
            i(i);
            c cVar4 = this.u;
            if (cVar4.h && cVar4.i != null) {
                throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i == 357149030) {
            if (this.r == C.TIME_UNSET) {
                this.r = 1000000L;
            }
            long j3 = this.s;
            if (j3 != C.TIME_UNSET) {
                this.t = D(j3);
                return;
            }
            return;
        }
        if (i == 374648427) {
            if (this.c.size() == 0) {
                throw ParserException.createForMalformedContainer("No valid tracks were found", null);
            }
            this.b0.endTracks();
        } else {
            if (i != 475249515) {
                return;
            }
            if (!this.v) {
                this.b0.d(l(this.C, this.D));
                this.v = true;
            }
            this.C = null;
            this.D = null;
        }
    }

    public final int p() {
        int i = this.T;
        C();
        return i;
    }

    public void q(int i, double d) throws ParserException {
        if (i == 181) {
            s(i).Q = (int) d;
        }
        if (i == 17545) {
            this.s = (long) d;
            return;
        }
        switch (i) {
            case 21969:
                s(i).D = (float) d;
                break;
            case 21970:
                s(i).E = (float) d;
                break;
            case 21971:
                s(i).F = (float) d;
                break;
            case 21972:
                s(i).G = (float) d;
                break;
            case 21973:
                s(i).H = (float) d;
                break;
            case 21974:
                s(i).I = (float) d;
                break;
            case 21975:
                s(i).J = (float) d;
                break;
            case 21976:
                s(i).K = (float) d;
                break;
            case 21977:
                s(i).L = (float) d;
                break;
            case 21978:
                s(i).M = (float) d;
                break;
            default:
                switch (i) {
                    case 30323:
                        s(i).s = (float) d;
                        break;
                    case 30324:
                        s(i).t = (float) d;
                        break;
                    case 30325:
                        s(i).u = (float) d;
                        break;
                }
                break;
        }
    }

    @Override
    public final void release() {
    }

    public c s(int i) throws ParserException {
        i(i);
        return this.u;
    }

    @Override
    public void seek(long j, long j2) {
        this.B = C.TIME_UNSET;
        this.G = 0;
        this.a.reset();
        this.b.e();
        C();
        for (int i = 0; i < this.c.size(); i++) {
            ((c) this.c.valueAt(i)).n();
        }
    }

    public int t(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case ByteCode.PUTSTATIC:
            case ByteCode.INVOKEDYNAMIC:
            case IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR:
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
            case ByteCode.FRETURN:
            case 183:
            case 187:
            case 224:
            case TranSceneConfig.TSCENE_TYPE_VOICE_ASSISTANT_SMILE:
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

    public void u(c cVar, pk3 pk3Var, int i) {
        if (cVar.g != 1685485123 && cVar.g != 1685480259) {
            pk3Var.skipFully(i);
            return;
        }
        byte[] bArr = new byte[i];
        cVar.N = bArr;
        pk3Var.readFully(bArr, 0, i);
    }

    public void v(c cVar, int i, pk3 pk3Var, int i2) {
        if (i != 4 || !"V_VP9".equals(cVar.b)) {
            pk3Var.skipFully(i2);
        } else {
            this.n.K(i2);
            pk3Var.readFully(this.n.d(), 0, i2);
        }
    }

    public void w(int i, long j) throws ParserException {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingOrder " + j + " not supported", null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingScope " + j + " not supported", null);
        }
        switch (i) {
            case 131:
                s(i).d = (int) j;
                return;
            case 136:
                s(i).V = j == 1;
                return;
            case 155:
                this.I = D(j);
                return;
            case 159:
                s(i).O = (int) j;
                return;
            case 176:
                s(i).m = (int) j;
                return;
            case ByteCode.PUTSTATIC:
                h(i);
                this.C.a(D(j));
                return;
            case ByteCode.INVOKEDYNAMIC:
                s(i).n = (int) j;
                return;
            case IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR:
                s(i).c = (int) j;
                return;
            case 231:
                this.B = D(j);
                return;
            case 238:
                this.P = (int) j;
                return;
            case 241:
                if (this.E) {
                    return;
                }
                h(i);
                this.D.a(j);
                this.E = true;
                return;
            case 251:
                this.Q = true;
                return;
            case 16871:
                s(i).g = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentCompAlgo " + j + " not supported", null);
            case 17029:
                if (j < 1 || j > 2) {
                    throw ParserException.createForMalformedContainer("DocTypeReadVersion " + j + " not supported", null);
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("EBMLReadVersion " + j + " not supported", null);
            case 18401:
                if (j == 5) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentEncAlgo " + j + " not supported", null);
            case 18408:
                if (j == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("AESSettingsCipherMode " + j + " not supported", null);
            case 21420:
                this.x = j + this.q;
                return;
            case 21432:
                int i2 = (int) j;
                i(i);
                if (i2 == 0) {
                    this.u.w = 0;
                    return;
                }
                if (i2 == 1) {
                    this.u.w = 2;
                    return;
                } else if (i2 == 3) {
                    this.u.w = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.u.w = 3;
                    return;
                }
            case 21680:
                s(i).o = (int) j;
                return;
            case 21682:
                s(i).q = (int) j;
                return;
            case 21690:
                s(i).p = (int) j;
                return;
            case 21930:
                s(i).U = j == 1;
                return;
            case 21998:
                s(i).f = (int) j;
                return;
            case 22186:
                s(i).R = j;
                return;
            case 22203:
                s(i).S = j;
                return;
            case 25188:
                s(i).P = (int) j;
                return;
            case 30114:
                this.R = j;
                return;
            case 30321:
                i(i);
                int i3 = (int) j;
                if (i3 == 0) {
                    this.u.r = 0;
                    return;
                }
                if (i3 == 1) {
                    this.u.r = 1;
                    return;
                } else if (i3 == 2) {
                    this.u.r = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.u.r = 3;
                    return;
                }
            case 2352003:
                s(i).e = (int) j;
                return;
            case 2807729:
                this.r = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        i(i);
                        int i4 = (int) j;
                        if (i4 == 1) {
                            this.u.A = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.u.A = 1;
                            return;
                        }
                    case 21946:
                        i(i);
                        int iC = v81.c((int) j);
                        if (iC != -1) {
                            this.u.z = iC;
                            return;
                        }
                        return;
                    case 21947:
                        i(i);
                        this.u.x = true;
                        int iB = v81.b((int) j);
                        if (iB != -1) {
                            this.u.y = iB;
                            return;
                        }
                        return;
                    case 21948:
                        s(i).B = (int) j;
                        return;
                    case 21949:
                        s(i).C = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    public boolean y(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    public z86(int i) {
        this(new e12(), i);
    }

    public z86(z53 z53Var, int i) {
        this.q = -1L;
        this.r = C.TIME_UNSET;
        this.s = C.TIME_UNSET;
        this.t = C.TIME_UNSET;
        this.z = -1L;
        this.A = -1L;
        this.B = C.TIME_UNSET;
        this.a = z53Var;
        z53Var.b(new b());
        this.d = (i & 1) == 0;
        this.b = new fob();
        this.c = new SparseArray();
        this.g = new qw7(4);
        this.h = new qw7(ByteBuffer.allocate(4).putInt(-1).array());
        this.i = new qw7(4);
        this.e = new qw7(ay6.a);
        this.f = new qw7(4);
        this.j = new qw7();
        this.k = new qw7();
        this.l = new qw7(8);
        this.m = new qw7();
        this.n = new qw7();
        this.L = new int[1];
    }
}
