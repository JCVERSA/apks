.class Landroidx/media3/effect/FrameCacheGlShaderProgram;
.super Landroidx/media3/effect/BaseGlShaderProgram;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER_TRANSFORMATION_ES2_PATH:Ljava/lang/String; = "shaders/fragment_shader_transformation_es2.glsl"

.field private static final VERTEX_SHADER_TRANSFORMATION_ES2_PATH:Ljava/lang/String; = "shaders/vertex_shader_transformation_es2.glsl"


# instance fields
.field private final copyProgram:Landroidx/media3/common/util/GlProgram;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    invoke-direct {p0, p3, p2}, Landroidx/media3/effect/BaseGlShaderProgram;-><init>(ZI)V

    :try_start_0
    new-instance p2, Landroidx/media3/common/util/GlProgram;

    const-string p3, "shaders/vertex_shader_transformation_es2.glsl"

    const-string v0, "shaders/fragment_shader_transformation_es2.glsl"

    invoke-direct {p2, p1, p3, v0}, Landroidx/media3/common/util/GlProgram;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/media3/effect/FrameCacheGlShaderProgram;->copyProgram:Landroidx/media3/common/util/GlProgram;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object p0

    const-string p1, "uTexTransformationMatrix"

    invoke-virtual {p2, p1, p0}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    const-string p1, "uTransformationMatrix"

    invoke-virtual {p2, p1, p0}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    const-string p1, "uRgbMatrix"

    invoke-virtual {p2, p1, p0}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->getNormalizedCoordinateBounds()[F

    move-result-object p0

    const/4 p1, 0x4

    const-string p3, "aFramePosition"

    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/common/util/GlProgram;->setBufferAttribute(Ljava/lang/String;[FI)V

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public configure(II)Landroidx/media3/common/util/Size;
    .locals 0

    new-instance p0, Landroidx/media3/common/util/Size;

    invoke-direct {p0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    return-object p0
.end method

.method public drawFrame(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Landroidx/media3/effect/FrameCacheGlShaderProgram;->copyProgram:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p2}, Landroidx/media3/common/util/GlProgram;->use()V

    iget-object p2, p0, Landroidx/media3/effect/FrameCacheGlShaderProgram;->copyProgram:Landroidx/media3/common/util/GlProgram;

    const-string p3, "uTexSampler"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Landroidx/media3/common/util/GlProgram;->setSamplerTexIdUniform(Ljava/lang/String;II)V

    iget-object p0, p0, Landroidx/media3/effect/FrameCacheGlShaderProgram;->copyProgram:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->bindAttributesAndUniforms()V

    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object p0

    throw p0
.end method

.method public release()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    invoke-super {p0}, Landroidx/media3/effect/BaseGlShaderProgram;->release()V

    :try_start_0
    iget-object p0, p0, Landroidx/media3/effect/FrameCacheGlShaderProgram;->copyProgram:Landroidx/media3/common/util/GlProgram;

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
