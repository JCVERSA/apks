package com.hunantv.media.player.d;

import android.opengl.GLES20;
import androidx.media3.common.C;

public class e {
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;

    public int a() {
        return this.g;
    }

    public void b(int i, int i2) {
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(3379, iArr, 0);
        int i3 = iArr[0];
        if (i > i3 || i2 > i3) {
            throw new IllegalArgumentException("GL_MAX_TEXTURE_SIZE " + iArr[0]);
        }
        GLES20.glGetIntegerv(34024, iArr, 0);
        int i4 = iArr[0];
        if (i > i4 || i2 > i4) {
            throw new IllegalArgumentException("GL_MAX_RENDERBUFFER_SIZE " + iArr[0]);
        }
        GLES20.glGetIntegerv(36006, iArr, 0);
        int i5 = iArr[0];
        GLES20.glGetIntegerv(36007, iArr, 0);
        int i6 = iArr[0];
        GLES20.glGetIntegerv(32873, iArr, 0);
        int i7 = iArr[0];
        c();
        try {
            this.a = i;
            this.b = i2;
            GLES20.glGenFramebuffers(1, iArr, 0);
            int i8 = iArr[0];
            this.e = i8;
            GLES20.glBindFramebuffer(36160, i8);
            GLES20.glGenRenderbuffers(1, iArr, 0);
            int i9 = iArr[0];
            this.f = i9;
            GLES20.glBindRenderbuffer(36161, i9);
            com.hunantv.media.report.c.c.b("render", "FBO mRenderWidth:" + i + ",mRenderHeight:" + i2);
            GLES20.glRenderbufferStorage(36161, 33189, i, i2);
            GLES20.glFramebufferRenderbuffer(36160, 36096, 36161, this.f);
            GLES20.glGenTextures(1, iArr, 0);
            int i10 = iArr[0];
            this.g = i10;
            GLES20.glBindTexture(3553, i10);
            com.hunantv.media.player.d.a.a.a(3553, C.TEXTURE_MIN_FILTER_LINEAR, 9728);
            GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.g, 0);
            int iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
            if (iGlCheckFramebufferStatus == 36053) {
                GLES20.glBindFramebuffer(36160, i5);
                GLES20.glBindRenderbuffer(36161, i6);
                GLES20.glBindTexture(3553, i7);
            } else {
                throw new RuntimeException("Failed to initialize framebuffer object " + iGlCheckFramebufferStatus);
            }
        } catch (RuntimeException e) {
            c();
            throw e;
        }
    }

    public void c() {
        int[] iArr = {this.g};
        GLES20.glDeleteTextures(1, iArr, 0);
        this.g = 0;
        iArr[0] = this.f;
        GLES20.glDeleteRenderbuffers(1, iArr, 0);
        this.f = 0;
        iArr[0] = this.e;
        GLES20.glDeleteFramebuffers(1, iArr, 0);
        this.e = 0;
    }

    public void d() {
        GLES20.glBindFramebuffer(36160, this.e);
        this.i = true;
    }

    public int e() {
        int i = this.c;
        return i > 0 ? i : this.a;
    }

    public int f() {
        return this.c > 0 ? this.d : this.b;
    }

    public void a(int i, int i2) {
        this.c = i;
        this.d = i2;
    }

    public boolean b() {
        return this.h;
    }

    public void a(boolean z) {
        this.h = z;
    }
}
