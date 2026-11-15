.class final Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;
.super Landroidx/media3/effect/SeparableConvolutionShaderProgram;
.source "SourceFile"


# instance fields
.field private final sharpTransformGlProgram:Landroidx/media3/common/util/GlProgram;

.field private final sharpTransformMatrixValues:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroidx/media3/effect/SeparableConvolution;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v5, v0, p4

    div-float v6, v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/effect/SeparableConvolutionShaderProgram;-><init>(Landroid/content/Context;ZLandroidx/media3/effect/SeparableConvolution;FF)V

    :try_start_0
    new-instance p2, Landroidx/media3/common/util/GlProgram;

    const-string p3, "shaders/vertex_shader_transformation_es2.glsl"

    const-string v0, "shaders/fragment_shader_copy_es2.glsl"

    invoke-direct {p2, p1, p3, v0}, Landroidx/media3/common/util/GlProgram;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformGlProgram:Landroidx/media3/common/util/GlProgram;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-static {p1}, Landroidx/media3/effect/MatrixUtils;->getGlMatrixArray(Landroid/graphics/Matrix;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformMatrixValues:[F

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p1, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public onBlurRendered(Landroidx/media3/common/GlTextureInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformGlProgram:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v1}, Landroidx/media3/common/util/GlProgram;->use()V

    iget-object v1, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformGlProgram:Landroidx/media3/common/util/GlProgram;

    iget p1, p1, Landroidx/media3/common/GlTextureInfo;->texId:I

    const/4 v2, 0x0

    const-string v3, "uTexSampler"

    invoke-virtual {v1, v3, p1, v2}, Landroidx/media3/common/util/GlProgram;->setSamplerTexIdUniform(Ljava/lang/String;II)V

    iget-object p1, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformGlProgram:Landroidx/media3/common/util/GlProgram;

    const-string v1, "uTexTransformationMatrix"

    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    iget-object p1, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformGlProgram:Landroidx/media3/common/util/GlProgram;

    const-string v0, "uTransformationMatrix"

    iget-object v1, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformMatrixValues:[F

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    iget-object p1, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformGlProgram:Landroidx/media3/common/util/GlProgram;

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->getNormalizedCoordinateBounds()[F

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "aFramePosition"

    invoke-virtual {p1, v2, v0, v1}, Landroidx/media3/common/util/GlProgram;->setBufferAttribute(Ljava/lang/String;[FI)V

    iget-object p0, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformGlProgram:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->bindAttributesAndUniforms()V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    invoke-super {p0}, Landroidx/media3/effect/SeparableConvolutionShaderProgram;->release()V

    :try_start_0
    iget-object p0, p0, Landroidx/media3/effect/SharpSeparableConvolutionShaderProgram;->sharpTransformGlProgram:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->delete()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {v0, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
