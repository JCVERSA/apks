package defpackage;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.util.GlUtil;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

public final class f29 implements lrb, xq0 {
    public int j;
    public SurfaceTexture k;
    public byte[] n;
    public final AtomicBoolean b = new AtomicBoolean();
    public final AtomicBoolean c = new AtomicBoolean(true);
    public final ji8 d = new ji8();
    public final b64 e = new b64();
    public final aoa f = new aoa();
    public final aoa g = new aoa();
    public final float[] h = new float[16];
    public final float[] i = new float[16];
    public volatile int l = 0;
    public int m = -1;

    @Override
    public void a(long j, long j2, k kVar, MediaFormat mediaFormat) {
        this.f.a(j2, Long.valueOf(j));
        g(kVar.w, kVar.x, j2);
    }

    public void c(float[] fArr, boolean z) {
        GLES20.glClear(16384);
        GlUtil.c();
        if (this.b.compareAndSet(true, false)) {
            ((SurfaceTexture) zi.e(this.k)).updateTexImage();
            GlUtil.c();
            if (this.c.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.h, 0);
            }
            long timestamp = this.k.getTimestamp();
            Long l = (Long) this.f.g(timestamp);
            if (l != null) {
                this.e.c(this.h, l.longValue());
            }
            hi8 hi8Var = (hi8) this.g.j(timestamp);
            if (hi8Var != null) {
                this.d.d(hi8Var);
            }
        }
        Matrix.multiplyMM(this.i, 0, fArr, 0, this.h, 0);
        this.d.a(this.j, this.i, z);
    }

    public SurfaceTexture d() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        GlUtil.c();
        this.d.b();
        GlUtil.c();
        this.j = GlUtil.f();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.j);
        this.k = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() {
            @Override
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.b.e(surfaceTexture2);
            }
        });
        return this.k;
    }

    public final void e(SurfaceTexture surfaceTexture) {
        this.b.set(true);
    }

    public void f(int i) {
        this.l = i;
    }

    public final void g(byte[] bArr, int i, long j) {
        byte[] bArr2 = this.n;
        int i2 = this.m;
        this.n = bArr;
        if (i == -1) {
            i = this.l;
        }
        this.m = i;
        if (i2 == i && Arrays.equals(bArr2, this.n)) {
            return;
        }
        byte[] bArr3 = this.n;
        hi8 hi8VarA = bArr3 != null ? ii8.a(bArr3, this.m) : null;
        if (hi8VarA == null || !ji8.c(hi8VarA)) {
            hi8VarA = hi8.b(this.m);
        }
        this.g.a(j, hi8VarA);
    }

    @Override
    public void onCameraMotion(long j, float[] fArr) {
        this.e.e(j, fArr);
    }

    @Override
    public void onCameraMotionReset() {
        this.f.c();
        this.e.d();
        this.c.set(true);
    }
}
