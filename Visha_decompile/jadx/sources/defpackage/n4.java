package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.k;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.nio.ByteBuffer;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public abstract class n4 {
    public static final int[] a = {1, 2, 3, 6};
    public static final int[] b = {OpusUtil.SAMPLE_RATE, 44100, 32000};
    public static final int[] c = {24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND};
    public static final int[] d = {2, 1, 2, 3, 3, 4, 4, 5};
    public static final int[] e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 576, 640};
    public static final int[] f = {69, 87, 104, 121, 139, ByteCode.FRETURN, IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static final class b {
        public final String a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;

        public b(String str, int i, int i2, int i3, int i4, int i5) {
            this.a = str;
            this.b = i;
            this.d = i2;
            this.c = i3;
            this.e = i4;
            this.f = i5;
        }
    }

    public static int a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i = iPosition; i <= iLimit; i++) {
            if ((blb.F(byteBuffer, i + 4) & (-2)) == -126718022) {
                return i - iPosition;
            }
        }
        return -1;
    }

    public static int b(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = b;
        if (i >= iArr.length || i2 < 0) {
            return -1;
        }
        int[] iArr2 = f;
        if (i3 >= iArr2.length) {
            return -1;
        }
        int i4 = iArr[i];
        if (i4 == 44100) {
            return (iArr2[i3] + (i2 % 2)) * 2;
        }
        int i5 = e[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    public static k c(qw7 qw7Var, String str, String str2, DrmInitData drmInitData) {
        int i = b[(qw7Var.C() & 192) >> 6];
        int iC = qw7Var.C();
        int i2 = d[(iC & 56) >> 3];
        if ((iC & 4) != 0) {
            i2++;
        }
        return new k.b().S(str).e0("audio/ac3").H(i2).f0(i).M(drmInitData).V(str2).E();
    }

    public static int d(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static b e(pw7 pw7Var) {
        int iB;
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        int iH;
        int i5;
        int i6;
        int i7;
        int i8;
        int iE = pw7Var.e();
        pw7Var.r(40);
        boolean z = pw7Var.h(5) > 10;
        pw7Var.p(iE);
        int i9 = -1;
        if (z) {
            pw7Var.r(16);
            int iH2 = pw7Var.h(2);
            if (iH2 == 0) {
                i9 = 0;
            } else if (iH2 == 1) {
                i9 = 1;
            } else if (iH2 == 2) {
                i9 = 2;
            }
            pw7Var.r(3);
            iB = (pw7Var.h(11) + 1) * 2;
            int iH3 = pw7Var.h(2);
            if (iH3 == 3) {
                i = c[pw7Var.h(2)];
                i5 = 6;
                iH = 3;
            } else {
                iH = pw7Var.h(2);
                i5 = a[iH];
                i = b[iH3];
            }
            i3 = i5 * 256;
            int iH4 = pw7Var.h(3);
            boolean zG = pw7Var.g();
            i2 = d[iH4] + (zG ? 1 : 0);
            pw7Var.r(10);
            if (pw7Var.g()) {
                pw7Var.r(8);
            }
            if (iH4 == 0) {
                pw7Var.r(5);
                if (pw7Var.g()) {
                    pw7Var.r(8);
                }
            }
            if (i9 == 1 && pw7Var.g()) {
                pw7Var.r(16);
            }
            if (pw7Var.g()) {
                if (iH4 > 2) {
                    pw7Var.r(2);
                }
                if ((iH4 & 1) == 0 || iH4 <= 2) {
                    i7 = 6;
                } else {
                    i7 = 6;
                    pw7Var.r(6);
                }
                if ((iH4 & 4) != 0) {
                    pw7Var.r(i7);
                }
                if (zG && pw7Var.g()) {
                    pw7Var.r(5);
                }
                if (i9 == 0) {
                    if (pw7Var.g()) {
                        i8 = 6;
                        pw7Var.r(6);
                    } else {
                        i8 = 6;
                    }
                    if (iH4 == 0 && pw7Var.g()) {
                        pw7Var.r(i8);
                    }
                    if (pw7Var.g()) {
                        pw7Var.r(i8);
                    }
                    int iH5 = pw7Var.h(2);
                    if (iH5 == 1) {
                        pw7Var.r(5);
                    } else if (iH5 == 2) {
                        pw7Var.r(12);
                    } else if (iH5 == 3) {
                        int iH6 = pw7Var.h(5);
                        if (pw7Var.g()) {
                            pw7Var.r(5);
                            if (pw7Var.g()) {
                                pw7Var.r(4);
                            }
                            if (pw7Var.g()) {
                                pw7Var.r(4);
                            }
                            if (pw7Var.g()) {
                                pw7Var.r(4);
                            }
                            if (pw7Var.g()) {
                                pw7Var.r(4);
                            }
                            if (pw7Var.g()) {
                                pw7Var.r(4);
                            }
                            if (pw7Var.g()) {
                                pw7Var.r(4);
                            }
                            if (pw7Var.g()) {
                                pw7Var.r(4);
                            }
                            if (pw7Var.g()) {
                                if (pw7Var.g()) {
                                    pw7Var.r(4);
                                }
                                if (pw7Var.g()) {
                                    pw7Var.r(4);
                                }
                            }
                        }
                        if (pw7Var.g()) {
                            pw7Var.r(5);
                            if (pw7Var.g()) {
                                pw7Var.r(7);
                                if (pw7Var.g()) {
                                    pw7Var.r(8);
                                }
                            }
                        }
                        pw7Var.r((iH6 + 2) * 8);
                        pw7Var.c();
                    }
                    if (iH4 < 2) {
                        if (pw7Var.g()) {
                            pw7Var.r(14);
                        }
                        if (iH4 == 0 && pw7Var.g()) {
                            pw7Var.r(14);
                        }
                    }
                    if (pw7Var.g()) {
                        if (iH == 0) {
                            pw7Var.r(5);
                        } else {
                            for (int i10 = 0; i10 < i5; i10++) {
                                if (pw7Var.g()) {
                                    pw7Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (pw7Var.g()) {
                pw7Var.r(5);
                if (iH4 == 2) {
                    pw7Var.r(4);
                }
                if (iH4 >= 6) {
                    pw7Var.r(2);
                }
                if (pw7Var.g()) {
                    pw7Var.r(8);
                }
                if (iH4 == 0 && pw7Var.g()) {
                    pw7Var.r(8);
                }
                if (iH3 < 3) {
                    pw7Var.q();
                }
            }
            if (i9 == 0 && iH != 3) {
                pw7Var.q();
            }
            if (i9 == 2 && (iH == 3 || pw7Var.g())) {
                i6 = 6;
                pw7Var.r(6);
            } else {
                i6 = 6;
            }
            str = (pw7Var.g() && pw7Var.h(i6) == 1 && pw7Var.h(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : "audio/eac3";
            i4 = i9;
        } else {
            pw7Var.r(32);
            int iH7 = pw7Var.h(2);
            String str2 = iH7 == 3 ? null : "audio/ac3";
            iB = b(iH7, pw7Var.h(6));
            pw7Var.r(8);
            int iH8 = pw7Var.h(3);
            if ((iH8 & 1) != 0 && iH8 != 1) {
                pw7Var.r(2);
            }
            if ((iH8 & 4) != 0) {
                pw7Var.r(2);
            }
            if (iH8 == 2) {
                pw7Var.r(2);
            }
            int[] iArr = b;
            i = iH7 < iArr.length ? iArr[iH7] : -1;
            i2 = d[iH8] + (pw7Var.g() ? 1 : 0);
            i3 = 1536;
            i4 = -1;
            str = str2;
        }
        return new b(str, i4, i2, i, iB, i3);
    }

    public static int f(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b2 = bArr[4];
        return b((b2 & 192) >> 6, b2 & Utf8.REPLACEMENT_BYTE);
    }

    public static k g(qw7 qw7Var, String str, String str2, DrmInitData drmInitData) {
        qw7Var.P(2);
        int i = b[(qw7Var.C() & 192) >> 6];
        int iC = qw7Var.C();
        int i2 = d[(iC & 14) >> 1];
        if ((iC & 1) != 0) {
            i2++;
        }
        if (((qw7Var.C() & 30) >> 1) > 0 && (2 & qw7Var.C()) != 0) {
            i2 += 2;
        }
        return new k.b().S(str).e0((qw7Var.a() <= 0 || (qw7Var.C() & 1) == 0) ? "audio/eac3" : MimeTypes.AUDIO_E_AC3_JOC).H(i2).f0(i).M(drmInitData).V(str2).E();
    }

    public static int h(ByteBuffer byteBuffer, int i) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + ((byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int i(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b2 = bArr[7];
            if ((b2 & 254) == 186) {
                return 40 << ((bArr[(b2 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }
}
