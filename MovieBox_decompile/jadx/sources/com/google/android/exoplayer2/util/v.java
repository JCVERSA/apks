package com.google.android.exoplayer2.util;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
import java.util.List;

public abstract class v {
    public static void a(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void b(MediaFormat mediaFormat, com.google.android.exoplayer2.video.c cVar) {
        if (cVar != null) {
            d(mediaFormat, "color-transfer", cVar.f26959c);
            d(mediaFormat, "color-standard", cVar.f26957a);
            d(mediaFormat, "color-range", cVar.f26958b);
            a(mediaFormat, "hdr-static-info", cVar.f26960d);
        }
    }

    public static void c(MediaFormat mediaFormat, String str, float f10) {
        if (f10 != -1.0f) {
            mediaFormat.setFloat(str, f10);
        }
    }

    public static void d(MediaFormat mediaFormat, String str, int i10) {
        if (i10 != -1) {
            mediaFormat.setInteger(str, i10);
        }
    }

    public static void e(MediaFormat mediaFormat, List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            mediaFormat.setByteBuffer("csd-" + i10, ByteBuffer.wrap((byte[]) list.get(i10)));
        }
    }
}
