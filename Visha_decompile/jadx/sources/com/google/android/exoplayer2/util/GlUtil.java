package com.google.android.exoplayer2.util;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import androidx.media3.common.C;
import defpackage.blb;
import defpackage.op5;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public abstract class GlUtil {
    public static boolean a = false;
    public static final int[] b = {12344};
    public static final int[] c = {12445, 13120, 12344};
    public static final int[] d = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};
    public static final int[] e = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};

    public static final class GlException extends RuntimeException {
        public GlException(String str) {
            super(str);
        }
    }

    public static void a(int i, int i2) {
        GLES20.glBindTexture(i, i2);
        c();
        GLES20.glTexParameteri(i, 10240, C.TEXTURE_MIN_FILTER_LINEAR);
        c();
        GLES20.glTexParameteri(i, 10241, C.TEXTURE_MIN_FILTER_LINEAR);
        c();
        GLES20.glTexParameteri(i, 10242, 33071);
        c();
        GLES20.glTexParameteri(i, 10243, 33071);
        c();
    }

    public static void b(boolean z, String str) {
        if (z) {
            return;
        }
        j(str);
    }

    public static void c() {
        int i = 0;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            op5.c("GlUtil", "glError: " + GLU.gluErrorString(iGlGetError));
            i = iGlGetError;
        }
        if (i != 0) {
            j("glError: " + GLU.gluErrorString(i));
        }
    }

    public static FloatBuffer d(int i) {
        return ByteBuffer.allocateDirect(i * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static FloatBuffer e(float[] fArr) {
        return (FloatBuffer) d(fArr.length).put(fArr).flip();
    }

    public static int f() {
        int iG = g();
        a(36197, iG);
        return iG;
    }

    public static int g() {
        b(!blb.c(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT), "No current context");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        c();
        return iArr[0];
    }

    public static boolean h(Context context) {
        String strEglQueryString;
        int i = blb.a;
        if (i < 24) {
            return false;
        }
        if (i >= 26 || !("samsung".equals(blb.c) || "XT1650".equals(blb.d))) {
            return (i >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_EXT_protected_content");
        }
        return false;
    }

    public static boolean i() {
        String strEglQueryString;
        return blb.a >= 17 && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_KHR_surfaceless_context");
    }

    public static void j(String str) {
        if (a) {
            throw new GlException(str);
        }
        op5.c("GlUtil", str);
    }
}
