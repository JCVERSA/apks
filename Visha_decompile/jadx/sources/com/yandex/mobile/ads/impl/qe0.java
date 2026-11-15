package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.util.Base64;
import androidx.media3.common.C;
import defpackage.y45;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.charset.Charset;

public final class qe0 {
    private static final re0 a = nm1.c();
    public static final int b = 0;

    public static void a() {
        int i = 0;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            et0.b("GlUtil", "glError: " + GLU.gluErrorString(iGlGetError));
            i = iGlGetError;
        }
        if (i != 0) {
            et0.b("GlUtil", "glError: " + GLU.gluErrorString(i));
        }
    }

    public static int b() {
        if (f92.a(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT)) {
            et0.b("GlUtil", "No current context");
        }
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        a();
        int i = iArr[0];
        GLES20.glBindTexture(36197, i);
        a();
        GLES20.glTexParameteri(36197, 10240, C.TEXTURE_MIN_FILTER_LINEAR);
        a();
        GLES20.glTexParameteri(36197, 10241, C.TEXTURE_MIN_FILTER_LINEAR);
        a();
        GLES20.glTexParameteri(36197, 10242, 33071);
        a();
        GLES20.glTexParameteri(36197, 10243, 33071);
        a();
        return i;
    }

    public static boolean c() {
        String strEglQueryString;
        return f92.a >= 17 && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_KHR_surfaceless_context");
    }

    public static FloatBuffer a(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
    
        if (new java.lang.String(r3, r6).equals(com.yandex.mobile.ads.impl.f92.d) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(Context context) {
        String strEglQueryString;
        int i = f92.a;
        if (i < 24) {
            return false;
        }
        if (i < 26) {
            a.getClass();
            byte[] bArrDecode = Base64.decode("c2Ftc3VuZw==", 0);
            y45.i(bArrDecode, "decode(...)");
            Charset charset = defpackage.qv0.b;
            if (!new String(bArrDecode, charset).equals(f92.c)) {
                byte[] bArrDecode2 = Base64.decode("WFQxNjUw", 0);
                y45.i(bArrDecode2, "decode(...)");
            }
            return false;
        }
        return (i >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_EXT_protected_content");
    }

    public static void a(String str) {
        et0.b("GlUtil", str);
    }
}
