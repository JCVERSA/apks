.class public Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;
.super Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field protected static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3


# instance fields
.field private mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

.field private mGSYVideoShotListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;

.field private mProgram:I

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mTakeShotPic:Z

.field private mTextureID:[I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private mUpdateSurface:Z

.field private final mVertexShader:Ljava/lang/String;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTriangleVerticesData:[F

    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mVertexShader:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTextureID:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mUpdateSurface:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTakeShotPic:Z

    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;

    invoke-direct {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;-><init>()V

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSTMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public bindDrawFrameTexture()V
    .locals 1

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTextureID:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const v0, 0x8d65

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public getEffect()Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    return-object p0
.end method

.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;->getShader(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaPositionHandle()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maPositionHandle:I

    return p0
.end method

.method public getMaTextureHandle()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maTextureHandle:I

    return p0
.end method

.method public getMuMVPMatrixHandle()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->muMVPMatrixHandle:I

    return p0
.end method

.method public getMuSTMatrixHandle()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->muSTMatrixHandle:I

    return p0
.end method

.method public getProgram()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mProgram:I

    return p0
.end method

.method public getSTMatrix()[F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSTMatrix:[F

    return-object p0
.end method

.method public getTextureID()[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTextureID:[I

    return-object p0
.end method

.method public getVertexShader()Ljava/lang/String;
    .locals 0

    const-string p0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    return-object p0
.end method

.method public initDrawFrame()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgram:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->getVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mProgram:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgram:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public initPointerAndDraw()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maPositionHandle:I

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maTextureHandle:I

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->muMVPMatrixHandle:I

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->muSTMatrixHandle:I

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSTMatrix:[F

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mUpdateSurface:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSTMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mUpdateSurface:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->initDrawFrame()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->bindDrawFrameTexture()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->initPointerAndDraw()V

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->takeBitmap(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mUpdateSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0, p0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->getVertexShader()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->getFragmentShader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mProgram:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "aPosition"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maPositionHandle:I

    const-string p1, "glGetAttribLocation aPosition"

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maPositionHandle:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mProgram:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maTextureHandle:I

    const-string p1, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->maTextureHandle:I

    if-eq p1, p2, :cond_3

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mProgram:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->muMVPMatrixHandle:I

    const-string p1, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->muMVPMatrixHandle:I

    if-eq p1, p2, :cond_2

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mProgram:I

    const-string v0, "uSTMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->muSTMatrixHandle:I

    const-string p1, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->muSTMatrixHandle:I

    if-eq p1, p2, :cond_1

    const/4 p1, 0x2

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTextureID:[I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTextureID:[I

    aget p1, p1, v0

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "glBindTexture mTextureID"

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    const/16 p1, 0x2801

    const/16 p2, 0xde1

    const/16 v1, 0x2601

    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const v1, 0x812f

    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTextureID:[I

    aget p2, p2, v0

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->sendSurfaceForPlayer(Landroid/view/Surface;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not get attrib location for uSTMatrix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not get attrib location for aTextureCoord"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not get attrib location for aPosition"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseAll()V
    .locals 0

    return-void
.end method

.method public setEffect(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgram:Z

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgramSupportError:Z

    return-void
.end method

.method public setGSYVideoShotListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mGSYVideoShotListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;

    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mHighShot:Z

    return-void
.end method

.method public takeBitmap(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTakeShotPic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTakeShotPic:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mGSYVideoShotListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->createBitmapFromGLSurface(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mGSYVideoShotListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;->getBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public takeShotPic()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;->mTakeShotPic:Z

    return-void
.end method
