package com.google.android.exoplayer2.util;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import com.google.android.gms.gcm.Task;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public abstract class GlUtil {

    public static boolean f26774a = false;

    private static final int[] f26775b = {12344};

    private static final int[] f26776c = {12445, 13120, 12344};

    private static final int[] f26777d = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};

    private static final int[] f26778e = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};

    public static final class GlException extends RuntimeException {
        public GlException(String str) {
            super(str);
        }
    }

    public static void a(int i10, int i11) {
        GLES20.glBindTexture(i10, i11);
        c();
        GLES20.glTexParameteri(i10, Task.EXTRAS_LIMIT_BYTES, 9729);
        c();
        GLES20.glTexParameteri(i10, 10241, 9729);
        c();
        GLES20.glTexParameteri(i10, 10242, 33071);
        c();
        GLES20.glTexParameteri(i10, 10243, 33071);
        c();
    }

    private static void b(boolean z10, String str) {
        if (z10) {
            return;
        }
        j(str);
    }

    public static void c() {
        int i10 = 0;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            s.c("GlUtil", "glError: " + GLU.gluErrorString(iGlGetError));
            i10 = iGlGetError;
        }
        if (i10 != 0) {
            j("glError: " + GLU.gluErrorString(i10));
        }
    }

    public static FloatBuffer d(int i10) {
        return ByteBuffer.allocateDirect(i10 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static FloatBuffer e(float[] fArr) {
        return (FloatBuffer) d(fArr.length).put(fArr).flip();
    }

    public static int f() {
        int iG = g();
        a(36197, iG);
        return iG;
    }

    private static int g() {
        b(!p0.c(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT), "No current context");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        c();
        return iArr[0];
    }

    public static boolean h(Context context) {
        String strEglQueryString;
        int i10 = p0.f26854a;
        if (i10 < 24) {
            return false;
        }
        if (i10 >= 26 || !("samsung".equals(p0.f26856c) || "XT1650".equals(p0.f26857d))) {
            return (i10 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_EXT_protected_content");
        }
        return false;
    }

    public static boolean i() {
        String strEglQueryString;
        return p0.f26854a >= 17 && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_KHR_surfaceless_context");
    }

    static void j(String str) {
        if (f26774a) {
            throw new GlException(str);
        }
        s.c("GlUtil", str);
    }
}
