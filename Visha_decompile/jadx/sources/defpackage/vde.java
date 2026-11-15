package defpackage;

import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzs;
import com.transsion.audiotagger.tag.reference.Languages;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.mozilla.classfile.ByteCode;

public final class vde {
    public byte[] P;
    public sae V;
    public boolean W;
    public rae Z;
    public boolean a;
    public int a0;
    public String b;
    public String c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public byte[] j;
    public qae k;
    public byte[] l;
    public zzs m;
    public int n = -1;
    public int o = -1;
    public int p = -1;
    public int q = -1;
    public int r = -1;
    public int s = 0;
    public int t = -1;
    public float u = 0.0f;
    public float v = 0.0f;
    public float w = 0.0f;
    public byte[] x = null;
    public int y = -1;
    public boolean z = false;
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
    public String Y = Languages.DEFAULT_ID;

    public static Pair f(u4h u4hVar) throws zzaz {
        try {
            u4hVar.m(16);
            long jM = u4hVar.M();
            if (jM == 1482049860) {
                return new Pair(MimeTypes.VIDEO_DIVX, null);
            }
            if (jM == 859189832) {
                return new Pair("video/3gpp", null);
            }
            if (jM != 826496599) {
                zrg.f("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair(MimeTypes.VIDEO_UNKNOWN, null);
            }
            int iW = u4hVar.w() + 20;
            byte[] bArrN = u4hVar.n();
            while (true) {
                int length = bArrN.length;
                if (iW >= length - 4) {
                    throw zzaz.zza("Failed to find FourCC VC1 initialization data", null);
                }
                int i = iW + 1;
                if (bArrN[iW] == 0 && bArrN[i] == 0 && bArrN[iW + 2] == 1 && bArrN[iW + 3] == 15) {
                    return new Pair(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArrN, iW, length)));
                }
                iW = i;
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzaz.zza("Error parsing FourCC private data", null);
        }
    }

    public static List g(byte[] bArr) throws zzaz {
        int i;
        int i2;
        try {
            if (bArr[0] != 2) {
                throw zzaz.zza("Error parsing vorbis codec private", null);
            }
            int i3 = 0;
            int i4 = 1;
            while (true) {
                int i5 = bArr[i4];
                i4++;
                i = i5 & 255;
                if (i != 255) {
                    break;
                }
                i3 += 255;
            }
            int i6 = i3 + i;
            int i7 = 0;
            while (true) {
                int i8 = bArr[i4];
                i4++;
                i2 = i8 & 255;
                if (i2 != 255) {
                    break;
                }
                i7 += 255;
            }
            int i9 = i7 + i2;
            if (bArr[i4] != 1) {
                throw zzaz.zza("Error parsing vorbis codec private", null);
            }
            byte[] bArr2 = new byte[i6];
            System.arraycopy(bArr, i4, bArr2, 0, i6);
            int i10 = i4 + i6;
            if (bArr[i10] != 3) {
                throw zzaz.zza("Error parsing vorbis codec private", null);
            }
            int i11 = i10 + i9;
            if (bArr[i11] != 5) {
                throw zzaz.zza("Error parsing vorbis codec private", null);
            }
            int length = bArr.length - i11;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i11, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzaz.zza("Error parsing vorbis codec private", null);
        }
    }

    public static boolean h(u4h u4hVar) throws zzaz {
        try {
            int iE = u4hVar.E();
            if (iE == 1) {
                return true;
            }
            if (iE == 65534) {
                u4hVar.l(24);
                if (u4hVar.N() == xde.j0.getMostSignificantBits() && u4hVar.N() == xde.j0.getLeastSignificantBits()) {
                    return true;
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzaz.zza("Error parsing MS/ACM codec private", null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:104:0x018f  */
    /* JADX WARN: Code duplicated, block: B:121:0x01eb A[PHI: r8
      0x01eb: PHI (r8v7 int) = (r8v1 int), (r8v2 int), (r8v3 int), (r8v4 int), (r8v5 int), (r8v6 int), (r8v0 int) binds: [B:140:0x0272, B:135:0x023f, B:132:0x021e, B:130:0x0219, B:128:0x0214, B:126:0x0210, B:120:0x01e9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:180:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:185:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:186:0x03de  */
    /* JADX WARN: Code duplicated, block: B:189:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:190:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:192:0x0401  */
    /* JADX WARN: Code duplicated, block: B:194:0x0405  */
    /* JADX WARN: Code duplicated, block: B:196:0x040a  */
    /* JADX WARN: Code duplicated, block: B:199:0x0412  */
    /* JADX WARN: Code duplicated, block: B:201:0x0417  */
    /* JADX WARN: Code duplicated, block: B:204:0x041e  */
    /* JADX WARN: Code duplicated, block: B:207:0x042c  */
    /* JADX WARN: Code duplicated, block: B:210:0x0431  */
    /* JADX WARN: Code duplicated, block: B:212:0x0437  */
    /* JADX WARN: Code duplicated, block: B:235:0x0511  */
    /* JADX WARN: Code duplicated, block: B:240:0x0532  */
    /* JADX WARN: Code duplicated, block: B:258:0x057d  */
    /* JADX WARN: Code duplicated, block: B:260:0x059d  */
    /* JADX WARN: Code duplicated, block: B:262:0x05a5  */
    /* JADX WARN: Code duplicated, block: B:277:0x05d4  */
    /* JADX WARN: Code duplicated, block: B:282:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:283:0x05f2  */
    public final void e(f9e f9eVar, int i) throws zzaz {
        byte b;
        List listZzo;
        List list;
        String str;
        String str2;
        int i2;
        int i3;
        String str3;
        int i4;
        gpj gpjVar;
        int i5;
        int iIntValue;
        int i6;
        float f;
        int i7;
        int i8;
        int i9;
        String str4;
        t8e t8eVarA;
        String str5 = this.c;
        int I = 4;
        int i10 = 0;
        switch (str5) {
            case "V_MPEG4/ISO/AP":
                b = 6;
                break;
            case "V_MPEG4/ISO/SP":
                b = 4;
                break;
            case "A_MS/ACM":
                b = 23;
                break;
            case "A_TRUEHD":
                b = 18;
                break;
            case "A_VORBIS":
                b = ByteCode.T_LONG;
                break;
            case "A_MPEG/L2":
                b = 14;
                break;
            case "A_MPEG/L3":
                b = 15;
                break;
            case "V_MS/VFW/FOURCC":
                b = 9;
                break;
            case "S_DVBSUB":
                b = 32;
                break;
            case "V_MPEG4/ISO/ASP":
                b = 5;
                break;
            case "V_MPEG4/ISO/AVC":
                b = 7;
                break;
            case "S_VOBSUB":
                b = 30;
                break;
            case "A_DTS/LOSSLESS":
                b = 21;
                break;
            case "A_AAC":
                b = 13;
                break;
            case "A_AC3":
                b = 16;
                break;
            case "A_DTS":
                b = 19;
                break;
            case "V_AV1":
                b = 2;
                break;
            case "V_VP8":
                b = 0;
                break;
            case "V_VP9":
                b = 1;
                break;
            case "S_HDMV/PGS":
                b = 31;
                break;
            case "V_THEORA":
                b = 10;
                break;
            case "A_DTS/EXPRESS":
                b = 20;
                break;
            case "A_PCM/FLOAT/IEEE":
                b = 26;
                break;
            case "A_PCM/INT/BIG":
                b = 25;
                break;
            case "A_PCM/INT/LIT":
                b = 24;
                break;
            case "S_TEXT/ASS":
                b = 28;
                break;
            case "V_MPEGH/ISO/HEVC":
                b = 8;
                break;
            case "S_TEXT/WEBVTT":
                b = 29;
                break;
            case "S_TEXT/UTF8":
                b = 27;
                break;
            case "V_MPEG2":
                b = 3;
                break;
            case "A_EAC3":
                b = 17;
                break;
            case "A_FLAC":
                b = 22;
                break;
            case "A_OPUS":
                b = 12;
                break;
            default:
                b = -1;
                break;
        }
        String str6 = "audio/raw";
        h6j h6jVarG = null;
        bArr = null;
        bArr = null;
        bArr = null;
        bArr = null;
        bArr = null;
        bArr = null;
        bArr = null;
        bArr = null;
        bArr = null;
        byte[] bArr = null;
        switch (b) {
            case 0:
                str6 = "video/x-vnd.on2.vp8";
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null && (t8eVarA = t8e.a(new u4h(this.P))) != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i11 = (z ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                } else if (bue.j(str3)) {
                    if (this.s == 0) {
                        i8 = this.q;
                        iIntValue = -1;
                        if (i8 == -1) {
                            i8 = this.n;
                        }
                        this.q = i8;
                        i9 = this.r;
                        if (i9 == -1) {
                            i9 = this.o;
                        }
                        this.r = i9;
                    } else {
                        iIntValue = -1;
                    }
                    i6 = this.q;
                    if (i6 != iIntValue || (i7 = this.r) == iIntValue) {
                        f = -1.0f;
                    } else {
                        f = (this.o * i6) / (this.n * i7);
                    }
                    if (this.z) {
                        if (this.F != -1.0f && this.G != -1.0f && this.H != -1.0f && this.I != -1.0f && this.J != -1.0f && this.K != -1.0f && this.L != -1.0f && this.M != -1.0f && this.N != -1.0f && this.O != -1.0f) {
                            bArr = new byte[25];
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
                        }
                        p1j p1jVar = new p1j();
                        p1jVar.c(this.A);
                        p1jVar.b(this.C);
                        p1jVar.d(this.B);
                        p1jVar.e(bArr);
                        p1jVar.f(this.p);
                        p1jVar.a(this.p);
                        h6jVarG = p1jVar.g();
                    }
                    if (this.b != null && xde.k0.containsKey(this.b)) {
                        iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                    }
                    if (this.t == 0 || Float.compare(this.u, 0.0f) != 0 || Float.compare(this.v, 0.0f) != 0) {
                        i10 = iIntValue;
                    } else if (Float.compare(this.w, 0.0f) != 0) {
                        if (Float.compare(this.w, 90.0f) == 0) {
                            i10 = 90;
                        } else if (Float.compare(this.w, -180.0f) == 0 || Float.compare(this.w, 180.0f) == 0) {
                            i10 = 180;
                        } else if (Float.compare(this.w, -90.0f) == 0) {
                            i10 = 270;
                        } else {
                            i10 = iIntValue;
                        }
                    }
                    gpjVar.J(this.n);
                    gpjVar.m(this.o);
                    gpjVar.z(f);
                    gpjVar.D(i10);
                    gpjVar.B(this.x);
                    gpjVar.H(this.y);
                    gpjVar.d(h6jVarG);
                    i5 = 2;
                } else {
                    if ("application/x-subrip".equals(str3) && !MimeTypes.TEXT_SSA.equals(str3) && !"text/vtt".equals(str3) && !MimeTypes.APPLICATION_VOBSUB.equals(str3) && !MimeTypes.APPLICATION_PGS.equals(str3) && !MimeTypes.APPLICATION_DVBSUBS.equals(str3)) {
                        throw zzaz.zza("Unexpected MIME type.", null);
                    }
                    i5 = 3;
                }
                if (this.b != null && !xde.k0.containsKey(this.b)) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i11);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK = gpjVar.K();
                rae raeVarJ = f9eVar.j(this.d, i5);
                this.Z = raeVarJ;
                raeVarJ.f(erjVarK);
                return;
            case 1:
                byte[] bArr2 = this.l;
                listZzo = bArr2 == null ? null : zzfww.zzo(bArr2);
                str6 = "video/x-vnd.on2.vp9";
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z2 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i12 = (z2 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder2 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder2.put((byte) 0);
                                byteBufferOrder2.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder2.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder2.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder2.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder2.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder2.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder2.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder2.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder2.putShort((short) (this.N + 0.5f));
                                byteBufferOrder2.putShort((short) (this.O + 0.5f));
                                byteBufferOrder2.putShort((short) this.D);
                                byteBufferOrder2.putShort((short) this.E);
                            }
                            p1j p1jVar2 = new p1j();
                            p1jVar2.c(this.A);
                            p1jVar2.b(this.C);
                            p1jVar2.d(this.B);
                            p1jVar2.e(bArr);
                            p1jVar2.f(this.p);
                            p1jVar2.a(this.p);
                            h6jVarG = p1jVar2.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i12);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK2 = gpjVar.K();
                rae raeVarJ2 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ2;
                raeVarJ2.f(erjVarK2);
                return;
            case 2:
                byte[] bArr3 = this.l;
                listZzo = bArr3 == null ? null : zzfww.zzo(bArr3);
                str6 = MimeTypes.VIDEO_AV1;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z3 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i13 = (z3 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder3 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder3.put((byte) 0);
                                byteBufferOrder3.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder3.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder3.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder3.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder3.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder3.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder3.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder3.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder3.putShort((short) (this.N + 0.5f));
                                byteBufferOrder3.putShort((short) (this.O + 0.5f));
                                byteBufferOrder3.putShort((short) this.D);
                                byteBufferOrder3.putShort((short) this.E);
                            }
                            p1j p1jVar3 = new p1j();
                            p1jVar3.c(this.A);
                            p1jVar3.b(this.C);
                            p1jVar3.d(this.B);
                            p1jVar3.e(bArr);
                            p1jVar3.f(this.p);
                            p1jVar3.a(this.p);
                            h6jVarG = p1jVar3.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i13);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK3 = gpjVar.K();
                rae raeVarJ3 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ3;
                raeVarJ3.f(erjVarK3);
                return;
            case 3:
                str6 = "video/mpeg2";
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z4 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i14 = (z4 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder4 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder4.put((byte) 0);
                                byteBufferOrder4.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder4.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder4.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder4.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder4.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder4.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder4.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder4.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder4.putShort((short) (this.N + 0.5f));
                                byteBufferOrder4.putShort((short) (this.O + 0.5f));
                                byteBufferOrder4.putShort((short) this.D);
                                byteBufferOrder4.putShort((short) this.E);
                            }
                            p1j p1jVar4 = new p1j();
                            p1jVar4.c(this.A);
                            p1jVar4.b(this.C);
                            p1jVar4.d(this.B);
                            p1jVar4.e(bArr);
                            p1jVar4.f(this.p);
                            p1jVar4.a(this.p);
                            h6jVarG = p1jVar4.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i14);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK4 = gpjVar.K();
                rae raeVarJ4 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ4;
                raeVarJ4.f(erjVarK4);
                return;
            case 4:
            case 5:
            case 6:
                byte[] bArr4 = this.l;
                listZzo = bArr4 == null ? null : Collections.singletonList(bArr4);
                str6 = "video/mp4v-es";
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z5 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i15 = (z5 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder5 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder5.put((byte) 0);
                                byteBufferOrder5.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder5.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder5.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder5.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder5.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder5.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder5.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder5.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder5.putShort((short) (this.N + 0.5f));
                                byteBufferOrder5.putShort((short) (this.O + 0.5f));
                                byteBufferOrder5.putShort((short) this.D);
                                byteBufferOrder5.putShort((short) this.E);
                            }
                            p1j p1jVar5 = new p1j();
                            p1jVar5.c(this.A);
                            p1jVar5.b(this.C);
                            p1jVar5.d(this.B);
                            p1jVar5.e(bArr);
                            p1jVar5.f(this.p);
                            p1jVar5.a(this.p);
                            h6jVarG = p1jVar5.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i15);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK5 = gpjVar.K();
                rae raeVarJ5 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ5;
                raeVarJ5.f(erjVarK5);
                return;
            case 7:
                b8e b8eVarA = b8e.a(new u4h(i(this.c)));
                list = b8eVarA.a;
                this.a0 = b8eVarA.b;
                str = b8eVarA.l;
                str6 = "video/avc";
                str2 = str;
                listZzo = list;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z6 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i16 = (z6 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder6 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder6.put((byte) 0);
                                byteBufferOrder6.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder6.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder6.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder6.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder6.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder6.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder6.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder6.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder6.putShort((short) (this.N + 0.5f));
                                byteBufferOrder6.putShort((short) (this.O + 0.5f));
                                byteBufferOrder6.putShort((short) this.D);
                                byteBufferOrder6.putShort((short) this.E);
                            }
                            p1j p1jVar6 = new p1j();
                            p1jVar6.c(this.A);
                            p1jVar6.b(this.C);
                            p1jVar6.d(this.B);
                            p1jVar6.e(bArr);
                            p1jVar6.f(this.p);
                            p1jVar6.a(this.p);
                            h6jVarG = p1jVar6.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i16);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK6 = gpjVar.K();
                rae raeVarJ6 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ6;
                raeVarJ6.f(erjVarK6);
                return;
            case 8:
                r9e r9eVarA = r9e.a(new u4h(i(this.c)));
                list = r9eVarA.a;
                this.a0 = r9eVarA.b;
                str = r9eVarA.l;
                str6 = "video/hevc";
                str2 = str;
                listZzo = list;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z7 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i17 = (z7 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder7 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder7.put((byte) 0);
                                byteBufferOrder7.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder7.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder7.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder7.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder7.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder7.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder7.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder7.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder7.putShort((short) (this.N + 0.5f));
                                byteBufferOrder7.putShort((short) (this.O + 0.5f));
                                byteBufferOrder7.putShort((short) this.D);
                                byteBufferOrder7.putShort((short) this.E);
                            }
                            p1j p1jVar7 = new p1j();
                            p1jVar7.c(this.A);
                            p1jVar7.b(this.C);
                            p1jVar7.d(this.B);
                            p1jVar7.e(bArr);
                            p1jVar7.f(this.p);
                            p1jVar7.a(this.p);
                            h6jVarG = p1jVar7.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i17);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK7 = gpjVar.K();
                rae raeVarJ7 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ7;
                raeVarJ7.f(erjVarK7);
                return;
            case 9:
                Pair pairF = f(new u4h(i(this.c)));
                str6 = (String) pairF.first;
                listZzo = (List) pairF.second;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z8 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i18 = (z8 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder8 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder8.put((byte) 0);
                                byteBufferOrder8.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder8.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder8.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder8.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder8.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder8.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder8.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder8.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder8.putShort((short) (this.N + 0.5f));
                                byteBufferOrder8.putShort((short) (this.O + 0.5f));
                                byteBufferOrder8.putShort((short) this.D);
                                byteBufferOrder8.putShort((short) this.E);
                            }
                            p1j p1jVar8 = new p1j();
                            p1jVar8.c(this.A);
                            p1jVar8.b(this.C);
                            p1jVar8.d(this.B);
                            p1jVar8.e(bArr);
                            p1jVar8.f(this.p);
                            p1jVar8.a(this.p);
                            h6jVarG = p1jVar8.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i18);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK8 = gpjVar.K();
                rae raeVarJ8 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ8;
                raeVarJ8.f(erjVarK8);
                return;
            case 10:
                str6 = MimeTypes.VIDEO_UNKNOWN;
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z9 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i19 = (z9 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder9 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder9.put((byte) 0);
                                byteBufferOrder9.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder9.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder9.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder9.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder9.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder9.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder9.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder9.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder9.putShort((short) (this.N + 0.5f));
                                byteBufferOrder9.putShort((short) (this.O + 0.5f));
                                byteBufferOrder9.putShort((short) this.D);
                                byteBufferOrder9.putShort((short) this.E);
                            }
                            p1j p1jVar9 = new p1j();
                            p1jVar9.c(this.A);
                            p1jVar9.b(this.C);
                            p1jVar9.d(this.B);
                            p1jVar9.e(bArr);
                            p1jVar9.f(this.p);
                            p1jVar9.a(this.p);
                            h6jVarG = p1jVar9.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i19);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK9 = gpjVar.K();
                rae raeVarJ9 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ9;
                raeVarJ9.f(erjVarK9);
                return;
            case 11:
                listZzo = g(i(str5));
                i2 = 8192;
                str6 = "audio/vorbis";
                str2 = null;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z10 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i110 = (z10 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder10 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder10.put((byte) 0);
                                byteBufferOrder10.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder10.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder10.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder10.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder10.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder10.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder10.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder10.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder10.putShort((short) (this.N + 0.5f));
                                byteBufferOrder10.putShort((short) (this.O + 0.5f));
                                byteBufferOrder10.putShort((short) this.D);
                                byteBufferOrder10.putShort((short) this.E);
                            }
                            p1j p1jVar10 = new p1j();
                            p1jVar10.c(this.A);
                            p1jVar10.b(this.C);
                            p1jVar10.d(this.B);
                            p1jVar10.e(bArr);
                            p1jVar10.f(this.p);
                            p1jVar10.a(this.p);
                            h6jVarG = p1jVar10.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i110);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK10 = gpjVar.K();
                rae raeVarJ10 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ10;
                raeVarJ10.f(erjVarK10);
                return;
            case 12:
                listZzo = new ArrayList(3);
                listZzo.add(i(this.c));
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                listZzo.add(byteBufferAllocate.order(byteOrder).putLong(this.T).array());
                listZzo.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.U).array());
                i2 = 5760;
                str6 = "audio/opus";
                str2 = null;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z11 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i111 = (z11 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder11 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder11.put((byte) 0);
                                byteBufferOrder11.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder11.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder11.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder11.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder11.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder11.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder11.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder11.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder11.putShort((short) (this.N + 0.5f));
                                byteBufferOrder11.putShort((short) (this.O + 0.5f));
                                byteBufferOrder11.putShort((short) this.D);
                                byteBufferOrder11.putShort((short) this.E);
                            }
                            p1j p1jVar11 = new p1j();
                            p1jVar11.c(this.A);
                            p1jVar11.b(this.C);
                            p1jVar11.d(this.B);
                            p1jVar11.e(bArr);
                            p1jVar11.f(this.p);
                            p1jVar11.a(this.p);
                            h6jVarG = p1jVar11.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i111);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK11 = gpjVar.K();
                rae raeVarJ11 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ11;
                raeVarJ11.f(erjVarK11);
                return;
            case 13:
                listZzo = Collections.singletonList(i(str5));
                n7e n7eVarA = p7e.a(this.l);
                this.S = n7eVarA.a;
                this.Q = n7eVarA.b;
                str6 = "audio/mp4a-latm";
                str2 = n7eVarA.c;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z12 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i112 = (z12 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder12 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder12.put((byte) 0);
                                byteBufferOrder12.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder12.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder12.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder12.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder12.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder12.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder12.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder12.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder12.putShort((short) (this.N + 0.5f));
                                byteBufferOrder12.putShort((short) (this.O + 0.5f));
                                byteBufferOrder12.putShort((short) this.D);
                                byteBufferOrder12.putShort((short) this.E);
                            }
                            p1j p1jVar12 = new p1j();
                            p1jVar12.c(this.A);
                            p1jVar12.b(this.C);
                            p1jVar12.d(this.B);
                            p1jVar12.e(bArr);
                            p1jVar12.f(this.p);
                            p1jVar12.a(this.p);
                            h6jVarG = p1jVar12.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i112);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK12 = gpjVar.K();
                rae raeVarJ12 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ12;
                raeVarJ12.f(erjVarK12);
                return;
            case 14:
                i3 = 4096;
                str6 = MimeTypes.AUDIO_MPEG_L2;
                i2 = i3;
                listZzo = null;
                str2 = null;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z13 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i113 = (z13 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder13 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder13.put((byte) 0);
                                byteBufferOrder13.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder13.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder13.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder13.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder13.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder13.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder13.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder13.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder13.putShort((short) (this.N + 0.5f));
                                byteBufferOrder13.putShort((short) (this.O + 0.5f));
                                byteBufferOrder13.putShort((short) this.D);
                                byteBufferOrder13.putShort((short) this.E);
                            }
                            p1j p1jVar13 = new p1j();
                            p1jVar13.c(this.A);
                            p1jVar13.b(this.C);
                            p1jVar13.d(this.B);
                            p1jVar13.e(bArr);
                            p1jVar13.f(this.p);
                            p1jVar13.a(this.p);
                            h6jVarG = p1jVar13.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i113);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK13 = gpjVar.K();
                rae raeVarJ13 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ13;
                raeVarJ13.f(erjVarK13);
                return;
            case 15:
                i3 = 4096;
                str6 = "audio/mpeg";
                i2 = i3;
                listZzo = null;
                str2 = null;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z14 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i114 = (z14 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder14 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder14.put((byte) 0);
                                byteBufferOrder14.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder14.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder14.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder14.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder14.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder14.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder14.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder14.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder14.putShort((short) (this.N + 0.5f));
                                byteBufferOrder14.putShort((short) (this.O + 0.5f));
                                byteBufferOrder14.putShort((short) this.D);
                                byteBufferOrder14.putShort((short) this.E);
                            }
                            p1j p1jVar14 = new p1j();
                            p1jVar14.c(this.A);
                            p1jVar14.b(this.C);
                            p1jVar14.d(this.B);
                            p1jVar14.e(bArr);
                            p1jVar14.f(this.p);
                            p1jVar14.a(this.p);
                            h6jVarG = p1jVar14.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i114);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK14 = gpjVar.K();
                rae raeVarJ14 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ14;
                raeVarJ14.f(erjVarK14);
                return;
            case 16:
                str6 = "audio/ac3";
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z15 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i115 = (z15 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder15 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder15.put((byte) 0);
                                byteBufferOrder15.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder15.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder15.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder15.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder15.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder15.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder15.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder15.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder15.putShort((short) (this.N + 0.5f));
                                byteBufferOrder15.putShort((short) (this.O + 0.5f));
                                byteBufferOrder15.putShort((short) this.D);
                                byteBufferOrder15.putShort((short) this.E);
                            }
                            p1j p1jVar15 = new p1j();
                            p1jVar15.c(this.A);
                            p1jVar15.b(this.C);
                            p1jVar15.d(this.B);
                            p1jVar15.e(bArr);
                            p1jVar15.f(this.p);
                            p1jVar15.a(this.p);
                            h6jVarG = p1jVar15.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i115);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK15 = gpjVar.K();
                rae raeVarJ15 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ15;
                raeVarJ15.f(erjVarK15);
                return;
            case 17:
                str6 = "audio/eac3";
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z16 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i116 = (z16 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder16 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder16.put((byte) 0);
                                byteBufferOrder16.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder16.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder16.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder16.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder16.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder16.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder16.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder16.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder16.putShort((short) (this.N + 0.5f));
                                byteBufferOrder16.putShort((short) (this.O + 0.5f));
                                byteBufferOrder16.putShort((short) this.D);
                                byteBufferOrder16.putShort((short) this.E);
                            }
                            p1j p1jVar16 = new p1j();
                            p1jVar16.c(this.A);
                            p1jVar16.b(this.C);
                            p1jVar16.d(this.B);
                            p1jVar16.e(bArr);
                            p1jVar16.f(this.p);
                            p1jVar16.a(this.p);
                            h6jVarG = p1jVar16.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i116);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK16 = gpjVar.K();
                rae raeVarJ16 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ16;
                raeVarJ16.f(erjVarK16);
                return;
            case 18:
                this.V = new sae();
                str6 = MimeTypes.AUDIO_TRUEHD;
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z17 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i117 = (z17 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder17 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder17.put((byte) 0);
                                byteBufferOrder17.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder17.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder17.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder17.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder17.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder17.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder17.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder17.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder17.putShort((short) (this.N + 0.5f));
                                byteBufferOrder17.putShort((short) (this.O + 0.5f));
                                byteBufferOrder17.putShort((short) this.D);
                                byteBufferOrder17.putShort((short) this.E);
                            }
                            p1j p1jVar17 = new p1j();
                            p1jVar17.c(this.A);
                            p1jVar17.b(this.C);
                            p1jVar17.d(this.B);
                            p1jVar17.e(bArr);
                            p1jVar17.f(this.p);
                            p1jVar17.a(this.p);
                            h6jVarG = p1jVar17.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i117);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK17 = gpjVar.K();
                rae raeVarJ17 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ17;
                raeVarJ17.f(erjVarK17);
                return;
            case 19:
            case 20:
                str6 = MimeTypes.AUDIO_DTS;
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z18 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i118 = (z18 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder18 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder18.put((byte) 0);
                                byteBufferOrder18.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder18.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder18.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder18.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder18.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder18.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder18.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder18.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder18.putShort((short) (this.N + 0.5f));
                                byteBufferOrder18.putShort((short) (this.O + 0.5f));
                                byteBufferOrder18.putShort((short) this.D);
                                byteBufferOrder18.putShort((short) this.E);
                            }
                            p1j p1jVar18 = new p1j();
                            p1jVar18.c(this.A);
                            p1jVar18.b(this.C);
                            p1jVar18.d(this.B);
                            p1jVar18.e(bArr);
                            p1jVar18.f(this.p);
                            p1jVar18.a(this.p);
                            h6jVarG = p1jVar18.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i118);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK18 = gpjVar.K();
                rae raeVarJ18 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ18;
                raeVarJ18.f(erjVarK18);
                return;
            case 21:
                str6 = MimeTypes.AUDIO_DTS_HD;
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z19 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i119 = (z19 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder19 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder19.put((byte) 0);
                                byteBufferOrder19.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder19.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder19.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder19.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder19.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder19.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder19.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder19.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder19.putShort((short) (this.N + 0.5f));
                                byteBufferOrder19.putShort((short) (this.O + 0.5f));
                                byteBufferOrder19.putShort((short) this.D);
                                byteBufferOrder19.putShort((short) this.E);
                            }
                            p1j p1jVar19 = new p1j();
                            p1jVar19.c(this.A);
                            p1jVar19.b(this.C);
                            p1jVar19.d(this.B);
                            p1jVar19.e(bArr);
                            p1jVar19.f(this.p);
                            p1jVar19.a(this.p);
                            h6jVarG = p1jVar19.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i119);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK19 = gpjVar.K();
                rae raeVarJ19 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ19;
                raeVarJ19.f(erjVarK19);
                return;
            case 22:
                listZzo = Collections.singletonList(i(str5));
                str6 = "audio/flac";
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z110 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i1110 = (z110 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder110 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder110.put((byte) 0);
                                byteBufferOrder110.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder110.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder110.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder110.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder110.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder110.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder110.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder110.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder110.putShort((short) (this.N + 0.5f));
                                byteBufferOrder110.putShort((short) (this.O + 0.5f));
                                byteBufferOrder110.putShort((short) this.D);
                                byteBufferOrder110.putShort((short) this.E);
                            }
                            p1j p1jVar110 = new p1j();
                            p1jVar110.c(this.A);
                            p1jVar110.b(this.C);
                            p1jVar110.d(this.B);
                            p1jVar110.e(bArr);
                            p1jVar110.f(this.p);
                            p1jVar110.a(this.p);
                            h6jVarG = p1jVar110.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i1110);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK110 = gpjVar.K();
                rae raeVarJ110 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ110;
                raeVarJ110.f(erjVarK110);
                return;
            case 23:
                if (h(new u4h(i(this.c)))) {
                    I = kfh.I(this.R);
                    if (I == 0) {
                        zrg.f("MatroskaExtractor", "Unsupported PCM bit depth: " + this.R + ". Setting mimeType to audio/x-unknown");
                    } else {
                        listZzo = null;
                        str2 = null;
                        i2 = -1;
                    }
                    if (this.P != null) {
                        str2 = t8eVarA.a;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z111 = this.X;
                    if (true != this.W) {
                        i4 = 0;
                    } else {
                        i4 = 2;
                    }
                    int i1111 = (z111 ? 1 : 0) | i4;
                    gpjVar = new gpj();
                    if (!bue.h(str3)) {
                        if (bue.j(str3)) {
                            if (this.s == 0) {
                                i8 = this.q;
                                iIntValue = -1;
                                if (i8 == -1) {
                                    i8 = this.n;
                                }
                                this.q = i8;
                                i9 = this.r;
                                if (i9 == -1) {
                                    i9 = this.o;
                                }
                                this.r = i9;
                            } else {
                                iIntValue = -1;
                            }
                            i6 = this.q;
                            if (i6 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.z) {
                                if (this.F != -1.0f) {
                                    bArr = new byte[25];
                                    ByteBuffer byteBufferOrder111 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                    byteBufferOrder111.put((byte) 0);
                                    byteBufferOrder111.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                    byteBufferOrder111.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                    byteBufferOrder111.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                    byteBufferOrder111.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                    byteBufferOrder111.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                    byteBufferOrder111.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                    byteBufferOrder111.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                    byteBufferOrder111.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                    byteBufferOrder111.putShort((short) (this.N + 0.5f));
                                    byteBufferOrder111.putShort((short) (this.O + 0.5f));
                                    byteBufferOrder111.putShort((short) this.D);
                                    byteBufferOrder111.putShort((short) this.E);
                                }
                                p1j p1jVar111 = new p1j();
                                p1jVar111.c(this.A);
                                p1jVar111.b(this.C);
                                p1jVar111.d(this.B);
                                p1jVar111.e(bArr);
                                p1jVar111.f(this.p);
                                p1jVar111.a(this.p);
                                h6jVarG = p1jVar111.g();
                            }
                            if (this.b != null) {
                                iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                            }
                            if (this.t == 0) {
                                i10 = iIntValue;
                            } else {
                                i10 = iIntValue;
                            }
                            gpjVar.J(this.n);
                            gpjVar.m(this.o);
                            gpjVar.z(f);
                            gpjVar.D(i10);
                            gpjVar.B(this.x);
                            gpjVar.H(this.y);
                            gpjVar.d(h6jVarG);
                            i5 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i5 = 3;
                        }
                        break;
                    } else {
                        gpjVar.b(this.Q);
                        gpjVar.F(this.S);
                        gpjVar.x(I);
                        i5 = 1;
                    }
                    if (this.b != null) {
                        gpjVar.q(this.b);
                    }
                    gpjVar.n(i);
                    if (true != this.a) {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    } else {
                        str4 = MimeTypes.VIDEO_WEBM;
                    }
                    gpjVar.e(str4);
                    gpjVar.E(str3);
                    gpjVar.t(i2);
                    gpjVar.s(this.Y);
                    gpjVar.G(i1111);
                    gpjVar.p(listZzo);
                    gpjVar.c(str2);
                    gpjVar.h(this.m);
                    erj erjVarK111 = gpjVar.K();
                    rae raeVarJ111 = f9eVar.j(this.d, i5);
                    this.Z = raeVarJ111;
                    raeVarJ111.f(erjVarK111);
                    return;
                }
                zrg.f("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                listZzo = null;
                str2 = null;
                str6 = MimeTypes.AUDIO_UNKNOWN;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z112 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i1112 = (z112 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder112 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder112.put((byte) 0);
                                byteBufferOrder112.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder112.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder112.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder112.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder112.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder112.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder112.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder112.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder112.putShort((short) (this.N + 0.5f));
                                byteBufferOrder112.putShort((short) (this.O + 0.5f));
                                byteBufferOrder112.putShort((short) this.D);
                                byteBufferOrder112.putShort((short) this.E);
                            }
                            p1j p1jVar112 = new p1j();
                            p1jVar112.c(this.A);
                            p1jVar112.b(this.C);
                            p1jVar112.d(this.B);
                            p1jVar112.e(bArr);
                            p1jVar112.f(this.p);
                            p1jVar112.a(this.p);
                            h6jVarG = p1jVar112.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i1112);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK112 = gpjVar.K();
                rae raeVarJ112 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ112;
                raeVarJ112.f(erjVarK112);
                return;
            case 24:
                I = kfh.I(this.R);
                if (I == 0) {
                    zrg.f("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.R + ". Setting mimeType to audio/x-unknown");
                    listZzo = null;
                    str2 = null;
                    str6 = MimeTypes.AUDIO_UNKNOWN;
                    i2 = -1;
                    I = -1;
                } else {
                    listZzo = null;
                    str2 = null;
                    i2 = -1;
                }
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z113 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i1113 = (z113 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder113 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder113.put((byte) 0);
                                byteBufferOrder113.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder113.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder113.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder113.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder113.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder113.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder113.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder113.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder113.putShort((short) (this.N + 0.5f));
                                byteBufferOrder113.putShort((short) (this.O + 0.5f));
                                byteBufferOrder113.putShort((short) this.D);
                                byteBufferOrder113.putShort((short) this.E);
                            }
                            p1j p1jVar113 = new p1j();
                            p1jVar113.c(this.A);
                            p1jVar113.b(this.C);
                            p1jVar113.d(this.B);
                            p1jVar113.e(bArr);
                            p1jVar113.f(this.p);
                            p1jVar113.a(this.p);
                            h6jVarG = p1jVar113.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i1113);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK113 = gpjVar.K();
                rae raeVarJ113 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ113;
                raeVarJ113.f(erjVarK113);
                return;
            case 25:
                int i20 = this.R;
                if (i20 == 8) {
                    I = 3;
                } else if (i20 == 16) {
                    I = 268435456;
                } else if (i20 == 24) {
                    I = C.ENCODING_PCM_24BIT_BIG_ENDIAN;
                } else {
                    if (i20 != 32) {
                        zrg.f("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + i20 + ". Setting mimeType to audio/x-unknown");
                        listZzo = null;
                        str2 = null;
                        str6 = MimeTypes.AUDIO_UNKNOWN;
                        i2 = -1;
                        I = -1;
                        if (this.P != null) {
                            str2 = t8eVarA.a;
                            str6 = "video/dolby-vision";
                        }
                        str3 = str6;
                        boolean z114 = this.X;
                        if (true != this.W) {
                            i4 = 0;
                        } else {
                            i4 = 2;
                        }
                        int i1114 = (z114 ? 1 : 0) | i4;
                        gpjVar = new gpj();
                        if (!bue.h(str3)) {
                            if (bue.j(str3)) {
                                if (this.s == 0) {
                                    i8 = this.q;
                                    iIntValue = -1;
                                    if (i8 == -1) {
                                        i8 = this.n;
                                    }
                                    this.q = i8;
                                    i9 = this.r;
                                    if (i9 == -1) {
                                        i9 = this.o;
                                    }
                                    this.r = i9;
                                } else {
                                    iIntValue = -1;
                                }
                                i6 = this.q;
                                if (i6 != iIntValue) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (this.z) {
                                    if (this.F != -1.0f) {
                                        bArr = new byte[25];
                                        ByteBuffer byteBufferOrder114 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                        byteBufferOrder114.put((byte) 0);
                                        byteBufferOrder114.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                        byteBufferOrder114.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                        byteBufferOrder114.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                        byteBufferOrder114.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                        byteBufferOrder114.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                        byteBufferOrder114.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                        byteBufferOrder114.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                        byteBufferOrder114.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                        byteBufferOrder114.putShort((short) (this.N + 0.5f));
                                        byteBufferOrder114.putShort((short) (this.O + 0.5f));
                                        byteBufferOrder114.putShort((short) this.D);
                                        byteBufferOrder114.putShort((short) this.E);
                                    }
                                    p1j p1jVar114 = new p1j();
                                    p1jVar114.c(this.A);
                                    p1jVar114.b(this.C);
                                    p1jVar114.d(this.B);
                                    p1jVar114.e(bArr);
                                    p1jVar114.f(this.p);
                                    p1jVar114.a(this.p);
                                    h6jVarG = p1jVar114.g();
                                }
                                if (this.b != null) {
                                    iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                                }
                                if (this.t == 0) {
                                    i10 = iIntValue;
                                } else {
                                    i10 = iIntValue;
                                }
                                gpjVar.J(this.n);
                                gpjVar.m(this.o);
                                gpjVar.z(f);
                                gpjVar.D(i10);
                                gpjVar.B(this.x);
                                gpjVar.H(this.y);
                                gpjVar.d(h6jVarG);
                                i5 = 2;
                            } else {
                                if ("application/x-subrip".equals(str3)) {
                                }
                                i5 = 3;
                            }
                            break;
                        } else {
                            gpjVar.b(this.Q);
                            gpjVar.F(this.S);
                            gpjVar.x(I);
                            i5 = 1;
                        }
                        if (this.b != null) {
                            gpjVar.q(this.b);
                        }
                        gpjVar.n(i);
                        if (true != this.a) {
                            str4 = MimeTypes.VIDEO_MATROSKA;
                        } else {
                            str4 = MimeTypes.VIDEO_WEBM;
                        }
                        gpjVar.e(str4);
                        gpjVar.E(str3);
                        gpjVar.t(i2);
                        gpjVar.s(this.Y);
                        gpjVar.G(i1114);
                        gpjVar.p(listZzo);
                        gpjVar.c(str2);
                        gpjVar.h(this.m);
                        erj erjVarK114 = gpjVar.K();
                        rae raeVarJ114 = f9eVar.j(this.d, i5);
                        this.Z = raeVarJ114;
                        raeVarJ114.f(erjVarK114);
                        return;
                    }
                    I = C.ENCODING_PCM_32BIT_BIG_ENDIAN;
                }
                listZzo = null;
                str2 = null;
                i2 = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z115 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i1115 = (z115 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder115 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder115.put((byte) 0);
                                byteBufferOrder115.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder115.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder115.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder115.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder115.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder115.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder115.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder115.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder115.putShort((short) (this.N + 0.5f));
                                byteBufferOrder115.putShort((short) (this.O + 0.5f));
                                byteBufferOrder115.putShort((short) this.D);
                                byteBufferOrder115.putShort((short) this.E);
                            }
                            p1j p1jVar115 = new p1j();
                            p1jVar115.c(this.A);
                            p1jVar115.b(this.C);
                            p1jVar115.d(this.B);
                            p1jVar115.e(bArr);
                            p1jVar115.f(this.p);
                            p1jVar115.a(this.p);
                            h6jVarG = p1jVar115.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i1115);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK115 = gpjVar.K();
                rae raeVarJ115 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ115;
                raeVarJ115.f(erjVarK115);
                return;
            case 26:
                int i21 = this.R;
                if (i21 == 32) {
                    listZzo = null;
                    str2 = null;
                    i2 = -1;
                } else {
                    zrg.f("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + i21 + ". Setting mimeType to audio/x-unknown");
                    listZzo = null;
                    str2 = null;
                    str6 = MimeTypes.AUDIO_UNKNOWN;
                    i2 = -1;
                    I = -1;
                }
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z116 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i1116 = (z116 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder116 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder116.put((byte) 0);
                                byteBufferOrder116.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder116.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder116.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder116.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder116.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder116.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder116.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder116.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder116.putShort((short) (this.N + 0.5f));
                                byteBufferOrder116.putShort((short) (this.O + 0.5f));
                                byteBufferOrder116.putShort((short) this.D);
                                byteBufferOrder116.putShort((short) this.E);
                            }
                            p1j p1jVar116 = new p1j();
                            p1jVar116.c(this.A);
                            p1jVar116.b(this.C);
                            p1jVar116.d(this.B);
                            p1jVar116.e(bArr);
                            p1jVar116.f(this.p);
                            p1jVar116.a(this.p);
                            h6jVarG = p1jVar116.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i1116);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK116 = gpjVar.K();
                rae raeVarJ116 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ116;
                raeVarJ116.f(erjVarK116);
                return;
            case 27:
                str6 = "application/x-subrip";
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z117 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i1117 = (z117 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder117 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder117.put((byte) 0);
                                byteBufferOrder117.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder117.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder117.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder117.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder117.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder117.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder117.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder117.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder117.putShort((short) (this.N + 0.5f));
                                byteBufferOrder117.putShort((short) (this.O + 0.5f));
                                byteBufferOrder117.putShort((short) this.D);
                                byteBufferOrder117.putShort((short) this.E);
                            }
                            p1j p1jVar117 = new p1j();
                            p1jVar117.c(this.A);
                            p1jVar117.b(this.C);
                            p1jVar117.d(this.B);
                            p1jVar117.e(bArr);
                            p1jVar117.f(this.p);
                            p1jVar117.a(this.p);
                            h6jVarG = p1jVar117.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i1117);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK117 = gpjVar.K();
                rae raeVarJ117 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ117;
                raeVarJ117.f(erjVarK117);
                return;
            case 28:
                listZzo = zzfww.zzp(xde.g0, i(this.c));
                str6 = MimeTypes.TEXT_SSA;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z118 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i1118 = (z118 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder118 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder118.put((byte) 0);
                                byteBufferOrder118.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder118.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder118.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder118.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder118.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder118.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder118.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder118.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder118.putShort((short) (this.N + 0.5f));
                                byteBufferOrder118.putShort((short) (this.O + 0.5f));
                                byteBufferOrder118.putShort((short) this.D);
                                byteBufferOrder118.putShort((short) this.E);
                            }
                            p1j p1jVar118 = new p1j();
                            p1jVar118.c(this.A);
                            p1jVar118.b(this.C);
                            p1jVar118.d(this.B);
                            p1jVar118.e(bArr);
                            p1jVar118.f(this.p);
                            p1jVar118.a(this.p);
                            h6jVarG = p1jVar118.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i1118);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK118 = gpjVar.K();
                rae raeVarJ118 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ118;
                raeVarJ118.f(erjVarK118);
                return;
            case 29:
                str6 = "text/vtt";
                listZzo = null;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z119 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i1119 = (z119 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder119 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder119.put((byte) 0);
                                byteBufferOrder119.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder119.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder119.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder119.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder119.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder119.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder119.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder119.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder119.putShort((short) (this.N + 0.5f));
                                byteBufferOrder119.putShort((short) (this.O + 0.5f));
                                byteBufferOrder119.putShort((short) this.D);
                                byteBufferOrder119.putShort((short) this.E);
                            }
                            p1j p1jVar119 = new p1j();
                            p1jVar119.c(this.A);
                            p1jVar119.b(this.C);
                            p1jVar119.d(this.B);
                            p1jVar119.e(bArr);
                            p1jVar119.f(this.p);
                            p1jVar119.a(this.p);
                            h6jVarG = p1jVar119.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i1119);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK119 = gpjVar.K();
                rae raeVarJ119 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ119;
                raeVarJ119.f(erjVarK119);
                return;
            case 30:
                listZzo = zzfww.zzo(i(str5));
                str2 = null;
                str6 = MimeTypes.APPLICATION_VOBSUB;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z1110 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i11110 = (z1110 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder1110 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder1110.put((byte) 0);
                                byteBufferOrder1110.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder1110.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder1110.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder1110.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder1110.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder1110.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder1110.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder1110.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder1110.putShort((short) (this.N + 0.5f));
                                byteBufferOrder1110.putShort((short) (this.O + 0.5f));
                                byteBufferOrder1110.putShort((short) this.D);
                                byteBufferOrder1110.putShort((short) this.E);
                            }
                            p1j p1jVar1110 = new p1j();
                            p1jVar1110.c(this.A);
                            p1jVar1110.b(this.C);
                            p1jVar1110.d(this.B);
                            p1jVar1110.e(bArr);
                            p1jVar1110.f(this.p);
                            p1jVar1110.a(this.p);
                            h6jVarG = p1jVar1110.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i11110);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK1110 = gpjVar.K();
                rae raeVarJ1110 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ1110;
                raeVarJ1110.f(erjVarK1110);
                return;
            case 31:
                listZzo = null;
                str2 = null;
                str6 = MimeTypes.APPLICATION_PGS;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z1111 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i11111 = (z1111 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder1111 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder1111.put((byte) 0);
                                byteBufferOrder1111.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder1111.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder1111.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder1111.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder1111.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder1111.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder1111.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder1111.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder1111.putShort((short) (this.N + 0.5f));
                                byteBufferOrder1111.putShort((short) (this.O + 0.5f));
                                byteBufferOrder1111.putShort((short) this.D);
                                byteBufferOrder1111.putShort((short) this.E);
                            }
                            p1j p1jVar1111 = new p1j();
                            p1jVar1111.c(this.A);
                            p1jVar1111.b(this.C);
                            p1jVar1111.d(this.B);
                            p1jVar1111.e(bArr);
                            p1jVar1111.f(this.p);
                            p1jVar1111.a(this.p);
                            h6jVarG = p1jVar1111.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i11111);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK1111 = gpjVar.K();
                rae raeVarJ1111 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ1111;
                raeVarJ1111.f(erjVarK1111);
                return;
            case 32:
                byte[] bArr5 = new byte[4];
                System.arraycopy(i(str5), 0, bArr5, 0, 4);
                listZzo = zzfww.zzo(bArr5);
                str6 = MimeTypes.APPLICATION_DVBSUBS;
                str2 = null;
                i2 = -1;
                I = -1;
                if (this.P != null) {
                    str2 = t8eVarA.a;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                boolean z1112 = this.X;
                if (true != this.W) {
                    i4 = 0;
                } else {
                    i4 = 2;
                }
                int i11112 = (z1112 ? 1 : 0) | i4;
                gpjVar = new gpj();
                if (!bue.h(str3)) {
                    if (bue.j(str3)) {
                        if (this.s == 0) {
                            i8 = this.q;
                            iIntValue = -1;
                            if (i8 == -1) {
                                i8 = this.n;
                            }
                            this.q = i8;
                            i9 = this.r;
                            if (i9 == -1) {
                                i9 = this.o;
                            }
                            this.r = i9;
                        } else {
                            iIntValue = -1;
                        }
                        i6 = this.q;
                        if (i6 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.z) {
                            if (this.F != -1.0f) {
                                bArr = new byte[25];
                                ByteBuffer byteBufferOrder1112 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder1112.put((byte) 0);
                                byteBufferOrder1112.putShort((short) ((this.F * 50000.0f) + 0.5f));
                                byteBufferOrder1112.putShort((short) ((this.G * 50000.0f) + 0.5f));
                                byteBufferOrder1112.putShort((short) ((this.H * 50000.0f) + 0.5f));
                                byteBufferOrder1112.putShort((short) ((this.I * 50000.0f) + 0.5f));
                                byteBufferOrder1112.putShort((short) ((this.J * 50000.0f) + 0.5f));
                                byteBufferOrder1112.putShort((short) ((this.K * 50000.0f) + 0.5f));
                                byteBufferOrder1112.putShort((short) ((this.L * 50000.0f) + 0.5f));
                                byteBufferOrder1112.putShort((short) ((this.M * 50000.0f) + 0.5f));
                                byteBufferOrder1112.putShort((short) (this.N + 0.5f));
                                byteBufferOrder1112.putShort((short) (this.O + 0.5f));
                                byteBufferOrder1112.putShort((short) this.D);
                                byteBufferOrder1112.putShort((short) this.E);
                            }
                            p1j p1jVar1112 = new p1j();
                            p1jVar1112.c(this.A);
                            p1jVar1112.b(this.C);
                            p1jVar1112.d(this.B);
                            p1jVar1112.e(bArr);
                            p1jVar1112.f(this.p);
                            p1jVar1112.a(this.p);
                            h6jVarG = p1jVar1112.g();
                        }
                        if (this.b != null) {
                            iIntValue = ((Integer) xde.k0.get(this.b)).intValue();
                        }
                        if (this.t == 0) {
                            i10 = iIntValue;
                        } else {
                            i10 = iIntValue;
                        }
                        gpjVar.J(this.n);
                        gpjVar.m(this.o);
                        gpjVar.z(f);
                        gpjVar.D(i10);
                        gpjVar.B(this.x);
                        gpjVar.H(this.y);
                        gpjVar.d(h6jVarG);
                        i5 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i5 = 3;
                    }
                    break;
                } else {
                    gpjVar.b(this.Q);
                    gpjVar.F(this.S);
                    gpjVar.x(I);
                    i5 = 1;
                }
                if (this.b != null) {
                    gpjVar.q(this.b);
                }
                gpjVar.n(i);
                if (true != this.a) {
                    str4 = MimeTypes.VIDEO_MATROSKA;
                } else {
                    str4 = MimeTypes.VIDEO_WEBM;
                }
                gpjVar.e(str4);
                gpjVar.E(str3);
                gpjVar.t(i2);
                gpjVar.s(this.Y);
                gpjVar.G(i11112);
                gpjVar.p(listZzo);
                gpjVar.c(str2);
                gpjVar.h(this.m);
                erj erjVarK1112 = gpjVar.K();
                rae raeVarJ1112 = f9eVar.j(this.d, i5);
                this.Z = raeVarJ1112;
                raeVarJ1112.f(erjVarK1112);
                return;
            default:
                throw zzaz.zza("Unrecognized codec identifier.", null);
        }
    }

    public final byte[] i(String str) throws zzaz {
        byte[] bArr = this.l;
        if (bArr != null) {
            return bArr;
        }
        throw zzaz.zza("Missing CodecPrivate for codec ".concat(String.valueOf(str)), null);
    }
}
