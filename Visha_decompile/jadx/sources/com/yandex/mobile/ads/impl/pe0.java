package com.yandex.mobile.ads.impl;

import android.opengl.GLES20;
import java.util.HashMap;

public final class pe0 {
    private final int a;
    private final a[] b;
    private final b[] c;
    private final HashMap d;
    private final HashMap e;

    public static final class a {
        public final String a;

        private a(String str) {
            this.a = str;
        }

        public static a a(int i, int i2) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i, 35722, iArr, 0);
            int i3 = iArr[0];
            byte[] bArr = new byte[i3];
            GLES20.glGetActiveAttrib(i, i2, i3, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            for (int i4 = 0; i4 < i3; i4++) {
                if (bArr[i4] == 0) {
                    i3 = i4;
                    break;
                }
            }
            String str = new String(bArr, 0, i3);
            GLES20.glGetAttribLocation(i, str);
            return new a(str);
        }
    }

    public static final class b {
        public final String a;

        private b(String str) {
            this.a = str;
        }

        public static b a(int i, int i2) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i, 35719, iArr, 0);
            int i3 = iArr[0];
            byte[] bArr = new byte[i3];
            GLES20.glGetActiveUniform(i, i2, i3, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            for (int i4 = 0; i4 < i3; i4++) {
                if (bArr[i4] == 0) {
                    i3 = i4;
                    break;
                }
            }
            String str = new String(bArr, 0, i3);
            GLES20.glGetUniformLocation(i, str);
            return new b(str);
        }
    }

    public pe0() {
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.a = iGlCreateProgram;
        qe0.a();
        a(iGlCreateProgram, 35633, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n");
        a(iGlCreateProgram, 35632, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            qe0.a("Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(iGlCreateProgram));
        }
        GLES20.glUseProgram(iGlCreateProgram);
        this.d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35721, iArr2, 0);
        this.b = new a[iArr2[0]];
        for (int i = 0; i < iArr2[0]; i++) {
            a aVarA = a.a(this.a, i);
            this.b[i] = aVarA;
            this.d.put(aVarA.a, aVarA);
        }
        this.e = new HashMap();
        int[] iArr3 = new int[1];
        GLES20.glGetProgramiv(this.a, 35718, iArr3, 0);
        this.c = new b[iArr3[0]];
        for (int i2 = 0; i2 < iArr3[0]; i2++) {
            b bVarA = b.a(this.a, i2);
            this.c[i2] = bVarA;
            this.e.put(bVarA.a, bVarA);
        }
        qe0.a();
    }

    private static void a(int i, int i2, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i2);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            String str2 = GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: " + str;
            int i3 = qe0.b;
            et0.b("GlUtil", str2);
        }
        GLES20.glAttachShader(i, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        qe0.a();
    }

    public final int b(String str) {
        return GLES20.glGetUniformLocation(this.a, str);
    }

    public final int a(String str) {
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.a, str);
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        qe0.a();
        return iGlGetAttribLocation;
    }
}
