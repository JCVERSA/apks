package androidx.media3.common.util;

import android.opengl.GLES20;
import java.util.HashMap;
import java.util.Map;

public final class o {

    private final int f10107a;

    private final a[] f10108b;

    private final b[] f10109c;

    private final Map f10110d;

    private final Map f10111e;

    private static final class a {

        public final String f10112a;

        private final int f10113b;

        private a(String str, int i10) {
            this.f10112a = str;
            this.f10113b = i10;
        }

        public static a a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35722, iArr, 0);
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveAttrib(i10, i11, i12, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, o.h(bArr));
            return new a(str, o.f(i10, str));
        }
    }

    private static final class b {

        public final String f10114a;

        private final int f10115b;

        private final int f10116c;

        private final float[] f10117d = new float[16];

        private final int[] f10118e = new int[4];

        private int f10119f = 9729;

        private b(String str, int i10, int i11) {
            this.f10114a = str;
            this.f10115b = i10;
            this.f10116c = i11;
        }

        public static b a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveUniform(i10, i11, i12, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, o.h(bArr));
            return new b(str, o.i(i10, str), iArr2[0]);
        }
    }

    public o(String str, String str2) throws GlUtil.GlException {
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.f10107a = iGlCreateProgram;
        GlUtil.b();
        d(iGlCreateProgram, 35633, str);
        d(iGlCreateProgram, 35632, str2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        GlUtil.c(iArr[0] == 1, "Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(iGlCreateProgram));
        GLES20.glUseProgram(iGlCreateProgram);
        this.f10110d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35721, iArr2, 0);
        this.f10108b = new a[iArr2[0]];
        for (int i10 = 0; i10 < iArr2[0]; i10++) {
            a aVarA = a.a(this.f10107a, i10);
            this.f10108b[i10] = aVarA;
            this.f10110d.put(aVarA.f10112a, aVarA);
        }
        this.f10111e = new HashMap();
        int[] iArr3 = new int[1];
        GLES20.glGetProgramiv(this.f10107a, 35718, iArr3, 0);
        this.f10109c = new b[iArr3[0]];
        for (int i11 = 0; i11 < iArr3[0]; i11++) {
            b bVarA = b.a(this.f10107a, i11);
            this.f10109c[i11] = bVarA;
            this.f10111e.put(bVarA.f10114a, bVarA);
        }
        GlUtil.b();
    }

    private static void d(int i10, int i11, String str) throws GlUtil.GlException {
        int iGlCreateShader = GLES20.glCreateShader(i11);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        GlUtil.c(iArr[0] == 1, GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: \n" + str);
        GLES20.glAttachShader(i10, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        GlUtil.b();
    }

    public static int f(int i10, String str) {
        return GLES20.glGetAttribLocation(i10, str);
    }

    private int g(String str) {
        return f(this.f10107a, str);
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

    public int e(String str) throws GlUtil.GlException {
        int iG = g(str);
        GLES20.glEnableVertexAttribArray(iG);
        GlUtil.b();
        return iG;
    }

    public int j(String str) {
        return i(this.f10107a, str);
    }
}
