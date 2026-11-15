package com.google.android.exoplayer2.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.k0;
import com.google.android.exoplayer2.video.i;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

final class g implements i, oa.a {

    private int f27117i;

    private SurfaceTexture f27118j;

    private byte[] f27121m;

    private final AtomicBoolean f27109a = new AtomicBoolean();

    private final AtomicBoolean f27110b = new AtomicBoolean(true);

    private final e f27111c = new e();

    private final a f27112d = new a();

    private final k0 f27113e = new k0();

    private final k0 f27114f = new k0();

    private final float[] f27115g = new float[16];

    private final float[] f27116h = new float[16];

    private volatile int f27119k = 0;

    private int f27120l = -1;

    public void f(SurfaceTexture surfaceTexture) {
        this.f27109a.set(true);
    }

    private void i(byte[] bArr, int i10, long j10) {
        byte[] bArr2 = this.f27121m;
        int i11 = this.f27120l;
        this.f27121m = bArr;
        if (i10 == -1) {
            i10 = this.f27119k;
        }
        this.f27120l = i10;
        if (i11 == i10 && Arrays.equals(bArr2, this.f27121m)) {
            return;
        }
        byte[] bArr3 = this.f27121m;
        c cVarA = bArr3 != null ? d.a(bArr3, this.f27120l) : null;
        if (cVarA == null || !e.c(cVarA)) {
            cVarA = c.b(this.f27120l);
        }
        this.f27114f.a(j10, cVarA);
    }

    @Override
    public void a(long j10, float[] fArr) {
        this.f27112d.e(j10, fArr);
    }

    @Override
    public void b() {
        this.f27113e.c();
        this.f27112d.d();
        this.f27110b.set(true);
    }

    public void d(float[] fArr, boolean z10) {
        GLES20.glClear(16384);
        GlUtil.c();
        if (this.f27109a.compareAndSet(true, false)) {
            ((SurfaceTexture) com.google.android.exoplayer2.util.a.e(this.f27118j)).updateTexImage();
            GlUtil.c();
            if (this.f27110b.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f27115g, 0);
            }
            long timestamp = this.f27118j.getTimestamp();
            Long l10 = (Long) this.f27113e.g(timestamp);
            if (l10 != null) {
                this.f27112d.c(this.f27115g, l10.longValue());
            }
            c cVar = (c) this.f27114f.j(timestamp);
            if (cVar != null) {
                this.f27111c.d(cVar);
            }
        }
        Matrix.multiplyMM(this.f27116h, 0, fArr, 0, this.f27115g, 0);
        this.f27111c.a(this.f27117i, this.f27116h, z10);
    }

    public SurfaceTexture e() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        GlUtil.c();
        this.f27111c.b();
        GlUtil.c();
        this.f27117i = GlUtil.f();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f27117i);
        this.f27118j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() {
            @Override
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f27108a.f(surfaceTexture2);
            }
        });
        return this.f27118j;
    }

    @Override
    public void g(long j10, long j11, p1 p1Var, MediaFormat mediaFormat) {
        this.f27113e.a(j11, Long.valueOf(j10));
        i(p1Var.f24911v, p1Var.f24912w, j11);
    }

    public void h(int i10) {
        this.f27119k = i10;
    }
}
