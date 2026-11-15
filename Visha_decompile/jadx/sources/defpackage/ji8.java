package defpackage;

import android.opengl.GLES20;
import com.google.android.exoplayer2.util.GlUtil;
import java.nio.Buffer;
import java.nio.FloatBuffer;

public final class ji8 {
    public static final float[] j = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] k = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};
    public static final float[] l = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] m = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] n = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};
    public int a;
    public a b;
    public a c;
    public fi4 d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;

    public static class a {
        public final int a;
        public final FloatBuffer b;
        public final FloatBuffer c;
        public final int d;

        public a(hi8.b bVar) {
            this.a = bVar.a();
            this.b = GlUtil.e(bVar.c);
            this.c = GlUtil.e(bVar.d);
            int i = bVar.b;
            if (i == 1) {
                this.d = 5;
            } else if (i != 2) {
                this.d = 4;
            } else {
                this.d = 6;
            }
        }
    }

    public static boolean c(hi8 hi8Var) {
        hi8.a aVar = hi8Var.a;
        hi8.a aVar2 = hi8Var.b;
        return aVar.b() == 1 && aVar.a(0).a == 0 && aVar2.b() == 1 && aVar2.a(0).a == 0;
    }

    public void a(int i, float[] fArr, boolean z) {
        float[] fArr2;
        a aVar = z ? this.c : this.b;
        if (aVar == null) {
            return;
        }
        int i2 = this.a;
        if (i2 == 1) {
            fArr2 = z ? l : k;
        } else if (i2 == 2) {
            fArr2 = z ? n : m;
        } else {
            fArr2 = j;
        }
        GLES20.glUniformMatrix3fv(this.f, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i);
        GLES20.glUniform1i(this.i, 0);
        GlUtil.c();
        GLES20.glVertexAttribPointer(this.g, 3, 5126, false, 12, (Buffer) aVar.b);
        GlUtil.c();
        GLES20.glVertexAttribPointer(this.h, 2, 5126, false, 8, (Buffer) aVar.c);
        GlUtil.c();
        GLES20.glDrawArrays(aVar.d, 0, aVar.a);
        GlUtil.c();
    }

    public void b() {
        fi4 fi4Var = new fi4("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
        this.d = fi4Var;
        this.e = fi4Var.j("uMvpMatrix");
        this.f = this.d.j("uTexMatrix");
        this.g = this.d.e("aPosition");
        this.h = this.d.e("aTexCoords");
        this.i = this.d.j("uTexture");
    }

    public void d(hi8 hi8Var) {
        if (c(hi8Var)) {
            this.a = hi8Var.c;
            a aVar = new a(hi8Var.a.a(0));
            this.b = aVar;
            if (!hi8Var.d) {
                aVar = new a(hi8Var.b.a(0));
            }
            this.c = aVar;
        }
    }
}
