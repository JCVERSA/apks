package com.google.android.exoplayer2.util;

import android.opengl.GLES20;
import java.util.HashMap;
import java.util.Map;

public final class n {

    private final int f26838a;

    private final a[] f26839b;

    private final b[] f26840c;

    private final Map f26841d;

    private final Map f26842e;

    private static final class a {

        public final String f26843a;

        private final int f26844b;

        private final int f26845c;

        private a(String str, int i10, int i11) {
            this.f26843a = str;
            this.f26844b = i10;
            this.f26845c = i11;
        }

        public static a a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35722, iArr, 0);
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveAttrib(i10, i11, i12, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, n.h(bArr));
            return new a(str, i11, n.f(i10, str));
        }
    }

    private static final class b {

        public final String f26846a;

        private final int f26847b;

        private final int f26848c;

        private final float[] f26849d = new float[16];

        private b(String str, int i10, int i11) {
            this.f26846a = str;
            this.f26847b = i10;
            this.f26848c = i11;
        }

        public static b a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveUniform(i10, i11, i12, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, n.h(bArr));
            return new b(str, n.i(i10, str), iArr2[0]);
        }
    }

    public n(String str, String str2) {
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.f26838a = iGlCreateProgram;
        GlUtil.c();
        d(iGlCreateProgram, 35633, str);
        d(iGlCreateProgram, 35632, str2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            GlUtil.j("Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(iGlCreateProgram));
        }
        GLES20.glUseProgram(iGlCreateProgram);
        this.f26841d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35721, iArr2, 0);
        this.f26839b = new a[iArr2[0]];
        for (int i10 = 0; i10 < iArr2[0]; i10++) {
            a aVarA = a.a(this.f26838a, i10);
            this.f26839b[i10] = aVarA;
            this.f26841d.put(aVarA.f26843a, aVarA);
        }
        this.f26842e = new HashMap();
        int[] iArr3 = new int[1];
        GLES20.glGetProgramiv(this.f26838a, 35718, iArr3, 0);
        this.f26840c = new b[iArr3[0]];
        for (int i11 = 0; i11 < iArr3[0]; i11++) {
            b bVarA = b.a(this.f26838a, i11);
            this.f26840c[i11] = bVarA;
            this.f26842e.put(bVarA.f26846a, bVarA);
        }
        GlUtil.c();
    }

    private static void d(int i10, int i11, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i11);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            GlUtil.j(GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i10, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        GlUtil.c();
    }

    public static int f(int i10, String str) {
        return GLES20.glGetAttribLocation(i10, str);
    }

    private int g(String str) {
        return f(this.f26838a, str);
    }

    public static int h(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (bArr[i10] == 0) {
                return i10;
            }
        }
        return bArr.length;
    }

    public static int i(int i10, String str) {
        return GLES20.glGetUniformLocation(i10, str);
    }

    public int e(String str) {
        int iG = g(str);
        GLES20.glEnableVertexAttribArray(iG);
        GlUtil.c();
        return iG;
    }

    public int j(String str) {
        return i(this.f26838a, str);
    }
}
