package defpackage;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
import java.util.List;

public abstract class wf6 {
    public static void a(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void b(MediaFormat mediaFormat, v81 v81Var) {
        if (v81Var != null) {
            d(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_TRANSFER, v81Var.d);
            d(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_STANDARD, v81Var.b);
            d(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_RANGE, v81Var.c);
            a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_HDR_STATIC_INFO, v81Var.e);
        }
    }

    public static void c(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    public static void d(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void e(MediaFormat mediaFormat, List list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer("csd-" + i, ByteBuffer.wrap((byte[]) list.get(i)));
        }
    }
}
