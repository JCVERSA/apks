.class public final Landroidx/media3/effect/SpeedChangeEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/GlEffect;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final speedProvider:Landroidx/media3/common/audio/SpeedProvider;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 3
    new-instance v0, Landroidx/media3/effect/SpeedChangeEffect$1;

    invoke-direct {v0, p0, p1}, Landroidx/media3/effect/SpeedChangeEffect$1;-><init>(Landroidx/media3/effect/SpeedChangeEffect;F)V

    iput-object v0, p0, Landroidx/media3/effect/SpeedChangeEffect;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/audio/SpeedProvider;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/media3/effect/SpeedChangeEffect;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    return-void
.end method


# virtual methods
.method public getDurationAfterEffectApplied(J)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/SpeedChangeEffect;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-static {p0, p1, p2}, Landroidx/media3/common/util/SpeedProviderUtil;->getDurationAfterSpeedProviderApplied(Landroidx/media3/common/audio/SpeedProvider;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public isNoOp(II)Z
    .locals 2

    iget-object p1, p0, Landroidx/media3/effect/SpeedChangeEffect;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/media3/effect/SpeedChangeEffect;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-interface {p0, v0, v1}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toGlShaderProgram(Landroid/content/Context;Z)Landroidx/media3/effect/GlShaderProgram;
    .locals 0

    new-instance p1, Landroidx/media3/effect/SpeedChangeShaderProgram;

    iget-object p0, p0, Landroidx/media3/effect/SpeedChangeEffect;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-direct {p1, p0}, Landroidx/media3/effect/SpeedChangeShaderProgram;-><init>(Landroidx/media3/common/audio/SpeedProvider;)V

    return-object p1
.end method
