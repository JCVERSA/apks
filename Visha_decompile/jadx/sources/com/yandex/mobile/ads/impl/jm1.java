package com.yandex.mobile.ads.impl;

import android.opengl.GLES20;
import androidx.annotation.Nullable;
import java.nio.Buffer;
import java.nio.FloatBuffer;

final class jm1 {
    private static final float[] i = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    private static final float[] j = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};
    private static final float[] k = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    private int a;

    @Nullable
    private a b;
    private pe0 c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    public static class a {
        private final int a;
        private final FloatBuffer b;
        private final FloatBuffer c;
        private final int d;

        public a(hm1.b bVar) {
            this.a = bVar.a();
            this.b = qe0.a(bVar.c);
            this.c = qe0.a(bVar.d);
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

    public final void a(int i2, float[] fArr) {
        float[] fArr2;
        a aVar = this.b;
        if (aVar == null) {
            return;
        }
        int i3 = this.a;
        if (i3 == 1) {
            fArr2 = j;
        } else {
            fArr2 = i3 == 2 ? k : i;
        }
        GLES20.glUniformMatrix3fv(this.e, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.d, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i2);
        GLES20.glUniform1i(this.h, 0);
        qe0.a();
        GLES20.glVertexAttribPointer(this.f, 3, 5126, false, 12, (Buffer) aVar.b);
        qe0.a();
        GLES20.glVertexAttribPointer(this.g, 2, 5126, false, 8, (Buffer) aVar.c);
        qe0.a();
        GLES20.glDrawArrays(aVar.d, 0, aVar.a);
        qe0.a();
    }

    public final void a() {
        pe0 pe0Var = new pe0();
        this.c = pe0Var;
        this.d = pe0Var.b("uMvpMatrix");
        this.e = this.c.b("uTexMatrix");
        this.f = this.c.a("aPosition");
        this.g = this.c.a("aTexCoords");
        this.h = this.c.b("uTexture");
    }

    public final void a(hm1 hm1Var) {
        hm1.a aVar = hm1Var.a;
        hm1.a aVar2 = hm1Var.b;
        if (aVar.b() == 1 && aVar.a().a == 0 && aVar2.b() == 1 && aVar2.a().a == 0) {
            this.a = hm1Var.c;
            this.b = new a(hm1Var.a.a());
            if (hm1Var.d) {
                return;
            }
            new a(hm1Var.b.a());
        }
    }
}
