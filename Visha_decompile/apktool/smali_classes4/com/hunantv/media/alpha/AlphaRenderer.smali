.class Lcom/hunantv/media/alpha/AlphaRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/hunantv/media/alpha/Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfaceErrorListener;,
        Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfacePrepareListener;
    }
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static TAG:Ljava/lang/String; = "AlphaRenderer"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x10

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x2


# instance fields
.field private aPositionHandle:I

.field private aTextureHandle:I

.field private final alphaShader:Ljava/lang/String;

.field private mCurrentVideoHeight:I

.field private mCurrentVideoWidth:I

.field private mCurrentViewHeight:I

.field private mCurrentViewWidth:I

.field private onSurfaceErrorListener:Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfaceErrorListener;

.field private onSurfacePrepareListener:Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfacePrepareListener;

.field private program:I

.field private surface:Landroid/graphics/SurfaceTexture;

.field private textureID:I

.field private triangleVertices:Ljava/nio/FloatBuffer;

.field private final triangleVerticesData:[F

.field private updateSurface:Z

.field private final vertexShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVerticesData:[F

    const-string v1, "attribute vec2 a_position;\nattribute vec2 a_texCoord;\nvarying vec2 v_texcoord;\nvoid main(void) {\n  gl_Position = vec4(a_position, 0.0, 0.998);\n  v_texcoord = a_texCoord;\n}\n"

    iput-object v1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->vertexShader:Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_texcoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = vec4(texture2D(sTexture, v_texcoord).rgb, texture2D(sTexture, v_texcoord + vec2(-0.5, 0)).r);\n}\n"

    iput-object v1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->alphaShader:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->updateSurface:Z

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

    iput-object v2, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkGlError(ILjava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hunantv/media/alpha/AlphaRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error checkGlError errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->onSurfaceErrorListener:Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfaceErrorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfaceErrorListener;->surfaceError(ILjava/lang/String;)V

    :cond_0
    return v0
.end method

.method private checkGlWarning(ILjava/lang/String;)I
    .locals 3

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/hunantv/media/alpha/AlphaRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning checkGlWarning errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/hunantv/media/alpha/AlphaRenderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/hunantv/media/alpha/AlphaRenderer;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const/16 p1, -0x77

    const-string v2, "glAttachShader"

    invoke-direct {p0, p1, v2}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlError(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const/16 p1, -0x78

    invoke-direct {p0, p1, v2}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlError(ILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const p2, 0x8b82

    invoke-static {v1, p2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p1, p1, v0

    if-eq p1, p0, :cond_4

    sget-object p0, Lcom/hunantv/media/alpha/AlphaRenderer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not link program: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v1

    if-nez p2, :cond_0

    sget-object p2, Lcom/hunantv/media/alpha/AlphaRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p0, v1

    :cond_0
    return p0
.end method

.method private prepareSurface()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    iput v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->textureID:I

    sget v1, Lcom/hunantv/media/alpha/AlphaRenderer;->GL_TEXTURE_EXTERNAL_OES:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, -0x76

    const-string v1, "glBindTexture textureID"

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlError(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/hunantv/media/alpha/AlphaRenderer;->GL_TEXTURE_EXTERNAL_OES:I

    const/16 v1, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    sget v0, Lcom/hunantv/media/alpha/AlphaRenderer;->GL_TEXTURE_EXTERNAL_OES:I

    const/16 v1, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->textureID:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->surface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->surface:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->onSurfacePrepareListener:Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfacePrepareListener;

    invoke-interface {v1, v0}, Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfacePrepareListener;->surfacePrepared(Landroid/view/Surface;)V

    monitor-enter p0

    :try_start_0
    iput-boolean v2, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->updateSurface:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->updateSurface:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->surface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->updateSurface:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v1, 0x303

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p1, -0x6e

    const-string v1, "glUseProgram"

    invoke-direct {p0, p1, v1}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlWarning(ILjava/lang/String;)I

    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    sget p1, Lcom/hunantv/media/alpha/AlphaRenderer;->GL_TEXTURE_EXTERNAL_OES:I

    iget v1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->textureID:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->aPositionHandle:I

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 p1, -0x6f

    const-string v1, "glVertexAttribPointer maPosition"

    invoke-direct {p0, p1, v1}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlWarning(ILjava/lang/String;)I

    iget p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->aPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 p1, -0x70

    const-string v1, "glEnableVertexAttribArray aPositionHandle"

    invoke-direct {p0, p1, v1}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlWarning(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->aTextureHandle:I

    const/16 v6, 0x10

    iget-object v7, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 p1, -0x71

    const-string v1, "glVertexAttribPointer aTextureHandle"

    invoke-direct {p0, p1, v1}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlWarning(ILjava/lang/String;)I

    iget p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->aTextureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 p1, -0x72

    const-string v1, "glEnableVertexAttribArray aTextureHandle"

    invoke-direct {p0, p1, v1}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlWarning(ILjava/lang/String;)I

    const/4 p1, 0x5

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 p1, -0x73

    const-string v0, "glDrawArrays"

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlWarning(ILjava/lang/String;)I

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
    iput-boolean p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->updateSurface:Z
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
    .locals 1

    sget-object p0, Lcom/hunantv/media/alpha/AlphaRenderer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSufaceChanged w "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0, p0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const-string p1, "attribute vec2 a_position;\nattribute vec2 a_texCoord;\nvarying vec2 v_texcoord;\nvoid main(void) {\n  gl_Position = vec4(a_position, 0.0, 0.998);\n  v_texcoord = a_texCoord;\n}\n"

    const-string p2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_texcoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = vec4(texture2D(sTexture, v_texcoord).rgb, texture2D(sTexture, v_texcoord + vec2(-0.5, 0)).r);\n}\n"

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/alpha/AlphaRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->program:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "a_position"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->aPositionHandle:I

    const/16 p1, -0x74

    const-string p2, "glGetAttribLocation aPosition"

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlError(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->aPositionHandle:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    iget p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->program:I

    const-string v0, "a_texCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->aTextureHandle:I

    const/16 p1, -0x75

    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/alpha/AlphaRenderer;->checkGlError(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->aTextureHandle:I

    if-eq p1, p2, :cond_3

    invoke-direct {p0}, Lcom/hunantv/media/alpha/AlphaRenderer;->prepareSurface()V

    return-void

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

.method public onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public setOnSurfaceErrorListener(Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfaceErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->onSurfaceErrorListener:Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfaceErrorListener;

    return-void
.end method

.method public setOnSurfacePrepareListener(Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfacePrepareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->onSurfacePrepareListener:Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfacePrepareListener;

    return-void
.end method

.method public updateRadio(IIII)V
    .locals 4

    iget v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->mCurrentVideoWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->mCurrentVideoHeight:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->mCurrentViewWidth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->mCurrentViewHeight:I

    if-ne v0, p4, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->mCurrentVideoWidth:I

    iput p2, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->mCurrentVideoHeight:I

    iput p3, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->mCurrentViewWidth:I

    iput p4, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->mCurrentViewHeight:I

    iget-object v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p1, v0

    int-to-float p2, p2

    div-float/2addr v1, p2

    int-to-float p3, p3

    mul-float v2, p3, v0

    int-to-float p4, p4

    div-float v3, v2, p4

    cmpl-float v1, v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v1, :cond_2

    mul-float/2addr v2, p2

    div-float/2addr v2, p4

    sub-float p2, p1, v2

    div-float/2addr p2, p1

    iget-object p0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p3

    div-float/2addr p2, v3

    add-float/2addr p3, p2

    invoke-virtual {p0, p1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p3

    sub-float/2addr p3, p2

    invoke-virtual {p0, p1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p0, p1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p3

    sub-float/2addr p3, p2

    invoke-virtual {p0, p1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_2
    mul-float/2addr p4, v0

    mul-float/2addr p4, p1

    div-float/2addr p4, p3

    sub-float p1, p2, p4

    div-float/2addr p1, p2

    iget-object p0, p0, Lcom/hunantv/media/alpha/AlphaRenderer;->triangleVertices:Ljava/nio/FloatBuffer;

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p3

    div-float/2addr p1, v3

    add-float/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 p2, 0x7

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p3

    add-float/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p3

    sub-float/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 p2, 0xf

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p3

    sub-float/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :goto_0
    return-void
.end method
