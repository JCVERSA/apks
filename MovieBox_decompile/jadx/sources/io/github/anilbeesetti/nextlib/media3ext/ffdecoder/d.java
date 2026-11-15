package io.github.anilbeesetti.nextlib.media3ext.ffdecoder;

import android.os.Handler;
import android.view.Surface;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.q0;
import androidx.media3.common.y;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.decoder.g;
import androidx.media3.exoplayer.video.i0;
import androidx.media3.exoplayer.x3;

public final class d extends androidx.media3.exoplayer.video.b {

    private static final int f62296b0 = ((a1.k(1280, 64) * a1.k(720, 64)) * 6144) / 2;
    private final int X;
    private final int Y;
    private final int Z;

    private FfmpegVideoDecoder f62297a0;

    public d(long j10, Handler handler, i0 i0Var, int i10) {
        this(j10, handler, i0Var, i10, Runtime.getRuntime().availableProcessors(), 4, 4);
    }

    @Override
    protected g R(r rVar, androidx.media3.decoder.b bVar) {
        q0.a("createFfmpegVideoDecoder");
        int i10 = rVar.f9850p;
        if (i10 == -1) {
            i10 = f62296b0;
        }
        FfmpegVideoDecoder ffmpegVideoDecoder = new FfmpegVideoDecoder(this.X, this.Y, i10, this.Z, rVar);
        this.f62297a0 = ffmpegVideoDecoder;
        q0.b();
        return ffmpegVideoDecoder;
    }

    @Override
    public final int a(r rVar) {
        String str = (String) androidx.media3.common.util.a.e(rVar.f9849o);
        if (!FfmpegLibrary.d() || !y.t(str)) {
            return 0;
        }
        if (FfmpegLibrary.e(rVar.f9849o)) {
            return rVar.f9853s != null ? x3.a(2) : x3.b(4, 16, 0);
        }
        return x3.a(1);
    }

    @Override
    public String getName() {
        return "FfmpegVideoRenderer";
    }

    @Override
    protected void q0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws FfmpegDecoderException {
        FfmpegVideoDecoder ffmpegVideoDecoder = this.f62297a0;
        if (ffmpegVideoDecoder == null) {
            throw new FfmpegDecoderException("Failed to render output buffer to surface: decoder is not initialized.");
        }
        ffmpegVideoDecoder.z(videoDecoderOutputBuffer, surface);
        videoDecoderOutputBuffer.release();
    }

    @Override
    protected void s0(int i10) {
        FfmpegVideoDecoder ffmpegVideoDecoder = this.f62297a0;
        if (ffmpegVideoDecoder != null) {
            ffmpegVideoDecoder.A(i10);
        }
    }

    public d(long j10, Handler handler, i0 i0Var, int i10, int i11, int i12, int i13) {
        super(j10, handler, i0Var, i10);
        this.Z = i11;
        this.X = i12;
        this.Y = i13;
    }
}
