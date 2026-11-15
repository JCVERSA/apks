package io.github.anilbeesetti.nextlib.media3ext.ffdecoder;

import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.decoder.h;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.List;

final class FfmpegVideoDecoder extends SimpleDecoder {

    private final String f62289o;

    private long f62290p;

    private final byte[] f62291q;

    private r f62292r;

    private volatile int f62293s;

    public FfmpegVideoDecoder(int i10, int i11, int i12, int i13, r rVar) throws FfmpegDecoderException {
        super(new DecoderInputBuffer[i10], new VideoDecoderOutputBuffer[i11]);
        if (!FfmpegLibrary.d()) {
            throw new FfmpegDecoderException("Failed to load decoder native library.");
        }
        String str = (String) androidx.media3.common.util.a.e(FfmpegLibrary.a(rVar.f9849o));
        this.f62289o = str;
        byte[] bArrX = x(rVar.f9849o, rVar.f9852r);
        this.f62291q = bArrX;
        this.f62292r = rVar;
        long jFfmpegInitialize = ffmpegInitialize(str, bArrX, i13);
        this.f62290p = jFfmpegInitialize;
        if (jFfmpegInitialize == 0) {
            throw new FfmpegDecoderException("Failed to initialize decoder.");
        }
        s(i12);
    }

    private native long ffmpegInitialize(String str, @Nullable byte[] bArr, int i10);

    private native int ffmpegReceiveFrame(long j10, int i10, VideoDecoderOutputBuffer videoDecoderOutputBuffer, boolean z10);

    private native void ffmpegRelease(long j10);

    private native int ffmpegRenderFrame(long j10, Surface surface, VideoDecoderOutputBuffer videoDecoderOutputBuffer, int i10, int i11);

    private native long ffmpegReset(long j10);

    private native int ffmpegSendPacket(long j10, ByteBuffer byteBuffer, int i10, long j11);

    private static byte[] x(String str, List list) {
        if (list.isEmpty()) {
            return null;
        }
        str.hashCode();
        if (str.equals(MimeTypes.VIDEO_H265)) {
            return (byte[]) list.get(0);
        }
        if (!str.equals(MimeTypes.VIDEO_H264)) {
            return null;
        }
        byte[] bArr = (byte[]) list.get(0);
        byte[] bArr2 = (byte[]) list.get(1);
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public void A(int i10) {
        this.f62293s = i10;
    }

    @Override
    protected DecoderInputBuffer e() {
        return new DecoderInputBuffer(2);
    }

    @Override
    public String getName() {
        return "ffmpeg" + FfmpegLibrary.c() + "-" + this.f62289o;
    }

    @Override
    public void release() {
        super.release();
        ffmpegRelease(this.f62290p);
        this.f62290p = 0L;
    }

    @Override
    public VideoDecoderOutputBuffer f() {
        return new VideoDecoderOutputBuffer(new h.a() {
            @Override
            public final void a(h hVar) {
                this.f62295a.p((VideoDecoderOutputBuffer) hVar);
            }
        });
    }

    @Override
    public FfmpegDecoderException g(Throwable th2) {
        return new FfmpegDecoderException("Unexpected decode error", th2);
    }

    @Override
    public FfmpegDecoderException h(DecoderInputBuffer decoderInputBuffer, VideoDecoderOutputBuffer videoDecoderOutputBuffer, boolean z10) {
        if (z10) {
            long jFfmpegReset = ffmpegReset(this.f62290p);
            this.f62290p = jFfmpegReset;
            if (jFfmpegReset == 0) {
                return new FfmpegDecoderException("Error resetting (see logcat).");
            }
        }
        ByteBuffer byteBuffer = (ByteBuffer) a1.i(decoderInputBuffer.f10606c);
        int iFfmpegSendPacket = ffmpegSendPacket(this.f62290p, byteBuffer, byteBuffer.limit(), decoderInputBuffer.f10608e);
        if (iFfmpegSendPacket == -1) {
            videoDecoderOutputBuffer.shouldBeSkipped = true;
            return null;
        }
        if (iFfmpegSendPacket == -3) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("VIDEO_DECODER_ERROR_READ_FRAME: timeUs=");
            sb2.append(decoderInputBuffer.f10608e);
        } else if (iFfmpegSendPacket == -2) {
            return new FfmpegDecoderException("ffmpegDecode error: (see logcat)");
        }
        boolean zL = l(decoderInputBuffer.f10608e);
        int iFfmpegReceiveFrame = ffmpegReceiveFrame(this.f62290p, this.f62293s, videoDecoderOutputBuffer, !zL);
        if (iFfmpegReceiveFrame == -2) {
            return new FfmpegDecoderException("ffmpegDecode error: (see logcat)");
        }
        if (iFfmpegReceiveFrame == -1) {
            videoDecoderOutputBuffer.shouldBeSkipped = true;
        }
        if (zL) {
            videoDecoderOutputBuffer.format = decoderInputBuffer.f10604a;
        }
        return null;
    }

    public void z(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws FfmpegDecoderException {
        if (videoDecoderOutputBuffer.mode != 1) {
            throw new FfmpegDecoderException("Invalid output mode.");
        }
        if (ffmpegRenderFrame(this.f62290p, surface, videoDecoderOutputBuffer, videoDecoderOutputBuffer.width, videoDecoderOutputBuffer.height) == -2) {
            throw new FfmpegDecoderException("Buffer render error: ");
        }
    }
}
