.class Landroidx/media3/transformer/InactiveTimestampAdjustment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/GlEffect;


# instance fields
.field public final speedProvider:Landroidx/media3/common/audio/SpeedProvider;


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/SpeedProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/InactiveTimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    return-void
.end method


# virtual methods
.method public getDurationAfterEffectApplied(J)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/InactiveTimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-static {p0, p1, p2}, Landroidx/media3/common/util/SpeedProviderUtil;->getDurationAfterSpeedProviderApplied(Landroidx/media3/common/audio/SpeedProvider;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public isNoOp(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toGlShaderProgram(Landroid/content/Context;Z)Landroidx/media3/effect/GlShaderProgram;
    .locals 0

    new-instance p0, Landroidx/media3/effect/PassthroughShaderProgram;

    invoke-direct {p0}, Landroidx/media3/effect/PassthroughShaderProgram;-><init>()V

    return-object p0
.end method
