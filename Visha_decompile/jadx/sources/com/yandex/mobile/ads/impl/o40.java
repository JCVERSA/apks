package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.android.material.internal.ViewUtils;
import java.util.Arrays;

public final class o40 {
    private static final int[] a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] b = {-1, 8000, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, OpusUtil.SAMPLE_RATE, -1, -1};
    private static final int[] c = {64, 112, 128, 192, 224, 256, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 640, ViewUtils.EDGE_TO_EDGE_FLAGS, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    public static jc0 a(byte[] bArr, @Nullable String str, @Nullable String str2) {
        zf1 zf1Var;
        if (bArr[0] == 127) {
            zf1Var = new zf1(bArr.length, bArr);
        } else {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            byte b2 = bArrCopyOf[0];
            if (b2 == -2 || b2 == -1) {
                for (int i = 0; i < bArrCopyOf.length - 1; i += 2) {
                    byte b3 = bArrCopyOf[i];
                    int i2 = i + 1;
                    bArrCopyOf[i] = bArrCopyOf[i2];
                    bArrCopyOf[i2] = b3;
                }
            }
            zf1Var = new zf1(bArrCopyOf.length, bArrCopyOf);
            if (bArrCopyOf[0] == 31) {
                zf1 zf1Var2 = new zf1(bArrCopyOf.length, bArrCopyOf);
                while (zf1Var2.b() >= 16) {
                    zf1Var2.d(2);
                    zf1Var.a(zf1Var2.b(14));
                }
            }
            zf1Var.a(bArrCopyOf.length, bArrCopyOf);
        }
        zf1Var.d(60);
        int i3 = a[zf1Var.b(6)];
        int i4 = b[zf1Var.b(4)];
        int iB = zf1Var.b(5);
        int i5 = iB < 29 ? (c[iB] * 1000) / 2 : -1;
        zf1Var.d(10);
        return new jc0.a().b(str).e(MimeTypes.AUDIO_DTS).b(i5).c(i3 + (zf1Var.b(2) > 0 ? 1 : 0)).l(i4).a((f40) null).d(str2).a();
    }
}
