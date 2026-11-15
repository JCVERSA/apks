package com.google.android.exoplayer2.video.spherical;

import android.opengl.GLES20;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.n;
import java.nio.Buffer;
import java.nio.FloatBuffer;

final class e {

    private static final float[] f27090j = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    private static final float[] f27091k = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    private static final float[] f27092l = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    private static final float[] f27093m = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    private static final float[] f27094n = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    private int f27095a;

    private a f27096b;

    private a f27097c;

    private n f27098d;

    private int f27099e;

    private int f27100f;

    private int f27101g;

    private int f27102h;

    private int f27103i;

    private static class a {

        private final int f27104a;

        private final FloatBuffer f27105b;

        private final FloatBuffer f27106c;

        private final int f27107d;

        public a(c.b bVar) {
            this.f27104a = bVar.a();
            this.f27105b = GlUtil.e(bVar.f27088c);
            this.f27106c = GlUtil.e(bVar.f27089d);
            int i10 = bVar.f27087b;
            if (i10 == 1) {
                this.f27107d = 5;
            } else if (i10 != 2) {
                this.f27107d = 4;
            } else {
                this.f27107d = 6;
            }
        }
    }

    e() {
    }

    public static boolean c(c cVar) {
        c.a aVar = cVar.f27081a;
        c.a aVar2 = cVar.f27082b;
        return aVar.b() == 1 && aVar.a(0).f27086a == 0 && aVar2.b() == 1 && aVar2.a(0).f27086a == 0;
    }

    public void a(int i10, float[] fArr, boolean z10) {
        float[] fArr2;
        a aVar = z10 ? this.f27097c : this.f27096b;
        if (aVar == null) {
            return;
        }
        int i11 = this.f27095a;
        if (i11 == 1) {
            fArr2 = z10 ? f27092l : f27091k;
        } else if (i11 == 2) {
            fArr2 = z10 ? f27094n : f27093m;
        } else {
            fArr2 = f27090j;
        }
        GLES20.glUniformMatrix3fv(this.f27100f, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.f27099e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i10);
        GLES20.glUniform1i(this.f27103i, 0);
        GlUtil.c();
        GLES20.glVertexAttribPointer(this.f27101g, 3, 5126, false, 12, (Buffer) aVar.f27105b);
        GlUtil.c();
        GLES20.glVertexAttribPointer(this.f27102h, 2, 5126, false, 8, (Buffer) aVar.f27106c);
        GlUtil.c();
        GLES20.glDrawArrays(aVar.f27107d, 0, aVar.f27104a);
        GlUtil.c();
    }

    public void b() {
        n nVar = new n("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
        this.f27098d = nVar;
        this.f27099e = nVar.j("uMvpMatrix");
        this.f27100f = this.f27098d.j("uTexMatrix");
        this.f27101g = this.f27098d.e("aPosition");
        this.f27102h = this.f27098d.e("aTexCoords");
        this.f27103i = this.f27098d.j("uTexture");
    }

    public void d(c cVar) {
        if (c(cVar)) {
            this.f27095a = cVar.f27083c;
            a aVar = new a(cVar.f27081a.a(0));
            this.f27096b = aVar;
            if (!cVar.f27084d) {
                aVar = new a(cVar.f27082b.a(0));
            }
            this.f27097c = aVar;
        }
    }
}
