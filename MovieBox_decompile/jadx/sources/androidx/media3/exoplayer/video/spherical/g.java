package androidx.media3.exoplayer.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.media3.common.r;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.o0;
import androidx.media3.common.util.u;
import androidx.media3.exoplayer.video.t;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

final class g implements t, j2.a {

    private int f12980i;

    private SurfaceTexture f12981j;

    private byte[] f12984m;

    private final AtomicBoolean f12972a = new AtomicBoolean();

    private final AtomicBoolean f12973b = new AtomicBoolean(true);

    private final e f12974c = new e();

    private final a f12975d = new a();

    private final o0 f12976e = new o0();

    private final o0 f12977f = new o0();

    private final float[] f12978g = new float[16];

    private final float[] f12979h = new float[16];

    private volatile int f12982k = 0;

    private int f12983l = -1;

    public void g(SurfaceTexture surfaceTexture) {
        this.f12972a.set(true);
    }

    private void i(byte[] bArr, int i10, long j10) {
        byte[] bArr2 = this.f12984m;
        int i11 = this.f12983l;
        this.f12984m = bArr;
        if (i10 == -1) {
            i10 = this.f12982k;
        }
        this.f12983l = i10;
        if (i11 == i10 && Arrays.equals(bArr2, this.f12984m)) {
            return;
        }
        byte[] bArr3 = this.f12984m;
        c cVarA = bArr3 != null ? d.a(bArr3, this.f12983l) : null;
        if (cVarA == null || !e.c(cVarA)) {
            cVarA = c.b(this.f12983l);
        }
        this.f12977f.a(j10, cVarA);
    }

    @Override
    public void a(long j10, float[] fArr) {
        this.f12975d.e(j10, fArr);
    }

    @Override
    public void b() {
        this.f12976e.c();
        this.f12975d.d();
        this.f12973b.set(true);
    }

    public void d(float[] fArr, boolean z10) {
        GLES20.glClear(16384);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e10) {
            u.d("SceneRenderer", "Failed to draw a frame", e10);
        }
        if (this.f12972a.compareAndSet(true, false)) {
            ((SurfaceTexture) androidx.media3.common.util.a.e(this.f12981j)).updateTexImage();
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e11) {
                u.d("SceneRenderer", "Failed to draw a frame", e11);
            }
            if (this.f12973b.compareAndSet(true, false)) {
                GlUtil.k(this.f12978g);
            }
            long timestamp = this.f12981j.getTimestamp();
            Long l10 = (Long) this.f12976e.g(timestamp);
            if (l10 != null) {
                this.f12975d.c(this.f12978g, l10.longValue());
            }
            c cVar = (c) this.f12977f.j(timestamp);
            if (cVar != null) {
                this.f12974c.d(cVar);
            }
        }
        Matrix.multiplyMM(this.f12979h, 0, fArr, 0, this.f12978g, 0);
        this.f12974c.a(this.f12980i, this.f12979h, z10);
    }

    public SurfaceTexture e() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            GlUtil.b();
            this.f12974c.b();
            GlUtil.b();
            this.f12980i = GlUtil.f();
        } catch (GlUtil.GlException e10) {
            u.d("SceneRenderer", "Failed to initialize the renderer", e10);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f12980i);
        this.f12981j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() {
            @Override
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f12971a.g(surfaceTexture2);
            }
        });
        return this.f12981j;
    }

    @Override
    public void f(long j10, long j11, r rVar, MediaFormat mediaFormat) {
        this.f12976e.a(j11, Long.valueOf(j10));
        i(rVar.A, rVar.B, j11);
    }

    public void h(int i10) {
        this.f12982k = i10;
    }
}
