package androidx.media3.decoder.av1;

import android.view.Surface;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.decoder.h;
import java.nio.ByteBuffer;

public final class Gav1Decoder extends SimpleDecoder {

    private final long f10628o;

    private volatile int f10629p;

    public Gav1Decoder(int i10, int i11, int i12, int i13) throws Gav1DecoderException {
        super(new DecoderInputBuffer[i10], new VideoDecoderOutputBuffer[i11]);
        if (!b.a()) {
            throw new Gav1DecoderException("Failed to load decoder native library.");
        }
        if (i13 == 0 && (i13 = gav1GetThreads()) <= 0) {
            i13 = Runtime.getRuntime().availableProcessors();
        }
        long jGav1Init = gav1Init(i13);
        this.f10628o = jGav1Init;
        if (jGav1Init != 0 && gav1CheckError(jGav1Init) != 0) {
            s(i12);
            return;
        }
        throw new Gav1DecoderException("Failed to initialize decoder. Error: " + gav1GetErrorMessage(jGav1Init));
    }

    private native int gav1CheckError(long j10);

    private native void gav1Close(long j10);

    private native int gav1Decode(long j10, ByteBuffer byteBuffer, int i10);

    private native String gav1GetErrorMessage(long j10);

    private native int gav1GetFrame(long j10, VideoDecoderOutputBuffer videoDecoderOutputBuffer, boolean z10);

    private native int gav1GetThreads();

    private native long gav1Init(int i10);

    private native void gav1ReleaseFrame(long j10, VideoDecoderOutputBuffer videoDecoderOutputBuffer);

    private native int gav1RenderFrame(long j10, Surface surface, VideoDecoderOutputBuffer videoDecoderOutputBuffer);

    @Override
    protected DecoderInputBuffer e() {
        return new DecoderInputBuffer(2);
    }

    @Override
    public String getName() {
        return "libgav1";
    }

    @Override
    public void release() {
        super.release();
        gav1Close(this.f10628o);
    }

    @Override
    public VideoDecoderOutputBuffer f() {
        return new VideoDecoderOutputBuffer(new h.a() {
            @Override
            public final void a(h hVar) {
                this.f10630a.w((VideoDecoderOutputBuffer) hVar);
            }
        });
    }

    @Override
    public Gav1DecoderException g(Throwable th2) {
        return new Gav1DecoderException("Unexpected decode error", th2);
    }

    @Override
    public Gav1DecoderException h(DecoderInputBuffer decoderInputBuffer, VideoDecoderOutputBuffer videoDecoderOutputBuffer, boolean z10) {
        ByteBuffer byteBuffer = (ByteBuffer) a1.i(decoderInputBuffer.f10606c);
        if (gav1Decode(this.f10628o, byteBuffer, byteBuffer.limit()) == 0) {
            return new Gav1DecoderException("gav1Decode error: " + gav1GetErrorMessage(this.f10628o));
        }
        boolean zL = l(decoderInputBuffer.f10608e);
        boolean z11 = !zL;
        if (zL) {
            videoDecoderOutputBuffer.init(decoderInputBuffer.f10608e, this.f10629p, null);
        }
        int iGav1GetFrame = gav1GetFrame(this.f10628o, videoDecoderOutputBuffer, z11);
        if (iGav1GetFrame == 0) {
            return new Gav1DecoderException("gav1GetFrame error: " + gav1GetErrorMessage(this.f10628o));
        }
        if (iGav1GetFrame == 2) {
            videoDecoderOutputBuffer.shouldBeSkipped = true;
        }
        if (zL) {
            videoDecoderOutputBuffer.format = decoderInputBuffer.f10604a;
        }
        return null;
    }

    protected void w(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        if (videoDecoderOutputBuffer.mode == 1 && !videoDecoderOutputBuffer.shouldBeSkipped) {
            gav1ReleaseFrame(this.f10628o, videoDecoderOutputBuffer);
        }
        super.p(videoDecoderOutputBuffer);
    }

    public void x(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws Gav1DecoderException {
        if (videoDecoderOutputBuffer.mode != 1) {
            throw new Gav1DecoderException("Invalid output mode.");
        }
        if (gav1RenderFrame(this.f10628o, surface, videoDecoderOutputBuffer) != 0) {
            return;
        }
        throw new Gav1DecoderException("Buffer render error: " + gav1GetErrorMessage(this.f10628o));
    }

    public void y(int i10) {
        this.f10629p = i10;
    }
}
