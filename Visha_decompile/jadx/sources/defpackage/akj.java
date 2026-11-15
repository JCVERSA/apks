package defpackage;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;

public final class akj implements pkj {
    public final k3i a;
    public final k3i b;

    public akj(int i) {
        yjj yjjVar = new yjj(i);
        zjj zjjVar = new zjj(i);
        this.a = yjjVar;
        this.b = zjjVar;
    }

    public static HandlerThread b(int i) {
        return new HandlerThread(ckj.m(i, "ExoPlayer:MediaCodecAsyncAdapter:"));
    }

    public static HandlerThread c(int i) {
        return new HandlerThread(ckj.m(i, "ExoPlayer:MediaCodecQueueingThread:"));
    }

    @Override
    public final rkj a(okj okjVar) {
        throw null;
    }

    public final ckj d(okj okjVar) throws Exception {
        MediaCodec mediaCodecCreateByCodecName;
        tkj tkjVar = okjVar.a;
        String str = tkjVar.a;
        ckj ckjVar = null;
        try {
            Trace.beginSection("createCodec:" + str);
            mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            try {
                ckj ckjVar2 = new ckj(mediaCodecCreateByCodecName, b(((yjj) this.a).b), new gkj(mediaCodecCreateByCodecName, c(((zjj) this.b).b)), okjVar.f, null);
                try {
                    Trace.endSection();
                    Surface surface = okjVar.d;
                    int i = 0;
                    if (surface == null && tkjVar.h && kfh.a >= 35) {
                        i = 8;
                    }
                    ckj.l(ckjVar2, okjVar.b, surface, null, i);
                    return ckjVar2;
                } catch (Exception e) {
                    e = e;
                    ckjVar = ckjVar2;
                    if (ckjVar != null) {
                        ckjVar.zzm();
                    } else if (mediaCodecCreateByCodecName != null) {
                        mediaCodecCreateByCodecName.release();
                    }
                    throw e;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            mediaCodecCreateByCodecName = null;
        }
    }
}
