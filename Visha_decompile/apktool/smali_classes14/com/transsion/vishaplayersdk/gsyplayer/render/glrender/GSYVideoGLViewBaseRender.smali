.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field protected mChangeProgram:Z

.field protected mChangeProgramSupportError:Z

.field protected mCurrentVideoHeight:I

.field protected mCurrentVideoWidth:I

.field protected mCurrentViewHeight:I

.field protected mCurrentViewWidth:I

.field protected mGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GLSurfaceListener;

.field protected mGSYVideoGLRenderErrorListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;

.field protected mHandler:Landroid/os/Handler;

.field protected mHighShot:Z

.field protected mMVPMatrix:[F

.field protected mSTMatrix:[F

.field protected mSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mHighShot:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSTMatrix:[F

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewWidth:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoWidth:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoHeight:I

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgram:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgramSupportError:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public checkGlError(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public createBitmapFromGLSurface(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 13

    move/from16 v8, p3

    move/from16 v9, p4

    mul-int v0, v8, v9

    new-array v10, v0, [I

    new-array v11, v0, [I

    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object/from16 v0, p5

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    :try_start_0
    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move v0, v12

    :goto_0
    if-ge v0, v9, :cond_1

    mul-int v1, v0, v8

    sub-int v2, v9, v0

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v8

    move v3, v12

    :goto_1
    if-ge v3, v8, :cond_0

    add-int v4, v1, v3

    aget v4, v10, v4

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v6, v4, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    const v7, -0xff0100

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int v5, v2, v3

    aput v4, v11, v5
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mHighShot:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const v0, 0x8b31

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    invoke-virtual {p0, v1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader"

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const p2, 0x8b82

    invoke-static {v1, p2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p1, p1, v0

    if-eq p1, p0, :cond_2

    const-string p0, "Could not link program: "

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public getCurrentVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoHeight:I

    return p0
.end method

.method public getCurrentVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoWidth:I

    return p0
.end method

.method public getCurrentViewHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    return p0
.end method

.method public getCurrentViewWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewWidth:I

    return p0
.end method

.method public getEffect()Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMVPMatrix()[F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    return-object p0
.end method

.method public initRenderSize()V
    .locals 4

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewWidth:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    int-to-float v0, v0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2, p0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_0
    return-void
.end method

.method public loadShader(ILjava/lang/String;)I
    .locals 2

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

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not compile shader "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p0, v1

    :cond_0
    return p0
.end method

.method public abstract releaseAll()V
.end method

.method public sendSurfaceForPlayer(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCurrentVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoHeight:I

    return-void
.end method

.method public setCurrentVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoWidth:I

    return-void
.end method

.method public setCurrentViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    return-void
.end method

.method public setCurrentViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewWidth:I

    return-void
.end method

.method public setEffect(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 0

    return-void
.end method

.method public setGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GLSurfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GLSurfaceListener;

    return-void
.end method

.method public setGSYVideoGLRenderErrorListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mGSYVideoGLRenderErrorListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;

    return-void
.end method

.method public setGSYVideoShotListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V
    .locals 0

    return-void
.end method

.method public setMVPMatrix([F)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    return-void
.end method

.method public setSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public takeShotPic()V
    .locals 0

    return-void
.end method
