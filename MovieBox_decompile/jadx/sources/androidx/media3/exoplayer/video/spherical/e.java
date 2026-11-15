package androidx.media3.exoplayer.video.spherical;

import android.opengl.GLES20;
import android.util.Log;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.o;
import java.nio.Buffer;
import java.nio.FloatBuffer;

final class e {

    private static final float[] f12953j = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    private static final float[] f12954k = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    private static final float[] f12955l = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    private static final float[] f12956m = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    private static final float[] f12957n = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    private int f12958a;

    private a f12959b;

    private a f12960c;

    private o f12961d;

    private int f12962e;

    private int f12963f;

    private int f12964g;

    private int f12965h;

    private int f12966i;

    private static class a {

        private final int f12967a;

        private final FloatBuffer f12968b;

        private final FloatBuffer f12969c;

        private final int f12970d;

        public a(c.b bVar) {
            this.f12967a = bVar.a();
            this.f12968b = GlUtil.e(bVar.f12951c);
            this.f12969c = GlUtil.e(bVar.f12952d);
            int i10 = bVar.f12950b;
            if (i10 == 1) {
                this.f12970d = 5;
            } else if (i10 != 2) {
                this.f12970d = 4;
            } else {
                this.f12970d = 6;
            }
        }
    }

    e() {
    }

    public static boolean c(c cVar) {
        c.a aVar = cVar.f12944a;
        c.a aVar2 = cVar.f12945b;
        return aVar.b() == 1 && aVar.a(0).f12949a == 0 && aVar2.b() == 1 && aVar2.a(0).f12949a == 0;
    }

    public void a(int i10, float[] fArr, boolean z10) {
        float[] fArr2;
        a aVar = z10 ? this.f12960c : this.f12959b;
        if (aVar == null) {
            return;
        }
        int i11 = this.f12958a;
        if (i11 == 1) {
            fArr2 = z10 ? f12955l : f12954k;
        } else if (i11 == 2) {
            fArr2 = z10 ? f12957n : f12956m;
        } else {
            fArr2 = f12953j;
        }
        GLES20.glUniformMatrix3fv(this.f12963f, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.f12962e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i10);
        GLES20.glUniform1i(this.f12966i, 0);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e10) {
            Log.e("ProjectionRenderer", "Failed to bind uniforms", e10);
        }
        GLES20.glVertexAttribPointer(this.f12964g, 3, 5126, false, 12, (Buffer) aVar.f12968b);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e11) {
            Log.e("ProjectionRenderer", "Failed to load position data", e11);
        }
        GLES20.glVertexAttribPointer(this.f12965h, 2, 5126, false, 8, (Buffer) aVar.f12969c);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e12) {
            Log.e("ProjectionRenderer", "Failed to load texture data", e12);
        }
        GLES20.glDrawArrays(aVar.f12970d, 0, aVar.f12967a);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e13) {
            Log.e("ProjectionRenderer", "Failed to render", e13);
        }
    }

    public void b() {
        try {
            o oVar = new o("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.f12961d = oVar;
            this.f12962e = oVar.j("uMvpMatrix");
            this.f12963f = this.f12961d.j("uTexMatrix");
            this.f12964g = this.f12961d.e("aPosition");
            this.f12965h = this.f12961d.e("aTexCoords");
            this.f12966i = this.f12961d.j("uTexture");
        } catch (GlUtil.GlException e10) {
            Log.e("ProjectionRenderer", "Failed to initialize the program", e10);
        }
    }

    public void d(c cVar) {
        if (c(cVar)) {
            this.f12958a = cVar.f12946c;
            a aVar = new a(cVar.f12944a.a(0));
            this.f12959b = aVar;
            if (!cVar.f12947d) {
                aVar = new a(cVar.f12945b.a(0));
            }
            this.f12960c = aVar;
        }
    }
}
