.class public Lcom/hunantv/media/player/d/a/c;
.super Lcom/hunantv/media/player/d/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sampler2D"

    const-string v2, "samplerExternalOES"

    const-string v3, "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nuniform float uCRatio;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\nvec4 scaledPos = aPosition;\nscaledPos.x = scaledPos.x * uCRatio;\ngl_Position = uMVPMatrix * scaledPos;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/player/d/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I[F[FF)V
    .locals 9

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->e()V

    const-string v0, "uMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p2, "uSTMatrix"

    invoke-virtual {p0, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p2, "uCRatio"

    invoke-virtual {p0, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->f()I

    move-result p2

    const p3, 0x8892

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string p2, "aPosition"

    invoke-virtual {p0, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const-string p4, "aTextureCoord"

    invoke-virtual {p0, p4}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0, p4}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0xc

    const/4 v4, 0x2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "sTexture"

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    sget v0, Lcom/hunantv/media/player/d/a/b;->b:I

    invoke-static {p1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-virtual {p0, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0, p4}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {p3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 p0, 0xde1

    invoke-static {p0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
