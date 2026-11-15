package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.android.gms.internal.ads.zzs;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.nio.ByteBuffer;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public abstract class w7e {
    public static final int[] a = {1, 2, 3, 6};
    public static final int[] b = {OpusUtil.SAMPLE_RATE, 44100, 32000};
    public static final int[] c = {24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND};
    public static final int[] d = {2, 1, 2, 3, 3, 4, 4, 5};
    public static final int[] e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 576, 640};
    public static final int[] f = {69, 87, 104, 121, 139, ByteCode.FRETURN, IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int a(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static int b(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) <= 10) {
            byte b2 = bArr[4];
            return f((b2 & 192) >> 6, b2 & Utf8.REPLACEMENT_BYTE);
        }
        int i = bArr[2] & 7;
        int i2 = ((bArr[3] & 255) | (i << 8)) + 1;
        return i2 + i2;
    }

    public static erj c(u4h u4hVar, String str, String str2, zzs zzsVar) {
        p3h p3hVar = new p3h();
        p3hVar.j(u4hVar);
        int i = b[p3hVar.d(2)];
        p3hVar.n(8);
        int i2 = d[p3hVar.d(3)];
        if (p3hVar.d(1) != 0) {
            i2++;
        }
        int i3 = e[p3hVar.d(5)] * 1000;
        p3hVar.f();
        u4hVar.l(p3hVar.b());
        gpj gpjVar = new gpj();
        gpjVar.o(str);
        gpjVar.E("audio/ac3");
        gpjVar.b(i2);
        gpjVar.F(i);
        gpjVar.h(zzsVar);
        gpjVar.s(str2);
        gpjVar.a(i3);
        gpjVar.y(i3);
        return gpjVar.K();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0062  */
    public static erj d(u4h u4hVar, String str, String str2, zzs zzsVar) {
        String str3;
        p3h p3hVar = new p3h();
        p3hVar.j(u4hVar);
        int iD = p3hVar.d(13) * 1000;
        p3hVar.n(3);
        int i = b[p3hVar.d(2)];
        p3hVar.n(10);
        int i2 = d[p3hVar.d(3)];
        if (p3hVar.d(1) != 0) {
            i2++;
        }
        p3hVar.n(3);
        int iD2 = p3hVar.d(4);
        p3hVar.n(1);
        if (iD2 > 0) {
            p3hVar.n(6);
            if (p3hVar.d(1) != 0) {
                i2 += 2;
            }
            p3hVar.n(1);
        }
        if (p3hVar.a() > 7) {
            p3hVar.n(7);
            if (p3hVar.d(1) != 0) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
            } else {
                str3 = "audio/eac3";
            }
        } else {
            str3 = "audio/eac3";
        }
        p3hVar.f();
        u4hVar.l(p3hVar.b());
        gpj gpjVar = new gpj();
        gpjVar.o(str);
        gpjVar.E(str3);
        gpjVar.b(i2);
        gpjVar.F(i);
        gpjVar.h(zzsVar);
        gpjVar.s(str2);
        gpjVar.y(iD);
        return gpjVar.K();
    }

    public static q7e e(p3h p3hVar) {
        int i;
        int i2;
        String str;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int iC = p3hVar.c();
        p3hVar.n(40);
        int iD = p3hVar.d(5);
        p3hVar.l(iC);
        int i12 = -1;
        if (iD > 10) {
            p3hVar.n(16);
            int iD2 = p3hVar.d(2);
            if (iD2 == 0) {
                i12 = 0;
            } else if (iD2 == 1) {
                i12 = 1;
            } else if (iD2 == 2) {
                i12 = 2;
            }
            p3hVar.n(3);
            int iD3 = p3hVar.d(11) + 1;
            int iD4 = p3hVar.d(2);
            if (iD4 == 3) {
                i8 = c[p3hVar.d(2)];
                i9 = 6;
                i7 = 3;
            } else {
                int iD5 = p3hVar.d(2);
                int i13 = a[iD5];
                i7 = iD5;
                i8 = b[iD4];
                i9 = i13;
            }
            int i14 = iD3 + iD3;
            int i15 = (i14 * i8) / (i9 * 32);
            int iD6 = p3hVar.d(3);
            boolean zP = p3hVar.p();
            i = d[iD6] + (zP ? 1 : 0);
            p3hVar.n(10);
            if (p3hVar.p()) {
                p3hVar.n(8);
            }
            if (iD6 == 0) {
                p3hVar.n(5);
                if (p3hVar.p()) {
                    p3hVar.n(8);
                }
                i10 = 0;
                iD6 = 0;
            } else {
                i10 = iD6;
            }
            if (i12 == 1) {
                if (p3hVar.p()) {
                    p3hVar.n(16);
                }
                i11 = 1;
            } else {
                i11 = i12;
            }
            if (p3hVar.p()) {
                if (i10 > 2) {
                    p3hVar.n(2);
                }
                if ((i10 & 1) != 0 && i10 > 2) {
                    p3hVar.n(6);
                }
                if ((i10 & 4) != 0) {
                    p3hVar.n(6);
                }
                if (zP && p3hVar.p()) {
                    p3hVar.n(5);
                }
                if (i11 == 0) {
                    if (p3hVar.p()) {
                        p3hVar.n(6);
                    }
                    if (i10 == 0 && p3hVar.p()) {
                        p3hVar.n(6);
                    }
                    if (p3hVar.p()) {
                        p3hVar.n(6);
                    }
                    int iD7 = p3hVar.d(2);
                    if (iD7 == 1) {
                        p3hVar.n(5);
                    } else if (iD7 == 2) {
                        p3hVar.n(12);
                    } else if (iD7 == 3) {
                        int iD8 = p3hVar.d(5);
                        if (p3hVar.p()) {
                            p3hVar.n(5);
                            if (p3hVar.p()) {
                                p3hVar.n(4);
                            }
                            if (p3hVar.p()) {
                                p3hVar.n(4);
                            }
                            if (p3hVar.p()) {
                                p3hVar.n(4);
                            }
                            if (p3hVar.p()) {
                                p3hVar.n(4);
                            }
                            if (p3hVar.p()) {
                                p3hVar.n(4);
                            }
                            if (p3hVar.p()) {
                                p3hVar.n(4);
                            }
                            if (p3hVar.p()) {
                                p3hVar.n(4);
                            }
                            if (p3hVar.p()) {
                                if (p3hVar.p()) {
                                    p3hVar.n(4);
                                }
                                if (p3hVar.p()) {
                                    p3hVar.n(4);
                                }
                            }
                        }
                        if (p3hVar.p()) {
                            p3hVar.n(5);
                            if (p3hVar.p()) {
                                p3hVar.n(7);
                                if (p3hVar.p()) {
                                    p3hVar.n(8);
                                }
                            }
                        }
                        p3hVar.n((iD8 + 2) * 8);
                        p3hVar.f();
                    }
                    if (i10 < 2) {
                        if (p3hVar.p()) {
                            p3hVar.n(14);
                        }
                        if (iD6 == 0 && p3hVar.p()) {
                            p3hVar.n(14);
                        }
                    }
                    if (!p3hVar.p()) {
                        i11 = 0;
                    } else if (i7 == 0) {
                        p3hVar.n(5);
                        i11 = 0;
                        i7 = 0;
                    } else {
                        for (int i16 = 0; i16 < i9; i16++) {
                            if (p3hVar.p()) {
                                p3hVar.n(5);
                            }
                        }
                        i11 = 0;
                    }
                }
            }
            if (p3hVar.p()) {
                p3hVar.n(5);
                if (i10 == 2) {
                    p3hVar.n(4);
                    i10 = 2;
                }
                if (i10 >= 6) {
                    p3hVar.n(2);
                }
                if (p3hVar.p()) {
                    p3hVar.n(8);
                }
                if (i10 == 0 && p3hVar.p()) {
                    p3hVar.n(8);
                }
                if (iD4 < 3) {
                    p3hVar.m();
                }
            }
            if (i11 == 0 && i7 != 3) {
                p3hVar.m();
            }
            if (i11 == 2 && (i7 == 3 || p3hVar.p())) {
                p3hVar.n(6);
            }
            str = (p3hVar.p() && p3hVar.d(6) == 1 && p3hVar.d(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : "audio/eac3";
            i2 = i12;
            i4 = i14;
            i5 = i8;
            i6 = i9 * 256;
            i3 = i15;
        } else {
            p3hVar.n(32);
            int iD9 = p3hVar.d(2);
            String str2 = iD9 == 3 ? null : "audio/ac3";
            int iD10 = p3hVar.d(6);
            int i17 = e[iD10 / 2] * 1000;
            int iF = f(iD9, iD10);
            p3hVar.n(8);
            int iD11 = p3hVar.d(3);
            if ((iD11 & 1) != 0 && iD11 != 1) {
                p3hVar.n(2);
            }
            if ((iD11 & 4) != 0) {
                p3hVar.n(2);
            }
            if (iD11 == 2) {
                p3hVar.n(2);
            }
            int i18 = iD9 < 3 ? b[iD9] : -1;
            i = d[iD11] + (p3hVar.p() ? 1 : 0);
            i2 = -1;
            str = str2;
            i3 = i17;
            i4 = iF;
            i5 = i18;
            i6 = 1536;
        }
        return new q7e(str, i2, i, i5, i4, i6, i3, null);
    }

    public static int f(int i, int i2) {
        int i3;
        if (i < 0 || i >= 3 || i2 < 0 || (i3 = i2 >> 1) >= 19) {
            return -1;
        }
        int i4 = b[i];
        if (i4 == 44100) {
            int i5 = f[i3] + (i2 & 1);
            return i5 + i5;
        }
        int i6 = e[i3];
        return i4 == 32000 ? i6 * 6 : i6 * 4;
    }
}
