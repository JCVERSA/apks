package com.hunantv.media.player.d;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public abstract class a {
    protected int[] a;
    private int b;

    public static class C0136a extends a {
        protected int b;
        protected int c;
        protected int d;
        protected int e;
        protected int f;
        protected int g;
        private int[] h;

        public C0136a(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(new int[]{12324, i, 12323, i2, 12322, i3, 12321, i4, 12325, i5, 12326, i6, 12344}, i7);
            this.h = new int[1];
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
        }

        private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.h) ? this.h[0] : i2;
        }

        @Override
        public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int iA = a(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int iA2 = a(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (iA >= this.f && iA2 >= this.g) {
                    int iA3 = a(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int iA4 = a(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int iA5 = a(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int iA6 = a(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (iA3 == this.b && iA4 == this.c && iA5 == this.d && iA6 == this.e) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }
    }

    public static class b extends C0136a {
        public b(boolean z, int i) {
            super(8, 8, 8, 0, z ? 16 : 0, 0, i);
        }
    }

    public a(int[] iArr, int i) {
        this.b = i;
        this.a = a(iArr);
    }

    public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = new int[1];
        if (!egl10.eglChooseConfig(eGLDisplay, this.a, null, 0, iArr)) {
            throw new IllegalArgumentException("eglChooseConfig failed");
        }
        int i = iArr[0];
        if (i <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[i];
        if (!egl10.eglChooseConfig(eGLDisplay, this.a, eGLConfigArr, i, iArr)) {
            throw new IllegalArgumentException("eglChooseConfig#2 failed");
        }
        EGLConfig eGLConfigA = a(egl10, eGLDisplay, eGLConfigArr);
        if (eGLConfigA != null) {
            return eGLConfigA;
        }
        throw new IllegalArgumentException("No config chosen");
    }

    public abstract EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr);

    private int[] a(int[] iArr) {
        int i = this.b;
        if (i != 2 && i != 3) {
            return iArr;
        }
        int length = iArr.length;
        int[] iArr2 = new int[length + 2];
        int i2 = length - 1;
        System.arraycopy(iArr, 0, iArr2, 0, i2);
        iArr2[i2] = 12352;
        if (this.b == 2) {
            iArr2[length] = 4;
        } else {
            iArr2[length] = 64;
        }
        iArr2[length + 1] = 12344;
        return iArr2;
    }
}
