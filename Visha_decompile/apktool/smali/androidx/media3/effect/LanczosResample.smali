.class public final Landroidx/media3/effect/LanczosResample;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/GlEffect;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/effect/LanczosResample$LanczosResampleScaledFunctionProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_RADIUS:F = 3.0f

.field private static final NO_OP_THRESHOLD:F = 0.01f


# instance fields
.field private final height:I

.field private final radius:F

.field private final width:I


# direct methods
.method private constructor <init>(FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/effect/LanczosResample;->radius:F

    iput p2, p0, Landroidx/media3/effect/LanczosResample;->width:I

    iput p3, p0, Landroidx/media3/effect/LanczosResample;->height:I

    return-void
.end method

.method public static synthetic access$100(IIII)F
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/effect/LanczosResample;->scalingFactorToFit(IIII)F

    move-result p0

    return p0
.end method

.method public static scaleToFit(II)Landroidx/media3/effect/LanczosResample;
    .locals 3
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-lez p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    new-instance v0, Landroidx/media3/effect/LanczosResample;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1, p0, p1}, Landroidx/media3/effect/LanczosResample;-><init>(FII)V

    return-object v0
.end method

.method private static scalingFactorToFit(IIII)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-lez p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    mul-int v0, p1, p2

    mul-int v1, p3, p0

    if-gt v0, v1, :cond_2

    int-to-float p1, p2

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1

    :cond_2
    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public isNoOp(II)Z
    .locals 1

    iget v0, p0, Landroidx/media3/effect/LanczosResample;->width:I

    iget p0, p0, Landroidx/media3/effect/LanczosResample;->height:I

    invoke-static {p1, p2, v0, p0}, Landroidx/media3/effect/LanczosResample;->scalingFactorToFit(IIII)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toGlShaderProgram(Landroid/content/Context;Z)Landroidx/media3/effect/GlShaderProgram;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    new-instance v0, Landroidx/media3/effect/SeparableConvolutionShaderProgram;

    new-instance v1, Landroidx/media3/effect/LanczosResample$LanczosResampleScaledFunctionProvider;

    iget v2, p0, Landroidx/media3/effect/LanczosResample;->radius:F

    iget v3, p0, Landroidx/media3/effect/LanczosResample;->width:I

    iget p0, p0, Landroidx/media3/effect/LanczosResample;->height:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Landroidx/media3/effect/LanczosResample$LanczosResampleScaledFunctionProvider;-><init>(FIILandroidx/media3/effect/LanczosResample$1;)V

    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/effect/SeparableConvolutionShaderProgram;-><init>(Landroid/content/Context;ZLandroidx/media3/effect/ConvolutionFunction1D$Provider;)V

    return-object v0
.end method
