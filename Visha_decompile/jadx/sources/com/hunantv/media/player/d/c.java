package com.hunantv.media.player.d;

import android.opengl.GLES20;
import android.opengl.Matrix;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.widget.IVideoView;

public class c {
    private int e;
    private volatile int k;
    private volatile int l;
    private volatile int m;
    private volatile int n;
    private com.hunantv.media.player.d.a.b o;
    private int[] p;
    private IVideoView q;
    private float[] f = new float[16];
    private float[] g = new float[16];
    private float[] h = new float[16];
    private float[] i = new float[16];
    private float j = 1.0f;
    private com.hunantv.media.player.d.a.c a = new com.hunantv.media.player.d.a.c();
    private com.hunantv.media.player.d.a.b b = new com.hunantv.media.player.d.a.b();
    private e c = new e();
    private e d = new e();

    public c(int i, int i2, int i3) {
        this.e = i;
        this.k = i2;
        this.l = i3;
        b(i2, i3);
    }

    public void a() {
        DebugLog.i(c(), "init in");
        this.b.a();
        this.a.a();
        Matrix.setLookAtM(this.i, 0, 0.0f, 0.0f, 5.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        int[] iArr = new int[1];
        this.p = iArr;
        GLES20.glGetIntegerv(3379, iArr, 0);
        DebugLog.i(c(), "init out");
    }

    public void b() {
        DebugLog.i(c(), "release in");
        e eVar = this.d;
        if (eVar != null) {
            eVar.c();
            this.d = null;
        }
        e eVar2 = this.c;
        if (eVar2 != null) {
            eVar2.c();
            this.c = null;
        }
        DebugLog.i(c(), "release out");
    }

    public String c() {
        return getClass().getSimpleName();
    }

    public void a(int i, int i2) {
        DebugLog.i(c(), "processWindowSizeChanged width:" + i + ",height:" + i2);
        this.m = i;
        this.n = i2;
        e eVar = this.c;
        if (eVar != null) {
            eVar.a(true);
        }
    }

    public void b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        DebugLog.i(c(), "processVideoSizeChanged width:" + i + ",height:" + i2);
        this.k = i;
        this.l = i2;
        e eVar = this.c;
        if (eVar != null) {
            eVar.a(true);
        }
        e eVar2 = this.d;
        if (eVar2 != null) {
            eVar2.a(true);
        }
        com.hunantv.media.player.d.a.b bVar = this.o;
        if (bVar != null) {
            bVar.a(this.k, this.l);
        }
        this.b.a(i, i2);
        float f = i / i2;
        this.j = f;
        Matrix.frustumM(this.g, 0, -f, f, -1.0f, 1.0f, 5.0f, 7.0f);
        Matrix.setIdentityM(this.h, 0);
    }

    public void a(com.hunantv.media.player.d.a.b bVar) {
        DebugLog.i(c(), "setFilter in:" + bVar.g());
        com.hunantv.media.player.d.a.b bVar2 = this.o;
        if (bVar2 != bVar) {
            if (bVar2 != null) {
                bVar2.c();
            }
            this.o = bVar;
            bVar.a();
            this.o.a(this.k, this.l);
        }
        DebugLog.i(c(), "setFilter out");
    }

    public void a(IVideoView iVideoView) {
        this.q = iVideoView;
    }

    public void a(float[] fArr) {
        e eVar;
        if (this.c == null || (eVar = this.d) == null) {
            return;
        }
        if (eVar.b()) {
            DebugLog.i(c(), "mFilterFBO changed init in");
            this.d.b(this.k, this.l);
            this.d.a(false);
            DebugLog.i(c(), "mFilterFBO changed init out");
        }
        this.d.d();
        GLES20.glViewport(0, 0, this.k, this.l);
        GLES20.glClear(16384);
        Matrix.multiplyMM(this.f, 0, this.i, 0, this.h, 0);
        float[] fArr2 = this.f;
        Matrix.multiplyMM(fArr2, 0, this.g, 0, fArr2, 0);
        this.a.a(this.e, this.f, fArr, this.j);
        if (this.c.b()) {
            DebugLog.i(c(), "mFBO changed init in");
            this.c.a(this.m, this.n);
            this.c.b(this.k, this.l);
            this.c.a(false);
            DebugLog.i(c(), "mFBO changed init out");
        }
        if (this.o != null) {
            this.c.d();
            GLES20.glClear(16384);
            this.o.a(this.d.a(), this.f);
        }
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glViewport(0, 0, this.c.e(), this.c.f());
        GLES20.glClear(16640);
        this.b.a(this.c.a());
    }
}
