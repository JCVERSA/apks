package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.nio.ByteBuffer;

public final class xn extends sk {
    private final ry n;
    private final ag1 o;
    private long p;

    @Nullable
    private wn q;
    private long r;

    public xn() {
        super(6);
        this.n = new ry(1);
        this.o = new ag1();
    }

    @Override
    public final void a(int i, @Nullable Object obj) throws m60 {
        if (i == 8) {
            this.q = (wn) obj;
        }
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final String getName() {
        return "CameraMotionRenderer";
    }

    @Override
    public final void u() {
        wn wnVar = this.q;
        if (wnVar != null) {
            wnVar.f();
        }
    }

    @Override
    public final void a(long j, boolean z) {
        this.r = Long.MIN_VALUE;
        wn wnVar = this.q;
        if (wnVar != null) {
            wnVar.f();
        }
    }

    @Override
    public final void a(jc0[] jc0VarArr, long j, long j2) {
        this.p = j2;
    }

    @Override
    public final void a(long j, long j2) {
        float[] fArr;
        while (!e() && this.r < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + j) {
            this.n.b();
            if (a(q(), this.n, 0) != -4 || this.n.f()) {
                return;
            }
            ry ryVar = this.n;
            this.r = ryVar.f;
            if (this.q != null && !ryVar.e()) {
                this.n.h();
                ByteBuffer byteBuffer = this.n.d;
                int i = f92.a;
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    this.o.a(byteBuffer.limit(), byteBuffer.array());
                    this.o.e(byteBuffer.arrayOffset() + 4);
                    float[] fArr2 = new float[3];
                    for (int i2 = 0; i2 < 3; i2++) {
                        fArr2[i2] = Float.intBitsToFloat(this.o.k());
                    }
                    fArr = fArr2;
                }
                if (fArr != null) {
                    this.q.a(this.r - this.p, fArr);
                }
            }
        }
    }

    @Override
    public final int a(jc0 jc0Var) {
        if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(jc0Var.m)) {
            return zo1.a(4, 0, 0);
        }
        return zo1.a(0, 0, 0);
    }
}
