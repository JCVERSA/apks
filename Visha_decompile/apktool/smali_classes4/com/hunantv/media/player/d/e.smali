.class public Lcom/hunantv/media/player/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/media/player/d/e;->g:I

    return p0
.end method

.method public a(II)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/media/player/d/e;->c:I

    iput p2, p0, Lcom/hunantv/media/player/d/e;->d:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/hunantv/media/player/d/e;->h:Z

    return-void
.end method

.method public b(II)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v6, p2

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0xd33

    const/4 v11, 0x0

    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v4, v3, v11

    if-gt v0, v4, :cond_2

    if-gt v6, v4, :cond_2

    const v4, 0x84e8

    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v4, v3, v11

    if-gt v0, v4, :cond_1

    if-gt v6, v4, :cond_1

    const v4, 0x8ca6

    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v12, v3, v11

    const v4, 0x8ca7

    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v13, v3, v11

    const v4, 0x8069

    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v14, v3, v11

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/player/d/e;->c()V

    :try_start_0
    iput v0, v1, Lcom/hunantv/media/player/d/e;->a:I

    iput v6, v1, Lcom/hunantv/media/player/d/e;->b:I

    invoke-static {v2, v3, v11}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v4, v3, v11

    iput v4, v1, Lcom/hunantv/media/player/d/e;->e:I

    const v15, 0x8d40

    invoke-static {v15, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v2, v3, v11}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    aget v4, v3, v11

    iput v4, v1, Lcom/hunantv/media/player/d/e;->f:I

    const v10, 0x8d41

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const-string v4, "render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FBO mRenderWidth:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mRenderHeight:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hunantv/media/report/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x81a5

    invoke-static {v10, v4, v0, v6}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    iget v4, v1, Lcom/hunantv/media/player/d/e;->f:I

    const v5, 0x8d00

    invoke-static {v15, v5, v10, v4}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    invoke-static {v2, v3, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v3, v11

    iput v2, v1, Lcom/hunantv/media/player/d/e;->g:I

    const/16 v9, 0xde1

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2601

    const/16 v3, 0x2600

    invoke-static {v9, v2, v3}, Lcom/hunantv/media/player/d/a/a;->a(III)V

    const/16 v16, 0x1401

    const/16 v17, 0x0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    move/from16 v5, p1

    move/from16 v6, p2

    move v0, v9

    move/from16 v9, v16

    move-object/from16 v10, v17

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v2, v1, Lcom/hunantv/media/player/d/e;->g:I

    const v3, 0x8ce0

    invoke-static {v15, v3, v0, v2, v11}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v15}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x8cd5

    if-ne v2, v3, :cond_0

    invoke-static {v15, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8d41

    invoke-static {v1, v13}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    invoke-static {v0, v14}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to initialize framebuffer object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/player/d/e;->c()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GL_MAX_RENDERBUFFER_SIZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GL_MAX_TEXTURE_SIZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/hunantv/media/player/d/e;->h:Z

    return p0
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lcom/hunantv/media/player/d/e;->g:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/hunantv/media/player/d/e;->g:I

    iget v2, p0, Lcom/hunantv/media/player/d/e;->f:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    iput v3, p0, Lcom/hunantv/media/player/d/e;->f:I

    iget v2, p0, Lcom/hunantv/media/player/d/e;->e:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput v3, p0, Lcom/hunantv/media/player/d/e;->e:I

    return-void
.end method

.method public d()V
    .locals 2

    const v0, 0x8d40

    iget v1, p0, Lcom/hunantv/media/player/d/e;->e:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/d/e;->i:Z

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/hunantv/media/player/d/e;->c:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/hunantv/media/player/d/e;->a:I

    return p0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/hunantv/media/player/d/e;->c:I

    if-lez v0, :cond_0

    iget p0, p0, Lcom/hunantv/media/player/d/e;->d:I

    return p0

    :cond_0
    iget p0, p0, Lcom/hunantv/media/player/d/e;->b:I

    return p0
.end method
