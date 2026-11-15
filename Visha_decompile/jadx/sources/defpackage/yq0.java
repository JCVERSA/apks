package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.k;
import java.nio.ByteBuffer;

public final class yq0 extends d {
    public final DecoderInputBuffer o;
    public final qw7 p;
    public long q;
    public xq0 r;
    public long s;

    public yq0() {
        super(6);
        this.o = new DecoderInputBuffer(1);
        this.p = new qw7();
    }

    @Override
    public int a(k kVar) {
        return MimeTypes.APPLICATION_CAMERA_MOTION.equals(kVar.m) ? ks8.create(4) : ks8.create(0);
    }

    @Override
    public String getName() {
        return "CameraMotionRenderer";
    }

    @Override
    public void handleMessage(int i, Object obj) {
        if (i == 8) {
            this.r = (xq0) obj;
        } else {
            super.handleMessage(i, obj);
        }
    }

    @Override
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public void n() {
        y();
    }

    @Override
    public void p(long j, boolean z) {
        this.s = Long.MIN_VALUE;
        y();
    }

    @Override
    public void render(long j, long j2) {
        while (!hasReadStreamToEnd() && this.s < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + j) {
            this.o.b();
            if (u(i(), this.o, 0) != -4 || this.o.h()) {
                return;
            }
            DecoderInputBuffer decoderInputBuffer = this.o;
            this.s = decoderInputBuffer.f;
            if (this.r != null && !decoderInputBuffer.g()) {
                this.o.n();
                float[] fArrX = x((ByteBuffer) blb.j(this.o.d));
                if (fArrX != null) {
                    ((xq0) blb.j(this.r)).onCameraMotion(this.s - this.q, fArrX);
                }
            }
        }
    }

    @Override
    public void t(k[] kVarArr, long j, long j2) {
        this.q = j2;
    }

    public final float[] x(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.p.M(byteBuffer.array(), byteBuffer.limit());
        this.p.O(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i = 0; i < 3; i++) {
            fArr[i] = Float.intBitsToFloat(this.p.p());
        }
        return fArr;
    }

    public final void y() {
        xq0 xq0Var = this.r;
        if (xq0Var != null) {
            xq0Var.onCameraMotionReset();
        }
    }
}
