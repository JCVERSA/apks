package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.nio.ByteBuffer;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class t {
    private static final int[] a = {1, 2, 3, 6};
    private static final int[] b = {OpusUtil.SAMPLE_RATE, 44100, 32000};
    private static final int[] c = {24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND};
    private static final int[] d = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 576, 640};
    private static final int[] f = {69, 87, 104, 121, 139, ByteCode.FRETURN, IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static final class a {

        @Nullable
        public final String a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;

        private a(@Nullable String str, int i, int i2, int i3, int i4) {
            this.a = str;
            this.c = i;
            this.b = i2;
            this.d = i3;
            this.e = i4;
        }
    }

    private static int a(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = b;
        if (i >= 3 || i2 < 0) {
            return -1;
        }
        int[] iArr2 = f;
        if (i3 >= 19) {
            return -1;
        }
        int i4 = iArr[i];
        if (i4 == 44100) {
            return ((i2 % 2) + iArr2[i3]) * 2;
        }
        int i5 = e[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    public static jc0 b(ag1 ag1Var, String str, String str2, @Nullable f40 f40Var) {
        ag1Var.f(2);
        int i = b[(ag1Var.t() & 192) >> 6];
        int iT = ag1Var.t();
        int i2 = d[(iT & 14) >> 1];
        if ((iT & 1) != 0) {
            i2++;
        }
        if (((ag1Var.t() & 30) >> 1) > 0 && (2 & ag1Var.t()) != 0) {
            i2 += 2;
        }
        return new jc0.a().b(str).e((ag1Var.a() <= 0 || (ag1Var.t() & 1) == 0) ? "audio/eac3" : MimeTypes.AUDIO_E_AC3_JOC).c(i2).l(i).a(f40Var).d(str2).a();
    }

    public static jc0 a(ag1 ag1Var, String str, String str2, @Nullable f40 f40Var) {
        int i = b[(ag1Var.t() & 192) >> 6];
        int iT = ag1Var.t();
        int i2 = d[(iT & 56) >> 3];
        if ((iT & 4) != 0) {
            i2++;
        }
        return new jc0.a().b(str).e("audio/ac3").c(i2).l(i).a(f40Var).d(str2).a();
    }

    public static int a(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static a a(zf1 zf1Var) {
        int iA;
        int i;
        int i2;
        int i3;
        String str;
        int iB;
        int i4;
        int i5;
        String str2;
        int i6;
        int i7;
        int iE = zf1Var.e();
        zf1Var.d(40);
        boolean z = zf1Var.b(5) > 10;
        zf1Var.c(iE);
        int i8 = -1;
        if (z) {
            zf1Var.d(16);
            int iB2 = zf1Var.b(2);
            if (iB2 == 0) {
                i8 = 0;
            } else if (iB2 == 1) {
                i8 = 1;
            } else if (iB2 == 2) {
                i8 = 2;
            }
            zf1Var.d(3);
            iA = (zf1Var.b(11) + 1) * 2;
            int iB3 = zf1Var.b(2);
            if (iB3 == 3) {
                i3 = c[zf1Var.b(2)];
                i4 = 6;
                iB = 3;
            } else {
                iB = zf1Var.b(2);
                i4 = a[iB];
                i3 = b[iB3];
            }
            i2 = i4 * 256;
            int iB4 = zf1Var.b(3);
            boolean zF = zf1Var.f();
            i = d[iB4] + (zF ? 1 : 0);
            zf1Var.d(10);
            if (zf1Var.f()) {
                zf1Var.d(8);
            }
            if (iB4 == 0) {
                zf1Var.d(5);
                if (zf1Var.f()) {
                    zf1Var.d(8);
                }
            }
            if (i8 == 1 && zf1Var.f()) {
                zf1Var.d(16);
            }
            if (zf1Var.f()) {
                if (iB4 > 2) {
                    zf1Var.d(2);
                }
                if ((iB4 & 1) == 0 || iB4 <= 2) {
                    i6 = 6;
                } else {
                    i6 = 6;
                    zf1Var.d(6);
                }
                if ((iB4 & 4) != 0) {
                    zf1Var.d(i6);
                }
                if (zF && zf1Var.f()) {
                    zf1Var.d(5);
                }
                if (i8 == 0) {
                    if (zf1Var.f()) {
                        i7 = 6;
                        zf1Var.d(6);
                    } else {
                        i7 = 6;
                    }
                    if (iB4 == 0 && zf1Var.f()) {
                        zf1Var.d(i7);
                    }
                    if (zf1Var.f()) {
                        zf1Var.d(i7);
                    }
                    int iB5 = zf1Var.b(2);
                    if (iB5 == 1) {
                        zf1Var.d(5);
                    } else if (iB5 == 2) {
                        zf1Var.d(12);
                    } else if (iB5 == 3) {
                        int iB6 = zf1Var.b(5);
                        if (zf1Var.f()) {
                            zf1Var.d(5);
                            if (zf1Var.f()) {
                                zf1Var.d(4);
                            }
                            if (zf1Var.f()) {
                                zf1Var.d(4);
                            }
                            if (zf1Var.f()) {
                                zf1Var.d(4);
                            }
                            if (zf1Var.f()) {
                                zf1Var.d(4);
                            }
                            if (zf1Var.f()) {
                                zf1Var.d(4);
                            }
                            if (zf1Var.f()) {
                                zf1Var.d(4);
                            }
                            if (zf1Var.f()) {
                                zf1Var.d(4);
                            }
                            if (zf1Var.f()) {
                                if (zf1Var.f()) {
                                    zf1Var.d(4);
                                }
                                if (zf1Var.f()) {
                                    zf1Var.d(4);
                                }
                            }
                        }
                        if (zf1Var.f()) {
                            zf1Var.d(5);
                            if (zf1Var.f()) {
                                zf1Var.d(7);
                                if (zf1Var.f()) {
                                    zf1Var.d(8);
                                }
                            }
                        }
                        zf1Var.d((iB6 + 2) * 8);
                        zf1Var.c();
                    }
                    if (iB4 < 2) {
                        if (zf1Var.f()) {
                            zf1Var.d(14);
                        }
                        if (iB4 == 0 && zf1Var.f()) {
                            zf1Var.d(14);
                        }
                    }
                    if (zf1Var.f()) {
                        if (iB == 0) {
                            zf1Var.d(5);
                        } else {
                            for (int i9 = 0; i9 < i4; i9++) {
                                if (zf1Var.f()) {
                                    zf1Var.d(5);
                                }
                            }
                        }
                    }
                }
            }
            if (zf1Var.f()) {
                zf1Var.d(5);
                if (iB4 == 2) {
                    zf1Var.d(4);
                }
                if (iB4 >= 6) {
                    zf1Var.d(2);
                }
                if (zf1Var.f()) {
                    zf1Var.d(8);
                }
                if (iB4 == 0 && zf1Var.f()) {
                    zf1Var.d(8);
                }
                if (iB3 < 3) {
                    zf1Var.h();
                }
            }
            if (i8 == 0 && iB != 3) {
                zf1Var.h();
            }
            if (i8 == 2 && (iB == 3 || zf1Var.f())) {
                i5 = 6;
                zf1Var.d(6);
            } else {
                i5 = 6;
            }
            if (zf1Var.f() && zf1Var.b(i5) == 1 && zf1Var.b(8) == 1) {
                str2 = MimeTypes.AUDIO_E_AC3_JOC;
            } else {
                str2 = "audio/eac3";
            }
            str = str2;
        } else {
            zf1Var.d(32);
            int iB7 = zf1Var.b(2);
            String str3 = iB7 == 3 ? null : "audio/ac3";
            iA = a(iB7, zf1Var.b(6));
            zf1Var.d(8);
            int iB8 = zf1Var.b(3);
            if ((iB8 & 1) != 0 && iB8 != 1) {
                zf1Var.d(2);
            }
            if ((iB8 & 4) != 0) {
                zf1Var.d(2);
            }
            if (iB8 == 2) {
                zf1Var.d(2);
            }
            i8 = iB7 < 3 ? b[iB7] : -1;
            i = d[iB8] + (zf1Var.f() ? 1 : 0);
            i2 = 1536;
            i3 = i8;
            str = str3;
        }
        return new a(str, i, i3, iA, i2);
    }

    public static int a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b2 = bArr[4];
        return a((b2 & 192) >> 6, b2 & Utf8.REPLACEMENT_BYTE);
    }
}
