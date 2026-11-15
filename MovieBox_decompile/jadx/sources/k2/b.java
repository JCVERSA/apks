package k2;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.a1;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.nio.ByteBuffer;
import okio.Utf8;

public abstract class b {

    private static final int[] f63495a = {1, 2, 3, 6};

    private static final int[] f63496b = {48000, RecorderConstants.RECORD_SAMPLE_RATE_44100, 32000};

    private static final int[] f63497c = {24000, RecorderConstants.RECORD_SAMPLE_RATE_22050, 16000};

    private static final int[] f63498d = {2, 1, 2, 3, 3, 4, 4, 5};

    private static final int[] f63499e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 384, 448, 512, 576, 640};

    private static final int[] f63500f = {69, 87, 104, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, 139, 174, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, 243, 278, 348, TTAdConstant.DOWNLOAD_URL_AND_PACKAGE_NAME, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static final class C0781b {

        public final String f63501a;

        public final int f63502b;

        public final int f63503c;

        public final int f63504d;

        public final int f63505e;

        public final int f63506f;

        public final int f63507g;

        private C0781b(String str, int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f63501a = str;
            this.f63502b = i10;
            this.f63504d = i11;
            this.f63503c = i12;
            this.f63505e = i13;
            this.f63506f = i14;
            this.f63507g = i15;
        }
    }

    private static int a(int i10, int i11, int i12) {
        return (i10 * i11) / (i12 * 32);
    }

    public static int b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i10 = iPosition; i10 <= iLimit; i10++) {
            if ((a1.P(byteBuffer, i10 + 4) & (-2)) == -126718022) {
                return i10 - iPosition;
            }
        }
        return -1;
    }

    private static int c(int i10, int i11) {
        int i12 = i11 / 2;
        if (i10 < 0) {
            return -1;
        }
        int[] iArr = f63496b;
        if (i10 >= iArr.length || i11 < 0) {
            return -1;
        }
        int[] iArr2 = f63500f;
        if (i12 >= iArr2.length) {
            return -1;
        }
        int i13 = iArr[i10];
        if (i13 == 44100) {
            return (iArr2[i12] + (i11 % 2)) * 2;
        }
        int i14 = f63499e[i12];
        return i13 == 32000 ? i14 * 6 : i14 * 4;
    }

    public static androidx.media3.common.r d(androidx.media3.common.util.j0 j0Var, String str, String str2, DrmInitData drmInitData) {
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0();
        i0Var.m(j0Var);
        int i10 = f63496b[i0Var.h(2)];
        i0Var.r(8);
        int i11 = f63498d[i0Var.h(3)];
        if (i0Var.h(1) != 0) {
            i11++;
        }
        int i12 = f63499e[i0Var.h(5)] * 1000;
        i0Var.c();
        j0Var.W(i0Var.d());
        return new androidx.media3.common.r.b().f0(str).u0(MimeTypes.AUDIO_AC3).R(i11).v0(i10).Y(drmInitData).j0(str2).Q(i12).p0(i12).N();
    }

    public static int e(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f63495a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static C0781b f(androidx.media3.common.util.i0 i0Var) {
        int i10;
        int i11;
        String str;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int iE = i0Var.e();
        i0Var.r(40);
        boolean z10 = i0Var.h(5) > 10;
        i0Var.p(iE);
        int i22 = -1;
        if (z10) {
            i0Var.r(16);
            int iH = i0Var.h(2);
            if (iH == 0) {
                i22 = 0;
            } else if (iH == 1) {
                i22 = 1;
            } else if (iH == 2) {
                i22 = 2;
            }
            i0Var.r(3);
            int iH2 = (i0Var.h(11) + 1) * 2;
            int iH3 = i0Var.h(2);
            if (iH3 == 3) {
                i17 = f63497c[i0Var.h(2)];
                i16 = 3;
                i18 = 6;
            } else {
                int iH4 = i0Var.h(2);
                int i23 = f63495a[iH4];
                i16 = iH4;
                i17 = f63496b[iH3];
                i18 = i23;
            }
            int i24 = i18 * 256;
            int iA = a(iH2, i17, i18);
            int iH5 = i0Var.h(3);
            boolean zG = i0Var.g();
            i10 = f63498d[iH5] + (zG ? 1 : 0);
            i0Var.r(10);
            if (i0Var.g()) {
                i0Var.r(8);
            }
            if (iH5 == 0) {
                i0Var.r(5);
                if (i0Var.g()) {
                    i0Var.r(8);
                }
            }
            if (i22 == 1 && i0Var.g()) {
                i0Var.r(16);
            }
            if (i0Var.g()) {
                if (iH5 > 2) {
                    i0Var.r(2);
                }
                if ((iH5 & 1) == 0 || iH5 <= 2) {
                    i20 = 6;
                } else {
                    i20 = 6;
                    i0Var.r(6);
                }
                if ((iH5 & 4) != 0) {
                    i0Var.r(i20);
                }
                if (zG && i0Var.g()) {
                    i0Var.r(5);
                }
                if (i22 == 0) {
                    if (i0Var.g()) {
                        i21 = 6;
                        i0Var.r(6);
                    } else {
                        i21 = 6;
                    }
                    if (iH5 == 0 && i0Var.g()) {
                        i0Var.r(i21);
                    }
                    if (i0Var.g()) {
                        i0Var.r(i21);
                    }
                    int iH6 = i0Var.h(2);
                    if (iH6 == 1) {
                        i0Var.r(5);
                    } else if (iH6 == 2) {
                        i0Var.r(12);
                    } else if (iH6 == 3) {
                        int iH7 = i0Var.h(5);
                        if (i0Var.g()) {
                            i0Var.r(5);
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                if (i0Var.g()) {
                                    i0Var.r(4);
                                }
                                if (i0Var.g()) {
                                    i0Var.r(4);
                                }
                            }
                        }
                        if (i0Var.g()) {
                            i0Var.r(5);
                            if (i0Var.g()) {
                                i0Var.r(7);
                                if (i0Var.g()) {
                                    i0Var.r(8);
                                }
                            }
                        }
                        i0Var.r((iH7 + 2) * 8);
                        i0Var.c();
                    }
                    if (iH5 < 2) {
                        if (i0Var.g()) {
                            i0Var.r(14);
                        }
                        if (iH5 == 0 && i0Var.g()) {
                            i0Var.r(14);
                        }
                    }
                    if (i0Var.g()) {
                        if (i16 == 0) {
                            i0Var.r(5);
                        } else {
                            for (int i25 = 0; i25 < i18; i25++) {
                                if (i0Var.g()) {
                                    i0Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (i0Var.g()) {
                i0Var.r(5);
                if (iH5 == 2) {
                    i0Var.r(4);
                }
                if (iH5 >= 6) {
                    i0Var.r(2);
                }
                if (i0Var.g()) {
                    i0Var.r(8);
                }
                if (iH5 == 0 && i0Var.g()) {
                    i0Var.r(8);
                }
                if (iH3 < 3) {
                    i0Var.q();
                }
            }
            if (i22 == 0 && i16 != 3) {
                i0Var.q();
            }
            if (i22 == 2 && (i16 == 3 || i0Var.g())) {
                i19 = 6;
                i0Var.r(6);
            } else {
                i19 = 6;
            }
            str = (i0Var.g() && i0Var.h(i19) == 1 && i0Var.h(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
            i11 = i22;
            i12 = i24;
            i14 = iH2;
            i15 = i17;
            i13 = iA;
        } else {
            i0Var.r(32);
            int iH8 = i0Var.h(2);
            String str2 = iH8 == 3 ? null : MimeTypes.AUDIO_AC3;
            int iH9 = i0Var.h(6);
            int i26 = f63499e[iH9 / 2] * 1000;
            int iC = c(iH8, iH9);
            i0Var.r(8);
            int iH10 = i0Var.h(3);
            if ((iH10 & 1) != 0 && iH10 != 1) {
                i0Var.r(2);
            }
            if ((iH10 & 4) != 0) {
                i0Var.r(2);
            }
            if (iH10 == 2) {
                i0Var.r(2);
            }
            int[] iArr = f63496b;
            int i27 = iH8 < iArr.length ? iArr[iH8] : -1;
            i10 = f63498d[iH10] + (i0Var.g() ? 1 : 0);
            i11 = -1;
            str = str2;
            i12 = 1536;
            i13 = i26;
            i14 = iC;
            i15 = i27;
        }
        return new C0781b(str, i11, i10, i15, i14, i12, i13);
    }

    public static int g(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b10 = bArr[4];
        return c((b10 & 192) >> 6, b10 & Utf8.REPLACEMENT_BYTE);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0062  */
    public static androidx.media3.common.r h(androidx.media3.common.util.j0 j0Var, String str, String str2, DrmInitData drmInitData) {
        String str3;
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0();
        i0Var.m(j0Var);
        int iH = i0Var.h(13) * 1000;
        i0Var.r(3);
        int i10 = f63496b[i0Var.h(2)];
        i0Var.r(10);
        int i11 = f63498d[i0Var.h(3)];
        if (i0Var.h(1) != 0) {
            i11++;
        }
        i0Var.r(3);
        int iH2 = i0Var.h(4);
        i0Var.r(1);
        if (iH2 > 0) {
            i0Var.r(6);
            if (i0Var.h(1) != 0) {
                i11 += 2;
            }
            i0Var.r(1);
        }
        if (i0Var.b() > 7) {
            i0Var.r(7);
            if (i0Var.h(1) != 0) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
            } else {
                str3 = MimeTypes.AUDIO_E_AC3;
            }
        } else {
            str3 = MimeTypes.AUDIO_E_AC3;
        }
        i0Var.c();
        j0Var.W(i0Var.d());
        return new androidx.media3.common.r.b().f0(str).u0(str3).R(i11).v0(i10).Y(drmInitData).j0(str2).p0(iH).N();
    }

    public static int i(ByteBuffer byteBuffer, int i10) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i10) + ((byteBuffer.get((byteBuffer.position() + i10) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int j(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b10 = bArr[7];
            if ((b10 & 254) == 186) {
                return 40 << ((bArr[(b10 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }
}
