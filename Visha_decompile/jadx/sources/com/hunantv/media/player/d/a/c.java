package com.hunantv.media.player.d.a;

import android.opengl.GLES20;

public class c extends b {
    public c() {
        super("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nuniform float uCRatio;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\nvec4 scaledPos = aPosition;\nscaledPos.x = scaledPos.x * uCRatio;\ngl_Position = uMVPMatrix * scaledPos;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\n" + "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n".replace("sampler2D", "samplerExternalOES"));
    }

    public void a(int i, float[] fArr, float[] fArr2, float f) {
        e();
        GLES20.glUniformMatrix4fv(a("uMVPMatrix"), 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(a("uSTMatrix"), 1, false, fArr2, 0);
        GLES20.glUniform1f(a("uCRatio"), f);
        GLES20.glBindBuffer(34962, f());
        GLES20.glEnableVertexAttribArray(a("aPosition"));
        GLES20.glVertexAttribPointer(a("aPosition"), 3, 5126, false, 20, 0);
        GLES20.glEnableVertexAttribArray(a("aTextureCoord"));
        GLES20.glVertexAttribPointer(a("aTextureCoord"), 2, 5126, false, 20, 12);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i);
        GLES20.glUniform1i(a("sTexture"), 0);
        GLES20.glDrawArrays(5, 0, b.b);
        GLES20.glDisableVertexAttribArray(a("aPosition"));
        GLES20.glDisableVertexAttribArray(a("aTextureCoord"));
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindTexture(3553, 0);
    }
}
