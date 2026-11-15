package com.google.android.exoplayer2.audio;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.nio.ByteBuffer;
import okio.Utf8;

public abstract class b {

    private static final int[] f23910a = {1, 2, 3, 6};

    private static final int[] f23911b = {48000, RecorderConstants.RECORD_SAMPLE_RATE_44100, 32000};

    private static final int[] f23912c = {24000, RecorderConstants.RECORD_SAMPLE_RATE_22050, 16000};

    private static final int[] f23913d = {2, 1, 2, 3, 3, 4, 4, 5};

    private static final int[] f23914e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 384, 448, 512, 576, 640};

    private static final int[] f23915f = {69, 87, 104, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, 139, 174, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, 243, 278, 348, TTAdConstant.DOWNLOAD_URL_AND_PACKAGE_NAME, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static final class C0341b {

        public final String f23916a;

        public final int f23917b;

        public final int f23918c;

        public final int f23919d;

        public final int f23920e;

        public final int f23921f;

        private C0341b(String str, int i10, int i11, int i12, int i13, int i14) {
            this.f23916a = str;
            this.f23917b = i10;
            this.f23919d = i11;
            this.f23918c = i12;
            this.f23920e = i13;
            this.f23921f = i14;
        }
    }

    public static int a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i10 = iPosition; i10 <= iLimit; i10++) {
            if ((p0.I(byteBuffer, i10 + 4) & (-2)) == -126718022) {
                return i10 - iPosition;
            }
        }
        return -1;
    }

    private static int b(int i10, int i11) {
        int i12 = i11 / 2;
        if (i10 < 0) {
            return -1;
        }
        int[] iArr = f23911b;
        if (i10 >= iArr.length || i11 < 0) {
            return -1;
        }
        int[] iArr2 = f23915f;
        if (i12 >= iArr2.length) {
            return -1;
        }
        int i13 = iArr[i10];
        if (i13 == 44100) {
            return (iArr2[i12] + (i11 % 2)) * 2;
        }
        int i14 = f23914e[i12];
        return i13 == 32000 ? i14 * 6 : i14 * 4;
    }

    public static p1 c(com.google.android.exoplayer2.util.d0 d0Var, String str, String str2, DrmInitData drmInitData) {
        int i10 = f23911b[(d0Var.D() & PsExtractor.AUDIO_STREAM) >> 6];
        int iD = d0Var.D();
        int i11 = f23913d[(iD & 56) >> 3];
        if ((iD & 4) != 0) {
            i11++;
        }
        return new p1.b().S(str).e0(MimeTypes.AUDIO_AC3).H(i11).f0(i10).M(drmInitData).V(str2).E();
    }

    public static int d(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f23910a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static C0341b e(com.google.android.exoplayer2.util.c0 c0Var) {
        int iB;
        int i10;
        int i11;
        int i12;
        int i13;
        String str;
        int iH;
        int i14;
        int i15;
        int i16;
        int i17;
        int iE = c0Var.e();
        c0Var.r(40);
        boolean z10 = c0Var.h(5) > 10;
        c0Var.p(iE);
        int i18 = -1;
        if (z10) {
            c0Var.r(16);
            int iH2 = c0Var.h(2);
            if (iH2 == 0) {
                i18 = 0;
            } else if (iH2 == 1) {
                i18 = 1;
            } else if (iH2 == 2) {
                i18 = 2;
            }
            c0Var.r(3);
            iB = (c0Var.h(11) + 1) * 2;
            int iH3 = c0Var.h(2);
            if (iH3 == 3) {
                i10 = f23912c[c0Var.h(2)];
                i14 = 6;
                iH = 3;
            } else {
                iH = c0Var.h(2);
                i14 = f23910a[iH];
                i10 = f23911b[iH3];
            }
            i12 = i14 * 256;
            int iH4 = c0Var.h(3);
            boolean zG = c0Var.g();
            i11 = f23913d[iH4] + (zG ? 1 : 0);
            c0Var.r(10);
            if (c0Var.g()) {
                c0Var.r(8);
            }
            if (iH4 == 0) {
                c0Var.r(5);
                if (c0Var.g()) {
                    c0Var.r(8);
                }
            }
            if (i18 == 1 && c0Var.g()) {
                c0Var.r(16);
            }
            if (c0Var.g()) {
                if (iH4 > 2) {
                    c0Var.r(2);
                }
                if ((iH4 & 1) == 0 || iH4 <= 2) {
                    i16 = 6;
                } else {
                    i16 = 6;
                    c0Var.r(6);
                }
                if ((iH4 & 4) != 0) {
                    c0Var.r(i16);
                }
                if (zG && c0Var.g()) {
                    c0Var.r(5);
                }
                if (i18 == 0) {
                    if (c0Var.g()) {
                        i17 = 6;
                        c0Var.r(6);
                    } else {
                        i17 = 6;
                    }
                    if (iH4 == 0 && c0Var.g()) {
                        c0Var.r(i17);
                    }
                    if (c0Var.g()) {
                        c0Var.r(i17);
                    }
                    int iH5 = c0Var.h(2);
                    if (iH5 == 1) {
                        c0Var.r(5);
                    } else if (iH5 == 2) {
                        c0Var.r(12);
                    } else if (iH5 == 3) {
                        int iH6 = c0Var.h(5);
                        if (c0Var.g()) {
                            c0Var.r(5);
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                if (c0Var.g()) {
                                    c0Var.r(4);
                                }
                                if (c0Var.g()) {
                                    c0Var.r(4);
                                }
                            }
                        }
                        if (c0Var.g()) {
                            c0Var.r(5);
                            if (c0Var.g()) {
                                c0Var.r(7);
                                if (c0Var.g()) {
                                    c0Var.r(8);
                                }
                            }
                        }
                        c0Var.r((iH6 + 2) * 8);
                        c0Var.c();
                    }
                    if (iH4 < 2) {
                        if (c0Var.g()) {
                            c0Var.r(14);
                        }
                        if (iH4 == 0 && c0Var.g()) {
                            c0Var.r(14);
                        }
                    }
                    if (c0Var.g()) {
                        if (iH == 0) {
                            c0Var.r(5);
                        } else {
                            for (int i19 = 0; i19 < i14; i19++) {
                                if (c0Var.g()) {
                                    c0Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (c0Var.g()) {
                c0Var.r(5);
                if (iH4 == 2) {
                    c0Var.r(4);
                }
                if (iH4 >= 6) {
                    c0Var.r(2);
                }
                if (c0Var.g()) {
                    c0Var.r(8);
                }
                if (iH4 == 0 && c0Var.g()) {
                    c0Var.r(8);
                }
                if (iH3 < 3) {
                    c0Var.q();
                }
            }
            if (i18 == 0 && iH != 3) {
                c0Var.q();
            }
            if (i18 == 2 && (iH == 3 || c0Var.g())) {
                i15 = 6;
                c0Var.r(6);
            } else {
                i15 = 6;
            }
            str = (c0Var.g() && c0Var.h(i15) == 1 && c0Var.h(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
            i13 = i18;
        } else {
            c0Var.r(32);
            int iH7 = c0Var.h(2);
            String str2 = iH7 == 3 ? null : MimeTypes.AUDIO_AC3;
            iB = b(iH7, c0Var.h(6));
            c0Var.r(8);
            int iH8 = c0Var.h(3);
            if ((iH8 & 1) != 0 && iH8 != 1) {
                c0Var.r(2);
            }
            if ((iH8 & 4) != 0) {
                c0Var.r(2);
            }
            if (iH8 == 2) {
                c0Var.r(2);
            }
            int[] iArr = f23911b;
            i10 = iH7 < iArr.length ? iArr[iH7] : -1;
            i11 = f23913d[iH8] + (c0Var.g() ? 1 : 0);
            i12 = 1536;
            i13 = -1;
            str = str2;
        }
        return new C0341b(str, i13, i11, i10, iB, i12);
    }

    public static int f(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b10 = bArr[4];
        return b((b10 & 192) >> 6, b10 & Utf8.REPLACEMENT_BYTE);
    }

    public static p1 g(com.google.android.exoplayer2.util.d0 d0Var, String str, String str2, DrmInitData drmInitData) {
        d0Var.Q(2);
        int i10 = f23911b[(d0Var.D() & PsExtractor.AUDIO_STREAM) >> 6];
        int iD = d0Var.D();
        int i11 = f23913d[(iD & 14) >> 1];
        if ((iD & 1) != 0) {
            i11++;
        }
        if (((d0Var.D() & 30) >> 1) > 0 && (2 & d0Var.D()) != 0) {
            i11 += 2;
        }
        return new p1.b().S(str).e0((d0Var.a() <= 0 || (d0Var.D() & 1) == 0) ? MimeTypes.AUDIO_E_AC3 : MimeTypes.AUDIO_E_AC3_JOC).H(i11).f0(i10).M(drmInitData).V(str2).E();
    }

    public static int h(ByteBuffer byteBuffer, int i10) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i10) + ((byteBuffer.get((byteBuffer.position() + i10) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int i(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b10 = bArr[7];
            if ((b10 & 254) == 186) {
                return 40 << ((bArr[(b10 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }
}
