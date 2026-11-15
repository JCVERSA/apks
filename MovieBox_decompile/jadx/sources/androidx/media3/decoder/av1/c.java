package androidx.media3.decoder.av1;

import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.q0;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.exoplayer.k;
import androidx.media3.exoplayer.video.i0;

public class c extends androidx.media3.exoplayer.video.b {

    private static final int f10632b0 = ((a1.k(1280, 64) * a1.k(720, 64)) * 6144) / 2;

    public static final int f10633c0 = 0;
    private final int X;
    private final int Y;
    private final int Z;

    private Gav1Decoder f10634a0;

    public c(long j10, @Nullable Handler handler, @Nullable i0 i0Var, int i10) {
        this(j10, handler, i0Var, i10, 0, 4, 4);
    }

    private static int C0(int i10) {
        return D0(i10, 0, 0);
    }

    private static int D0(int i10, int i11, int i12) {
        return i10 | (i11 << 4) | (i12 << 8);
    }

    @Override
    public final Gav1Decoder R(r rVar, androidx.media3.decoder.b bVar) {
        q0.a("createGav1Decoder");
        int i10 = rVar.f9850p;
        if (i10 == -1) {
            i10 = f10632b0;
        }
        Gav1Decoder gav1Decoder = new Gav1Decoder(this.X, this.Y, i10, this.Z);
        this.f10634a0 = gav1Decoder;
        q0.b();
        return gav1Decoder;
    }

    @Override
    protected k Q(String str, r rVar, r rVar2) {
        return new k(str, rVar, rVar2, 3, 0);
    }

    @Override
    public final int a(r rVar) {
        if ("video/av01".equalsIgnoreCase(rVar.f9849o) && b.a()) {
            return rVar.N != 0 ? C0(2) : D0(4, 16, 0);
        }
        return C0(0);
    }

    @Override
    public String getName() {
        return "Libgav1VideoRenderer";
    }

    @Override
    protected void q0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws Gav1DecoderException {
        Gav1Decoder gav1Decoder = this.f10634a0;
        if (gav1Decoder == null) {
            throw new Gav1DecoderException("Failed to render output buffer to surface: decoder is not initialized.");
        }
        gav1Decoder.x(videoDecoderOutputBuffer, surface);
        videoDecoderOutputBuffer.release();
    }

    @Override
    protected void s0(int i10) {
        Gav1Decoder gav1Decoder = this.f10634a0;
        if (gav1Decoder != null) {
            gav1Decoder.y(i10);
        }
    }

    public c(long j10, Handler handler, i0 i0Var, int i10, int i11, int i12, int i13) {
        super(j10, handler, i0Var, i10);
        this.Z = i11;
        this.X = i12;
        this.Y = i13;
    }
}
