package defpackage;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Trace;
import java.io.IOException;

public final class jkj implements pkj {
    public final Context a;

    public jkj(Context context, k3i k3iVar, k3i k3iVar2) {
        this.a = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final rkj a(okj okjVar) throws Throwable {
        Context context;
        int i = kfh.a;
        if (i >= 31 || ((context = this.a) != null && i >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen"))) {
            int iB = bue.b(okjVar.c.o);
            zrg.e("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type ".concat(kfh.d(iB)));
            return new akj(iB).d(okjVar);
        }
        MediaCodec mediaCodec = null;
        Object[] objArr = 0;
        try {
            String str = okjVar.a.a;
            Trace.beginSection("createCodec:".concat(str));
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            Trace.endSection();
            try {
                Trace.beginSection("configureCodec");
                mediaCodecCreateByCodecName.configure(okjVar.b, okjVar.d, (MediaCrypto) null, 0);
                Trace.endSection();
                Trace.beginSection("startCodec");
                mediaCodecCreateByCodecName.start();
                Trace.endSection();
                return new slj(mediaCodecCreateByCodecName, okjVar.f, objArr == true ? 1 : 0);
            } catch (IOException | RuntimeException e) {
                e = e;
                mediaCodec = mediaCodecCreateByCodecName;
                if (mediaCodec != null) {
                    mediaCodec.release();
                }
                throw e;
            }
        } catch (IOException | RuntimeException e2) {
            e = e2;
        }
    }
}
